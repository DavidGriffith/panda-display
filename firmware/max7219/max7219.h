/*
max7219 lib 0x01

copyright (c) Davide Gironi, 2013

Released under GPLv3.
Please refer to LICENSE file for licensing information.
*/


#ifndef MAX7219_H_
#define MAX7219_H_

#include <avr/io.h>


//setup ports
/*
#define MAX7219_DINDDR DDRD
#define MAX7219_DINPORT PORTD
#define MAX7219_DININPUT PD2
#define MAX7219_CLKDDR DDRD
#define MAX7219_CLKPORT PORTD
#define MAX7219_CLKINPUT PD3
#define MAX7219_LOADDDR DDRD
#define MAX7219_LOADPORT PORTD
#define MAX7219_LOADINPUT PD4
*/

#define MAX7219_DINDDR DDRC
#define MAX7219_DINPORT PORTC
#define MAX7219_DININPUT PC0

#define MAX7219_CLKDDR DDRC
#define MAX7219_CLKPORT PORTC
#define MAX7219_CLKINPUT PC2

#define MAX7219_LOADDDR DDRC
#define MAX7219_LOADPORT PORTC
#define MAX7219_LOADINPUT PC1

//setup number of chip attached to the board
//#define MAX7219_ICNUMBER 2
#define MAX7219_ICNUMBER 1

//define registers
#define MAX7218_REGNOOP 0x00
#define MAX7218_REGDIGIT0 0x01
#define MAX7218_REGDIGIT1 0x02
#define MAX7218_REGDIGIT2 0x03
#define MAX7218_REGDIGIT3 0x04
#define MAX7218_REGDIGIT4 0x05
#define MAX7218_REGDIGIT5 0x06
#define MAX7218_REGDIGIT6 0x07
#define MAX7218_REGDIGIT7 0x08
#define MAX7218_REGDECODE 0x09
#define MAX7218_REGINTENSITY 0x0A
#define MAX7218_REGSCANLIMIT 0x0B
#define MAX7218_REGSHUTDOWN 0x0C
#define MAX7218_REGTEST 0x0F


//functions
extern void max7219_send(uint8_t icnum, uint8_t reg, uint8_t data);
extern void max7219_shutdown(uint8_t icnum, uint8_t value);
extern void max7219_intensity(uint8_t icnum, uint8_t value);
extern void max7219_test(uint8_t icnum, uint8_t value);
extern void max7219_scanlimit(uint8_t icnum, uint8_t value);
extern void max7219_decode(uint8_t icnum, uint8_t value);
extern void max7219_digit0(uint8_t icnum, uint8_t value);
extern void max7219_digit1(uint8_t icnum, uint8_t value);
extern void max7219_digit2(uint8_t icnum, uint8_t value);
extern void max7219_digit3(uint8_t icnum, uint8_t value);
extern void max7219_digit4(uint8_t icnum, uint8_t value);
extern void max7219_digit5(uint8_t icnum, uint8_t value);
extern void max7219_digit6(uint8_t icnum, uint8_t value);
extern void max7219_digit7(uint8_t icnum, uint8_t value);
extern void max7219_digit(uint8_t icnum, uint8_t digit, uint8_t value);
extern void max7219_init();

#endif
