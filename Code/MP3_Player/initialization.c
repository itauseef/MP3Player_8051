/**
Initialization Routine
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
------***------***------
**/

//***********((((((((FUNCTIONS))))))))***********

#include "main.h"
#include "Drivers\driver_i2c.h"

//***********((((((((FUNCTIONS))))))))***********

/** Initialization of MCU for Serial I/O and 1 KB full usage of XRAM */
void _sdcc_external_startup()
{
    /* Immediate startup procedures. Setting internal XRAM for 1KB usage */
    //CKCON0=0x00;          // Disable X2 mode
    CKCKON0 = 0x01;         // Enable X2 mode for all timers and uses
    CKCKON1 = 0x00;         // X2 mode for SPI
    AUXR   |= 0x0C;         // 1KB XRAM Enable     /* XRS0 = 1; XRS1 = 1; */
	SCON    = 0x50;			// Serial Mode 1
	PCON   |= SMOD;   		// Double Baud Rate Operation
	BRL     = 0xFD;         // 230400 Baud Rate at 11.0592 MHz Crystal Osc in X2 mode
	BDRCON  = 0x1E;         // Start Baud Rate Generation with FAST mode and ref freq = Fosc/6
	EA      = 1; 			// Enable Interrupts
	lcdinit();
}
