/**
SD Card Driver
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
This driver creates basic interface to access SD_Card over SPI
Reference:
http://www.8051projects.net/mmc-sd-interface-fat16/
-- All the functions from the above reference have been modified/optimized to suit SDCC 2.6.0 and MCS51

The following functions are self implemented:
BYTE SD_PrintTXT( ULONG SectorNumber)
BYTE SD_ReadMP3(unsigned long mp3address)
------***------***------
**/

//***********((((((((INCLUSIONS))))))))***********

#include "../main.h"

//***********((((((((GLOBAL VARIABLES))))))))***********


//***********((((((((FUNCTIONS))))))))***********

/** Print a sector as Text(ASCII) */
BYTE SD_PrintTXT( ULONG SectorNumber)
{
    BYTE c, i;
    WORD count;
    /* send block-read command... */
    SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
    c = SD_GetByte();
    i = SD_GetByte();
    count = 0xFFFF;

    /* wait for data token... */
    while( (i == 0xff) && --count)
        i = SD_GetByte();

    /* handle time out... */
    if(c || i != 0xFE)
        return( 1 );

    /* read the sector... */
    for( count=1; count<=SD_DATA_SIZE; count++)
    {
        c= SPI_Byte(0xFF);
        if(c!=0) putchar(c);
    }

    /* ignore the checksum... */
    SPI_Byte(0xFF);
    SPI_Byte(0xFF);

    /* release the CS line... */
    Disable_SD_Card();

    return( 0 );
}

/** Read MP3 Sector. Handles DATA_REQ line. Also enables STA013_BIT_ENABLE to use share MISO line with STA013 */
BYTE SD_ReadMP3(unsigned long mp3address)
{
    BYTE c, i;
    unsigned char x;
    WORD count;
    /* send block-read command... */
    SD_Command( CMD_READ_SINGLE_BLOCK, mp3address<<9);
    c = SD_GetByte();
    i = SD_GetByte();
    count = 0xFFFF;

    /* wait for data token... */
    while( (i == 0xff) && --count)
        i = SD_GetByte();

    /* handle time out... */
    if(c || i != 0xFE)
        return( 1 );

    /* read the sector... */
    STA013_CS_ENABLE=1;

    /* 512 bytes loop is unrolled 64 times for faster mp3 read */
    for( count=1; count<=SD_DATA_SIZE; count=count+x)
    {
        x=0;
        if(!(STA013_DEMAND_PIN))        // CHECK IF DEMAND PIN LOW
        {
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//10
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//20
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//30
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//40
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//50
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//60
            SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//64
            x=64;
        }
        else
        {
            if(RI)                     // Check if a key is pressed then process it
            {   switch (SBUF)
                {
                    case '+':   break; // Handle Volume +
                    case '-':   break; // Handle Volume -
                    case 'm':   STA013WriteReg(STA_REG_MUTE,1);break; //mute
                    case 'u':   STA013WriteReg(STA_REG_MUTE,0);break; //unmute
                    case 'p':   RI=0;    // pause
                                STA013PauseDecoder();
                                while((!RI)&&(SBUF!='r'));
                                STA013ResumeDecoder();
                                break;
                    case 'q':   WDTRST=0X1E;    // quit by resetting
                                WDTRST=0XE1;
                                while(1);
                                break;
                    case 'i':   printf_tiny("\0338Average Bit Rate: %d Kbps",STA013GetAverageBitrate());    //get transfer rate from STA013
                                break;
                    default :   break;
                }
                RI=0;
            }
        }
    }
    STA013_CS_ENABLE=0;
    /* ignore the checksum... */
    SPI_Byte(0xFF);
    SPI_Byte(0xFF);

    /* release the CS line... */
    Disable_SD_Card();
    return( 0 );
}

/** Send an 8bit Command with 32bit Argument */
BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument )
{
    /* enable the device... */
    Enable_SD_Card();

    /* send buffer clocks to insure no operations are pending... */
    SPI_nClocks(20);

    /* send command */
    SPI_Byte(0x40 | ThisCommand);

    /* send argument */
    SPI_Byte((unsigned char)(0xFF&(ThisArgument>>24)));
    SPI_Byte((unsigned char)(0xFF&(ThisArgument>>16)));
    SPI_Byte((unsigned char)(0xFF&(ThisArgument>>8)));
    SPI_Byte((unsigned char)(0xFF&(ThisArgument)));
    /* send CRC */
    SPI_Byte((ThisCommand == CMD_GO_IDLE_STATE)? 0x95:0xFF);

    /* send buffer clocks to insure card has finished all operations... */
    SPI_Byte( 0xFF );
    return( 0 );
}

/** Receiving a single Byte response from SD Card */
BYTE SD_GetByte()
{
    BYTE i, j=0xFF;
    for( i=0; i<8; i++ )
    {
        /* response will be after 1-8 0xffs.. */
        j = SPI_Byte( 0xff );
        if(j != 0xff)         /* if it isn't 0xff, it is a response */
            return(j);
    }
    return(j);
}

/** Receiving 2 Bytes response from SD Card */
WORD SD_GetWord()
{
    idata static WORD R2;

    R2 = ((SD_GetByte())<< 8)&0xff00;
    R2 |= SPI_Byte( 0xff );
    return( R2 );
}

