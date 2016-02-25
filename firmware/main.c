/* Name: main.c
 * Project: hid-data, example how to use HID for data transfer
 * Author: Christian Starkjohann
 * Creation Date: 2008-04-11
 * Tabsize: 4
 * Copyright: (c) 2008 by OBJECTIVE DEVELOPMENT Software GmbH
 * License: GNU GPL v2 (see License.txt), GNU GPL v3 or proprietary (CommercialLicense.txt)
 */

/*
This example should run on most AVRs with only little changes. No special
hardware resources except INT0 are used. You may have to change usbconfig.h for
different I/O pins for USB. Please note that USB D+ must be the INT0 pin, or
at least be connected to INT0 as well.
*/

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>  /* for sei() */
#include <util/delay.h>     /* for _delay_ms() */
#include <avr/eeprom.h>

#include <avr/pgmspace.h>   /* required by usbdrv.h */
#include <string.h>
#include "usbdrv.h"
#include "oddebug.h"        /* This is also an example for using debug macros */

#include "ledmatrix7219d88.h"

uint8_t rows[8] = {
	0b00000001,
	0b00000001,
	0b00000001,
	0b00000001,
	0b00000001,
	0b00000001,
	0b00000001,
	0b11111111
};

/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */

PROGMEM const char usbHidReportDescriptor[22] = {    /* USB report descriptor */
    0x06, 0x00, 0xff,              // USAGE_PAGE (Generic Desktop)
    0x09, 0x01,                    // USAGE (Vendor Usage 1)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x26, 0xff, 0x00,              //   LOGICAL_MAXIMUM (255)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x95, 0x80,                    //   REPORT_COUNT (128)
    0x09, 0x00,                    //   USAGE (Undefined)
    0xb2, 0x02, 0x01,              //   FEATURE (Data,Var,Abs,Buf)
    0xc0                           // END_COLLECTION
};
/* Since we define only one feature report, we don't use report-IDs (which
 * would be the first byte of the report). The entire report consists of 128
 * opaque data bytes.
 */

/* The following variables store the status of the current data transfer */
static uchar    currentAddress;
static uchar    bytesRemaining;

/* ------------------------------------------------------------------------- */

/* usbFunctionRead() is called when the host requests a chunk of data from
 * the device. For more information see the documentation in usbdrv/usbdrv.h.
 */
uchar   usbFunctionRead(uchar *data, uchar len)
{
    if(len > bytesRemaining)
        len = bytesRemaining;
    eeprom_read_block(data, (uchar *)0 + currentAddress, len);
    currentAddress += len;
    bytesRemaining -= len;
    return len;
}


/* usbFunctionWrite() is called when the host sends a chunk of data to the
 * device. For more information see the documentation in usbdrv/usbdrv.h.
 */
uchar   usbFunctionWrite(uchar *data, uchar len)
{
    uchar i, j;
    uint8_t temp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

    if(bytesRemaining == 0)
        return 1;               /* end of transfer */
    if(len > bytesRemaining)
        len = bytesRemaining;

    /* Rotate the bitfield 90 degrees clockwise */
    for(i=0; i < len; i++){
	for(j=0; j < len; j++){
	    temp[i] = (  ( (data[j] & (1 << (7-i) ) ) >> (7-i) ) << j ) | temp[i];
	}
    }

    /* Get the rows straight. */
    for (i = 0; i < len; i++) {
	rows[i] = ( ((0x01 & temp[i]) << 3) |
		    ((0x02 & temp[i]) << 1) |
		    ((0x04 & temp[i]) << 2) |
		    ((0x08 & temp[i]) << 2) |
		    ((0x10 & temp[i]) >> 3) |
		    ((0x20 & temp[i]) << 1));
    }


    /* Get the bit order straight. */
    temp[0] = rows[0];
    temp[1] = rows[7];
    temp[2] = rows[3];
    temp[3] = rows[4];
    temp[4] = rows[1];
    temp[5] = rows[6];
    temp[6] = rows[2];
    temp[7] = rows[5];


    memcpy(rows, temp, sizeof(uint8_t) * 8);

    currentAddress += len;
    bytesRemaining -= len;
    return bytesRemaining == 0; /* return 1 if this was the last chunk */
}

/* ------------------------------------------------------------------------- */

usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;

    if((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS){    /* HID class request */
        if(rq->bRequest == USBRQ_HID_GET_REPORT){  /* wValue: ReportType (highbyte), ReportID (lowbyte) */
            /* since we have only one report type, we can ignore the report-ID */
            bytesRemaining = 8;
            currentAddress = 0;
            return USB_NO_MSG;  /* use usbFunctionRead() to obtain data */
        }else if(rq->bRequest == USBRQ_HID_SET_REPORT){
            /* since we have only one report type, we can ignore the report-ID */
            bytesRemaining = 8;
            currentAddress = 0;
            return USB_NO_MSG;  /* use usbFunctionWrite() to receive data from host */
        }
    }else{
        /* ignore vendor type requests, we don't use any */
    }
    return 0;
}

/* ------------------------------------------------------------------------- */

int main(void)
{
    uchar   i;

    wdt_enable(WDTO_1S);
    /* If you don't use the watchdog, replace the call above with a
     * wdt_disable().
     * On newer devices, the status of the watchdog (on/off, period) is
     * PRESERVED OVER RESET!
     */
    /* RESET status: all port bits are inputs without pull-up.
     * That's the way we need D+ and D-. Therefore we don't need any
     * additional hardware initialization.
     */
    odDebugInit();
    DBG1(0x00, 0, 0);       /* debug output: main starts */
    usbInit();
    usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
    i = 0;
    while(--i){             /* fake USB disconnect for > 250 ms */
        wdt_reset();
        _delay_ms(1);
    }
    usbDeviceConnect();
    sei();
    ledmatrix7219d88_init();

    DBG1(0x01, 0, 0);       /* debug output: main loop starts */
    for(;;){                /* main event loop */
        DBG1(0x02, 0, 0);   /* debug output: main loop iterates */
        wdt_reset();
        usbPoll();
	ledmatrix7219d88_setmatrix(0, rows);
    }
    return 0;
}

/* ------------------------------------------------------------------------- */
