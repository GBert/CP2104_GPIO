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
 * Line data for twalk
 */
static inhx32_data **inhx32_pdata;

/*
 * Line index for twalk
 */
static uint32_t inhx32_index;

/*
 * Get hex nibble
 */
uint8_t
inhx32_gethexn(char c)
{
	if (c >= '0' && c <= '9')
		return c - '0';
	if (c >= 'a' && c <= 'f')
		return c - 'a' + 10;
	if (c >= 'A' && c <= 'F')
		return c - 'A' + 10;
	return 0;
}

/*
 * Get hex byte
 */
uint8_t
inhx32_gethexb(char *s)
{
	if (strlen(s) > 1)
		return inhx32_gethexn(s[0]) << 4 | inhx32_gethexn(s[1]);
	return 0;
}

/*
 * Compare inhx32 data
 */
int
inhx32_compare(const void *d1, const void *d2)
{
	inhx32_data *data1 = (inhx32_data *)(d1);
	inhx32_data *data2 = (inhx32_data *)(d2);

	if (data1->address < data2->address)
		return -1;
	else if (data1->address == data2->address)
		return 0;
	return 1;
}

/*
 * Create ordered list of inhx32 data
 */
void 
inhx32_order(const void *entry, VISIT order, int level) 
{ 
	inhx32_data *data = *(inhx32_data **)(entry);

	if (order == postorder || order == leaf) 
		inhx32_pdata[inhx32_index++] = data;
} 

/*
 * Format parser
 *
 * Return program data line count
 */
