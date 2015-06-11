/**
I2C Driver Header
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
This driver creates a bit banged I2C interface for 8051
There are no ACK checks to make processing fast for accessing STA013
------***------***------
**/

#ifndef DRIVER_I2C_H_
#define DRIVER_I2C_H_

//***********((((((((INCLUSIONS))))))))***********

//***********((((((((DEFINITIONS))))))))***********

#define SCL 		P1_0          // P1.0 used for IIC Clock Signal
#define SDA 		P1_2          // P1.2 used for IIC Data Signal
#define NOP 		__asm nop __endasm
#define ACK         0

//***********((((((((DECLARATIONS))))))))***********

void i2c_start(void);
void i2c_stop(void);
void i2c_clock(void);
char get_i2c_bit(void);
void put_i2c_byte(unsigned char byte);
unsigned char get_i2c_byte();

void i2cSend(unsigned char device, unsigned char subAddr,  unsigned char );
unsigned char i2cReceive(unsigned char device, unsigned char subAddr);

#endif /*DRIVER_I2C_H_*/
