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
#define DEBUG

/******************************************************************************
 * CTRL-C signal handlers
 *****************************************************************************/

int io_stop = 0;

void
io_signal()
{
	io_stop = 1;
}

void
io_signal_on()
{
	io_stop = 0;
	signal(SIGINT, io_signal);
}

void
io_signal_off()
{
	signal(SIGINT, SIG_DFL);
}

/******************************************************************************
 * I/O
 *****************************************************************************/

/*
 * Configure defaults
 */
void
io_config(struct k8048 *k)
{
	k->iot = IONONE;
#ifdef TTY
	/* tty */
	strncpy(k->device, SERIAL_DEVICE, STRLEN);
#endif
#if defined(RPI) || defined(BITBANG)
	/* rpi */
	k->vpp  = GPIO_VPP;		/* TX/!MCLR/VPP     */
	k->pgm  = GPIO_PGM_DISABLED;	/* PGM              */
	k->pgc  = GPIO_PGC;		/* RTS/PGC CLOCK    */
	k->pgdo = GPIO_PGDO;		/* DTR/PGD DATA_OUT */
	k->pgdi = GPIO_PGDI;		/* CTS/PGD DATA_IN  */
#endif
#ifdef MCP23017
	/* mcp23017 */
	k->mcp = MCP_ADDR;
#endif
}

/*
 * Open I/O
 */
