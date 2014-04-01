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

#ifndef _PIC32_H
#define _PIC32_H

struct pic32_config {
	uint32_t deviceid;
	uint8_t status;
};

struct pic32_dsmap {
	char devicename[STRLEN];
	uint32_t deviceid;
	uint32_t idmask;
};

#define PIC32_TIMEOUT (1)

/* TMS HEADER */
#define PIC32_SELECT_DR			1,0x01	/* ENTER SELECT-DR-SCAN STATE   */
#define PIC32_CAPTURE_DR		2,0x01	/* ENTER CAPTURE-DR STATE       */
#define PIC32_SHIFT_DR			3,0x01	/* ENTER SHIFT-DR STATE         */

#define PIC32_SELECT_IR			2,0x03	/* ENTER SELECT-IR-SCAN STATE   */
#define PIC32_CAPTURE_IR		3,0x03	/* ENTER CAPTURE-IR STATE       */
#define PIC32_SHIFT_IR			4,0x03	/* ENTER SHIFT-IR STATE         */

/* TMS HEADER + FOOTER */
#define PIC32_RESET			5,0x1F	/* ENTER TEST-LOGIC-RESET STATE */
#define PIC32_IDLE6			6,0x1F	/* ENTER RUN-TEST/IDLE STATE    */

/* TMS FOOTER */
#define PIC32_UPDATE			1,0x01	/* ENTER UPDATE-DR/IR STATE     */
#define PIC32_IDLE2			2,0x01	/* ENTER RUN-TEST/IDLE STATE    */

#define PIC32_MTAP_COMMAND		5,0x07	/* SELECT MCHP COMMAND REGISTER */
#define PIC32_MTAP_SW_MTAP		5,0x04	/* SWITCH TO MCHP CONTROLLER    */
#define PIC32_MTAP_SW_ETAP		5,0x05	/* SWITCH TO EJTAG CONTROLLER   */
#define PIC32_MTAP_IDCODE		5,0x01	/* SELECT DEVICE ID REGISTER    */
#define PIC32_MCHP_STATUS		8,0x00	/* RETURN MCHP STATUS           */
#define PIC32_MCHP_ASSERT_RST		8,0xD1	/* PUT DEVICE IN RESET          */
#define PIC32_MCHP_DE_ASSERT_RST	8,0xD0	/* TAKE DEVICE OUT OF RESET     */
#define PIC32_MCHP_ERASE		8,0xFC	/* CHIP ERASE                   */
#define PIC32_MCHP_FLASH_ENABLE		8,0xFE	/* SET FLASH ENABLE BIT         */
#define PIC32_MCHP_FLASH_DISABLE	8,0xFD	/* CLEAR FLASH ENABLE BIT       */
#define PIC32_ETAP_ADDRESS		5,0x08	/* SELECT ADDRESS REGISTER      */
#define PIC32_ETAP_DATA			5,0x09	/* SELECT DATA REGISTER         */
#define PIC32_ETAP_CONTROL		5,0x0A	/* SELECT CONTROL REGISTER      */
#define PIC32_ETAP_EJTAGBOOT		5,0x0C	/* EXECUTE BOOT CODE            */
#define PIC32_ETAP_FASTDATA		5,0x0E	/* SELECT FASTDATA REGISTER     */

#define PIC32_MCHP_STATUS_CPS    (0x80) /* CODE PROTECT  */
#define PIC32_MCHP_STATUS_NVMERR (0x20) /* NVM ERROR     */
#define PIC32_MCHP_STATUS_CFGRDY (0x08) /* CONFIG READY  */
#define PIC32_MCHP_STATUS_FCBUSY (0x04) /* FLASH BUSY    */
#define PIC32_MCHP_STATUS_FAEN   (0x02) /* FLASH ENABLED */
#define PIC32_MCHP_STATUS_DEVRST (0x01) /* DEVICE RESET  */

