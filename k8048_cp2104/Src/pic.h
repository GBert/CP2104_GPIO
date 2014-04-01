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

#ifndef _PIC_H
#define _PIC_H

/* ISCP OPERATIONS */
struct pic_ops {
	uint32_t arch;
	void (*selector)(void);
	void (*read_config_memory)(struct k8048 *, int);
	uint32_t (*get_program_size)(uint32_t *);
	uint32_t (*get_data_size)(uint32_t *);
	uint32_t (*get_executive_size)(uint32_t *);
	uint32_t (*read_program_memory_block)(struct k8048 *, uint32_t *, uint32_t, uint32_t);
	uint32_t (*read_data_memory_block)(struct k8048 *, uint16_t *, uint32_t, uint16_t);
	void (*program)(struct k8048 *, char *, int);
	uint32_t (*verify)(struct k8048 *, char *);
	void (*bulk_erase)(struct k8048 *k, uint16_t, uint16_t);
	void (*row_erase)(struct k8048 *, uint32_t, uint32_t);
	void (*dumpdeviceid)(struct k8048 *);
	void (*dumpconfig)(struct k8048 *, int);
	void (*dumposccal)(struct k8048 *);
	void (*dumpdevice)(struct k8048 *);
	void (*dumphexcode)(struct k8048 *, uint32_t, uint32_t, uint32_t *);
	void (*dumpinhxcode)(struct k8048 *, uint32_t, uint32_t, uint32_t *);
	void (*dumphexdata)(struct k8048 *, uint32_t, uint32_t, uint16_t *);
	void (*dumpinhxdata)(struct k8048 *, uint32_t, uint32_t, uint16_t *);
};

/* ENHANCED MID-RANGE ICSP             = MCHP (0x4D434850)          */
#define MCHPKEY (0x4D434850)

/* PIC18/dsPIC33/PIC24 EXECUTIVE       = MCHP (0x4D434850) REVERSED */
#define PHCMKEY (0x0A12C2B2)

/* PIC24 ICSP                          = MCHQ (0x4D434851) REVERSED */
#define QHCMKEY (0x8A12C2B2)

/* dsPIC33F DS70152B-page 37 ICSP/STDP = ???? (0x5B982073) REVERSED */
#define P30FKEY (0xCE0419DA)

void pic_x(struct k8048 *); /* DEBUGGING */

uint32_t pic_arch(struct k8048 *, const char *);

int pic_cmp(const void *, const void *);
#define PIC_NCOLS (5)
void pic_selector(struct k8048 *);

#define PIC_CONFIG_ONLY (0)
#define PIC_CONFIG_ALL (1)
void pic_read_config(struct k8048 *, int);

uint32_t pic_get_program_size(struct k8048 *, uint32_t *);
uint32_t pic_get_data_size(struct k8048 *, uint32_t *);
uint32_t pic_get_executive_size(struct k8048 *, uint32_t *);

uint32_t pic_read_program_memory_block(struct k8048 *, uint32_t *, uint32_t, uint32_t);
uint32_t pic_read_data_memory_block(struct k8048 *, uint16_t *, uint32_t, uint16_t);

#define PIC_VOID (0xFFFF)
void pic_program(struct k8048 *, char *, int);
uint32_t pic_verify(struct k8048 *, char *);

#define PIC_INTERNAL (0xFFFF)
#define PIC_NOINTERNAL (0xFFFE)
void pic_writebandgap(struct k8048 *k, uint16_t);
void pic_writeosccal(struct k8048 *, uint16_t);
void pic_blank(struct k8048 *);

#define PIC_ERASE_ID (UINT32_MAX)
#define PIC_ERASE_CONFIG (PIC_ERASE_ID - 1)
#define PIC_ERASE_EEPROM (PIC_ERASE_ID - 2)
void pic_erase(struct k8048 *, uint32_t, uint32_t);

void pic_dumpdeviceid(struct k8048 *);

#define PIC_BRIEF   (0)
#define PIC_VERBOSE (1)
void pic_dumpconfig(struct k8048 *);
void pic_dumposccal(struct k8048 *);

void pic_dumpaddr(uint32_t, int);
void pic_dumpbyte(uint32_t, uint8_t);
void pic_dumpword16(uint32_t, uint16_t);
void pic_dumpword32(uint32_t, uint32_t);

void pic_dumpdevice(struct k8048 *);

void pic_dumpprogram(struct k8048 *, uint32_t);
void pic_dumpdata(struct k8048 *);
void pic_dumpexec(struct k8048 *);

#define PIC_HEXDEC (1)
#define PIC_INHX32 (2)
#define PIC_CHAR(X) ((((X) >= ' ' && (X) < 127) ? (X) : ('.')))
void pic_dump_program(struct k8048 *, uint32_t, uint32_t, int);
int pic_mtcode(uint32_t, uint32_t, uint32_t *);
void pic_dumphexcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic_dumpinhxcode(struct k8048 *, uint32_t, uint32_t, uint32_t *);
void pic_dump_data(struct k8048 *, uint32_t, uint32_t, int);
int pic_mtdata(uint16_t, uint32_t, uint16_t *);
void pic_dumphexdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);
void pic_dumpinhxdata(struct k8048 *, uint32_t, uint32_t, uint16_t *);

#endif /* !_PIC_H */