/** 1ms Delay */
void Delay( WORD MilSec )
{
    unsigned int i,j;
    for (j=0; j< MilSec; j++)
        for (i=0xFC65; i<0xFFFF; i++);
}

/** SD Card Initialization for SD Ver. 1 and SD Ver. 2*/
BYTE SD_Init()
{
    WORD Count;      // local counter

    SPI_Init();      // Start with slow speed
    Disable_SD_Card();
    SPI_nClocks(10); // 74 clocks with CS high to start SDCARD interface
    Enable_SD_Card();

    Count = 1000;     // one second...
    CardType = 0;
    do                // Wait till SD Card comes in IDLE mode or timeout of function
    {
        Delay(1);
        SD_Command( CMD_GO_IDLE_STATE, 0 );
    }
    while((SD_GetByte() != IDLE_STATE) && (--Count));
    if( !Count )
    {
        #if PRINTDEBUG
        printf_tiny("SD Card not found.");
        #endif // PRINTDEBUG
        return( SD_TIME_OUT );
    }

    Count = 2000;     // two seconds...
    SD_Command( CMD_APP_CMD, 0 );
    SD_Command( ACMD_SEND_OP_COND, 0 );
    if( SD_GetByte() <= 1 )
        CardType = 2;
    else
        CardType = 1;
    do     // Recheck Card Type and send appropriate initialization commands
    {
        Delay(1);
        if( CardType == 2 )
        {
            SD_Command( CMD_APP_CMD, 0 );
            SD_Command( ACMD_SEND_OP_COND, 0 );
        }
        else
        {
            SD_Command( CMD_SEND_OP_COND, 0 );
        }
    }
    while(SD_GetByte() && --Count);
    if( !Count )
    {
        #if PRINTDEBUG
        printf_tiny("MMC not supported.");
        #endif // PRINTDEBUG
        return( SD_TIME_OUT );
    }

    // Check if SD Card is not properly initialized
    SD_Command( CMD_SEND_STATUS, 0 );
    Count = SD_GetWord();

    if( Count )
    {
        #if PRINTDEBUG
        printf_tiny("SD Card not found.");
        #endif // PRINTDEBUG
        return( SD_ERROR );
    }

/**
    if SDHC support is needed select card type = 2 when
    CMD_SEND_IF_COND(08) response with ARG (0x1AA) is according to 3.3V
    Code further needs to support Addressing mode of SDHC in READSECTOR function
*/

    //Set Block Length to 512 - Not needed for SDHC as by default it is 512
    SD_Command( CMD_SET_BLOCKLEN, 512 );
    SD_GetByte();

    //Set SPI to fast mode
    SPI_SetFast();
    Disable_SD_Card();
    return( 0 ); // Init OK
}

/** Read Sector */
BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer )
{
    BYTE c, i;
    WORD count;
    /* send block-read command... */
    SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
    c = SD_GetByte();
    i = SD_GetByte();
    count = 0xFFFF;

    /* wait for data token... */
    while( (i == 0xff) && --count)
        i = SD_GetByte();

    /* handle time out... */
    if(c || i != 0xFE)
        return( 1 );

    /* read the sector... */
    for( count=1; count<=SD_DATA_SIZE; count++)
#if PRINTDEBUG
    {
        *Buffer = SPI_Byte(0xFF);
        printf_tiny(" %x ",*Buffer++);
        if(!(count%16))
        {
            printf_tiny(" ......");
            for(i=16; i>0; i--)
            {
                putchar(*(Buffer-i));
            }
            printf_tiny(" \r\n");
        }
    }
#else
        *Buffer++=SPI_Byte(0xFF);
#endif
    /* ignore the checksum... */
    SPI_Byte(0xFF);
    SPI_Byte(0xFF);

    /* release the CS line... */
    Disable_SD_Card();

    return( 0 );
}

#if _FS_READONLY
/** Write Sector */
BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer )
{
    BYTE i;
    WORD count;

    /* send block-write command... */
    SD_Command( CMD_WRITE_SINGLE_BLOCK, SectorNumber << 9 );
    i = SD_GetByte();

    /* send start block token... */
    SPI_Byte( 0xFE );

    /* write the sector... */
    for( count= 0; count< 512; count++ )
    {
        SPI_Byte(*Buffer++);
    }

    /* ignore the checksum (dummy write)... */
    SPI_Byte(0xFF);
    SPI_Byte(0xFF);

    /* wait for response token... */
    while( SPI_Byte( 0xFF ) != 0xFF)

        /* these 8 clock cycles are critical for the card */
        /* to finish up whatever it's working on at the */
        /* time... (before CS is released!) */
        SPI_Byte( 0xFF );

    /* release the CS line... */
    Disable_SD_Card();
    SPI_Byte( 0xFF );
    return( 0 );
}

BYTE SD_WaitForReady()
{
    BYTE i;
    WORD j;

    SPI_Byte( 0xFF );

    j = 500;
    do
    {
        i = SPI_Byte( 0xFF );
        Delay( 1 );
    }
    while ((i != 0xFF) && --j);

    return( i );
}
#endif
