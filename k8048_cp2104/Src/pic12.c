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

/*****************************************************************************
 *
 * Hardware operations
 *
 *****************************************************************************/

struct pic_ops pic12_ops = {
	.arch                      = ARCH12BIT,
	.selector                  = pic12_selector,
	.read_config_memory        = pic12_read_config_memory,
	.get_program_size          = pic12_get_program_size,
	.get_data_size             = pic12_get_data_size,
	.get_executive_size        = NULL,
	.read_program_memory_block = pic12_read_program_memory_block,
	.read_data_memory_block    = pic12_read_data_memory_block,
	.program                   = pic12_program,
	.verify                    = pic12_verify,
	.bulk_erase                = pic12_bulk_erase,
	.row_erase                 = NULL,
	.dumpdeviceid              = pic12_dumpdeviceid,
	.dumpconfig                = pic12_dumpconfig,
	.dumposccal                = pic12_dumposccal,
	.dumpdevice                = pic12_dumpdevice,
	.dumphexcode               = pic12_dumphexcode,
	.dumpinhxcode              = pic12_dumpinhxcode,
	.dumphexdata               = pic12_dumphexdata,
	.dumpinhxdata              = pic12_dumpinhxdata,
};

uint32_t
pic12_arch(struct k8048 *k)
{
	k->pic = &pic12_ops;

	return k->pic->arch;
}

/*****************************************************************************
 *
 * Hardware configuration
 *
 *****************************************************************************/

struct pic12_config pic12_conf;

/*****************************************************************************
 *
 * Hardware algorithm map
 *
 *****************************************************************************/

struct pic12_dsmap pic12_map[] =
{
/*Device name	Device id 	Flash	Data	Data-sheet Backup OSC	Config 	#Latches*/
{"PIC12F508",	PIC12F508,	512,	0,	DS41227E,  0x0204,	0x03FF,	1},
{"PIC12F509",	PIC12F509,	1024,	0,	DS41227E,  0x0404,	0x07FF,	1},

{"PIC16F505",	PIC16F505,	1024,	0,	DS41226G,  0x0404,	0x07FF,	1},

{"PIC12F510",	PIC12F510,	1024,	0,	DS41257B,  0x0404,	0x07FF,	1},

{"PIC16F506",	PIC16F506,	1024,	0,	DS41258C,  0x0404,	0x07FF,	1},

{"PIC10F200",	PIC10F200,	256,	0,	DS41228F,  0x0104,	0x01FF,	1},
{"PIC10F202",	PIC10F202,	512,	0,	DS41228F,  0x0204,	0x03FF,	1},
{"PIC10F204",	PIC10F204,	256,	0,	DS41228F,  0x0104,	0x01FF,	1},
{"PIC10F206",	PIC10F206,	512,	0,	DS41228F,  0x0204,	0x03FF,	1},

{"PIC16F54",	PIC16F54,	512,	0,	DS41207D,  0,		0x03FF,	1},

{"PIC16F57",	PIC16F57,	2048,	0,	DS41208C,  0,		0x0FFF,	4},

{"PIC16F59",	PIC16F59,	2048,	0,	DS41243B,  0,		0x0FFF,	4},

{"PIC10F220",	PIC10F220,	256,	0,	DS41266C,  0x0104,	0x01FF,	1},
{"PIC10F222",	PIC10F222,	512,	0,	DS41266C,  0x0204,	0x03FF,	1},

{"PIC12F519",	PIC12F519,	1024,	+64,	DS41316C,  0x0444,	0x07FF,	1},

{"PIC16F570",	PIC16F570,	2048,	+64,	DS41670A,  0x0844,	0x0FFF,	4},

{"PIC16F527",	PIC16F527,	1024,	+64,	DS41640A,  0x0444,	0x07FF,	1},

{"PIC16F526",	PIC16F526,	1024,	+64,	DS41317B,  0x0444,	0x07FF,	1},

{"(null)",	0,		0,	0,	0,	   0,		0,	0}
/*Device name	Device id 	Flash	Data	Data-sheet Backup OSC	Config 	#Latches*/
};
#define PIC12_SIZE ((sizeof(pic12_map) / sizeof(struct pic12_dsmap)) - 1)

/* Default device (null) */
uint32_t pic12_index = PIC12_SIZE;

