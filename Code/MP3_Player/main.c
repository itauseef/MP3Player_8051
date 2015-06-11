/**

Author - Tauseef Indikar & Gaurav Shukla
Created on - 4/14/2015

For - ESD S15

------***------***------
MP3 PLAYER WITH ZIGBEE TEXT FILE TRANSFER

1) DISPLAYS ALL FILES IN ROOT DIRECTORY
2) IF MP3 IS SELECTED PLAY STARTS
3) IF TXT IS SELECTED ZIGBEE FILE TRANSFER STARTS WITH A TIMESTAMP AT END OF TRANSFER
4) AT END OF EACH COMMAND SYSTEM IS RESTARTED AND USER IS ALLOWED TO MAKE SELECTION AGAIN

There are two methods for MP3 Play
1) Straight clusters - File is stored in consecutive clusters - No Cluster Table lookup required.
2) Fragmented clusters - File is stored in fragments in different sectors - Cluster Table lookup required.
We tried playing 192 Kbps-MP3 files using Straight clusters and Succeeded in getting I2S PCM Audio output.
We tried playing 320 Kbps-MP3 files using Straight clusters and Failed to get I2S PCM Audio output. A faster clock might do the trick.
With fragmented clusters we could only reach 160Kbps for the files that required 192Kbps bitrate.

Only the attribute print for files in this code has been borrowed from:
http://elm-chan.org/fsw/ff/en/stat.html
------***------***------
**/

//***********((((((((INCLUSIONS))))))))***********

#include "main.h"


//***********((((((((DECLARATIONS))))))))***********


//***********((((((((FUNCTIONS))))))))***********

void main()
{
    int i;
    xdata unsigned char * nvramptr;

    // Initialize System
    _sdcc_external_startup();

    // Clear NVRAMPTR. Can use NVRAM to store previous song played to find song to play in blind mode (Without VT screen)
    nvramptr=0x0000;
    for(i=0; i<0x8000; i++)
        *nvramptr++=0;

    // Clear VT Screen
    clrvtscreen();
    #if RTC_PROGRAMMING_REQ
    clock_init();          // Use this while setting RTC
    #endif // RTC_PROGRAMMING_REQ

    lcdputstr("\MP3 Player/");

    // Mount drive
    if( f_mount( 0, &SDCard ) )
    {
        #if PRINTDEBUG
        printf_tiny("Couldn't mount drive...\r\n");
        #endif // PRINTDEBUG
        while( 1 );
    }

    // Initialize 1st Drive on SD Card
    if(disk_initialize(0) & STA_NOINIT)
    {
        #if PRINTDEBUG
        printf_tiny("\r\n\r\nDisk Not Initialized\r\n");
        #endif // PRINTDEBUG
        while(1);
    }
    // Initialize STA013 MP3 Decoder
    if (!STA013Init())
    {
        #if PRINTDEBUG
        printf_tiny("\r\nSTA013 Not Initialized\r\n");
        #endif // PRINTDEBUG
        while(1);
    }

    // Start User Interface for VT Mode
    while(1)
    {
        starlines(1);
        printf_tiny("\r\n\033[5;31;47m*************************ESD FINAL PROJECT****************************\033[0m");
        starlines(1);
        printf_tiny("\r\nThe Time is : \0337%x:%x:%x\r\n",
                    i2cReceive(Clock_Address,0x02),
                    i2cReceive(Clock_Address,0x01),
                    i2cReceive(Clock_Address,0x00));
        // Start File Selection Interface
        ChooseFile("/");
    }
}

