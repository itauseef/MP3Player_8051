/*
Serial I/O Header
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15
*/


#ifndef SERIO_H_
#define SERIO_H_

//***********((((((((INCLUSIONS))))))))***********

//***********((((((((DEFINITIONS))))))))***********

//***********((((((((DECLARATIONS))))))))***********

void putchar (char c);
char getchar (void);
unsigned int gethex(unsigned char);
int atoi (char *line);
unsigned int atox(char *);
unsigned int getnumber (int lengthnum);
int getnumbetween(int lowlim, int highlim, int divcheck);
void htoa(unsigned int intvalue, char *hexstring,unsigned int precision);
__bit getline(int,char line[65]);

#endif /* SERIO_H_ */