void
pic12_selector(void)
{
	uint32_t i;
	char *dnames[PIC12_SIZE];

	for (i = 0; i < PIC12_SIZE; ++i) {
		dnames[i] = pic12_map[i].devicename;
	}
	qsort(dnames, PIC12_SIZE, sizeof(char *), pic_cmp);
	for (i = 0; i < PIC12_SIZE; ++i) {
		if ((i % PIC_NCOLS) == (PIC_NCOLS - 1))
			printf("%s\n", dnames[i]);
		else
			printf("%s\t", dnames[i]);
	}
	if (i % PIC_NCOLS)
		printf("\n");
	printf("Total: %d\n", (uint32_t)PIC12_SIZE);
}

/*****************************************************************************
 *
 * Program/Verify mode
 *
 *****************************************************************************/

/*
 * ENTER HVP PROGRAM/VERIFY MODE
 *
 * ENTRY - VDD FIRST
 *
 * DS41226G-page 4 PIC16F505
 * DS41228F-page 4 PIC10F200
 * DS41207D-page 3 PIC16F54
 * DS41670A-page 5 PIC16F570
 */
void
pic12_program_verify(struct k8048 *k)
{
	/* INPUT DATA ON CLOCK RISING EDGE */
	io_configure(k, FALSE);

	/* RESET & ACQUIRE GPIO */
	io_set_vpp(k, LOW);
	/* DS41226G PIC16F505 TPPDP(5us) */
	/* DS41228F PIC10F200 TPPDP(5us) */
	/* DS41207D PIC16F54  TPPDP(5us) */
	/* DS41670A PIC16F570 TPPDP(5us) */
	io_usleep(k, 1000);
	/* PGD + PGC + PGM(N/A) LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);
	io_set_pgm(k, LOW);
	io_usleep(k, 1000);

	/* VPP HIGH */
	io_set_vpp(k, HIGH);
	/* DS41226G PIC16F505 THLD0(5us) */
	/* DS41228F PIC10F200 THLD0(5us) */
	/* DS41207D PIC16F54  THLD0(5us) */
	/* DS41670A PIC16F570 THLD0(5us) */
	io_usleep(k, 250);
}

/*
 * EXIT HVP PROGRAM/VERIFY MODE
 *
 * EXIT - VDD LAST
 *
 * DS41228F-page 5 PIC10F200
 */
