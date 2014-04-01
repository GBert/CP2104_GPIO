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

#ifndef _MCP23017_H
#define _MCP23017_H

#include <stdio.h>
#include <stdlib.h>
#include <sysexits.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <sys/ioctl.h>
#ifdef __linux
#include <linux/i2c-dev.h>
#endif

#if 1
/*
 * IOCON_BANK = 0
 */
#define IODIRA   (0x00)
#define IODIRB   (0x01)
#define IPOLA    (0x02)
#define IPOLB    (0x03)
#define GPINTENA (0x04)
#define GPINTENB (0x05)
#define DEFVALA  (0x06)
#define DEFVALB  (0x07)
#define INTCONA  (0x08)
#define INTCONB  (0x09)
#define IOCONA   (0x0A)
#define IOCONB   (0x0B)
#define GPPUA    (0x0C)
#define GPPUB    (0x0D)
#define INTFA    (0x0E)
#define INTFB    (0x0F)
#define INTCAPA  (0x10)
#define INTCAPB  (0x11)
#define GPIOA    (0x12)
#define GPIOB    (0x13)
#define OLATA    (0x14)
#define OLATB    (0x15)
#else
/*
 * IOCON_BANK = 1
 */
#define IODIRA   (0x00)
#define IPOLA    (0x01)
#define GPINTENA (0x02)
#define DEFVALA  (0x03)
#define INTCONA  (0x04)
#define IOCONA   (0x05)
#define GPPUA    (0x06)
#define INTFA    (0x07)
#define INTCAPA  (0x08)
#define GPIOA    (0x09)
#define OLATA    (0x0A)
#define IODIRB   (0x10)
#define IPOLB    (0x11)
#define GPINTENB (0x12)
#define DEFVALB  (0x13)
#define INTCONB  (0x14)
#define IOCONB   (0x15)
#define GPPUB    (0x16)
#define INTFB    (0x17)
#define INTCAPB  (0x18)
#define GPIOB    (0x19)
#define OLATB    (0x1A)
#endif

#define IOCONX_BANK   (0x80)
#define IOCONX_MIRROR (0x40)
#define IOCONX_SEQOP  (0x20)
#define IOCONX_DISSLW (0x10)
#define IOCONX_HAEN   (0x08)
#define IOCONX_ODR    (0x04)
#define IOCONX_INTPOL (0x02)
#define IOCONX_U      (0x01)

/*
 * MCP23016
 */
#define GP0     (0x00)
#define GP1     (0x01)
#define OLAT0   (0x02)
#define OLAT1   (0x03)
#define IPOL0   (0x04)
#define IPOL1   (0x05)
#define IODIR0  (0x06)
#define IODIR1  (0x07)
#define INTCAP0 (0x08)
#define INTCAP1 (0x09)
#define IOCON0  (0x0A)
#define IOCON1  (0x0B)

/* mcp23017 i2c address (default) */
#define MCP_ADDR (0x020)

/* I/O ports */
#define MCP_IOCON (IOCONA)
#define MCP_IODIR (IODIRA)
#define MCP_OUT   (OLATA)
#define MCP_IN    (GPIOA)

/* I/O bits */
#define MCP_VPP  (0x01)
#define MCP_PGC  (0x02)
#define MCP_PGDO (0x04)
#define MCP_PGDI (0x08)
#define MCP_PGM  (0x10)

int mcp_open(const char *, int);
void mcp_close(void);
void mcp_set(uint8_t, uint8_t);
void mcp_get(uint8_t, uint8_t *);
void mcp_set_pgm(int);
void mcp_set_vpp(int);
void mcp_set_pgd(int);
void mcp_set_pgc(int);
int mcp_get_pgd(void);

#endif /* !_MCP23017_H */
