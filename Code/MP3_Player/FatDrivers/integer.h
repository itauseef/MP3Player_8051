/**
Type Definitions
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
These are basic TYPEDEFs used for elm-chans FATFS
Reference:
http://www.8051projects.net/mmc-sd-interface-fat16/
------***------***------
**/

#ifndef INTEGER_H_INCLUDED
#define INTEGER_H_INCLUDED

#ifndef _INTEGER

typedef signed int		INT;
typedef unsigned int	UINT;

/* These types are assumed as 8-bit integer */
typedef signed char		CHAR;
typedef unsigned char	UCHAR;
typedef unsigned char	BYTE;

/* These types are assumed as 16-bit integer */
typedef signed short	SHORT;
typedef unsigned short	USHORT;
typedef unsigned short	WORD;

/* These types are assumed as 32-bit integer */
typedef signed long		LONG;
typedef unsigned long	ULONG;
typedef unsigned long	DWORD;

/* Boolean type */
typedef enum { FALSE = 0, TRUE } BOOL;

#define _INTEGER
#endif

#endif // INTEGER_H_INCLUDED