void
pic12_standby(struct k8048 *k)
{
	/* PGD + PGC + VPP + PGM(N/A) LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);
	io_set_vpp(k, LOW);
	io_set_pgm(k, LOW);
}

/*****************************************************************************
 *
 * Hardware functions
 *
 *****************************************************************************/

/*I/O*************************************************************************/

/*
 * LOAD DATA FOR PROGRAM MEMORY
 *  PC <= 0x07FF (PIC16F505)
 *  WR <= word
 *
 * XX0010 = 0x02
 *
 * DS41226G-page 4 16F505
 * DS41227E-page 3 12F508
 * DS41258C-page 4 16F506
 * DS41228F-page 6 10F200
 * DS41207D-page 3 16F54
 * DS41266C-page 3 10F220
 * DS41316C-page 3 12F519
 * DS41670A-page 5 16F570
 */
static inline void
pic12_load_data_for_program_memory(struct k8048 *k, uint16_t word)
{
	io_program_out(k, 0x02, 6);
	word = (word << 1) | 0x8001;
	io_program_out(k, word, 16);
}

/*
 * READ DATA FROM PROGRAM MEMORY
 *  RETURN (PC)
 *
 * XX0100 = 0x04
 *
 * DS41226G-page 4 16F505
 * DS41227E-page 3 12F508
 * DS41258C-page 4 16F506
 * DS41228F-page 6 10F200
 * DS41207D-page 3 16F54
 * DS41266C-page 3 10F220
 * DS41316C-page 3 12F519
 * DS41670A-page 5 16F570
 */
static inline uint16_t
pic12_read_data_from_program_memory(struct k8048 *k)
{
	uint16_t word;

	io_program_out(k, 0x04, 6);
	word = io_program_in(k, 16);
	word = (word >> 1) & PIC12_MASK;

	return word;
}

/*
 * INCREMENT ADDRESS
 *  PC <= 1 + PC
 *
 * XX0110 = 0x06
 *
 * DS41226G-page 4 16F505
 * DS41227E-page 3 12F508
 * DS41258C-page 4 16F506
 * DS41228F-page 6 10F200
 * DS41207D-page 3 16F54
 * DS41266C-page 3 10F220
 * DS41316C-page 3 12F519
 * DS41670A-page 5 16F570
 */
static inline void
pic12_increment_address(struct k8048 *k)
{
	io_program_out(k, 0x06, 6);
}

/*PROG************************************************************************/

/*
 * BEGIN PROGRAMMING
 *  (PC) <= WR
 *
 * XX1000 = 0x08
 *
 * DS41226G-page 4 16F505 TPROG(2ms)
 * DS41227E-page 3 12F508 TPROG(2ms)
 * DS41258C-page 4 16F506 TPROG(2ms)
 * DS41228F-page 6 10F200 TPROG(2ms)
 * DS41207D-page 3 16F54  TPROG(2ms)
 * DS41208C-page 3 16F57  TPROG(2ms)
 * DS41266C-page 3 10F220 TPROG(2ms)
 * DS41316C-page 3 12F519 TPROG(2ms)
 * DS41670A-page 5 16F570 TPROG(2ms)
 */
static inline void
pic12_begin_programming(struct k8048 *k)
{
	io_program_out(k, 0x08, 6);
	io_usleep(k, PIC12_TPROG_DEFAULT);
}

/*
 * END PROGRAMMING
 *
 * XX1110 = 0x0E
 *
 * DS41226G-page 4 16F505 TDIS(100us)
 * DS41227E-page 3 12F508 TDIS(100us)
 * DS41258C-page 4 16F506 TDIS(100us)
 * DS41228F-page 6 10F200 TDIS(100us)
 * DS41207D-page 3 16F54  TDIS(100us)
 * DS41208C-page 3 16F57  TDIS(100us)
 * DS41266C-page 3 10F220 TDIS(100us)
 * DS41316C-page 3 12F519 TDIS(100us)
 * DS41670A-page 5 16F570 TDIS(300us)
 */
static inline void
pic12_end_programming(struct k8048 *k)
{
	uint32_t tdis = PIC12_TDISCHARGE_DEFAULT;

	if (pic12_map[pic12_index].datasheet == DS41670A) /* PIC16F570 */
		tdis = PIC12_TDISCHARGE_300US;

	io_program_out(k, 0x0E, 6);
	io_usleep(k, tdis);
}

/*ERASE***********************************************************************/

/*
 * BULK ERASE PROGRAM MEMORY
 *
 * XX1001 = 0x09
 *
 * DS41226G-page 4 16F505 TERA(10ms)
 * DS41227E-page 3 12F508 TERA(10ms)
 * DS41258C-page 4 16F506 TERA(10ms)
 * DS41228F-page 6 10F200 TERA(10ms)
 * DS41207D-page 3 16F54  TERA(10ms)
 * DS41208C-page 3 16F57  TERA(10ms)
 * DS41266C-page 3 10F220 TERA(10ms)
 * DS41316C-page 3 12F519 TERA(10ms)
 * DS41670A-page 5 16F570 TERA(10ms)
 */
static inline void
pic12_bulk_erase_program_memory(struct k8048 *k)
{
	io_program_out(k, 0x09, 6);
	io_usleep(k, PIC12_TERASE_DEFAULT);
}

/*****************************************************************************
 *
 * Compound functions
 *
 *****************************************************************************/

/*
 * READ PROGRAM MEMORY
 *
 *  RETURN CODE WORD, INCREMENT PC
 */
uint16_t
pic12_read_program_memory_increment(struct k8048 *k)
{
	uint16_t data = pic12_read_data_from_program_memory(k);

	pic12_increment_address(k);
	
	return data;
}

/*
 * BLANK DEVICE
 *
 * SAVE OSCCAL (DEPENDANT UPON DEVICE AND OPTION)
 * DISABLE PROTECTION AND BULK ERASE
 * RESTORE OSCCAL (DEPENDANT UPON DEVICE AND OPTION)
 */
void
pic12_bulk_erase(struct k8048 *k, uint16_t osccal, uint16_t bandgap __attribute__((unused)))
{
	uint32_t i;

	if (pic12_map[pic12_index].backupaddr == 0) {
		if (osccal != PIC_INTERNAL && osccal != PIC_NOINTERNAL) {
			printf("%s: error: OSCCAL is not supported on this device\n",
				__func__);
			return;
		}
	} else {
		if (osccal == PIC_INTERNAL) {
			osccal = pic12_read_osccal(k);
		}
	}

	pic12_program_verify(k);

	if (pic12_map[pic12_index].dataflash == 0) {
		pic12_increment_address(k);		/* Skip config word */

		for (i = 0; i < pic12_map[pic12_index].flash; i++)
			pic12_increment_address(k);	/* Skip program flash */

		pic12_bulk_erase_program_memory(k);	/* Erase device */
	} else {
		/* PIC12F519 */
		/* PIC16F570 */
		/* PIC16F527 */
		pic12_bulk_erase_program_memory(k);	/* Erase config & program flash */

		pic12_increment_address(k);		/* Skip config word */

		for (i = 0; i < pic12_map[pic12_index].flash; i++)
			pic12_increment_address(k);	/* Skip program flash */

		pic12_bulk_erase_program_memory(k);	/* Erase data flash */

		for (i = 0; i < pic12_map[pic12_index].dataflash; i++)
			pic12_increment_address(k);	/* Skip data flash */

		pic12_bulk_erase_program_memory(k);	/* Erase user id & osccal */
	}

	pic12_standby(k);

	if (pic12_map[pic12_index].backupaddr != 0) {
		if (osccal != PIC_NOINTERNAL) {
			pic12_write_osccal(k, osccal);
		}
	}
}

/*****************************************************************************
 *
 * Read block data
 *
 *****************************************************************************/

/*
 * READ CONFIGURATION MEMORY
 *
 *  READ CONFIG WORD AND USERID
 */
void
pic12_read_config_memory(struct k8048 *k, int flag)
{
	uint32_t dev;

	/* NULL device */
	pic12_index = PIC12_SIZE;

	/* Reset configuraton */
	memset(&pic12_conf, 0, sizeof(pic12_conf));

	/* Device detect not available */
	if (!k->devicename[0]) {
		printf("%s: fatal error: device must be selected on this architecture.\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	/* Device selected by user */
	for (dev = 0; pic12_map[dev].deviceid; ++dev) {
		if (strcasecmp(pic12_map[dev].devicename, k->devicename) == 0) {
			break;
		}
	}
	if (pic12_map[dev].deviceid == 0) {
		printf("%s: fatal error: unknown device: [%s]\n", __func__, k->devicename);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	pic12_program_verify(k);
	pic12_conf.config = pic12_read_program_memory_increment(k);

	/*
	 * VELLEMAN K8048 SWITCH IN STANDBY [0000]
	 * VELLEMAN K8048 NO POWER	    [3FFF]
	 * VELLEMAN K0848 SWITCH IN RUN     [3FFF]
	 */
	if (pic12_conf.config == 0x0000 || pic12_conf.config == 0x3FFF) {
		printf("%s: fatal error: %s.\n",
			__func__, io_fault(k, pic12_conf.config));
		pic12_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	/* Device recognised */
	pic12_index = dev;

	if (flag == PIC_CONFIG_ALL) {
		for (uint32_t i = 0; i < (pic12_map[pic12_index].flash - 1); ++i)
			pic12_increment_address(k);		/* Skip program flash */
		/* Get OSCCAL RESET */
		pic12_conf.osccal_reset = pic12_read_program_memory_increment(k);
		for (uint32_t i = 0; i < pic12_map[pic12_index].dataflash; ++i)
			pic12_increment_address(k);		/* Skip data flash */
		/* Get USERID 0..3 */
		pic12_conf.userid[0] = pic12_read_program_memory_increment(k);
		pic12_conf.userid[1] = pic12_read_program_memory_increment(k);
		pic12_conf.userid[2] = pic12_read_program_memory_increment(k);
		pic12_conf.userid[3] = pic12_read_program_memory_increment(k);
		/* Get OSCCAL BACKUP */
		pic12_conf.osccal_backup = pic12_read_program_memory_increment(k);
	}

	pic12_standby(k);
}

/*
 * GET PROGRAM FLASH SIZE
 *
 *  RETURN SIZE IN WORDS
 */
uint32_t
pic12_get_program_size(uint32_t *addr)
{
	*addr = 0;

	return pic12_map[pic12_index].flash;    
}

/*
 * GET DATA EEPROM/FLASH SIZE
 *
 *  RETURN SIZE IN BYTES
 */
uint32_t
pic12_get_data_size(uint32_t *addr)
{
	*addr = pic12_map[pic12_index].flash;

	return pic12_map[pic12_index].dataflash;
}

/*
 * READ PROGRAM FLASH MEMORY BLOCK ADDR .. ADDR + SIZE
 *
 *  RETURN ADDR
 */
uint32_t
pic12_read_program_memory_block(struct k8048 *k, uint32_t *data, uint32_t addr, uint32_t size)
{
	uint32_t i;

	pic12_program_verify(k);
	pic12_increment_address(k); /* Skip config word */

	for (i = 0; i < addr; ++i)
		pic12_increment_address(k);
	for (i = 0; i < size; ++i)
		data[i] = (uint32_t)pic12_read_program_memory_increment(k);

	pic12_standby(k);

	return addr;
}

/*
 * READ DATA EEPROM/FLASH MEMORY BLOCK ADDR .. ADDR + SIZE
 *
 *  RETURN ADDR
 */
uint32_t
pic12_read_data_memory_block(struct k8048 *k, uint16_t *data, uint32_t addr, uint16_t size)
{
	uint32_t i;

	pic12_program_verify(k);
	pic12_increment_address(k); /* Skip config word */

	for (i = 0; i < addr; ++i)
		pic12_increment_address(k);
	for (i = 0; i < size; ++i)
		data[i] = (uint16_t)pic12_read_program_memory_increment(k);

	pic12_standby(k);

	return addr;
}

/*****************************************************************************
 *
 * Read/Write Oscillator Calibration 
 *
 *****************************************************************************/

/*
 * READ OSCILLATOR CALIBRATION WORD
 *
 *  RETURN DATA WORD
 */
uint16_t
pic12_read_osccal(struct k8048 *k)
{
	if (pic12_map[pic12_index].backupaddr == 0) {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
		return 0;
	}

	pic12_read_config_memory(k, PIC_CONFIG_ALL);

	return pic12_conf.osccal_reset;
}

/*
 * WRITE OSCILLATOR CALIBRATION WORD
 */
uint32_t
pic12_write_osccal(struct k8048 *k, uint16_t osccal)
{
	uint32_t i;
	
	if (pic12_map[pic12_index].backupaddr == 0) {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
		return 0;
	}

	pic12_program_verify(k);
	
	pic12_increment_address(k);			/* Skip config word */
	for (i = 0; i < (pic12_map[pic12_index].flash - 1); i++)
		pic12_increment_address(k);		/* Skip program flash memory */

	/*
	 * Write OSCCAL RESET
	 */
	pic12_load_data_for_program_memory(k, osccal);
	pic12_begin_programming(k);
	pic12_end_programming(k);
	uint16_t vdata = pic12_read_data_from_program_memory(k);
	if (vdata != osccal) {
		pic12_standby(k);
		printf("%s: error: OSCCAL RESET write failed: read [%04X] expected [%04X]\n",
			__func__, vdata, osccal);
		return 0;
	}
	pic12_increment_address(k);			/* Skip OSCCAL RESET */

	for (i = 0; i < pic12_map[pic12_index].dataflash; i++)
		pic12_increment_address(k);		/* Skip data flash */

	pic12_increment_address(k);			/* Skip USERID0 */
	pic12_increment_address(k);			/* Skip USERID1 */
	pic12_increment_address(k);			/* Skip USERID2 */
	pic12_increment_address(k);			/* Skip USERID3 */

	/*
	 * Write OSCCAL BACKUP
	 */
	pic12_load_data_for_program_memory(k, osccal);
	pic12_begin_programming(k);
	pic12_end_programming(k);
	vdata = pic12_read_data_from_program_memory(k);
	if (vdata != osccal) {
		pic12_standby(k);
		printf("%s: error: OSCCAL BACKUP write failed: read [%04X] expected [%04X]\n",
			__func__, vdata, osccal);
		return 0;
	}

	pic12_standby(k);

	return 1; /* OSCCAL WRITTEN */
}

/*****************************************************************************
 *
 * Program Config
 *
 *****************************************************************************/

/*
 * WRITE CONFIG
 */
uint32_t
pic12_write_config(struct k8048 *k, uint16_t config)
{
	pic12_program_verify(k);

	/* Store config in working register */
	pic12_load_data_for_program_memory(k, config);

	/* Program working register */
	pic12_begin_programming(k);
	pic12_end_programming(k);

	pic12_standby(k);

	return 1;
}

/*****************************************************************************
 *
 * Region control
 *
 *****************************************************************************/

/*
 * DETERMINE MEMORY REGION: CODE (PROGRAM FLASH + DATA FLASH + USERID) OR CONFIG WORD
 */
uint16_t
pic12_getregion(uint16_t address)
{
	/* CODE/DATA FLASH/USERID */
	uint16_t code_high = pic12_map[pic12_index].flash + pic12_map[pic12_index].dataflash + 3;

	if (address <= code_high) {
		return PIC12_REGIONCODE;
	}
	/* CONFIG */
	if (address == PIC12_CONFIG) {
		return PIC12_REGIONCONFIG;
	}
	printf("%s: warning: address unsupported [%04X]\n",
		__func__, address);
	return PIC12_REGIONNOTSUP;
}

/*
 * INITIALISE FOR REGION
 */
uint16_t
pic12_initregion(struct k8048 *k, uint16_t region, uint16_t *address)
{
	switch (region) {
	case PIC12_REGIONCODE:
		/* Skip config word */
		pic12_increment_address(k);
		*address = 0;
		return region;
		break;
	case PIC12_REGIONCONFIG:
		*address = PIC12_CONFIG;
		return region;
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		break;
	}
	return PIC12_REGIONNOTSUP;
}

/*
 * LOAD DATA FOR REGION (STORE WORD IN WORKING REGISTER)
 */
void
pic12_loadregion(struct k8048 *k, uint16_t region, uint16_t word)
{
	switch (region) {
	case PIC12_REGIONCODE:
	case PIC12_REGIONCONFIG:
		pic12_load_data_for_program_memory(k, word);
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		break;
	}
}

/*****************************************************************************
 *
 * Program & verify region (one word)
 *
 *****************************************************************************/

/*
 * PROGRAM DATA FOR REGION (CACHE CONFIG WORD FOR LATER)
 */
void
pic12_programregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{
	static int write_pending = 0;

#ifdef DEBUG
	if (k->debug >= 10) {
		printf("%s(,%04X,%d,%04X)\n", __func__, address, region, data);
	}
#endif 
	/*
	 * Cache config word
	 */
	if (region == PIC12_REGIONCONFIG) {
		pic12_conf.config = data;
		return;
	}

	/*
	 * Write single or multi-word code
	 */
	if (region == PIC12_REGIONCODE) {
		if (data != PIC_VOID) {
			/* Ignore OSCCAL */
			if (pic12_map[pic12_index].backupaddr != 0) {
				if (address == (pic12_map[pic12_index].flash - 1)) {
					printf("%s: warning: OSCCAL RESET word ignored: word [%04X] address [%04X]\n",
						__func__, data, address);
					return;
				}
				if (address == pic12_map[pic12_index].backupaddr) {
					printf("%s: warning: OSCCAL BACKUP word ignored: word [%04X] address [%04X]\n",
						__func__, data, address);
					return;
				}
			}
			/* Cache */
			pic12_loadregion(k, PIC12_REGIONCODE, data);
			write_pending = 1;
		}
		/* Flush */
		uint16_t mask = pic12_map[pic12_index].nlatches - 1;
		if ((address & mask) == mask) {
			if (write_pending) {
				pic12_begin_programming(k);
				pic12_end_programming(k);
				write_pending = 0;
			}
		}
		return;
	}
#if 0
	/*
	 * Write single word data EEPROM (NOT IMPLEMENTED IN HARDWARE)
	 */

	/* Store data in working register */
	pic12_loadregion(k, region, data);

	/* Program working register */
	pic12_begin_programming(k);
	pic12_end_programming(k);
#endif
}

/*
 * VERIFY DATA FOR REGION
 *
 *  RETURN FAILURE COUNT
 */
uint32_t
pic12_verifyregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{
	uint16_t vdata = 0;

	switch (region) {
	case PIC12_REGIONCODE:
	case PIC12_REGIONCONFIG:
		vdata = pic12_read_data_from_program_memory(k);
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		return 1;
		break;
	}
	if (vdata != data) {
		printf("%s: error: read [%04X] expected [%04X] at [%04X]\n",
			__func__, vdata, data, address);
		return 1;
	}
	return 0;
}

/*****************************************************************************
 *
 * Region programming
 *
 *****************************************************************************/
	
/*
 * PROGRAM FILE
 */
void
pic12_program(struct k8048 *k, char *filename, int blank)
{
	uint16_t hex_address, PC_address = 0, wdata;
	uint16_t new_region, current_region = PIC12_REGIONNOTSUP;
	uint32_t total = 0;

	/* Get HEX */
	if (!inhx32(k, filename, 2))
		return;

	/* Initialise device for programming */
	if (blank)
		pic12_bulk_erase(k, PIC_INTERNAL, PIC_VOID);

	/*
	 * Program device
	 */

	/* For each line */
	for (uint32_t i = 0; i < k->count; i++) {
		hex_address = (k->pdata[i]->address >> 1);
		new_region = pic12_getregion(hex_address);
		if (new_region == PIC12_REGIONNOTSUP)
			continue;
		if (new_region != current_region) {
			if (current_region == PIC12_REGIONCODE)
				pic12_programregion(k, PIC_VOID, PIC12_REGIONCODE, PIC_VOID);
			pic12_program_verify(k); /* Reset P.C. */
			if (pic12_initregion(k, new_region, &PC_address) == PIC12_REGIONNOTSUP)
				continue;
			current_region = new_region;
		}

		/* Skip over unused P.C. locations */
		while (hex_address > PC_address) {
			if (current_region == PIC12_REGIONCODE)
				pic12_programregion(k, PC_address, PIC12_REGIONCODE, PIC_VOID);
			PC_address++;
			pic12_increment_address(k);
		}

		/* For each 12-bit word in line */
		for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
			wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
			wdata &= PIC12_MASK;
			pic12_programregion(k, PC_address, current_region, wdata);
			PC_address++;
			pic12_increment_address(k);
			total++;
		}
	}
	if (current_region == PIC12_REGIONCODE)
		pic12_programregion(k, PIC_VOID, PIC12_REGIONCODE, PIC_VOID);

	pic12_standby(k);
	
	/* Finalise device programming (write config word) */
	if (blank)
		pic12_write_config(k, pic12_conf.config);

	printf("Total: %u\n", total);

	inhx32_free(k);
}

/*
 * VERIFY FILE
 */
uint32_t
pic12_verify(struct k8048 *k, char *filename)
{
	uint16_t hex_address, PC_address = 0, wdata;
	uint16_t new_region, current_region = PIC12_REGIONNOTSUP;
	uint32_t fail = 0, total = 0;

	/* Get HEX */
	if (!inhx32(k, filename, 2))
		return 1;

	/*
	 * Verify device
	 */

	/* For each line */
	for (uint32_t i = 0; i < k->count; i++) {
		hex_address = (k->pdata[i]->address >> 1);
		new_region = pic12_getregion(hex_address);
		if (new_region == PIC12_REGIONNOTSUP)
			continue;
		if (new_region != current_region) {
			pic12_program_verify(k); /* Reset P.C. */
			if (pic12_initregion(k, new_region, &PC_address) == PIC12_REGIONNOTSUP)
				continue;
			current_region = new_region;
		}

		/* Skip over unused P.C. locations */
		while (hex_address > PC_address) {
			PC_address++;
			pic12_increment_address(k);
		}

		/* For each 12-bit word in line */
		for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
			wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
			wdata &= PIC12_MASK;
			fail += pic12_verifyregion(k, PC_address++, current_region, wdata);
			pic12_increment_address(k);
			total++;
		}
	}
	pic12_standby(k);

	printf("Total: %u Pass: %u Fail: %u\n", total, total - fail, fail);

	inhx32_free(k);

	return fail;
}

/*****************************************************************************
 *
 * Diagnostic functions
 *
 *****************************************************************************/

/*
 * DUMP DEVICE ID DETAILS
 */
void
pic12_dumpdeviceid(struct k8048 *k)
{
	printf("[0000] [PROGRAM]  %04X WORDS\n", pic12_map[pic12_index].flash);

	if (pic12_map[pic12_index].backupaddr) {
		printf("[%04X] [OSCCAL]   %04X\n",
			pic12_map[pic12_index].flash - 1,
			pic12_conf.osccal_reset);
	}

	if (pic12_map[pic12_index].dataflash) {
		printf("[%04X] [DATA]     %04X BYTES\n",
			pic12_map[pic12_index].flash,
			pic12_map[pic12_index].dataflash);
	}

	for (uint32_t i = 0; i < 4; i++) {
		printf("[%04X] [USERID%d]  %04X %c\n",
			pic12_map[pic12_index].flash + pic12_map[pic12_index].dataflash + i, i,
			pic12_conf.userid[i], PIC_CHAR(0xFF & pic12_conf.userid[i]));
	}

	if (pic12_map[pic12_index].backupaddr) {
		printf("[%04X] [BACKUP]   %04X\n",
			pic12_map[pic12_index].backupaddr,
			pic12_conf.osccal_backup);
	}

	pic12_dumpconfig(k, PIC_BRIEF);
	printf("       [DEVICEID] %s\n", pic12_map[pic12_index].devicename);
}

/*
 * DUMP OSCCAL DETAILS
 */
void
pic12_dumposccal(struct k8048 *k)
{
	if (pic12_map[pic12_index].backupaddr) {
		printf("[%04X] [OSCCAL]   %04X\n",
			pic12_map[pic12_index].flash - 1,
			pic12_conf.osccal_reset);
		printf("[%04X] [BACKUP]   %04X\n",
			pic12_map[pic12_index].backupaddr,
			pic12_conf.osccal_backup);
	} else {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
	}
}

/*
 * DUMP CONFIG WORD DETAILS
 */
void
pic12_dumpconfig(struct k8048 *k, int mode)
{
	printf("[%04X] [CONFIG]   %04X\n",
		PIC12_CONFIG, pic12_conf.config);
#if VERBOSE
	if (mode == PIC_VERBOSE)
		pic12_dumpconfig_verbose(k);
#endif
}

/*
 * DUMP VERBOSE CONFIG WORD DETAILS FOR DEVICE
 */
#ifdef VERBOSE
void
pic12_dumpconfig_verbose(struct k8048 *k)
{
	/* UNIMPLEMENTED */
}
#endif /* VERBOSE */

/*
 * DUMP HEX FLASH WORDS
 */
void
pic12_dumphexcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
	uint32_t i, j, nlines = 0;

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtcode(PIC12_MASK, 8, &data[i]))
			continue;
		printf("[%04X] ", address);
		for (j = 0; j < 8; ++j)
			printf("%03X ", data[i + j] & PIC12_MASK);
		for (j = 0; j < 8; ++j)
			putchar(PIC_CHAR(0xFF & data[i + j]));
		putchar('\n');
		nlines++;
	}
	if (!nlines)
		printf("%s: information: program flash empty\n", __func__);
}

