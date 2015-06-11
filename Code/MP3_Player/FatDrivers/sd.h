/**
SD Card Driver Header
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

#ifndef SD_H_INCLUDED
#define SD_H_INCLUDED

#include "integer.h"

#define CMD_GO_IDLE_STATE         0
#define CMD_SEND_OP_COND          1
#define CMD_SEND_CSD              9
#define CMD_SEND_CID              10
#define CMD_STOP_TRANSMISSION     12
#define CMD_SEND_STATUS           13
#define CMD_SET_BLOCKLEN          16
#define CMD_READ_SINGLE_BLOCK     17
#define CMD_READ_MULTIPLE_BLOCK   18
#define CMD_WRITE_SINGLE_BLOCK    24
#define CMD_WRITE_MULTIPLE_BLOCK  25
#define CMD_PROGRAM_CSD           27
#define CMD_SET_WRITE_PROT        28
#define CMD_CLR_WRITE_PROT        29
#define CMD_SEND_WRITE_PROT       30
#define CMD_TAG_SECTOR_START      32
#define CMD_TAG_SECTOR_END        33
#define CMD_UNTAG_SECTOR          34
#define CMD_TAG_ERASE_GROUP_START 35
#define CMD_TAG_ERASE_GROUP_END   36
#define CMD_UNTAG_ERASE_GROUP     37
#define CMD_ERASE                 38
#define CMD_LOCK_UNLOCK           42
#define CMD_APP_CMD               55
#define CMD_READ_OCR              58
#define CMD_CRC_ON_OFF            59
#define ACMD_SEND_OP_COND         41

#define IDLE_STATE		          1
#define SD_TIME_OUT		          1
#define SD_ERROR		          2
#define SD_DATA_SIZE	          512

typedef union
{
    BYTE Index[6];
    struct
    {
        BYTE Command;
        ULONG Argument;
        BYTE Cksum;
    } CA;
} CommandStructure;

typedef union
{
    BYTE b[4];
    ULONG ul;
} b_ul;


void Delay( WORD MilSec );
BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument );
WORD SD_GetWord();
BYTE SD_GetByte();
BYTE SD_Init();
BYTE SD_WaitForReady();
BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer );
BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer );
BYTE SD_ReadMP3(unsigned long mp3address);
BYTE SD_PrintTXT( ULONG SectorNumber);

#endif // SD_H_INCLUDED
