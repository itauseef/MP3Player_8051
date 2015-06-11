/**
Header for main.c

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

#ifndef MAIN_H_INCLUDED
#define MAIN_H_INCLUDED

//***********((((((((INCLUSIONS))))))))***********

#include <mcs51/at89c51ed2.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "timers.h"
#include "repfunctions.h"

/** Driver Inclusions */

#include "Drivers/serio.h"
#include "Drivers/driver_lcd.h"
#include "Drivers/driver_spi.h"
#include "Drivers/driver_i2c.h"
#include "Drivers/driver_ioexpander.h"

/** SDCard & FAT Drivers Inclusions */

#include "FatDrivers/integer.h"
#include "FatDrivers/diskio.h"
#include "FatDrivers/sd.h"
#include "FatDrivers/tff.h"


// include project-dependent configuration

#include "Drivers/driver_sta013.h"

//***********((((((((DEFINITIONS))))))))***********

#define RTC_PROGRAMMING_REQ  0  /* Set as 1 if RTC Clock requires to be programmed */
#define STADEBUG        0       /* Usage has been removed after STA013 was initialized and PRINTDEBUG implemented */
#define PRINTDEBUG      0       /* Set as 1 to print debug prompts before infinite loops and failures */
#define STRAIGHTCHAIN   1       /* Set as 1 if files have been stored in STRAIGHTCHAINS */
                                /* Set as 0 if you do not know what this is or If files are fragmented in non contiguous sectors */
#define FAIL            -1
#define SUCCESS         1
#define PCA_VECTOR      6       /* 0x33 Programmable Counter Array interrupt */
#define TF2_VECTOR      5       /* 0x2B Timer 2 interrupt */
#define Clock_Address   0xD0    /* RTC Clock Address */

//***********((((((((GLOBAL VAR))))))))***********

xdata WORD at(0x1000) CardType;	/* MMC = 0, SDCard v1 = 1, SDCard v2 = 2 */
xdata at(0x2000) FATFS SDCard;
xdata at(0x3000) unsigned char xbuffer[];

//***********((((((((DECLARATIONS))))))))***********

void _sdcc_external_startup();
void starlines(unsigned char number);
unsigned char ChooseFile( char *path );

#endif // MAIN_H_INCLUDED