#define PIC32_EJTAG_CONTROL_ROCC     (0x80000000) /* PROCESSOR RESET  */
/* 30-29:PSZ     */
/* 23:VPED       */
/* 22:DOZE       */
/* 21:HALT       */
/* 20:PERRST     */
#define PIC32_EJTAG_CONTROL_PRNW     (0x00080000) /* PROCESSOR R/W    */
#define PIC32_EJTAG_CONTROL_PRACC    (0x00040000) /* PROCESSOR ACCESS */
/* 16:PRRST      */
#define PIC32_EJTAG_CONTROL_PROBEN   (0x00008000) /* PROBE ENABLED    */
#define PIC32_EJTAG_CONTROL_PROBTRAP (0x00004000) /* PROBE ADDRESS    */
/* 13:ISAONDEBUG */
#define PIC32_EJTAG_CONTROL_EJTAGBRK (0x00001000) /* DEBUG INTERRUPT  */
#define PIC32_EJTAG_CONTROL_DM       (0x00000008) /* DEBUG MODE       */

#define PIC32_DEVID   (0xBF80F220)
#if 0
#define PIC32_DEVCFG3 (0xBFC02FF0)
#define PIC32_DEVCFG2 (0xBFC02FF4)
#define PIC32_DEVCFG1 (0xBFC02FF8)
#define PIC32_DEVCFG0 (0xBFC02FFC)
#else
#define PIC32_DEVCFG3 (0xBFC00BF0)
#define PIC32_DEVCFG2 (0xBFC00BF4)
#define PIC32_DEVCFG1 (0xBFC00BF8)
#define PIC32_DEVCFG0 (0xBFC00BFC)
#endif
#define PIC32_DMSEG   (0xFF200000)

/*
 * DS60001145M
 */
