/*
ledmatrix595d44 0x01

copyright (c) Davide Gironi, 2013

Released under GPLv3.
Please refer to LICENSE file for licensing information.
*/


#include <avr/io.h>
#include <avr/interrupt.h>

#include "ledmatrix7219d88.h"


//lexmatrix cols and rows
volatile uint8_t ledmatrix7219d88_data[LEDMATRIX7219D88_MAXLEDMATRIX][8];


/*
 * reset all leds
 */
void ledmatrix7219d88_resetmatrix(uint8_t ledmatrix) {
	uint8_t j = 0;
	for(j=0; j<8; j++) {
		ledmatrix7219d88_data[ledmatrix][j] = 0; //set columns to zero
		max7219_digit(ledmatrix, j, 0); //reset display
	}
}


/*
 * reset a led matrix
 */
void ledmatrix7219d88_setmatrix(uint8_t ledmatrix, uint8_t rows[8]) {
	uint8_t j = 0;
	if(ledmatrix < LEDMATRIX7219D88_MAXLEDMATRIX) {
		for(j=0; j<8; j++) {
			ledmatrix7219d88_data[ledmatrix][j] = rows[j];
			max7219_digit(ledmatrix, j, rows[j]);
		}
	}
}


/*
 * set a ledmatrix row
 */
void ledmatrix7219d88_setrow(uint8_t ledmatrix, uint8_t col, uint8_t row) {
	if(ledmatrix < LEDMATRIX7219D88_MAXLEDMATRIX && col < 8 && row < (1<<8)) {
		ledmatrix7219d88_data[ledmatrix][col] = row;

		max7219_digit(ledmatrix, col, row);
	}
}


/*
 * set a ledmatrix led on or off
 */
void ledmatrix7219d88_setled(uint8_t ledmatrix, uint8_t lednum, uint8_t status) {
	if(lednum < 64) {
		uint8_t col = lednum%8;
		uint8_t row = ledmatrix7219d88_data[ledmatrix][col];
		if(status)
			row |= (1<<(lednum/8));
		else
			row &= ~(1<<(lednum/8));

		ledmatrix7219d88_setrow(ledmatrix, col, row);
	}
}


/*
 * set a ledmatrix led on
 */
void ledmatrix7219d88_setledon(uint8_t ledmatrix, uint8_t lednum) {
	ledmatrix7219d88_setled(ledmatrix, lednum, 1);
}


/*
 * set a ledmatrix led on
 */
void ledmatrix7219d88_setledoff(uint8_t ledmatrix, uint8_t lednum) {
	ledmatrix7219d88_setled(ledmatrix, lednum, 0);
}


/*
 * set ledmatrix7219d88 intensity
 */
void ledmatrix7219d88_setintensity(uint8_t ledmatrix, uint8_t intensity) {
	max7219_intensity(ledmatrix, intensity);
}


/*
 * init ledmatrix7219d88
 */
void ledmatrix7219d88_init() {
	//init max7219
	max7219_init();

	uint8_t ledmatrix = 0;
	for(ledmatrix=0; ledmatrix<LEDMATRIX7219D88_MAXLEDMATRIX; ledmatrix++) {
		uint8_t j = 0;
		for(j=0; j<0; j++)
			ledmatrix7219d88_data[ledmatrix][j] = 0; //set columns to zero
		max7219_shutdown(ledmatrix, 1);
		max7219_test(ledmatrix, 0);
		max7219_decode(ledmatrix, 0);
		max7219_intensity(ledmatrix, 15);
		max7219_scanlimit(ledmatrix, 7);
		ledmatrix7219d88_resetmatrix(ledmatrix);
	}
}
