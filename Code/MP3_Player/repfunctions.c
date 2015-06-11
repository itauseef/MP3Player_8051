/**
Functions
Author - Tauseef Indikar
Created on - 3/18/2015

For LAB4 - ESD S15

------***------***------
This file contains repeated functions and printf_tiny statements which are used often.
------***------***------
**/

//***********((((((((INCLUSIONS))))))))***********

#include "main.h"
#include "repfunctions.h"

//***********((((((((FUNCTIONS))))))))***********

/** Basic Math Functions */
unsigned int MAX(unsigned int a,unsigned int b)
{
    return (a>b?a:b);
}

unsigned int MIN(unsigned int a,unsigned int b)
{
    return (a<b?a:b);
}

/** All below codes are repeated printf_tiny statements for
Virtual Terminal Screen interface.*/

/** Clear Virtual Terminal Screen */
void clrvtscreen()
{
    printf_tiny("\033[2J");
    printf_tiny("\033[1;1H");
}

void blanklines(unsigned char number)
{
   unsigned char i;
   for (i=0;i<number;i++)
   printf_tiny("\r\n\033[2K");
}

void entercontinue()
{
    printf_tiny("\r\n  Press enter to continue.");
    while(getchar()!='\r\n');
}

void starlines(unsigned char number)
{
    while(number--)
    printf_tiny("\r\n**********************************************************************");
}