/*
 * DUMP INHX32 FLASH WORDS
 */
void
pic12_dumpinhxcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
	uint32_t i, j;

	/* 12-bit: Extended address = 0x0000 */
	pic_dumpaddr(0, 1);

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtcode(PIC12_MASK, 8, &data[i]))
			continue;

		uint8_t cc, hb, lb;
		hb = address >> 7;
		lb = address << 1;
		printf(":%02X%02X%02X00", 16, hb, lb);
		cc = 16 + hb + lb + 0x00;
		for (j = 0; j < 8; ++j) {
			lb = data[i + j];
			hb = data[i + j] >> 8;
			printf("%02X%02X", lb, hb);
			cc = cc + lb + hb;
		}
		printf("%02X\n", (0x0100 - cc) & 0xFF);
	}
}

/*
 * DUMP HEX DATA FLASH WORDS
 */
void
pic12_dumphexdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
	uint32_t i, j, nlines = 0;

	for (i = 0; i < size; address += 16, i += 16) {
		if (pic_mtdata(0xFFF, 16, &data[i]))
			continue;
		printf("[%04X] ", address);
		for (j = 0; j < 16; ++j)
			printf("%02X ", data[i + j]);
		for (j = 0; j < 16; ++j)
			putchar(PIC_CHAR(0xFF & data[i + j]));
		putchar('\n');
		nlines++;
	}
	if (!nlines)
		printf("%s: information: data flash empty\n", __func__);
}

/*
 * DUMP INHX32 DATA FLASH WORDS
 */
void
pic12_dumpinhxdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
	uint32_t i, j;

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtdata(0xFFF, 8, &data[i]))
			continue;

		uint8_t cc, hb, lb;
		hb = address >> 7;
		lb = address << 1;
		printf(":%02X%02X%02X00", 16, hb, lb);
		cc = 16 + hb + lb + 0x00;
		for (j = 0; j < 8; ++j) {
			lb = data[i + j];
			printf("%02X00", lb);
			cc = cc + lb + 0x00;
		}
		printf("%02X\n", (0x0100 - cc) & 0xFF);
	}
}

/*
 * DUMP DEVICE CONFIGURATION
 */
void
pic12_dumpdevice(struct k8048 *k)
{
	/* 12-bit: Extended address = 0x0000 */
	pic_dumpaddr(0, 1);

	/* IDLOC */
	uint16_t address = pic12_map[pic12_index].flash + pic12_map[pic12_index].dataflash;
	for (uint32_t i = 0; i < 4; ++i) {
		pic_dumpword16(address + i, pic12_conf.userid[i]);
	}
	/* CONFIG */
	pic_dumpword16(PIC12_CONFIG, pic12_conf.config);
}
