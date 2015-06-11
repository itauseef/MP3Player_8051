/**
SPI Drivers
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
Basic SPI functions are defined as Macros in Header
1)Function to get a Byte on SPI line
2)Function to give clocks to SPI line

A lot of basic functionality has been implemented as MACROS to give faster access to SPI
1)Enable CS on SD Card
2)Enable CS on SD Card
3)Initialization
4)Fast Initialization
5)Put a byte on SPI
6)Wait for SPI transfer to get over
------***------***------
**/

#ifndef DRIVER_SPI_H_INCLUDED
#define DRIVER_SPI_H_INCLUDED

//***********((((((((INCLUSIONS))))))))***********

#include "../FatDrivers/integer.h"

//***********((((((((DEFINITIONS))))))))***********

#define SPIGetChar SPDAT

//***********((((((((MACROS))))))))***********

/** Send ChipSelect Enable */
#define Enable_SD_Card(){P1_1 = 0;}       /* enable /CS line to select device  */

/** Send ChipSelect Disable */
#define Disable_SD_Card(){P1_1 = 1;}       /* disable /CS line to select device  */

/** Initialize SPI Slow */
#define SPI_Init(){Disable_SD_Card();SPCON=0x72;}       /* fOSC/8 */

/** Initialize SPI Fast */
#define SPI_SetFast(){Disable_SD_Card();SPCON=0x70;}      /* fOSC/4 */

/** Wait for SPI ready to send a new character (previous sent) */
#define SPIWait(){while(!(SPSTA & 0x80));;}

/** Wait for SPI ready, then initiate character sending */
#define SPIPutChar(c){SPDAT=(c);}

//***********((((((((DECLARATIONS))))))))***********

BYTE SPI_Byte( BYTE ThisByte );
void SPI_nClocks(unsigned char nClocks);

#endif // SPI_H_INCLUDED