#define DS60001145M (60001145)
#define PIC32MX110F016B   (0x04A07053)
#define PIC32MX110F016C   (0x04A09053)
#define PIC32MX110F016D   (0x04A0B053)
#define PIC32MX120F032B   (0x04A06053)
#define PIC32MX120F032C   (0x04A08053)
#define PIC32MX120F032D   (0x04A0A053)
#define PIC32MX130F064B   (0x04D07053)
#define PIC32MX130F064C   (0x04D09053)
#define PIC32MX130F064D   (0x04D0B053)
#define PIC32MX150F128B   (0x04D06053)
#define PIC32MX150F128C   (0x04D08053)
#define PIC32MX150F128D   (0x04D0A053)
#define PIC32MX210F016B   (0x04A01053)
#define PIC32MX210F016C   (0x04A03053)
#define PIC32MX210F016D   (0x04A05053)
#define PIC32MX220F032B   (0x04A00053)
#define PIC32MX220F032C   (0x04A02053)
#define PIC32MX220F032D   (0x04A04053)
#define PIC32MX230F064B   (0x04D01053)
#define PIC32MX230F064C   (0x04D03053)
#define PIC32MX230F064D   (0x04D05053)
#define PIC32MX250F128B   (0x04D00053)
#define PIC32MX250F128C   (0x04D02053)
#define PIC32MX250F128D   (0x04D04053)
#define PIC32MX330F064H   (0x05600053)
#define PIC32MX330F064L   (0x05601053)
#define PIC32MX430F064H   (0x05602053)
#define PIC32MX430F064L   (0x05603053)
#define PIC32MX350F128H   (0x0570C053)
#define PIC32MX350F128L   (0x0570D053)
#define PIC32MX450F128H   (0x0570E053)
#define PIC32MX450F128L   (0x0570F053)
#define PIC32MX350F256H   (0x05704053)
#define PIC32MX350F256L   (0x05705053)
#define PIC32MX450F256H   (0x05706053)
#define PIC32MX450F256L   (0x05707053)
#define PIC32MX370F512H   (0x05808053)
#define PIC32MX370F512L   (0x05809053)
#define PIC32MX470F512H   (0x0580A053)
#define PIC32MX470F512L   (0x0580B053)
#define PIC32MX360F512L   (0x0938053)
#define PIC32MX360F256L   (0x0934053)
#define PIC32MX340F128L   (0x092D053)
#define PIC32MX320F128L   (0x092A053)
#define PIC32MX340F512H   (0x0916053)
#define PIC32MX340F256H   (0x0912053)
#define PIC32MX340F128H   (0x090D053)
#define PIC32MX320F128H   (0x090A053)
#define PIC32MX320F064H   (0x0906053)
#define PIC32MX320F032H   (0x0902053)
#define PIC32MX460F512L   (0x0978053)
#define PIC32MX460F256L   (0x0974053)
#define PIC32MX440F128L   (0x096D053)
#define PIC32MX440F256H   (0x0952053)
#define PIC32MX440F512H   (0x0956053)
#define PIC32MX440F128H   (0x094D053)
#define PIC32MX420F032H   (0x0942053)
#define PIC32MX534F064H   (0x4400053)
#define PIC32MX534F064L   (0x440C053)
#define PIC32MX564F064H   (0x4401053)
#define PIC32MX564F064L   (0x440D053)
#define PIC32MX564F128H   (0x4403053)
#define PIC32MX564F128L   (0x440F053)
#define PIC32MX575F256H   (0x4317053)
#define PIC32MX575F256L   (0x4333053)
#define PIC32MX575F512H   (0x4309053)
#define PIC32MX575F512L   (0x430F053)
#define PIC32MX664F064H   (0x4405053)
#define PIC32MX664F064L   (0x4411053)
#define PIC32MX664F128H   (0x4407053)
#define PIC32MX664F128L   (0x4413053)
#define PIC32MX675F256H   (0x430B053)
#define PIC32MX675F256L   (0x4305053)
#define PIC32MX675F512H   (0x430C053)
#define PIC32MX675F512L   (0x4311053)
#define PIC32MX695F512H   (0x4325053)
#define PIC32MX695F512L   (0x4341053)
#define PIC32MX764F128H   (0x440B053)
#define PIC32MX764F128L   (0x4417053)
#define PIC32MX775F256H   (0x4303053)
#define PIC32MX775F256L   (0x4312053)
#define PIC32MX775F512H   (0x430D053)
#define PIC32MX775F512L   (0x4306053)
#define PIC32MX795F512H   (0x430E053)
#define PIC32MX795F512L   (0x4307053)
#define PIC32MZ1024ECG064 (0x05103053)
#define PIC32MZ1024ECG100 (0x0510D053)
#define PIC32MZ1024ECG124 (0x05117053)
#define PIC32MZ1024ECG144 (0x05121053)
#define PIC32MZ1024ECH064 (0x05108053)
#define PIC32MZ1024ECH100 (0x05112053)
#define PIC32MZ1024ECH124 (0x0511C053)
#define PIC32MZ1024ECH144 (0x05126053)
#define PIC32MZ2048ECG064 (0x05104053)
#define PIC32MZ2048ECG100 (0x0510E053)
#define PIC32MZ2048ECG124 (0x05118053)
#define PIC32MZ2048ECG144 (0x05122053)
#define PIC32MZ2048ECH064 (0x05109053)
#define PIC32MZ2048ECH100 (0x05113053)
#define PIC32MZ2048ECH124 (0x0511D053)
#define PIC32MZ2048ECH144 (0x05127053)
#define PIC32MZ1024ECM064 (0x05130053)
#define PIC32MZ2048ECM064 (0x05131053)
#define PIC32MZ1024ECM100 (0x0513A053)
#define PIC32MZ2048ECM100 (0x0513B053)
#define PIC32MZ1024ECM124 (0x05144053)
#define PIC32MZ2048ECM124 (0x05145053)
#define PIC32MZ1024ECM144 (0x0514E053)
#define PIC32MZ2048ECM144 (0x0514F053)

uint32_t pic32_arch(struct k8048 *);
void pic32_selector(void);
void pic32_program_verify(struct k8048 *);
void pic32_standby(struct k8048 *);
void pic32_setmode(struct k8048 *, uint8_t, uint32_t);
void pic32_read_config_memory(struct k8048 *, int);
void pic32_dumpdeviceid(struct k8048 *);

#endif