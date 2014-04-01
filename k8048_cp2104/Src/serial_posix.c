/*
 * Copyright (C) 2005-2014 Darron Broad
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name `Darron Broad' nor the names of any contributors
 *    may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#include "k8048.h"

/*
 * File descriptor
 */
static int serial_port = -1;

/*
 * 'open_serial_port()' - Open serial serial_port 1.
 *
 * Returns the file descriptor on success or -1 on error.
 */
int
serial_open(const char *device)
{
	struct termios options;

	serial_port = open(device, O_RDWR | O_NOCTTY | O_NDELAY);
	if (serial_port < 0) {
		serial_port = -1;
		return -1;
	}

	fcntl(serial_port, F_SETFL, O_NONBLOCK);

	/*
	 * Get the current options for the serial_port...
	 */
	tcgetattr(serial_port, &options);

	/*
	 * Enable the receiver 
	 */
	options.c_cflag = IGNBRK | IGNPAR | CS8 | CREAD | CLOCAL;

	/*
	 * Reset other options
	 */
	options.c_oflag = 0;
	options.c_lflag = 0;
	
	/*
	 * Set the new options for the serial_port...
	 */
	tcsetattr(serial_port, TCSANOW, &options);

	return serial_port;
}

/*
 * Close serial serial_port
 */
void
serial_close(void)
{
	close(serial_port);
	serial_port = -1;
}

/*
 * Get CTS (input set when +ve) (DATA_IN)
 */
int
get_cts(void)
{
#ifdef CP2104
	unsigned gpio;
	ioctl(serial_port, IOCTL_GPIOGET, &gpio);
	return (gpio & 0x00000008 ) ? (HIGH) : (LOW);
#else
	int status;
	ioctl(serial_port, TIOCMGET, &status);

	return (status & TIOCM_CTS) ? (HIGH) : (LOW);
#endif
}

#ifdef CP2104
void
reset_gpios(void)
{

	unsigned gpio;
	/* reset all GPIOs */
	gpio = 0x0000000F;
	ioctl(serial_port, IOCTL_GPIOSET, &gpio);
}
#endif

/*
 * Set DTR (output +ve on set) (DATA_OUT)
 */
void
set_dtr(int dtr)
{
#ifdef CP2104
	unsigned gpio;
	if (dtr) {
		gpio = GPIO_3_ON;
		ioctl(serial_port, IOCTL_GPIOSET, &gpio);
	}
	else {
		gpio = GPIO_3_OFF;
		ioctl(serial_port, IOCTL_GPIOSET, &gpio);
	}
#else
	int status;

	ioctl(serial_port, TIOCMGET, &status);

	if (dtr)
		status |= TIOCM_DTR;
	else
		status &= ~TIOCM_DTR;

	ioctl(serial_port, TIOCMSET, &status);
#endif
}

/*
 * Set RTS (output +ve on set) (CLOCK)
 */
void
set_rts(int rts)
{
#ifdef CP2104
	unsigned gpio;
	if (rts) {
		gpio = GPIO_2_ON;
		ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* +ve */
	}
	else {
		gpio = GPIO_2_OFF;
		ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* -ve */
	}
#else
	int status;
	ioctl(serial_port, TIOCMGET, &status);

	if (rts)
		status |= TIOCM_RTS;
	else
		status &= ~TIOCM_RTS;

	ioctl(serial_port, TIOCMSET, &status);
#endif
}

/*
 * Set Tx (output +ve on set) (VPP)
 */
void
set_tx(int tx)
{
#ifdef CP2104
	unsigned gpio;
        if (tx) {
		gpio = GPIO_1_ON;
                ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* +ve */
	}
        else {
		gpio = GPIO_1_OFF;
                ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* -ve */
	}
#else
	if (tx)
		ioctl(serial_port, TIOCSBRK, 0); /* +ve */
	else
		ioctl(serial_port, TIOCCBRK, 0); /* -ve */
#endif
}

/*
 * Set GPIO0 (putput +ve on set) (PGM)
 */

#ifdef CP2104
void
set_gpio0(int gpio0)
{
	unsigned gpio;
	
        if (gpio0) {
		gpio = GPIO_0_ON;
                ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* +ve */
	}
        else {
		gpio = GPIO_0_OFF;
                ioctl(serial_port, IOCTL_GPIOSET, &gpio); /* -ve */
	}
}
#endif
