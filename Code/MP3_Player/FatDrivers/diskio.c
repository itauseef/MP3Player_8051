/**
DISKIO - File skeleton without function implementations provided by elm-chan
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

/*
DRESULT disk_mp3_read (BYTE, BYTE*, DWORD, BYTE);
DRESULT disk_txt_read (BYTE, BYTE*, DWORD, BYTE);

*/
/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2007        */
/*-----------------------------------------------------------------------*/
/* This is a stub disk I/O module that acts as front end of the existing */
/* disk I/O modules and attach it to FatFs module with common interface. */
/*-----------------------------------------------------------------------*/
#include "../main.h"

/*-----------------------------------------------------------------------*/
/* Correspondence between drive number and physical drive                */
/* Note that Tiny-FatFs supports only single drive and always            */
/* accesses drive number 0.                                              */

#define MMC   0

/*-----------------------------------------------------------------------*/
/* Initialize a Drive                                                    */

DSTATUS disk_initialize( BYTE drv )
{
   /* Supports only single drive */
   if( drv != 0)
      return STA_NOINIT;

   /* if initialization succeeds... */
   if( !SD_Init() )
   {
      /* Clear STA_NOINIT */
      Stat &= ~STA_NOINIT;
   }

   /* return current status */
   return( Stat );
}

/*-----------------------------------------------------------------------*/
/* Return Disk Status                                                    */

DSTATUS disk_status( BYTE drv	)
{
   /* Supports only single drive */
   if( drv != 0)
      return STA_NOINIT;

   /* return current status */
   return( Stat );
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */

DRESULT disk_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
{
   /* Supports only single drive and must have a size of 1 sector */
   if( drv || !count || (count>
1) )
      return( RES_PARERR );

   /* if we haven't initialized the card yet... */
   if( Stat & STA_NOINIT )
      return( RES_NOTRDY );

   /* Single block read */
   if( SD_ReadSector( sector, buff ) )
      return( RES_ERROR );

   /* return successful result: OK */
   return( RES_OK );
}

DRESULT disk_mp3_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
{
   /* Supports only single drive and must have a size of 1 sector */
   if( drv || !count || (count>
1) )
      return( RES_PARERR );

   /* if we haven't initialized the card yet... */
   if( Stat & STA_NOINIT )
      return( RES_NOTRDY );

*buff=*buff;        // Lazily used buff instead of getting rid of the variable

   /* Single block read */
   if( SD_ReadMP3( sector ) )
      return( RES_ERROR );

   /* return successful result: OK */
   return( RES_OK );
}

DRESULT disk_txt_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
{
   /* Supports only single drive and must have a size of 1 sector */
   if( drv || !count || (count>
1) )
      return( RES_PARERR );

   /* if we haven't initialized the card yet... */
   if( Stat & STA_NOINIT )
      return( RES_NOTRDY );

*buff=*buff;        // Lazily used buff instead of getting rid of the variable

   /* Single block read */
   if( SD_PrintTXT( sector) )
      return( RES_ERROR );

   /* return successful result: OK */
   return( RES_OK );
}

/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */

#if _READONLY == 0
DRESULT disk_write( BYTE drv, const BYTE *buff, DWORD sector, BYTE count )
{
   /* Supports only single drive and must have a size of 1 sector */
   if( drv || !count || (count>
1) )
      return( RES_PARERR );

   /* if we haven't initialized the card yet... */
   if( Stat & STA_NOINIT )
      return( RES_NOTRDY );

   /* Single block write */
   if( SD_WriteSector( sector, buff ) )
      return( RES_ERROR );

   /* return successful result: OK */
   return( RES_OK );
}
#endif /* _READONLY */



/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */

DRESULT disk_ioctl ( BYTE drv, BYTE ctrl, void *buff )
{
   DRESULT res;
   BYTE  *ptr = buff;

   /* Supports only single drive */
   if( drv != 0)
      return RES_PARERR;

   /* if we haven't initialized the card yet... */
   if( Stat & STA_NOINIT )
      return RES_NOTRDY;

   res = RES_ERROR;

   switch( ctrl )
   {
      /* Flush dirty buffer if present */
      case CTRL_SYNC :
         Enable_SD_Card();
         if( SD_WaitForReady() == 0xFF )
            res = RES_OK;
         break;

      default:
         res = RES_PARERR;
         break;
   }

   Disable_SD_Card();
   SPI_Byte( 0xFF );
   return res;
}
