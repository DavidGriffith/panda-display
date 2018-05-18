# Makefile cribbed heavily from
# https://svn.my-webspace.at/ledtools/module/vusb/Makefile

ISP		= usbtiny	# edit this line for your programmer
DEVICE		= atmega8	# edit this line for your microcontroller
F_CPU		= 16000000UL	# in Hz
FUSE_L		= 0xFF
FUSE_H		= 0xD9

PROJECT		= panda-display
CFLAGS		= -Iusbdrv -Iledmatrix7219d88 -I. -DDEBUG_LEVEL=0
OBJECTS		= usbdrv/usbdrv.o usbdrv/usbdrvasm.o ledmatrix7219d88/ledmatrix7219d88.o max7219/max7219.o $(PROJECT).o

COMPILE		= avr-gcc -Wall -Os -DF_CPU=$(F_CPU) $(CFLAGS) -mmcu=$(DEVICE)
AVRDUDE		= avrdude -c $(ISP) -p $(DEVICE)
CC		= gcc		# for compiling ptest.c

##############################################################################
# Fuse values for particular devices
##############################################################################
# If your device is not listed here, go to
# http://palmavr.sourceforge.net/cgi-bin/fc.cgi
# and choose options for external crystal clock and no clock divider
#
################################## ATMega8 ##################################
# ATMega8 FUSE_L (Fuse low byte):
# 0x9f = 1 0 0 1   1 1 1 1
#        ^ ^ \ /   \--+--/
#        | |  |       +------- CKSEL 3..0 (external >8M crystal)
#        | |  +--------------- SUT 1..0 (crystal osc, BOD enabled)
#        | +------------------ BODEN (BrownOut Detector enabled)
#        +-------------------- BODLEVEL (2.7V)
# ATMega8 FUSE_H (Fuse high byte):
# 0xc9 = 1 1 0 0   1 0 0 1 <-- BOOTRST (boot reset vector at 0x0000)
#        ^ ^ ^ ^   ^ ^ ^------ BOOTSZ0
#        | | | |   | +-------- BOOTSZ1
#        | | | |   + --------- EESAVE (don't preserve EEPROM over chip erase)
#        | | | +-------------- CKOPT (full output swing)
#        | | +---------------- SPIEN (allow serial programming)
#        | +------------------ WDTON (WDT not always on)
#        +-------------------- RSTDISBL (reset pin is enabled)
#

# symbolic targets:
help:
	@echo "This Makefile has no default rule. Use one of the following:"
	@echo "make hex ....... to build main.hex"
	@echo "make program ... to flash fuses and firmware"
	@echo "make fuse ...... to flash the fuses"
	@echo "make flash ..... to flash the firmware (use this on metaboard)"
	@echo "make clean ..... to delete objects and hex file"


ptest:	ptest.c
	$(CC) -o ptest ptest.c -lusb-1.0 -Wall -g

hex: $(PROJECT).hex

program: flash fuse

# rule for programming fuse bits:
fuse:
	@[ "$(FUSE_H)" != "" -a "$(FUSE_L)" != "" ] || \
		{ echo "*** Edit Makefile and choose values for FUSE_L and FUSE_H!"; exit 1; }
	$(AVRDUDE) -U hfuse:w:$(FUSE_H):m -U lfuse:w:$(FUSE_L):m

# rule for uploading firmware:
flash: $(PROJECT).hex
	$(AVRDUDE) -U flash:w:$(PROJECT).hex:i

# rule for deleting dependent files (those which can be built by Make):
clean:
	rm -f $(PROJECT).hex $(PROJECT).lst $(PROJEC).obj $(PROJECT).cof \
		$(PROJECT).list $(PROJECT).map $(PROJECT).eep.hex \
		$(PROJECT).elf *.o usbdrv/*.o main.s usbdrv/oddebug.s \
		usbdrv/usbdrv.s
	rm -f max7219/*lst max7219/*o
	rm -f ledmatrix7219d88/*lst ledmatrix7219d88/*o
	rm -f ptest

# Generic rule for compiling C files:
.c.o:
	$(COMPILE) -c $< -o $@

# Generic rule for assembling Assembler source files:
.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@
# "-x assembler-with-cpp" should not be necessary since this is the default
# file type for the .S (with capital S) extension. However, upper case
# characters are not always preserved on Windows. To ensure WinAVR
# compatibility define the file type manually.

# Generic rule for compiling C to assembler, used for debugging only.
.c.s:
	$(COMPILE) -S $< -o $@

# file targets:

# Since we don't want to ship the driver multipe times, we copy it into this project:
usbdrv:
	cp -r ../../../usbdrv .

$(PROJECT).elf: usbdrv $(OBJECTS)	# usbdrv dependency only needed because we copy it
	$(COMPILE) -o $(PROJECT).elf $(OBJECTS)

$(PROJECT).hex: $(PROJECT).elf
	rm -f $(PROJECT).hex $(PROJECT).eep.hex
	avr-objcopy -j .text -j .data -O ihex $(PROJECT).elf $(PROJECT).hex
	avr-size $(PROJECT).hex

# debugging targets:

disasm:	$(PROJECT).elf
	avr-objdump -d $(PROJECT).elf

cpp:
	$(COMPILE) -E $(PROJECT).c