unsigned char ChooseFile( char *path )
{
    xdata FILINFO static finfo;
    xdata FIL static selectedfile;
    xdata DIR static dirs;
    xdata FATFS static *fs;
    xdata DWORD static clust;
    xdata FRESULT static res;
    xdata char static t1,t2,t3;
    xdata DWORD static sectorn ;
    xdata DWORD static findstring[30];

    unsigned char i,j;
    i=1;
    j=0;

    // Check if able to read Base Sector for FATFS identification
    if(disk_read(0, SDCard.win, SDCard.dirbase, 1) != RES_OK)
    {
        #if PRINTDEBUG
        printf_tiny("\r\n Unable to Read Sector...Check if SD Card present..\r\n");
        #endif // PRINTDEBUG
        return 1;
    }

    // If reached here then check FATFS and Sector 0 Read
    if( f_opendir(&dirs, path) == FR_OK )
    {
        printf_tiny("\r\n Root Directory - SD Card %s\r\n\n", path );
        while( (f_readdir(&dirs, &finfo) == FR_OK) && finfo.fname[0] )
        {                       // If path found then print Index Number, Attributes and File/Folder Name for each entry
            printf_tiny("%d )\t",i++);                          // Printing Index Number
            putchar('[');                                       // Printing File/Folder Attributes
            putchar(( finfo.fattrib & AM_RDO ) ? 'r' : '.');
            putchar(( finfo.fattrib & AM_HID ) ? 'h' : '.');
            putchar(( finfo.fattrib & AM_SYS ) ? 's' : '.');
            putchar(( finfo.fattrib & AM_VOL ) ? 'v' : '.');
            putchar(( finfo.fattrib & AM_LFN ) ? 'l' : '.');
            putchar(( finfo.fattrib & AM_DIR ) ? 'd' : '.');
            putchar(( finfo.fattrib & AM_ARC ) ? 'a' : '.');
            putchar(']');
            printf_tiny("%s  %s\r\n", (finfo.fattrib & AM_DIR)?"<DIR>":"     ", finfo.fname );  // Printing File/Folder Name
        }
        starlines(1);
        printf_tiny("\r\n\nSelect File:\0337");     // Get Index Number of file to processed from User.
        i=getnumbetween(0,i,3);
        f_opendir(&dirs, path);
        while(i--) f_readdir(&dirs, &finfo);        // Rewind index to selected file
        clrvtscreen();
        starlines(1);
        if(f_open(&selectedfile,finfo.fname,0))     // Open selected file
        {
            printf_tiny("Cannot open file.");       // If Folder Selected or Unable to read file then Reset
            entercontinue();
            WDTRST=0X1E;
            WDTRST=0XE1;
            while(1);
        }
        i=3;                                        // If File Opened then process Extension
        t1=finfo.fname[strlen(finfo.fname)-3];
        t2=finfo.fname[strlen(finfo.fname)-2];
        t3=finfo.fname[strlen(finfo.fname)-1];
        if((t1=='t'||t1=='T')&&(t2=='x'||t2=='X')&&(t3=='t'||t3=='T')) i=0;
        if((t1=='m'||t1=='M')&&(t2=='p'||t2=='P')&&(t3=='3')) i=1;
        #if PRINTDEBUG
        printf_tiny("\r\n filetype=%s",i?"MP3":"TXT");
        #endif //PRINTDEBUG
        if (i)                                      // Process MP3 File
        {
            sectorn=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database;
            SD_ReadSector(sectorn,SDCard.win);      // Process ID3 Tag to find song name and other details
                                                    // Song name is stored from byte 21 to token TPE1\0\0\0\0\0\0\0
                                                    // Similarly other attributes in ID3 tag can be processed
            if (SDCard.win[0]=='I'&&SDCard.win[1]=='D'&&SDCard.win[2]=='3')
            {
                printf_tiny("\r\nPlaying File: \033[5;31;47m");
                lcdputstr("\rPlaying File: \r\n");
                for(i=21; i<60; i++)
                {
                    putchar(SDCard.win[i]);
                    lcdputch((SDCard.win[i]));
                    if((SDCard.win[i+1]=='T')&&(SDCard.win[i+2]=='P')&&(SDCard.win[i+3]=='E')&&(SDCard.win[i+4]=='1'))
                        break;
                }
            }
            else                                    // If no ID3 Tag in MP3 just print playing file name
            {
                printf_tiny("\r\nPlaying File: \033[5;31;47m%s",finfo.fname);
            }
            printf_tiny("\033[0m");                 // Start an interface for user to choose options while playing
            starlines(1);
            printf_tiny("\r\n 'q' to stop playing and reselect song");
            printf_tiny("\r\n '+' to increase volume");
            printf_tiny("\r\n '-' to decrease volume");
            printf_tiny("\r\n 'i' to query decoder bit-rate\t\t\0337");
            printf_tiny("\r\n 'm' to mute");
            printf_tiny("\r\n 'u' to unmute");
            printf_tiny("\r\n 'p' to pause/unpause");
            starlines(1);
            STA013StartDecoder();
            #if STRAIGHTCHAIN                       // Find MP3 file first sector and last sector address and loop
            for(sectorn=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database;
                    sectorn<=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database + (finfo.fsize/512);
                    sectorn++)
                SD_ReadMP3(sectorn);                // Process MP3
            #else                                   // Find MP3 next cluster each time and process MP3
                f_mp3_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
            #endif // STRAIGHTCHAIN
            STA013StopDecoder();
            entercontinue();
            WDTRST=0X1E;
            WDTRST=0XE1;
            while(1);
        }
        else if(i==0)
        {
            starlines(1);
            printf_tiny("\r\nSending \033[5;31;47m%s\033[0m via Zigbee.\r\n\n",finfo.fname);
            P3_4=1;
            entercontinue();
            CKCKON0=0x00;
            BDRCON&=0xFD;
            PCON&=0x5F;
            Delay(90);
            #if STRAIGHTCHAIN
            for(sectorn=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database;
                    sectorn<=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database + (finfo.fsize/512);
                    sectorn++)
                SD_PrintTXT(sectorn);
            #else
            f_txt_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
            #endif // STRAIGHTCHAIN
            putchar(0);
            printf_tiny("TIMESTAMP:%x:%x:%x",i2cReceive(Clock_Address,0x02),i2cReceive(Clock_Address,0x01),i2cReceive(Clock_Address,0x00));
            P3_4=0;
            P3_5=1;
            Delay(90);
            _sdcc_external_startup();
            entercontinue();
            WDTRST=0X1E;
            WDTRST=0XE1;
            while(1);
        }
        if (i==3)
        {
            printf_tiny("\r\nCannot Use This File.");
            entercontinue();
            WDTPRG |= 0x07;         // Watchdog Timer Set for 2 seconds
            WDTRST=0X1E;
            WDTRST=0XE1;
            while(1);
        }
        while   (f_readdir(&dirs, &finfo) == FR_OK);
    }
    else
    {
        #if PRINTDEBUG
        printf_tiny("Path Not Found.\r\n");
        #endif // PRINTDEBUG
        return 1;
    }
    return 1;
}
