/**
LCD Drivers Header
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
This is an LCD driver for Optrex DMC20434/HD44780U
Data connections are through MCU Data out
RS and RW are controlled through MCU address Lines
 -- Check Header File for details
------***------***------
**/


#ifndef DRIVER_LCD_H_INCLUDED
#define DRIVER_LCD_H_INCLUDED

//***********((((((((INCLUSIONS))))))))***********

#define LCD_CLEAR           send_command(0x01)

//***********((((((((GLOBALVARS))))))))***********

/** A15&A14&A13&A12 IS USED AS ENABLE */
/** A08 IS USED AS RW */
/** A09 IS USED AS RS */
__xdata __at(0xF000) static unsigned char lcdinstwrptr;		        // RW=0 RS=0
__xdata __at(0xF100) static unsigned char lcdinstrdptr;		        // RW=1 RS=0
__xdata __at(0xF200) static unsigned char lcddatawrptr;		        // RW=0 RS=1
__xdata __at(0xF300) static unsigned char lcddatardptr;		        // RW=1 RS=1


//***********((((((((MACROS))))))))***********

/** Wait till LCD is free by polling busy FLAG */
/** Defining this here without a timeout hangs the system if no LCD is present */
#define lcdbusywait() 	{while ((lcdinstrdptr & 0x80) !=0);}		// Wait on Busy Flag

//***********((((((((DECLARATIONS))))))))***********

void lcdinit(void);
void lcdgotoaddr(unsigned char addr);
void lcdgotoxy(unsigned char row, unsigned char column);
void lcdputch(char value);
void lcdputstr(char *string);
void lcdputstr_currloc(char *string);
unsigned char get_lcd_addr(void);
void send_command(unsigned char command);

#endif // DRIVER_LCD_H_INCLUDED
