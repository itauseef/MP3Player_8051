/**
Timers
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
RTC Initialization Function
------***------***------
**/

//***********((((((((INCLUSIONS))))))))***********

#include "main.h"
#include "timers.h"

//***********((((((((FUNCTIONS))))))))***********

#if RTC_PROGRAMMING_REQ
/** Set CLOCK value of RTC in BCD */
void clock_init()
{
    /* Set Clock in RTC */
    i2cSend(Clock_Address,0x00,0x30); //Second
    i2cSend(Clock_Address,0x01,0x00); //Minute
    i2cSend(Clock_Address,0x02,0x07); //Hour
    i2cSend(Clock_Address,0x03,0x01); //DayOfWeek
    i2cSend(Clock_Address,0x04,0x26); //Date
    i2cSend(Clock_Address,0x05,0x04); //Month
    i2cSend(Clock_Address,0x06,0x15); //Year
}
#endif
