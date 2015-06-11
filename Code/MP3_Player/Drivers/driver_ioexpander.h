/**
I/O Expander Driver Header
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
I/O Expander driver has read and write commands over I2C interface for the Expander
with Acknowledgment checks.
Has not been used as Serial Input was used to handle text file transfers.
------***------***------
**/

#ifndef DRIVER_IOEXPANDER_H_INCLUDED
#define DRIVER_IOEXPANDER_H_INCLUDED

//***********((((((((INCLUSIONS))))))))***********

#include "driver_i2c.h"
#include "..\main.h"

//***********((((((((DECLARATIONS))))))))***********

#define Expander_Address_Word_Write 0x40
#define Expander_Address_Word_Read 0x41

//***********((((((((FUNCTIONS))))))))***********

unsigned char ioebyter(void);
unsigned char ioebytew(unsigned char data_write) ;



#endif // DRIVER_IOEXPANDER_H_INCLUDED