uint32_t
inhx32(struct k8048 *k, const char *filename, uint32_t alignment)
{
	FILE *f1 = stdin;
	char line[STRLEN];
	uint32_t extended_address = 0, bb, ix;
	uint8_t tt = TT_DATA, cc;
	uint16_t aaaa;
	void *root = NULL;
	inhx32_data *data = NULL;

	k->count = 0;
	k->pdata = NULL;
	
	if (strcmp(filename, "-") && (f1 = fopen(filename, "rb")) == NULL) {
		printf("%s: error: file open failed [%s] [%s]\n",
		__func__, filename, strerror(errno));
		return 0;
	}
#ifdef DEBUG
	if (k->debug >= 100) {
		printf("FILE [%s]\n", filename);
	}
#endif
	while (tt != TT_EOF && fgets(line, STRLEN, f1) != NULL)
	{
		line[STRMAX] = '\0';

		/* Strip CRLF */
		int n = strlen(line) - 1;
		while (n >= 0 && (line[n] == '\n' || line[n] == '\r'))
			line[n--] = '\0';

		/* Validate line prefix and length */
		if (line[0] != ':' || (strlen(line) & 1) == 0 || strlen(line) < 11) {
			if (k->debug >= 10) {
				printf("%s: warning: ignoring malformed line [%s] invalid format\n", __func__, line);
			}
			continue;
		}

		/* Validate checksum */
		cc = 0;
		for (n = 1; line[n]; n += 2)
			cc += inhx32_gethexb(&line[n]); 
		if (cc != 0) {
			if (k->debug >= 10) {
				printf("%s: warning: ignoring malformed line [%s] invalid checksum [%02X]\n", __func__, line, cc);
			}
			continue;
		}

		/* Determine number of data bytes in this line */
		bb = inhx32_gethexb(&line[BB]);

		/* Validate line length */
		if (strlen(line) != (2 * bb + 11)) {
			if (k->debug >= 10) {
				printf("%s: warning: ignoring malformed line [%s] invalid length [%zu != %u] (BB=0x%02x)\n", __func__, line, strlen(line), 2 * bb + 11, bb);
			}
			continue;
		}

		/* Determine data address for this line */
		aaaa = (inhx32_gethexb(&line[AAAA]) << 8) | inhx32_gethexb(&line[AAAA + 2]);

		/* Determine record type */
		tt = inhx32_gethexb(&line[TT]);

		switch (tt) {
		case TT_DATA:   if (bb == 0) {
					if (k->debug >= 10) {
						printf("%s: warning: ignoring empty line [%s]\n", __func__, line);
					}
					break;
				}
				if (bb % alignment) {
					if (k->debug >= 10) {
						printf("%s: warning: ignoring line with incomplete word [%s]\n", __func__, line);
					}
					break;
				}

				/* Allocate new array entry for this line */
				data = (inhx32_data *)calloc(1, sizeof(inhx32_data));
				if (data == NULL) {
					printf("%s: fatal error: calloc failed\n", __func__);
					io_exit(k, EX_OSERR); /* Panic */
				}

				/* Increment line counter */
				k->count++;

				/* Save address and word count */
				data->address = extended_address | aaaa;
				data->nbytes = bb;

				/* Extract data */
				ix = HHHH;
				for (n = 0; n < bb; n++) {
					data->bytes[n] = inhx32_gethexb(&line[ix]);
					ix += 2;
				}
#ifdef DEBUG
				if (k->debug >= 100) {
					printf("AAAA=%04X BB=%02X ADDR=%06X >> %06X ",
						aaaa, bb, data->address, data->address >> 1);
					for (n = 0; n < bb; n++) {
						printf("%02X ", data->bytes[n]);
					}
					putchar('\n');
				}
#endif
				/* Find entry in tree */
				if (tfind((void *)(data), (void **)(&root), inhx32_compare) != NULL) {
					printf("%s: fatal error: duplicate address [%08X]\n",
					__func__, data->address);
					io_exit(k, EX_SOFTWARE); /* Panic */
				}

				/* Add entry into tree */
				if (tsearch((void *)(data), (void **)(&root), inhx32_compare) == NULL) {
					printf("%s: fatal error: tsearch failed\n", __func__);
					io_exit(k, EX_OSERR); /* Panic */
				}
				break;

		case TT_EOF:	break;

		case TT_EXTENDED_LINEAR_ADDRESS:
				if (aaaa == 0 && bb == 2) {
					extended_address = (inhx32_gethexb(&line[HHHH]) << 24) | (inhx32_gethexb(&line[HHHH + 2]) << 16);
#ifdef DEBUG
					if (k->debug >= 100) {
						printf("AAAA=%04X BB=%02X ADDR=%06X\n", aaaa, bb, extended_address);
					}
#endif
				} else {
					printf("%s: warning: ignoring invalid extended linear address [aaaa=%04X, bb=%d]\n", __func__, aaaa, bb);
				}
				break;

		case TT_EXTENDED_SEGMENT_ADDRESS:
				printf("%s: warning: ignoring unhandled extended segment address\n", __func__);
				break;

		case TT_START_LINEAR_ADDRESS:
				printf("%s: warning: ignoring unhandled start linear address\n", __func__);
				break;

		case TT_START_SEGMENT_ADDRESS:
				printf("%s: warning: ignoring unhandled start segment address\n", __func__);
				break;

		default:	printf("%s: warning: ignoring unknown record type [%d]\n", __func__, tt);
				break;
		}
	}
	if (strcmp(filename, "-"))
		fclose(f1);

	/* Return error if no program data lines found */
	if (k->count == 0) {
		if (k->debug >= 10) {
			printf("%s: warning: file contains no data records [%s]\n", __func__, filename);
		}
		return 0;
	}
	
	/* Create and populate program line data array from tree */
	k->pdata = (inhx32_data **)calloc(k->count, sizeof(inhx32_data *));
	if (k->pdata == NULL) {
		printf("%s: fatal error: calloc failed\n", __func__);
		io_exit(k, EX_OSERR); /* Panic */
	}
	inhx32_pdata = k->pdata;
	inhx32_index = 0;
	twalk((void *)(root), inhx32_order); 

	/* Free tree nodes */
	for (uint32_t i = 0; i < k->count; ++i) {
		if (tdelete((void *)(k->pdata[i]), (void **)(&root), inhx32_compare) == NULL) {
			printf("%s: fatal error: tdelete failed\n", __func__);
			io_exit(k, EX_OSERR); /* Panic */
		}
	}
	if (root != NULL) {
		printf("%s: fatal error: tree destroy failed\n", __func__);
		io_exit(k, EX_OSERR); /* Panic */
	}
#ifdef DEBUG
	if (k->debug >= 100) {
		printf("DATA\n");
		for (uint32_t i = 0; i < k->count; ++i) {
			printf("          NB=%02X ADDR=%06X >> %06X ",
				k->pdata[i]->nbytes,
				k->pdata[i]->address,
				k->pdata[i]->address >> 1);
			for (uint32_t j = 0; j < k->pdata[i]->nbytes; ++j) {
				printf("%02X ", k->pdata[i]->bytes[j]);
			}
			putchar('\n');
		}
	}
#endif
	/* Return the program data line count */
	return k->count;
}
		
/*
 * Free memory used by program data line array
 */
void
inhx32_free(struct k8048 *k)
{
	if (k->count) {
		for (uint32_t i = 0; i < k->count; i++)
			free(k->pdata[i]);
		free(k->pdata);
		k->count = 0;
		k->pdata = NULL;
	}
}
