/*
ledmatrix7219d88 0x01

copyright (c) Davide Gironi, 2013

Released under GPLv3.
Please refer to LICENSE file for licensing information.
*/


#ifndef LEDMATRIX7219D88_H_
#define LEDMATRIX7219D88_H_

#include "../max7219/max7219.h"

#define LEDMATRIX7219D88_MAXLEDMATRIX MAX7219_ICNUMBER //number of led matrix connected

//functions
extern void ledmatrix7219d88_resetmatrix(uint8_t ledmatrix);
extern void ledmatrix7219d88_setmatrix(uint8_t ledmatrix, uint8_t rows[8]);
extern void ledmatrix7219d88_setrow(uint8_t ledmatrix, uint8_t col, uint8_t row);
extern void ledmatrix7219d88_setled(uint8_t ledmatrix, uint8_t lednum, uint8_t status);
extern void ledmatrix7219d88_setledon(uint8_t ledmatrix, uint8_t lednum);
extern void ledmatrix7219d88_setledoff(uint8_t ledmatrix, uint8_t lednum);
extern void ledmatrix7219d88_setintensity(uint8_t ledmatrix, uint8_t intensity);
extern void ledmatrix7219d88_init();

#endif
