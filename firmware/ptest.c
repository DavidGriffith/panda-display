#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <libusb-1.0/libusb.h>

#include "usbconfig.h"


#define BUFFSIZE	8
#define STRINGBUF	256

static int  hexread(unsigned char *buffer, char *string, int buflen)
{
	char    *s;
	int     pos = 0;

	while((s = strtok(string, ", ")) != NULL && pos < buflen){
		string = NULL;
		buffer[pos++] = (char)strtol(s, NULL, 0) & 0xff;
	}
	return pos;
}

static libusb_device_handle *get_panda_handle(libusb_device **devs)
{
	libusb_device *dev;
	libusb_device_handle    *handle = NULL;
	int i = 0;
	int r;

	int found = 0;
	int openable = 0;

	unsigned char prod[STRINGBUF];
	char devname[USB_CFG_DEVICE_NAME_LEN] = {USB_CFG_DEVICE_NAME};

	unsigned char   rawVid[2] = {USB_CFG_VENDOR_ID};
	unsigned char	rawPid[2] = {USB_CFG_DEVICE_ID};

	int vid = rawVid[0] + 256 * rawVid[1];
	int pid = rawPid[0] + 256 * rawPid[1];


	while ((dev = devs[i++]) != NULL) {
		struct libusb_device_descriptor desc;
		libusb_get_device_descriptor(dev, &desc); /* this always succeeds */
		// Do the VID and PID match?
		if (desc.idVendor == vid && desc.idProduct == pid) {
			found = 1;
			r = libusb_open(dev, &handle);
			// If we can't open it, keep trying.
			// There may be a device with the same pid and vid but not a Panda Display
			if (r < 0) {
				continue;
			}
			openable = 1;
			r = libusb_get_string_descriptor_ascii(handle, desc.iProduct, prod, STRINGBUF);
			if (r < 0) {
				libusb_close(handle);
				printf("ERROR: %s\n", libusb_strerror(r));
				return NULL;
			}
			// Here we have something that matches the free
			// VID and PID offered by Objective Development.
			// Now we need to Check device name to see if it
			// really is a Panda Display.
			if ((0 == strncmp((char *)prod, devname, USB_CFG_DEVICE_NAME_LEN)) &&
				(desc.idVendor == vid) &&
				(desc.idProduct == pid)) {
				return handle;
			}
			libusb_close(handle);
		}
	}

	if (found) {
		if (openable)
			printf("ERROR: Found USB device matching 16c0:05df, but it isn't a Panda Display\n");
		else {
			printf("ERROR: Found something that might be a Panda Display, but couldn't open it.\n");
			printf("       %s\n", libusb_strerror(r));
		}
	} else {
		printf("ERROR: Didn't find anything that could be a Panda Display\n");
	}

	return NULL;
}


int main(int argc, char *argv[])
{
	libusb_device **devs; //pointer to pointer of device, used to retrieve a list of devices
	libusb_device_handle *dev_handle; //a device handle
	libusb_context *ctx = NULL; //a libusb session

	int r; //for return values
	ssize_t cnt; //holding number of devices in list

	unsigned char buffer[BUFFSIZE];

	int i, pos;

	//initialize the library for the session we just declared
	r = libusb_init(&ctx);
	if (r < 0) {
		printf("Init error %d\n", r);
		exit(1);
	}

//	libusb_set_debug(ctx, 3);

	cnt = libusb_get_device_list(ctx, &devs); //get the list of devices

	if(cnt < 0) {
	printf("unable to get list of devices\n");
		exit(1);
	}
	dev_handle = get_panda_handle(devs);
	if(dev_handle == NULL) {
		printf("Unable to access Panda Display.\n");
		exit(1);
	}

	printf("Accessed the Panda Display.\n");

	if(libusb_kernel_driver_active(dev_handle, 0) == 1) {
		printf("Kernel Driver Active\n");
		if(libusb_detach_kernel_driver(dev_handle, 0) == 0)
			printf("Kernel Driver Detached\n");
	}

	r = libusb_claim_interface(dev_handle, 0);
	if(r < 0) {
		printf("Cannot claim interface!\n");
		exit(1);
	}
	printf("Interface claimed\n");

	if (argc > 1) {

		memset(buffer, 0x00, sizeof(buffer));

		for (pos = 0, i = 1; i < argc && pos < sizeof(buffer); i++) {
			pos += hexread(buffer + pos, argv[i], sizeof(buffer) - pos);
		}

		printf("Sending 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x\n",
			buffer[0] & 0xff,
			buffer[1] & 0xff,
			buffer[2] & 0xff,
			buffer[3] & 0xff,
			buffer[4] & 0xff,
			buffer[5] & 0xff,
			buffer[6] & 0xff,
			buffer[7] & 0xff);

		libusb_control_transfer(dev_handle,
			LIBUSB_REQUEST_TYPE_CLASS | LIBUSB_RECIPIENT_DEVICE | LIBUSB_ENDPOINT_OUT,
			LIBUSB_REQUEST_SET_CONFIGURATION,
			0x0000,
			0,
			buffer,
			BUFFSIZE,
			5000);
	}

	r = libusb_release_interface(dev_handle, 0);
	if (r != 0) {
		printf("Unable to release interface!\n");
		exit(1);
	}
	printf("Interface released\n");

	libusb_close(dev_handle);
	libusb_exit(ctx);

	return 0;
}
