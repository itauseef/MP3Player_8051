/**
SPI Drivers
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
Basic SPI functions are defined as Macros in Header
1)Function to get a Byte on SPI line
2)Function to give clocks to SPI line
------***------***------
**/

//***********((((((((INCLUSIONS))))))))***********

#include "../main.h"

//***********((((((((FUNCTIONS))))))))***********

/** Read and return an octet from SPI port*/
BYTE SPI_Byte( BYTE ThisByte )
{
    SPIPutChar(ThisByte);
    SPIWait();
    return SPIGetChar;
}

/** Send SPI device n*8 clock cycles */
void SPI_nClocks(unsigned char nClocks)
{
  while (nClocks--)
    SPIPutChar(0xFF);       // Send SD Card - (8 clock cycles)
  SPIWait();
}
