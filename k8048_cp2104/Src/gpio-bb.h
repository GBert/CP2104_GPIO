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

#ifndef _GPIO_BB_H
#define _GPIO_BB_H

struct gpio_bb_io {
	uint8_t dir;
	uint8_t pin;
	uint8_t bit;
};

struct gpio_bb_config {
	uint8_t clock_pin;
	uint8_t clock_falling;
	uint8_t data_pin_input;
	uint8_t data_pin_output;
	uint8_t clock_delay_low;
	uint8_t clock_delay_high;
	uint8_t lock;
};

struct gpio_bb_shift {
	uint8_t dir;
	uint8_t nbits;
	uint64_t bits;
};

#define GPIO_BB_MAX (256)

#define GPIO_BB_MAJOR (180)
#define GPIO_BB_IO		_IOWR(GPIO_BB_MAJOR, 100, struct gpio_bb_io *)
#define GPIO_BB_CONFIGURE	_IOW(GPIO_BB_MAJOR,  101, struct gpio_bb_config *)
#define GPIO_BB_SHIFT		_IOWR(GPIO_BB_MAJOR, 102, struct gpio_bb_shift *)

#ifndef __KERNEL__
int gpio_bb_open(const char *);
void gpio_bb_close(void);
int gpio_bb_io(struct gpio_bb_io *);
int gpio_bb_configure(struct gpio_bb_config *);
int gpio_bb_shift(struct gpio_bb_shift *);
#endif

#endif /* _GPIO_BB_H */