int
io_open(struct k8048 *k)
{
	if (k->iot != IONONE) {
		printf("%s: fatal error: device already open.\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}
#ifdef TTY
	if ((strstr(k->device, "/dev/cu") == k->device) || (strstr(k->device, "/dev/tty") == k->device)) {
		/* tty */
		if (serial_open(k->device) < 0)
			return -1;
		k->iot = IOTTY;
		io_signal_on();
/* #ifdef CP2104
		reset_gpios();
#endif */
		return 0;
	} 
#endif
#ifdef RPI
	if (mystrcasestr(k->device, "rpi") == k->device) {
		/* rpi */
		if (gpio_open("/dev/mem") < 0)
			return -1;
		k->iot = IORPI;
		io_signal_on();
		return 0;
	} 
#endif
#ifdef MCP23017
	if (strstr(k->device, "/dev/i2c") == k->device) {
		/* mcp23017 */
		if (mcp_open(k->device, k->mcp) < 0)
			return -1;
		k->iot = IOI2C;
		io_signal_on();
		return 0;
	} 
#endif
#ifdef BITBANG
	if (strstr(k->device, "/dev/gpio-bb") == k->device) {
		/* gpio bit-bang */
		if (gpio_bb_open("/dev/gpio-bb") < 0)
			return -1;
		k->iot = IOBB;
		io_signal_on();
		return 0;
	}
#endif
	return -1; /* Unsupported */
}

/*
 * Release GPIO
 */
void
io_release(struct k8048 *k)
{
	switch (k->iot) {
#ifdef RPI
	case IORPI:	/* rpi */
		if (k->bitrules & PGD_RELEASE)
			gpio_release(k->pgdo);
		if (k->bitrules & PGC_RELEASE)
			gpio_release(k->pgc);
		if (k->bitrules & PGM_RELEASE && k->pgm != GPIO_PGM_DISABLED)
			gpio_release(k->pgm);
		if (k->bitrules & VPP_RELEASE)
			gpio_release(k->vpp);
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		{
		struct gpio_bb_io io = {1, 0, 0};

		if (k->bitrules & PGD_RELEASE) {
			io.pin = k->pgdo;
			gpio_bb_io(&io);
		}
		if (k->bitrules & PGC_RELEASE) {
			io.pin = k->pgc;
			gpio_bb_io(&io);
		}
		if (k->bitrules & PGM_RELEASE && k->pgm != GPIO_PGM_DISABLED) {
			io.pin = k->pgm;
			gpio_bb_io(&io);
		}
		if (k->bitrules & VPP_RELEASE) {
			io.pin = k->vpp;
			gpio_bb_io(&io);
		}
		}
		break;
#endif
	default:break;
	}
}

void
io_close(struct k8048 *k, int run)
{
	if (k->iot == IONONE) {
		printf("%s: fatal error: device not open.\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}
#if defined(RPI) || defined(MCP23017) || defined(BITBANG)
	io_usleep(k, 10);
	if (run) {
		io_set_vpp(k, HIGH);
	} else {
		io_set_vpp(k, LOW);
	}
	io_release(k);
#endif
	switch (k->iot) {
#ifdef TTY
	case IOTTY:
		/* tty */
		serial_close();
		break;
#endif
#ifdef RPI
	case IORPI:
		/* rpi */
		gpio_close();
		break;
#endif
#ifdef MCP23017
	case IOI2C:
		/* mcp23017 */
		mcp_close();
		break;
#endif
#ifdef BITBANG
	case IOBB:
		/* gpio bit-bang */
		gpio_bb_close();
		break;
#endif
	default:break;
	}
	k->iot = IONONE;
	io_signal_off();
}

void
io_exit(struct k8048 *k, int err)
{
	if (k->iot != IONONE) {
		io_close(k, k->bitrules & VPP_RUN);
	}
	exit(err);
}

char *
io_error(struct k8048 *k)
{
	static char *msg;

	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty */
		msg = "Can't open serial I/O";
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		msg = "Can't open RPI I/O";
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		msg = "Can't open MCP23017 I2C I/O";
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		msg = "Can't open GPIO bit-bang I/O";
		break;
#endif
	default:msg = "Unsupported I/O";
		break;
	}

	return msg;
}

char *
io_fault(struct k8048 *k, int errorcode)
{
	static char *msg;

	if (errorcode == 0)
		msg = "device not detected";
	else
		msg = "device not compatible";

	return msg;
}

void
io_usleep(struct k8048 *k, uint32_t n)
{
	/* No sleep */
	if (n == 0) {
		return;
	}
#ifdef TTY
	/* I/O sleep */
	if (k->iot == IOTTY && n < 10) {
		for (uint32_t i = 0; i < n; ++i) {
			/* 1us ttyS, 3ms ttyUSB */
			get_cts();
		}
		return;
	}
#endif
#ifdef RPI
	/* I/O sleep */
	if (k->iot == IORPI && n < 10) {
		for (uint32_t i = 0; i < n; ++i) {
			gpio_delay();
		}
		return;
	}
#endif
	/* Busy sleep */
	if (n < 100) {
		struct timeval tv1, tv2;
		int diff;
		gettimeofday(&tv1, NULL);
		do {
			gettimeofday(&tv2, NULL);
			diff = tv2.tv_usec - tv1.tv_usec;
			if (diff < 0)
				diff += 1000000;	
		} while (diff < n);
		return;
	}
	/* System sleep */
	usleep(n);
}

/******************************************************************************
 * K8048 BIT BANGING (nb. output is positive when feature is enabled)
 *****************************************************************************/

/*
 * Set PGM (LVP PROGRAM OUT)
 */
void
io_set_pgm(struct k8048 *k, uint8_t pgm)
{
	/* BITRULES: K8048/tty = inverting, K8076/tty = non-inverting */
	if (k->bitrules & PGM_OUT_FLIP) {
		pgm = HIGH - pgm;
	}
	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty (PGM not supported) */
#ifdef CP2104
		if (k->pgm != GPIO_PGM_DISABLED)
		set_gpio0(pgm);
#endif
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		if (k->pgm != GPIO_PGM_DISABLED)
			gpio_set(k->pgm, pgm);
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		mcp_set_pgm(pgm);
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		if (k->pgm != GPIO_PGM_DISABLED) {
			struct gpio_bb_io io = {0, k->pgm, pgm};

			gpio_bb_io(&io);
		}
		break;
#endif
	default:printf("%s: fatal error: unsupported\n", __func__);
	       	io_exit(k, EX_SOFTWARE); /* Panic */
		break;
	}
}

/*
 * Set VPP (PROGRAM OUT)
 */
void
io_set_vpp(struct k8048 *k, uint8_t vpp)
{
	/* BITRULES: K8048/tty = inverting, K8076/tty = non-inverting */
	if (k->bitrules & VPP_OUT_FLIP) {
		vpp = HIGH - vpp;
	}
	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty (pgm not supported) */
		set_tx(vpp);
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		gpio_set(k->vpp, vpp);
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		mcp_set_vpp(vpp);
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		{
		struct gpio_bb_io io = {0, k->vpp, vpp};

		gpio_bb_io(&io);
		}
		break;
#endif
	default:printf("%s: fatal error: unsupported\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
		break;
	}
}

/*
 * Set PGD (DATA OUT)
 */
void
io_set_pgd(struct k8048 *k, uint8_t pgd)
{
	/* BITRULES: K8048/tty = inverting, K8076/tty = non-inverting */
	if (k->bitrules & PGD_OUT_FLIP) {
		pgd = HIGH - pgd;
	}
	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty */
		set_dtr(pgd);
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		gpio_set(k->pgdo, pgd);
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		mcp_set_pgd(pgd);
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		{
		struct gpio_bb_io io = {0, k->pgdo, pgd};

		gpio_bb_io(&io);
		}
		break;
#endif
	default:printf("%s: fatal error: unsupported\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
		break;
	}
}

/*
 * Set PGC (CLOCK OUT)
 */
void
io_set_pgc(struct k8048 *k, uint8_t pgc)
{
	/* BITRULES: K8048/tty = inverting, K8076/tty = non-inverting */
	if (k->bitrules & PGC_OUT_FLIP) {
		pgc = HIGH - pgc;
	}
	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty */
		set_rts(pgc);
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		gpio_set(k->pgc, pgc);
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		mcp_set_pgc(pgc);
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		{
		struct gpio_bb_io io = {0, k->pgc, pgc};

		gpio_bb_io(&io);
		}
		break;
#endif
	default:printf("%s: fatal error: unsupported\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
		break;
	}
}

/*
 * Get PGD (DATA IN)
 */
uint8_t
io_get_pgd(struct k8048 *k)
{
	uint8_t pgd = 0;

	switch (k->iot) {
#ifdef TTY
	case IOTTY:	/* tty */
		pgd = get_cts();
		break;
#endif
#ifdef RPI
	case IORPI:	/* rpi */
		gpio_get(k->pgdi, &pgd);
		break;
#endif
#ifdef MCP23017
	case IOI2C:	/* mcp23017 */
		pgd = mcp_get_pgd();
		break;
#endif
#ifdef BITBANG
	case IOBB:	/* gpio bit-bang */
		{
		struct gpio_bb_io io = {1, k->pgdi, 0};

		gpio_bb_io(&io);
		pgd = io.bit;
		}
		break;
#endif
	default:printf("%s: fatal error: unsupported\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
		break;
	}
	/* BITRULES: K8048/tty = inverting, K8076/tty = non-inverting */
	if (k->bitrules & PGD_IN_FLIP) {
		pgd = HIGH - pgd;
	}
	return pgd;
}

/******************************************************************************
 * BIT BANGING FOR PROGRAM/VERIFY MODE, HARDWARE TESTS AND ICSPIO
 *****************************************************************************/

/*
 * Configure chip input
 *
 * Clock falling is to satisfy LVP mode PIC24F devices which output data
 * on the falling edge of the clock and not on the rising edge.
 */
void
io_configure(struct k8048 *k, uint8_t clock_falling)
{
	k->clock_falling = clock_falling;
#ifdef BITBANG
	if (k->iot == IOBB) {
		struct gpio_bb_config config;
		config.clock_pin = k->pgc;
		config.clock_falling = clock_falling;
		config.data_pin_input = k->pgdi;
		config.data_pin_output = k->pgdo;
		config.clock_delay_low = k->sleep_low;
		config.clock_delay_high = k->sleep_high;
		config.lock = (k->bitrules & BB_LOCK) ? 1 : 0;
		gpio_bb_configure(&config);
	}
#endif
}

/*
 * Clock bit in or out
 */
static inline void
io_clock_bit(struct k8048 *k, uint32_t ldly, uint32_t hdly)
{
	io_set_pgc(k, HIGH);		/* Clock high */
	io_usleep(k, hdly);

	io_set_pgc(k, LOW);		/* Clock low */
	io_usleep(k, ldly);
}

/*
 * Initialise data input from chip (PGD=IN, SDATA=OUTPUT)
 */
void
io_data_input(struct k8048 *k)
{
#ifdef RPI
	if (k->iot == IORPI && k->pgdi == k->pgdo)
		return;
#endif
#ifdef BITBANG
	if (k->iot == IOBB && k->pgdi == k->pgdo)
		return;
#endif
	/* Pull-up PGD output for PGD input (Eg. Velleman K8048) */
	io_set_pgd(k, (k->bitrules & PGD_IN_PULLUP) ? (HIGH) : (LOW));
}

/*
 * Clock in bit(s)
 */
uint32_t
io_clock_in_bits(struct k8048 *k, uint32_t ldly, uint32_t hdly, uint8_t nbits)
{
	uint32_t bits = 0;

	/* Initialise for data input */
	io_data_input(k);

	/* Clock in bits 0..N */
	for (int i = 0; i < nbits; i++) {
		if (!k->clock_falling)
			io_clock_bit(k, ldly, hdly);
		bits |= io_get_pgd(k) << i;
		if (k->clock_falling)
			io_clock_bit(k, ldly, hdly);
	}
	return bits;
}

/*
 * Clock out bit(s)
 */
void
io_clock_out_bits(struct k8048 *k, uint32_t ldly, uint32_t hdly, uint32_t bits, uint8_t nbits)
{
	/* Clock out bits 0..N */
	for (int i = 0; i < nbits; ++i) {
		io_set_pgd(k, (bits >> i) & 1);
		io_clock_bit(k, ldly, hdly);
	}
}

/*
 * Clock 1 bit in and 2 bits out (2-wire 4-phase)
 */
#ifdef K32
uint8_t
io_clock_bit_4phase(struct k8048 *k, uint8_t tms, uint8_t tdi)
{
	uint8_t tdo;

	/*********
	 * PHASE 1
	 */
	io_set_pgd(k, tdi);	/* TDI OUTPUT */
	io_clock_bit(k, k->sleep_low, k->sleep_high);

	/*********
	 * PHASE 2
	 */
	io_set_pgd(k, tms);	/* TMS OUTPUT */
	io_clock_bit(k, k->sleep_low, k->sleep_high);

	/*********
	 * PHASE 3
	 */
	io_data_input(k);
	io_get_pgd(k);		/* DISCARD INPUT */
	io_clock_bit(k, k->sleep_low, k->sleep_high);

	/*********
	 * PHASE 4
	 */
	tdo = io_get_pgd(k);	/* TDO INPUT  */
	io_clock_bit(k, k->sleep_low, k->sleep_high);

#ifdef DEBUG
	if (k->debug >= 10)
		printf("%s: tdo [%d] tms [%d] tdi [%d]\n",
			__func__, tdo, tms, tdi);
#endif
	return tdo;
}

/*
 * Clock multiple bits in and multiple bits out (2-wire 4-phase)
 */
uint32_t
io_clock_bits_4phase(struct k8048 *k, uint8_t nbits, uint32_t tms, uint32_t tdi)
{
	uint32_t tdo = 0;

	for (int i = 0; i < nbits; ++i)
		tdo |= io_clock_bit_4phase(k, (tms >> i) & 1, (tdi >> i) & 1) << i;
#ifdef DEBUG
	if (k->debug >= 10)
		printf("%s: tdo [%08X] nbits [%d] tms [0x%08X] tdi [0x%08X]\n",
			__func__, tdo, nbits, tms, tdi);
#endif
	return tdo;
}
#endif /* K32 */

/******************************************************************************
 * BIT-BANG SHIFTING FOR PROGRAM/VERIFY MODE
 *****************************************************************************/

/*
 * Shift in 1..N bits for program/verify mode
 */
uint32_t
io_program_in(struct k8048 *k, uint8_t nbits)
{
	uint32_t bits;
	
	/* FEEDBACK IN */
	if (k->busy)
		io_program_feedback(k, 'i');

	/* INPUT BITS */
	switch (k->iot) {
	default:/* tty */
		/* rpi */
		/* mcp23017 */
		bits = io_clock_in_bits(k, k->sleep_low, k->sleep_high, nbits);
		break;
#ifdef BITBANG
	case IOBB:
		/* gpio bit-bang */
		{
		struct gpio_bb_shift shift = {1, nbits, 0};

		gpio_bb_shift(&shift);
		bits = (uint32_t)shift.bits;
		}
		break;
#endif
	}
#ifdef DEBUG
	if (k->debug >= 10)
		printf("%s:  bits [0x%08X] nbits [%d]\n",
			__func__, bits, nbits);
#endif
	return bits;
}

/*
 * Shift out 1..N bits for program/verify mode
 */
void
io_program_out(struct k8048 *k, uint32_t bits, uint8_t nbits)
{
	/* FEEDBACK OUT */
	if (k->busy)
		io_program_feedback(k, 'o');
#ifdef DEBUG
	if (k->debug >= 10)
		printf("%s: bits [0x%08X] nbits [%d]\n",
			__func__, bits, nbits);
#endif
	/* OUTPUT BITS */
	switch (k->iot) {
	default:/* tty */
		/* rpi */
		/* mcp23017 */
		io_clock_out_bits(k, k->sleep_low, k->sleep_high, bits, nbits);
		break;
#ifdef BITBANG
	case IOBB:
		/* gpio bit-bang */
		{
		struct gpio_bb_shift shift = {0, nbits, (uint64_t)bits};

		gpio_bb_shift(&shift);
		}
		break;
#endif
	}
}

/*
 * Visual feedback for program/verify mode
 */
void
io_program_feedback(struct k8048 *k, char c)
{
	static int c_count = 0, a_count = 0;
	static const char arrow[] = "|/-\\";
	static char c_last = 0;

	if ((c_last != c) || (c_count++ > k->busy)) {
		fprintf(stderr, "%c[%c]\r", arrow[a_count++ % strlen(arrow)], c);
		c_last = c;
		c_count = 0;
	}
}

/******************************************************************************
 * Hardware test routines for `ktest'
 *****************************************************************************/

/*
 * Test VPP, PGC or PGD
 */
#ifdef KTEST
void
io_test0(struct k8048 *k, int pin, int t)
{
	printf("\nTEST MODE VPP|PGD|PGC|PGM\n\n");

	switch (pin) {
	case 0: printf("VPP LOW  (ICSP 1) (D-SUB-9 TX 3) [3 seconds]\n");
		io_set_vpp(k, LOW);
		break;
	case 1: printf("PGC LOW  (ICSP 5) (D-SUB-9 RTS 7) [3 seconds]\n");
		io_set_pgc(k, LOW);
		break;
	case 2: printf("PGD LOW  (ICSP 4) (D-SUB-9 DTR 3) [3 seconds]\n");
		io_set_pgd(k, LOW);
		break;
	case 3: printf("PGM LOW  [3 seconds]\n");
		io_set_pgm(k, LOW);
		break;
	}
	if (!io_stop)
		sleep(3);

	switch (pin) {
	case 0: printf("VPP HIGH (ICSP 1) (D-SUB-9 TX 3) [%d seconds]\n", t);
		io_set_vpp(k, HIGH);
		break;
	case 1: printf("PGC HIGH (ICSP 5) (D-SUB-9 RTS 7) [%d seconds]\n", t);
		io_set_pgc(k, HIGH);
		break;
	case 2: printf("PGD HIGH (ICSP 4) (D-SUB-9 DTR 3) [%d seconds]\n", t);
		io_set_pgd(k, HIGH);
		break;
	case 3: printf("PGM HIGH [%d seconds]\n", t);
		io_set_pgm(k, HIGH);
		break;
	}
	if (!io_stop)
		sleep(t);

	switch (pin) {
	case 0: printf("VPP LOW  (ICSP 1) (D-SUB-9 TX 3) [3 seconds]\n");
		io_set_vpp(k, LOW);
		break;
	case 1: printf("PGC LOW  (ICSP 5) (D-SUB-9 RTS 7) [3 seconds]\n");
		io_set_pgc(k, LOW);
		break;
	case 2: printf("PGD LOW  (ICSP 4) (D-SUB-9 DTR 3) [3 seconds]\n");
		io_set_pgd(k, LOW);
		break;
	case 3: printf("PGM LOW  [3 seconds]\n");
		io_set_pgm(k, LOW);
		break;
	}
	if (!io_stop)
		sleep(3);
	
	printf("\nTEST DONE\n\n");
}

/*
 * Test D-SUB-9
 */
void
io_test1(struct k8048 *k, int t)
{
	printf("\nTEST MODE 1 [D-SUB-9]\n\n");

	k->bitrules = 0; /* Disable BITRULES */

	printf("Tx  SET  (+VE) (D-SUB-9 3) [%d seconds] ", t);
	fflush(stdout);
	io_set_vpp(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n", io_get_pgd(k));

	printf("Tx  CLR  (-VE) (D-SUB-9 3) [%d seconds] ", t);
	fflush(stdout);
	io_set_vpp(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n\n", io_get_pgd(k));

	printf("DTR SET  (+VE) (D-SUB-9 4) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgd(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n", io_get_pgd(k));

	printf("DTR CLR  (-VE) (D-SUB-9 4) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgd(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n\n", io_get_pgd(k));
	
	printf("RTS SET  (+VE) (D-SUB-9 7) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgc(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n", io_get_pgd(k));

	printf("RTS CLR  (-VE) (D-SUB-9 7) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgc(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("CTS IN: %d\n\n", io_get_pgd(k));
	
	printf("TEST DONE\n\n");
}

/*
 * Test ICSP
 */
void
io_test2(struct k8048 *k, int t)
{
	printf("\nTEST MODE 2 [ICSP]\n\n");

	printf("VPP LOW  (0V)  (ICSP 1) [%d seconds] ", t);
	fflush(stdout);
	io_set_vpp(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n", io_get_pgd(k));

	printf("VPP HIGH (12V) (ICSP 1) [%d seconds] ", t);
	fflush(stdout);
	io_set_vpp(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n\n", io_get_pgd(k));

	printf("PGD LOW  (0V)  (ICSP 4) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgd(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n", io_get_pgd(k));

	printf("PGD HIGH (5V)  (ICSP 4) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgd(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n\n", io_get_pgd(k));

	printf("PGC LOW  (0V)  (ICSP 5) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgc(k, LOW);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n", io_get_pgd(k));

	printf("PGC HIGH (5V)  (ICSP 5) [%d seconds] ", t);
	fflush(stdout);
	io_set_pgc(k, HIGH);
	if (!io_stop)
		sleep(t);
	printf("PGD IN: %d\n\n", io_get_pgd(k));

	printf("TEST DONE\n\n");
}

/*
 * Test D-SUB-9 RTS 7 (PGC) DTR 4 (PGD)
 */
void
io_test3(struct k8048 *k, int t)
{
	int data = LOW, clk = HIGH - data;

	printf("\nTEST MODE 3 [D-SUB-9 RTS 7 (PGC) DTR 4 (PGD)] CTRL-C TO STOP\n\n");

	while (!io_stop) {
		io_set_pgd(k, data);
		io_set_pgc(k, clk);
		switch (t) {
		case 0:	/* None */
			break;
		case 1:	/* Sleep */
			io_usleep(k, k->sleep_low);
			break;
		default:/* Microseconds */
			io_usleep(k, t);
			break;
		}
		data = clk;
		clk  = HIGH - data;
	}

	printf("\nTEST DONE\n\n");
}

/*
 * Test PIC16F627 on Velleman K8048 (PIC16F628A is compatible)
 *
 * Program:
 *	k14 program asm/pic16f627/debug.hex
 *
 * Note: This is the PICMicro which came with the Velleman K8048 kit.
 */
void
io_test4(struct k8048 *k, int t)
{
	int i, j = 0;
	uint8_t c, line[STRLEN];

	printf("\nTEST MODE 4 [16F627 debug.asm] CTRL-C TO STOP\n\n");

	/* Initialise for data input */
	io_data_input(k);

	while (!io_stop) {
		/* Handshake */
		io_set_pgc(k, LOW);			/* PGC LOW */

		while (io_get_pgd(k) != HIGH && !io_stop)/* WAIT FOR PGD HIGH */
			io_usleep(k, 1);
		
		io_set_pgc(k, HIGH);			/* PGC HIGH */
		
		while (io_get_pgd(k) != LOW && !io_stop)/* WAIT FOR PGD LOW */
			io_usleep(k, 1);

		/* Byte input */
		c = 0;
		for (i = 0; i < 8; i++) {
			io_set_pgc(k, LOW);		/* PGC LOW */
			io_usleep(k, t);

			c = c >> 1;			/* CLOCK BIT IN */
			if (io_get_pgd(k))
				c |= 0x80;

			io_set_pgc(k, HIGH);		/* PGC HIGH */
			io_usleep(k, t);
		}

		printf("%s: read byte: %02X %c\n", __func__, c, PIC_CHAR(c));

		if (c == 0x03) {			/* ETX */
			if (j > 1 && line[0] == 0x02) {	/* STX */
				line[j] = '\0';
				printf("%s: read line: %s", __func__,
					&line[1]);
			}
			j = 0;
		}
		else if (j < STRMAX)
			line[j++] = c;
	}

	printf("\nTEST DONE\n\n");
}
#endif /* KTEST */

/******************************************************************************
 * Software test routines for `kio' (ICSP I/O)
 *****************************************************************************/

/*
 * Start or stop firmware (not Velleman K8048)
 */
#ifdef KIO
/*
 * Send an 8-bit byte
 */
int
io_test_out(struct k8048 *k, int t1, int t2, uint8_t byte)
{
	int i, bit;
	int parity = 0; /* 0=even 1=odd */

	if (k->debug >= 10) {
		fprintf(stderr, "%s(k, t1=%d, t2=%d, byte=0x%02X)\n",
			__func__, t1, t2, byte);
	}

	/* Start bit */
	io_clock_out_bits(k, t1, t1, LOW, 1);

	/* Send 8-bit byte */
	for (i = 0; !io_stop && i < 8; ++i) {
		bit = (byte >> i) & 1;
		parity ^= bit;
		io_clock_out_bits(k, t1, t1, bit, 1);
	}

	/* Send parity bit */	
	io_clock_out_bits(k, t1, t1, parity, 1);

	/* Send stop bit */
	io_clock_out_bits(k, t1, t1, HIGH, 1);

	/* Firmware delay */
	io_usleep(k, t2);
	
	return ERRNONE;
}

/*
 * Get an 8-bit byte
 */
int
io_test_in(struct k8048 *k, int t1, int t2, uint8_t *byte)
{
	int i, bit;
	int parity = 0; /* 0=even 1=odd */
	
	*byte = '\0';

	if (k->debug >= 10) {
		fprintf(stderr, "%s(k, t1=%d, t2=%d, %p)\n",
			__func__, t1, t2, byte);
	}

	/* Get start bit */
	if (io_clock_in_bits(k, t1, t1, 1) != LOW) {
		if (k->debug >= 10)
			fprintf(stderr, "%s: INVALID START BIT (NOT LOW)\n", __func__);
		return ERRPROTOCOL;
	}

	/* Get 8-bit byte */
	for (i = 0; !io_stop && i < 8; i++) {
		bit = io_clock_in_bits(k, t1, t1, 1);
		parity ^= bit;
		*byte |= (bit << i);
	}

	/* Get parity bit */	
	bit = io_clock_in_bits(k, t1, t1, 1);
	if (bit != parity) {
		if (k->debug >= 10)
			fprintf(stderr, "%s: INVALID PARITY BIT\n", __func__);
		return ERRPARITY;
	}

	/* Get stop bit */
	if (io_clock_in_bits(k, t1, t1, 1) != HIGH) {
		if (k->debug >= 10)
			fprintf(stderr, "%s: INVALID STOP BIT (NOT HIGH)\n", __func__);
		return ERRPROTOCOL;
	}

	/* Firmware processing delay */
	io_usleep(k, t2);

	if (k->debug >= 10)
		fprintf(stderr, "%s: OKAY [0x%02X]\n", __func__, *byte);
	return ERRNONE;
}

/*
 * Send command and arg(s), get result
 */
int
io_test_command(struct k8048 *k, int t1, int t2, uint8_t *cmdarg, int cmdargc, uint32_t *res, int resw)
{
	int i, err;
	uint8_t byte;

	if (k->debug >= 10)
		fprintf(stderr, "%s(k, t1=%d, t2=%d, cmdarg[0]=%02X, cmdargc=%d, %p, %d)\n", __func__,
			t1, t2, cmdarg[0], cmdargc, (void *)res, resw);

	if (cmdargc < 0) {
		printf("%s: fatal error: invalid length: %d\n", __func__, cmdargc);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}
	
	if (resw < 0 || resw > 4) {
		printf("%s: fatal error: invalid width: %d\n", __func__, resw);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	if (resw > 0 && res == NULL) {
		printf("%s: fatal error: invalid result pointer: (NULL)\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	/* Send command */
	io_test_out(k, t1, t2, cmdarg[0]);

	/* Get command ACK or NACK */
	err = io_test_in(k, t1, t2, &byte);
	if (err != ERRNONE) {
		return err;
	}
	if (byte != ACK) {
		return ERRNOTSUP;
	}

	/* Send arg(s), get data byte(s) */
	if (cmdargc > 0 || resw > 0)
	{
		uint8_t checksum = cmdarg[0] + byte;

		/* Send arg(s) */
		if (cmdargc > 0) {
			for (i = 1; !io_stop && i <= cmdargc; ++i) {
				io_test_out(k, t1, t2, cmdarg[i]);
				checksum += cmdarg[i];
			}
		}

		/* Get data byte(s) */
		if (resw > 0) {
			*res = 0;
			for (i = 0; !io_stop && i < resw; ++i) {
				err = io_test_in(k, t1, t2, &byte);
				if (err != ERRNONE) {
					return err;
				}
				*res = (*res << 8) | byte;
				checksum += byte;
			}
		}

		/* Get check-sum */
		err = io_test_in(k, t1, t2, &byte);
		if (err != ERRNONE) {
			return err;
		}
		if (byte != checksum) {
			if (k->debug >= 10)
				fprintf(stderr, "%s: INVALID CHECKSUM 0x%02X != 0x%02X\n",
					__func__, byte, checksum);
			return ERRINVALID;
		}
	}

	return ERRNONE; /* OK */
}

/*
 * Get error string
 */
char *
io_test_err(int err)
{
	static char *errmsg;

	switch (err) {
	case ERRNONE:
		errmsg = "ERRNONE";
		break;
	case ERRTIMEOUT:
		errmsg = "ERRTIMEOUT";
		break;
	case ERRPROTOCOL:
		errmsg = "ERRPROTOCOL";
		break;
	case ERRPARITY:
		errmsg = "ERRPARITY";
		break;
	case ERRNOTSUP:
		errmsg = "ERRNOTSUP";
		break;
	case ERRINVALID:
		errmsg = "ERRINVALID";
		break;
	default:errmsg = "ERRUNKNOWN";
		break;
	}

	return errmsg;
}
#endif /* KIO */

/******************************************************************************
 * Software test routines for `ktest'
 *****************************************************************************/

#if defined(KTEST) && defined(KIO)
/*
 * Read and output switches.
 */
int
io_test_switch(struct k8048 *k, int t)
{
	int err;
	uint8_t cmd[1];

	uint32_t sw;
	static uint32_t lastsw = 0xFF;

	cmd[0] = CMD_SWITCH;
	err = io_test_command(k, t, t << 1, cmd, 0, &sw, 1);
	if (err != ERRNONE) {
		return err;
	}
	if (!io_stop && sw != lastsw) {
		printf("%s: SW=0x%02X SW1=%d SW2=%d SW3=%d SW4=%d\n",
			__func__, sw,
			(sw & 0x01) >> 0, (sw & 0x02) >> 1,
			(sw & 0x04) >> 2, (sw & 0x08) >> 3);
		lastsw = sw;
	}
	return ERRNONE;
}

/*
 * Read and output last error.
 */
int
io_test_lasterror(struct k8048 *k, int t)
{
	int err;
	uint8_t cmd[1];

	uint32_t le;
	static uint32_t lastle = 0;

	cmd[0] = CMD_ERROR;
	err = io_test_command(k, t, t << 1, cmd, 0, &le, 1);
	if (err != ERRNONE) {
		return err;
	}
	if (!io_stop && le != lastle) {
		printf("%s: last error: %s [0x%02X]\n",
			__func__, io_test_err(le), le);
		lastle = le;
	}
	return ERRNONE;
}

/*
 * Test LEDs and switches
 */
void
io_test5(struct k8048 *k, int t)
{
	int err;
	uint8_t cmd[2];
	uint32_t ld = 0;

	printf("\nTEST MODE 5 [ICSPIO] CTRL-C TO STOP\n\n");

	/* VPP LOW */
	io_set_vpp(k, LOW);
	io_usleep(k, 10000); /* 10ms */

	/* VPP HIGH */
	io_set_vpp(k, HIGH);
	io_usleep(k, 10000); /* 10ms */

	while (!io_stop) {
		cmd[0] = CMD_LED;
		cmd[1] = ld++;
		err = io_test_command(k, t, t << 1, cmd, 1, NULL, 0);
		if (err != ERRNONE) {
			fprintf(stderr, "%s: error: %s [0x%02X]\n",
				__func__, io_test_err(err), err);
			break;
		}
		err = io_test_switch(k, t);
		if (err != ERRNONE) {
			fprintf(stderr, "%s: error: %s [0x%02X]\n",
				__func__, io_test_err(err), err);
			break;
		}
		err = io_test_lasterror(k, t);
		if (err != ERRNONE) {
			fprintf(stderr, "%s: error: %s [0x%02X]\n",
				__func__, io_test_err(err), err);
			break;
		}
	}

	printf("\nTEST DONE\n\n");
}
#endif /* KTEST && KIO */
