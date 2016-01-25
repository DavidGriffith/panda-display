Panda Display Panel
===================

---

The Panda Display Panel is a hardware peripheral for use with the klh10 
pdp-10 emulator.  It was originally presented by Spare Time Gizmos.  
This one replaces the parallel port interface with a USB interface.


The original Panda Display Panel page is at 
http://www.sparetimegizmos.com/Hardware/Panda.htm


**Bill of Materials**

|Connectors| |
|:----------|---|
|J1| 1 x 4 0.1" header strip|
|J2| 2 x 3 0.1" header strip|
|U1| 28-pin narrow DIP socket|
|U2| 24-pin narrow DIP socket|

|Semiconductors| |
|:--------------|---|
|U1|		ATmega8 microcontroller -- 28-pin narrow DIP|
|U2|		Maxim MAX7219 matrix digit display driver -- 24-pin narrow DIP|
|D1,D2|		1N747 3.6V zener diodes|
|BAR1-BAR4|	10 segment LED bar display -- Lite-On LTA-1000HR|
|LED1-LED4|	Standard brightness red LED 5mm -- Kingbright WP1503ID|

|Crystals| |
|:--------|---|
|Y1|		16MHz quartz crystal -- HC49/US low profile|

|Resistors| |
|:---------|---|
|R1|		2.2K 0.25W 5%|
|R2|		4.7K 0.25W 5%|
|R3,R4|		68   0.25W 5%|
|R5|		10K  0.25W 5%|

|Capacitors| |
|:----------|---|
|C1|		10uF 25V electrolytic or tantalum|
|C2,C3|		0.1uF ceramic monolithic|
|C4,C5|		22pF ceramic monolithic|


**Assembly Notes**

Pay careful attention to the fact that the chips are mounted on the rear 
of the board and most of the passives are on the front.

1.  Mount the parts that are opposite the chips.  Make sure the leads 
    are trimmed so they won't interfere with the chip sockets.
2.  Mount the chip sockets on the rear.
3.  Mount the 10uF polarized capacitor and the two header strips on the rear.
4.  Mount the remaining resistors and diodes.
5.  Mount the LED bars and the discrete LEDs on the front.

The discrete LEDs may be pressed up against the board unless you decide 
to mount the LED bars in sockets.  If you want to do that, first mount 
sockets and install the LED bars in the sockets.  Then insert a discrete 
LED and turn the Panda Display over such that the LED bars lie flat upon 
the table.  Let the discrete LED fall against the table.  Once you're 
satisfied that the discrete LED is level with the LED bars, solder the 
discrete LED in place.  Repeat for the other discrete LEDs.

To build and install the firmware, you must have the AVR-GCC development 
environment including compiler, binutilities, and libc 
(http://www.nongnu.org/avr-libc/) and AVRDUDE
(http://www.nongnu.org/avrdude/) installed.  Most if not all current 
distributions of Linux and BSD include packages for installing these.  
You will also need an AVR programming device supported by AVRDUDE.  A 
USBtinyISP is commonly-available, reliable, and inexpensive.

It's a good idea to add your programmer to your system's udev rules.  
For the USBtinyISP, see https://learn.adafruit.com/usbtinyisp/avrdude

**Mounting and Use**

The Panda Display is intended to be mounted in a 5.25" external drive 
bay behind a knockout panel.  It's up to you to make this as simply or 
elaborately as you desire.  An overlay may be applied over the top to 
dress it up.

This edition of the Panda Display is powered and driven through a USB 
port.  There are two ways of going about the cabling.  If you have a 
spare USB header on your computer's motherboard, you'll need to make up 
a four-conductor cable terminated at both ends with a 1x4 0.1" female 
header socket.

If you have a regular Type-A socket inside your computer, take an 
ordinary USB cable, cut off the Type-B end, trim the jacket, and crimp 
the conductors to a 1x4 0.1" female header socket.

Finally, to make any meaningful use of the Panda Display, you will need 
a PDP-10 emulator which has been patched to make use of it.
