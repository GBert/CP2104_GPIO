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

/*****************************************************************************
 *
 * Hardware operations
 *
 *****************************************************************************/

struct pic_ops pic32_ops = {
	.arch			   = ARCH32BIT,
	.selector		   = pic32_selector,
	.read_config_memory	   = pic32_read_config_memory,
	.get_program_size	   = NULL,
	.get_data_size		   = NULL,
	.get_executive_size	   = NULL,
	.read_program_memory_block = NULL,
	.read_data_memory_block    = NULL,
	.program		   = NULL,
	.verify			   = NULL,
	.bulk_erase		   = NULL,
	.row_erase		   = NULL,
	.dumpdeviceid		   = pic32_dumpdeviceid,
	.dumpconfig		   = NULL,
	.dumposccal		   = NULL,
	.dumpdevice		   = NULL,
	.dumphexcode		   = NULL,
	.dumpinhxcode		   = NULL,
	.dumphexdata		   = NULL,
	.dumpinhxdata		   = NULL,
};

uint32_t
pic32_arch(struct k8048 *k)
{
	k->pic = &pic32_ops;

	return k->pic->arch;
}

/*****************************************************************************
 *
 * Hardware configuration
 *
 *****************************************************************************/

struct pic32_config pic32_conf;

/*****************************************************************************
 *
 * Hardware algorithm map
 *
 *****************************************************************************/

struct pic32_dsmap pic32_map[] =
{
/*Device name		Device id	 Id Mask*/
{"PIC32MX150F128B",	PIC32MX150F128B, 0x0FFFFFFF},
{"PIC32MX250F128B",	PIC32MX250F128B, 0x0FFFFFFF},

{"(null)",		0,		 0},
/*Device name		Device id	 Id Mask*/
};
#define PIC32_SIZE ((sizeof(pic32_map) / sizeof(struct pic32_dsmap)) - 1)

/* Default device (null) */
uint32_t pic32_index = PIC32_SIZE;

void
pic32_selector(void)
{
	uint32_t i;
	char *dnames[PIC32_SIZE];

	for (i = 0; i < PIC32_SIZE; ++i) {
		dnames[i] = pic32_map[i].devicename;
	}
	qsort(dnames, PIC32_SIZE, sizeof(char *), pic_cmp);
	for (i = 0; i < PIC32_SIZE; ++i) {
		if ((i % (PIC_NCOLS - 1)) == (PIC_NCOLS - 2))
			printf("%s\n", dnames[i]);
		else
			printf("%-19s", dnames[i]);
	}
	if (i % (PIC_NCOLS - 1))
		printf("\n");
	printf("Total: %u\n", (uint32_t)PIC32_SIZE);
}

/*****************************************************************************
 *
 * Program/Verify mode
 *
 *****************************************************************************/

/*
 * ENTER LVP PROGRAM/VERIFY MODE
 *
 * ENTRY - VDD FIRST
 */
void
pic32_program_verify(struct k8048 *k)
{
	/* RESET & ACQUIRE GPIO */
	io_set_vpp(k, LOW);
	/* DS60001145M P6(100ns) */
	io_usleep(k, 1000);
	/* PGD + PGC + PGM(N/A) LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);
	io_set_pgm(k, LOW);
	io_usleep(k, 1000);

	/* LVP(KEY) */
	if (k->key == LVPKEY) {
		/* VPP HIGH */
		io_set_vpp(k, HIGH);
		/* DS60001145M P20(500us) */
		io_usleep(k, 500);

		/* VPP LOW */
		io_set_vpp(k, LOW);
		/* DS60001145M P18(40ns) */
		io_usleep(k, 1);

		/* PROGRAM/VERIFY ENTRY CODE */
		io_program_out(k, PHCMKEY, 32);
		/* DS60001145M P19(40ns) */
		io_usleep(k, 1);

		/* VPP HIGH */
		io_set_vpp(k, HIGH);
		/* DS60001145M P7(500ns) */
		io_usleep(k, 1);

		/* ENTER RUN-TEST/IDLE STATE */
		pic32_setmode(k, PIC32_IDLE6);
	}
	/* UNSUPPORTED */
	else {
		printf("%s: fatal error: unsupported programming mode\n", __func__);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}
}

/*
 * EXIT LVP PROGRAM/VERIFY MODE
 *
 * EXIT - VDD LAST
 */
