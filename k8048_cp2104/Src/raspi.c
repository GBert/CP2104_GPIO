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

extern int io_stop;

/*
 * Memory handle
 */
static int gpio_mem = -1;

/*
 * Memory mapped I/O pointer
 */
static void *gpio_map = NULL;

/*
 * I/O Pins 0..31 on headers P1 & P5
 */
static uint8_t gpio_pins[32], gpio_dirs[32];

/*
 * Map Raspberry-Pi GPIO memory
 */
int
gpio_open(const char *device)
{
#ifdef RPI
	/* Open /dev/mem */
	gpio_mem = open(device, O_RDWR | O_SYNC);
	if (gpio_mem < 0) {
		printf("%s: warning: open failed [%s]\n", __func__, strerror(errno));
		gpio_mem = -1;
		return -1;
	}

	/* Memory map GPIO */
	gpio_map = mmap(NULL, GPIO_MAP_LEN, PROT_READ | PROT_WRITE, MAP_SHARED, gpio_mem, GPIO_BASE_ADDR);
	if (gpio_map == MAP_FAILED) {
		printf("%s: warning: mmap failed [%s]\n", __func__, strerror(errno));
		close(gpio_mem);
		gpio_mem = -1;
		return -1;
	}

	/* Reset used pin flags */
	memset(&gpio_pins, 0, 32);

	return gpio_mem;
#else
	return -1; /* Unsupported */
#endif
}

/*
 * Un-map Raspberry-Pi GPIO memory
 */
void
gpio_close(void)
{
	if (gpio_map) {
		if (munmap(gpio_map, GPIO_MAP_LEN)) {
			printf("%s: warning: munmap failed\n", __func__);
		}
		gpio_map = NULL;
	}
	if (gpio_mem >= 0) {
		if (close(gpio_mem)) {
			printf("%s: warning: close failed\n", __func__);
		}
		gpio_mem = -1;
	}
}

static inline void
gpio_read(uint8_t gpio_reg, uint32_t *val)
{
	GPIO_ADDR reg = (GPIO_ADDR)(gpio_map) + gpio_reg;

	*val = *reg;
}

void
gpio_delay(void)
{
	uint32_t val;

	gpio_read(GPLEV0, &val);
}

static inline void
gpio_write(uint8_t gpio_reg, uint32_t val)
{
	GPIO_ADDR reg = (GPIO_ADDR)(gpio_map) + gpio_reg;

	*reg = val;
}

static inline void
gpio_pud(uint8_t pin, uint8_t pud)
{
	gpio_write(GPPUD, pud);
	usleep(1); /* ? */
	gpio_write(GPPUDCLK0, (1 << pin));
	usleep(1); /* ? */
	gpio_write(GPPUD, 0);
	gpio_write(GPPUDCLK0, 0);
}

static inline uint32_t
gpio_gpfsel(uint8_t pin)
{
	return /* GPFSEL0 + */(pin / 10);
}

static inline void
gpio_select_input(uint8_t pin)
{
	GPIO_ADDR reg = (GPIO_ADDR)(gpio_map) + gpio_gpfsel(pin);

	uint32_t val = ~(7 << ((pin % 10) * 3));
	*reg &= val; /* 000 = Input */

	gpio_dirs[pin] = 1;
}

static inline void
gpio_select_output(uint8_t pin)
{
	GPIO_ADDR reg = (GPIO_ADDR)(gpio_map) + gpio_gpfsel(pin);
	
	uint32_t val = 1 << ((pin % 10) * 3);
	*reg |= val; /* 001 = Output */

	gpio_dirs[pin] = 0;
}

int
gpio_get(uint8_t pin, uint8_t *level)
{
	if (pin > 31)
		return -1;

	if (gpio_pins[pin] == 0) {
		gpio_pins[pin] = 1;
		gpio_pud(pin, GPPUD_UP);
		gpio_select_input(pin);
	}
	else if (gpio_dirs[pin] == 0) {
		gpio_select_input(pin);
	}

	uint32_t val;

	gpio_read(GPLEV0, &val);

	*level = (val & (1 << pin)) ? (HIGH) : (LOW);

	return 0;
}

int
gpio_set(uint8_t pin, uint8_t level)
{
	if (pin > 31)
		return -1;

	if (gpio_pins[pin] == 0) {
		gpio_pins[pin] = 1;
		gpio_pud(pin, GPPUD_UP);
		gpio_select_input(pin);
		gpio_select_output(pin);
	}
	else if (gpio_dirs[pin] == 1) {
		gpio_select_output(pin);
	}

	gpio_write((level) ? (GPSET0) : (GPCLR0), (1 << pin));

	return 0;
}

int
gpio_release(uint8_t pin)
{
	if (pin > 31)
		return -1;

	gpio_pud(pin, GPPUD_OFF);
	if (gpio_dirs[pin] == 0)
		gpio_select_input(pin);

	return 0;
}

/*
 * Test GPIO pins
 */
void
gpio_test(struct k8048 *k, int seconds)
{
	uint8_t output_level = 0, input_level;

	printf("\nTEST MODE 4 [RPI GPIO] CTRL-C TO STOP\n");

	while (!io_stop) {
		printf("\n");

		gpio_set(k->vpp, output_level);
		printf("GPIO %-3d (VPP) (TX)  = %d\n", k->vpp, output_level);

		if (k->pgm != GPIO_PGM_DISABLED) {
			gpio_set(k->pgm, output_level);
			printf("GPIO %-3d (PGM)       = %d\n", k->pgm, output_level);
		}

		gpio_set(k->pgc, output_level);
		printf("GPIO %-3d (PGC) (RTS) = %d\n", k->pgc, output_level);

		gpio_set(k->pgdo, output_level);
		printf("GPIO %-3d (PGD) (DTR) = %d\n", k->pgdo,output_level);

		if (k->pgdi != k->pgdo) {
			gpio_get(k->pgdi, &input_level);
			printf("GPIO %02d (PGD) (CTS) = %d\n", k->pgdi, input_level);
		}

		fflush(stdout);
		
		sleep(seconds);
		output_level = 1 - output_level;
	}
}
