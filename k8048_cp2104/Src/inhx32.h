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

#ifndef _INHX32_H
#define _INHX32_H

/* intel hex format 32 definitions */
#define BB (1)
#define AAAA (3)
#define TT (7)
#define HHHH (9)
#define TT_DATA (0)
#define TT_EOF (1)
#define TT_EXTENDED_SEGMENT_ADDRESS (2)
#define TT_START_SEGMENT_ADDRESS (3)
#define TT_EXTENDED_LINEAR_ADDRESS (4)
#define TT_START_LINEAR_ADDRESS (5)

/*
 * a program data line
 */
#define BYTESMAX (256)
typedef struct {
	uint32_t address;
	uint16_t bytes[BYTESMAX];
	uint16_t nbytes;
} inhx32_data;

/* prototypes */
uint8_t inhx32_gethexn(char);
uint8_t inhx32_gethexb(char *);
int inhx32_compare(const void *, const void *);
void inhx32_order(const void *, VISIT, int); 
uint32_t inhx32(struct k8048 *, const char *, uint32_t);
void inhx32_free(struct k8048 *);

#endif /* !_INHX32_H */