void
pic32_standby(struct k8048 *k)
{
	/* ENTER TEST-LOGIC-RESET STATE */
	pic32_setmode(k, PIC32_RESET);
	/* DS60001145M P16(0s) */

	/* PGD + PGC + VPP + PGM(N/A) LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);
	io_set_vpp(k, LOW);
	io_set_pgm(k, LOW);
}

/*****************************************************************************
 *
 * Pseudo Operations
 *
 *****************************************************************************/

/*
 * SetMode Pseudo Operation
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 13
 */
void
pic32_setmode(struct k8048 *k, uint8_t nbits, uint32_t tms)
{
	/* SET MODE */
	io_clock_bits_4phase(k, nbits, tms, 0);
}

/*
 * SendCommand Pseudo Operation
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 14
 */
void
pic32_sendcommand(struct k8048 *k, uint8_t nbits, uint32_t tdi)
{
	/* ENTER SHIFT-IR STATE */
	io_clock_bit_4phase(k, 1, 0);		/* SELECT-DR     */
	io_clock_bit_4phase(k, 1, 0);		/* SELECT-IR     */
	io_clock_bit_4phase(k, 0, 0);		/* CAPTURE-IR    */
	io_clock_bit_4phase(k, 0, 0);		/* SHIFT-IR      */

	/* SEND COMMAND */
	io_clock_bits_4phase(k, nbits,  	/* EXIT1-IR      */
						1 << (nbits - 1), tdi);
	/* ENTER RUN-TEST/IDLE STATE */ 
	io_clock_bit_4phase(k, 1, 0);		/* UPDATE-IR     */
	io_clock_bit_4phase(k, 0, 0);		/* RUN-TEST/IDLE */
}

/*
 * XferData Pseudo Operation
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 15
 */
uint32_t
pic32_xferdata(struct k8048 *k, uint8_t nbits, uint32_t tdi)
{
	uint32_t tdo;

	/* ENTER SHIFT-DR STATE */
	io_clock_bit_4phase(k, 1, 0);		/* SELECT-DR     */
	io_clock_bit_4phase(k, 0, 0);		/* CAPTURE-DR    */
	tdo = io_clock_bit_4phase(k, 0, 0);	/* SHIFT-DR      */

	/* TRANSFER DATA */
	tdo |= io_clock_bits_4phase(k, nbits,	/* EXIT1-DR      */
						1 << (nbits - 1), tdi) << 1;
	/* ENTER RUN-TEST/IDLE STATE */ 
	io_clock_bit_4phase(k, 1, 0);		/* UPDATE-DR     */
	io_clock_bit_4phase(k, 0, 0);		/* RUN-TEST/IDLE */
#ifdef DEBUG
	printf("%s: tdi = %08X, tdo = %08X\n", __func__, tdi, tdo);
#endif
	return tdo;
}

/*
 * XferFastData Pseudo Operation
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 16
 */
uint32_t
pic32_xferfastdata(struct k8048 *k, uint32_t tdi)
{
	uint8_t pracc;
	uint32_t tdo;

//pic32_setmode(k, PIC32_IDLE6);

	/* ENTER SHIFT-DR STATE */
	io_clock_bit_4phase(k, 1, 0);		/* SELECT-DR     */
	io_clock_bit_4phase(k, 0, 0);		/* CAPTURE-DR    */
	pracc = io_clock_bit_4phase(k, 0, 0);	/* SHIFT-DR      */
	if (!pracc) {
		printf("%s: fatal error: processor access invalid\n", __func__);
		pic32_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	/* PROCESSOR ACCESS */
	tdo = io_clock_bit_4phase(k, 0, 0);	/* SHIFT-DR      */

	/* TRANSFER DATA */
	tdo |= io_clock_bits_4phase(k, 32,	/* EXIT1-DR */
						0x80000000, tdi) << 1;
	/* ENTER RUN-TEST/IDLE STATE */ 
	io_clock_bit_4phase(k, 1, 0);		/* UPDATE-DR     */
	io_clock_bit_4phase(k, 0, 0);		/* RUN-TEST/IDLE */
#ifdef DEBUG
	printf("%s: tdi = %08X, tdo = %08X\n", __func__, tdi, tdo);
#endif
	return tdo;
}

#ifdef DEBUG
void
pic32_control(struct k8048 *k, const char *func, uint32_t control)
{
	printf("%s: control = 0x%08X", func, control);
	if (control & PIC32_EJTAG_CONTROL_ROCC)
		fputs(" ROCC", stdout);
	if (control & PIC32_EJTAG_CONTROL_PRACC)
		fputs(" PRACC", stdout);
	if (control & PIC32_EJTAG_CONTROL_PROBEN)
		fputs(" PROBEN", stdout);
	if (control & PIC32_EJTAG_CONTROL_PROBTRAP)
		fputs(" PROBTRAP", stdout);
	if (control & PIC32_EJTAG_CONTROL_EJTAGBRK)
		fputs(" EJTAGBRK", stdout);
	if (control & PIC32_EJTAG_CONTROL_DM)
		fputs(" DM", stdout);
	putchar('\n');
}
#endif

/*
 * XferInstruction Pseudo Operation
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 18
 */
void
pic32_xferinstruction(struct k8048 *k, uint32_t instruction)
{
	uint32_t control;
	struct timeval tv1, tv2, tv3;

	/* Wait until CPU is ready */
	gettimeofday(&tv1, NULL);
	do {
	 	/* Select control register & check if processor access bit is set */
		pic32_sendcommand(k, PIC32_ETAP_CONTROL);
		control = pic32_xferdata(k, 32,
			PIC32_EJTAG_CONTROL_PROBEN |
			PIC32_EJTAG_CONTROL_PROBTRAP |
			PIC32_EJTAG_CONTROL_PRACC);
		if (control & PIC32_EJTAG_CONTROL_PRACC) {
			/* Select data register & send the instruction */
			pic32_sendcommand(k, PIC32_ETAP_DATA);
			pic32_xferdata(k, 32, instruction);
			/* Select control register & tell CPU to execute instruction */
			pic32_sendcommand(k, PIC32_ETAP_CONTROL);
			control = pic32_xferdata(k, 32,
				PIC32_EJTAG_CONTROL_PROBEN |
				PIC32_EJTAG_CONTROL_PROBTRAP);
#ifdef DEBUG
			pic32_control(k, __func__, control);
#endif
			return;
		}
		gettimeofday(&tv2, NULL);
                timersub(&tv2, &tv1, &tv3);
	}
	while (tv3.tv_sec < PIC32_TIMEOUT);

	printf("%s: fatal error: instruction transfer failed\n", __func__);
	pic32_standby(k);
        io_exit(k, EX_SOFTWARE); /* Panic */
}

/*****************************************************************************
 *
 * Utility Operations
 *
 *****************************************************************************/

/*
 * Check device status
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 20
 */
uint8_t
pic32_check_device_status(struct k8048 *k)
{
	pic32_sendcommand(k, PIC32_MTAP_SW_MTAP);
	pic32_sendcommand(k, PIC32_MTAP_COMMAND);

	return (uint8_t) pic32_xferdata(k, PIC32_MCHP_STATUS);
}

/*
 * Enter Serial Execution Mode
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 22
 */
void
pic32_enter_serial_execution_mode(struct k8048 *k)
{
	uint8_t status;

	status = pic32_check_device_status(k);
	if (status != (PIC32_MCHP_STATUS_CPS | PIC32_MCHP_STATUS_CFGRDY)) {
		printf("%s: fatal error: status invalid [0x%02X]\n", __func__, status);
		pic32_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	pic32_xferdata(k, PIC32_MCHP_ASSERT_RST);

	pic32_sendcommand(k, PIC32_MTAP_SW_ETAP);
	pic32_sendcommand(k, PIC32_ETAP_EJTAGBOOT);

	pic32_sendcommand(k, PIC32_MTAP_SW_MTAP);
	pic32_sendcommand(k, PIC32_MTAP_COMMAND);

	pic32_xferdata(k, PIC32_MCHP_DE_ASSERT_RST);
	pic32_xferdata(k, PIC32_MCHP_FLASH_ENABLE);

	status = pic32_check_device_status(k);
	if (status != (PIC32_MCHP_STATUS_CPS | PIC32_MCHP_STATUS_CFGRDY | PIC32_MCHP_STATUS_FAEN)) {
		printf("%s: fatal error: status invalid [0x%02X]\n", __func__, status);
		pic32_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	pic32_sendcommand(k, PIC32_MTAP_SW_ETAP);
}

/*
 * Read Memory Location
 *
 * 2-WIRE 4-PHASE
 *
 * DS60001145M-page 28
 */
uint32_t
pic32_readmemorylocation(struct k8048 *k, uint32_t addr)
{
	/*
	 * Step 1: Initialize some constants
	 */
	/* LUI S3, 0xFF20 	LOAD UPPER IMMEDIATE, CLEAR LOWER */
	pic32_xferinstruction(k, 0x3C13FF20);

	/*
	 * Step 2: Read memory location
	 */
	/* LUI T0, <Addr31:16>	LOAD UPPER IMMEDIATE, CLEAR LOWER */
	pic32_xferinstruction(k, 0x3C080000 | (addr >> 16));
	/* ORI T0, <Addr15:0>	OR LOWER IMMEDIATE */
	pic32_xferinstruction(k, 0x35080000 | (addr & 0xFFFF));

	/*
	 * Step 3: Write to Fastdata location
	 */
	/* LW T1, 0(T0)		LOAD WORD  */
	pic32_xferinstruction(k, 0x8D090000);
	/* SW T1, 0(S3)		STORE WORD */
	pic32_xferinstruction(k, 0xAE690000);
#if 1
	/* NOP			NO OPERATION */
	pic32_xferinstruction(k, 0x00000000);
#endif

	/*
	 * Step 4: Read data from Fastdata register 0xFF200000
	 */
	/* Select the Fastdata Register */
	pic32_sendcommand(k, PIC32_ETAP_FASTDATA);

	/* Send/Receive 32-bit Data */
	return pic32_xferfastdata(k, 0);
}

/*****************************************************************************
 *
 * Read block data
 *
 *****************************************************************************/

/*
 * GET CONFIGURATION
 */
void
pic32_read_config_memory(struct k8048 *k, int flag __attribute__((unused)))
{
	uint32_t dev;

	/* NULL device */
	pic32_index = PIC32_SIZE;

	/* Reset configuraton */
	memset(&pic32_conf, 0, sizeof(pic32_conf));

	pic32_program_verify(k);

	/* Device id/rev */
	pic32_conf.deviceid = pic32_xferdata(k, 32, 0);

	/* Device status */
	pic32_conf.status = pic32_check_device_status(k);
	if (PIC32_MCHP_STATUS_CFGRDY !=
		(pic32_conf.status & (PIC32_MCHP_STATUS_CFGRDY | PIC32_MCHP_STATUS_FCBUSY))) {
		printf("%s: fatal error: status invalid [0x%02X]\n", __func__, pic32_conf.status);
		pic32_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

#if 1
	uint32_t d;
	pic32_enter_serial_execution_mode(k);
	d = pic32_readmemorylocation(k, PIC32_DEVCFG0);
	printf("%s: DEVCFG0 = %08X\n", __func__, d);
	d = pic32_readmemorylocation(k, PIC32_DEVCFG1);
	printf("%s: DEVCFG1 = %08X\n", __func__, d);
	d = pic32_readmemorylocation(k, PIC32_DEVCFG2);
	printf("%s: DEVCFG2 = %08X\n", __func__, d);
	d = pic32_readmemorylocation(k, PIC32_DEVCFG3);
	printf("%s: DEVCFG3 = %08X\n", __func__, d);

	d = pic32_readmemorylocation(k, PIC32_DEVID);
	printf("%s: DEVID = %08X\n", __func__, d);
#endif

	dev = 0;
	while (pic32_map[dev].deviceid) {
		if (pic32_map[dev].deviceid == (pic32_conf.deviceid & pic32_map[dev].idmask))
			break;
		++dev;
	}
	if (!pic32_map[dev].deviceid) {
		if (pic32_conf.deviceid == 0x00000000 || pic32_conf.deviceid == 0xFFFFFFFF) {
			printf("%s: fatal error: %s.\n",
				__func__, io_fault(k, pic32_conf.deviceid));
		} else {
			printf("%s: fatal error: device unknown: [%08X]\n",
				__func__, pic32_conf.deviceid);
		}
		pic32_standby(k);
		io_exit(k, EX_SOFTWARE); /* Panic */
	}

	/* Device recognised */
	pic32_index = dev;

	pic32_standby(k);
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
pic32_dumpdeviceid(struct k8048 *k)
{
	printf("[%08X] [DEVICEID] %08X %s\n",
		PIC32_DEVID, pic32_conf.deviceid, pic32_map[pic32_index].devicename);
}
