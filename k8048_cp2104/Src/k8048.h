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

#ifndef _K8048_H
#define _K8048_H

#undef DEBUG

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sysexits.h>
#include <ctype.h>
#include <time.h>
#include <errno.h>
#include <unistd.h>
#include <signal.h>
#include <search.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <sys/ioctl.h>
#include <time.h>
#include <errno.h> 
#include <libgen.h>
#include <fcntl.h>
#include <limits.h>
#include <stdint.h>
#ifndef O_NDELAY
#define O_NDELAY O_NONBLOCK
#endif

#define LOW  (0)
#define HIGH (1)

#ifndef FALSE
#define FALSE (LOW)
#endif

#ifndef TRUE
#define TRUE (HIGH)
#endif

#define STRLEN (1024)
#define STRMAX (STRLEN - 1)

#define UL_ON  ("\033[4m")
#define UL_OFF ("\033[0m")

#define ARCH12BIT (0x00000FFF)
#define ARCH14BIT (0x00003FFF)
#define ARCH16BIT (0x0000FFFF)
#define ARCH24BIT (0x00FFFFFF)
#define ARCH32BIT (0xFFFFFFFF) /* UNIMPLEMENTED */

#define NOKEY  (0) /* NO  KEY IN OPERATION  */
#define HVPKEY (1) /* HVP KEY IN OPERATION */
#define LVPKEY (2) /* LVP KEY IN OPERATION */

struct k8048;

/* I/O backends */
#ifdef TTY
#include "serial_posix.h"
#endif
#ifdef RPI
#include "raspi.h"
#endif
#ifdef MCP23017
#include "mcp23017.h"
#endif
#ifdef BITBANG
#include "gpio-bb.h"
#endif

#include "util.h"
#include "dotconf.h"
#include "inhx32.h"
#include "io.h"
#include "pic.h"
#include "pic12.h"
#include "pic14.h"
#include "pic16.h"
#include "pic24.h"
#include "pic32.h"

struct k8048 {
	char dotfile[STRLEN];	/* configuration file name			*/
	char device[STRLEN];	/* I/O device name: tty or rpi			*/
	char devicename[STRLEN];/* overridden PICMicro device name		*/ 
	uint16_t bitrules;	/* I/O bit rules				*/
	uint32_t key;		/* MCHP LVP key					*/
	uint32_t busy;		/* I/O busy cursor speed			*/
	uint32_t sleep_low;	/* I/O clock low duration			*/
	uint32_t sleep_high;	/* I/O clock high duration			*/
	uint32_t fwsleep;	/* ICSPIO bit time				*/
	uint32_t debug;		/* default 0 (no debugging)			*/
	uint8_t clock_falling;	/* Clock falling edge for shifting in bits      */

	inhx32_data **pdata;    /* hex32 data lines                             */
	uint32_t count;		/* hex32 data line count                        */

	/* I/O backends */
	uint8_t iot;		/* I/O type (tty, rpi or i2c)			*/
#ifdef MCP23017
	int mcp;		/* MCP23017 I2C address				*/
#endif
#if defined(RPI) || defined(BITBANG) || defined(TTY)
        uint8_t vpp;		/* TX/!MCLR/VPP     */
        uint8_t pgc;		/* RTS/PGC CLOCK    */
        uint8_t pgdo;		/* DTR/PGD DATA_OUT */
        uint8_t pgdi;		/* CTS/PGD DATA_IN  */
        uint8_t pgm;		/* PGM OUT          */
#endif
	/* Hardware operations */
	struct pic_ops *pic;
};

/* prototypes */
void usage_k8048(struct k8048 *);
void usage_ktest(struct k8048 *, char *);
void usage_k12(struct k8048 *, char *);
void usage_k14(struct k8048 *, char *);
void usage_k16(struct k8048 *, char *);
void usage_k24(struct k8048 *, char *);
void usage_k32(struct k8048 *, char *);
void usage(struct k8048 *, char *, char *);
int main(int, char **);

#endif /* !_K8048_H */
