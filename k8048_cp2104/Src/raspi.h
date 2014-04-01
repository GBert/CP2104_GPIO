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

#ifndef _RASPI_H
#define _RASPI_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h>
#include <fcntl.h>
#include <assert.h>
#include <unistd.h>
#include <stdint.h>
#include <sysexits.h>
#include <errno.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>

/* Access from ARM Running Linux */
#define BCM2708_PERI_BASE_ADDR (0x20000000)
#define GPIO_BASE_ADDR (BCM2708_PERI_BASE_ADDR + 0x200000)
#define GPIO_MAP_LEN (0x201000 - 0x200000)

/* I/O access */
typedef volatile uint32_t *GPIO_ADDR;

/* GPIO registers (32-bit) */
#define GPFSEL0 (0x00)
#define GPFSEL1 (0x01)
#define GPFSEL2 (0x02)
#define GPFSEL3 (0x03)
#define GPFSEL4 (0x04)
#define GPFSEL5 (0x05)
/* RESERVED 0x06 */
#define GPSET0 (0x07)
#define GPSET1 (0x08)
/* RESERVED 0x09 */
#define GPCLR0 (0x0A)
#define GPCLR1 (0x0B)
/* RESERVED 0x0C */
#define GPLEV0 (0x0D)
#define GPLEV1 (0x0E)
/* RESERVED 0x0F */
#define GPEDS0 (0x10)
#define GPEDS1 (0x11)
/* RESERVED 0x12 */
#define GPREN0 (0x13)
#define GPREN1 (0x14)
/* RESERVED 0x15 */
#define GPFEN0 (0x16)
#define GPFEN1 (0x17)
/* RESERVED 0x18 */
#define GPHEN0 (0x19)
#define GPHEN1 (0x1A)
/* RESERVED 0x1B */
#define GPLEN0 (0x1C)
#define GPLEN1 (0x1D)
/* RESERVED 0x1E */
#define GPAREN0 (0x1F)
#define GPAREN1 (0x20)
/* RESERVED 0x21 */
#define GPAFEN0 (0x22)
#define GPAFEN1 (0x23)
/* RESERVED 0x24 */
#define GPPUD (0x25)
#define GPPUDCLK0 (0x26)
#define GPPUDCLK1 (0x27)
/* RESERVED 0x28 */
/* RESERVED 0x29 */
/* RESERVED 0x2A */
/* RESERVED 0x2B */
/* TEST 0x2C */

#define GPPUD_OFF (0)
#define GPPUD_DOWN (1)
#define GPPUD_UP (2)
#define GPPUD_RESERVED (3)
#define GPPUD_DELAY (150)

int gpio_open(const char *);
void gpio_close(void);

void gpio_delay(void);
int gpio_get(uint8_t, uint8_t *);
int gpio_set(uint8_t, uint8_t);
int gpio_release(uint8_t);
void gpio_test(struct k8048 *k, int);

#endif /* !_RASPI_H */
