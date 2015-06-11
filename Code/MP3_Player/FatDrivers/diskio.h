/**
DISKIO Header - File skeleton without function implementations provided by elm-chan
Functions implemented by - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
Reference:
1) http://elm-chan.org/fsw/ff/00index_e.html
2) http://www.8051projects.net/mmc-sd-interface-fat16/

The following functions are copied from Reference 2:
1) disk_initialize()
2) disk_status()
3) disk_read()
4) disk_write()
5) disk_ioctl()

The following functions are added by Authors and are based on disk_read():
1) disk_mp3_read
2) disk_txt_read
------***------***------
**/

#ifndef DISKIO_H_INCLUDED
#define DISKIO_H_INCLUDED

/*-----------------------------------------------------------------------
/  Low level disk interface modlue include file  R0.05   (C)ChaN, 2007
/-----------------------------------------------------------------------*/


#define _READONLY	0	/* 1: Read-only mode */
#define _USE_IOCTL	0

#include "integer.h"
#include "sd.h"

/* Status of Disk Functions */
typedef BYTE	DSTATUS;

/* Results of Disk Functions */
typedef enum {
	RES_OK = 0,		/* 0: Successful */
	RES_ERROR,		/* 1: R/W Error */
	RES_WRPRT,		/* 2: Write Protected */
	RES_NOTRDY,		/* 3: Not Ready */
	RES_PARERR		/* 4: Invalid Parameter */
} DRESULT;

xdata DSTATUS Stat;

/*---------------------------------------*/
/* Prototypes for disk control functions */
/*---------------------------------------*/

DSTATUS disk_initialize (BYTE);
DSTATUS disk_status (BYTE);
DRESULT disk_read (BYTE, BYTE*, DWORD, BYTE);
DRESULT disk_mp3_read (BYTE, BYTE*, DWORD, BYTE);
DRESULT disk_txt_read (BYTE, BYTE*, DWORD, BYTE);

#if	_READONLY == 0
DRESULT disk_write (BYTE, const BYTE*, DWORD, BYTE);
#endif
DRESULT disk_ioctl (BYTE, BYTE, void*);
void	disk_timerproc (void);

/* Disk Status Bits (DSTATUS) */

#define STA_NOINIT		0x01	/* Drive not initialized */
#define STA_NODISK		0x02	/* No medium in the drive */
#define STA_PROTECT		0x04	/* Write protected */

/* Command code for disk_ioctrl() */

/* Generic command */
#define CTRL_SYNC			0	/* Mandatory for write functions */
#define GET_SECTOR_COUNT	1	/* Mandatory for only f_mkfs() */
#define GET_SECTOR_SIZE		2
#define GET_BLOCK_SIZE		3	/* Mandatory for only f_mkfs() */
#define CTRL_POWER			4
#define CTRL_LOCK			5
#define CTRL_EJECT			6
/* MMC/SDC command */
#define MMC_GET_TYPE		10
#define MMC_GET_CSD			11
#define MMC_GET_CID			12
#define MMC_GET_OCR			13
#define MMC_GET_SDSTAT		14
/* ATA/CF command */
#define ATA_GET_REV			20
#define ATA_GET_MODEL		21
#define ATA_GET_SN			22

#endif // DISKIO_H_INCLUDED
