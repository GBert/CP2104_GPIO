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

#include "VERSION"

#include "k8048.h"

/*
 * k8048 help
 */
void
usage_k8048(struct k8048 *k)
{
	printf("USAGE: k8048\n");
	printf("Usage information.\n\n");

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("BACKENDS:\n"
#ifdef TTY
		" TTY\n"
		"\t\tPOSIX serial.\n"
#endif
#ifdef RPI
		" RPI\n"
		"\t\tRaspberry Pi GPIO.\n"
#endif
#ifdef MCP23017
		" MCP23017\n"
		"\t\tLinux MCP23017 I2C.\n"
#endif
#ifdef BITBANG
		" BIT-BANG\n"
		"\t\tLinux GPIO bit-bang.\n"
#endif
		"\n");

	printf("EXAMPLES:\n"
#ifdef K12
		" k12 SELECT DEVICE OPERATION [ARG]\n"
		"\t\t12-bit word PIC10F/12F/16F operations.\n"
#endif
#ifdef K14
		" k14 [SELECT DEVICE] [LVP] OPERATION [ARG]\n"
		"\t\t14-bit word PIC10F/12F/16F operations.\n"
#endif
#ifdef K16
		" k16 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n"
		"\t\t16-bit word PIC18F operations.\n"
#endif
#ifdef K24
		" k24 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n"
		"\t\t24-bit word PIC24/dsPIC operations.\n"
#endif
#ifdef K32
		" k32 [SELECT DEVICE] [LVP] OPERATION [ARG]\n"
		"\t\t32-bit word PIC32 operations.\n"
#endif
#ifdef KCTRL
		" kctrl RUN|STOP|RESTORE\n"
		"\t\tControl master clear.\n"
#endif
#ifdef KTEST
		" ktest TEST [ARG]\n"
		"\t\tHardware tests.\n"
#endif
		"\n");

	printf("VERSION:\n %s\n", VERSION);

	io_exit(k, EX_OK);
}

/*
 * kctrl help
 */
#ifdef KCTRL
void
usage_kctrl(struct k8048 *k, char *msg)
{
	printf("USAGE: kctrl RUN|STOP|RESTORE\n");
	printf("Control master clear.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n"
		" kctrl RUN\n"
		"\t\tRaise master clear to take the device out of reset.\n"
		" kctrl STOP\n"
		"\t\tLower master clear to put the device in reset.\n"
		" kctrl RESTORE\n"
		"\t\tLower then raise master clear to reset the device.\n"
		"\n");

	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * ktest help
 */
#ifdef KTEST
void
usage_ktest(struct k8048 *k, char *msg)
{
	printf("USAGE: ktest TEST ARG\n");
	printf("Hardware tests.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n"
		" ktest VPP|PGC|PGD|PGM 5\n"
		"\t\tVPP, PGC, PGD or PGM LOW->HIGH->LOW test with 5 seconds high time.\n"
#ifdef RPI
		" ktest 0 10\n"
		"\t\tR-PI GPIO test with 10 seconds mark time.\n"
#endif
		" ktest 1 10\n"
		"\t\tD-SUB-9 test with 10 seconds per step.\n"
		" ktest 2 10\n"
		"\t\tICSP test with 10 seconds per step.\n"
		" ktest 3 0\n"
		"\t\tD-SUB-9 RTS 7 (PGC) DTR 4 (PGD) test with no mark time.\n"
		" ktest 3 1\n"
		"\t\tD-SUB-9 RTS 7 (PGC) DTR 4 (PGD) test with SLEEP mark time.\n"
		" ktest 3 100\n"
		"\t\tD-SUB-9 RTS 7 (PGC) DTR 4 (PGD) test with 100 microseconds mark time.\n"
		" ktest 4 100\n"
		"\t\t16F627 debug test with 100 microseconds clock mark time.\n"
#if defined(KTEST) && defined(KIO)
		" ktest 5 100\n"
		"\t\tICSPIO demo test with 100 microseconds clock mark time.\n"
#endif
		"\n");

	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k12 help
 */
#ifdef K12
void
usage_k12(struct k8048 *k, char *msg)
{
	printf("USAGE: k12 SELECT DEVICE OPERATION [ARG]\n");
	printf("12-bit word PIC10F/12F/16F operations.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n");
	printf(" k12 %ss%select\n"
		"\t\tDump supported devices.\n", UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sb%slank\n"
		"\t\tBlank device (disable protection and bulk erase).\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sc%sonfig\n"
		"\t\tDisplay device configuration.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sda%sta\n"
		"\t\tDisplay data flash content.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sd%sump\n"
		"\t\tDump device content (INHX32 format).\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sf%slash [n]\n"
		"\t\tDisplay all or n words of program flash content.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %si%sd\n"
		"\t\tDisplay device identification.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %so%ssccal\n"
		"\t\tDisplay oscillator calibration.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %so%ssccal 0x0c1a\n"
		"\t\tRestore oscillator calibration as 0x0c1a.\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sp%srogram [file.hex] [noblank]\n"
		"\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n", UL_ON, UL_OFF, UL_ON, UL_OFF);
	printf(" k12 %ss%select PIC1XFXXX %sv%serify [file.hex]\n"
		"\t\tVerify file.hex or stdin in flash (INHX32 format).\n", UL_ON, UL_OFF, UL_ON, UL_OFF);

	printf("\n");

	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k14 help
 */
#ifdef K14
void
usage_k14(struct k8048 *k, char *msg)
{
	printf("USAGE: k14 [SELECT DEVICE] [LVP] OPERATION [ARG]\n");
	printf("14-bit word PIC10F/12F/16F operations.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n");
	printf(" k14 %ss%select\n"
		"\t\tDump supported devices.\n", UL_ON, UL_OFF);
	printf(" k14 %ss%select 16F84 OPERATION [ARG]\n"
		"\t\tSelect device PIC16F84.\n", UL_ON, UL_OFF);
	printf(" k14 %sl%svp OPERATION [ARG]\n"
		"\t\tLVP 32-bit key entry.\n", UL_ON, UL_OFF);
	printf(" k14 %sb%slank\n"
		"\t\tBlank device (disable protection and bulk erase).\n", UL_ON, UL_OFF);
	printf(" k14 %sc%sonfig\n"
		"\t\tDisplay device configuration.\n", UL_ON, UL_OFF);
	printf(" k14 %sc%sonfig 0x3000\n"
		"\t\tRestore band-gap configuration as 0x3000.\n", UL_ON, UL_OFF);
	printf(" k14 %sda%sta\n"
		"\t\tDisplay data EEPROM content.\n", UL_ON, UL_OFF);
	printf(" k14 %sd%sump\n"
		"\t\tDump device content (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k14 %ser%sase eeprom | flash | id | row [n]\n"
		"\t\tErase EEPROM, flash, id or flash at row for n rows.\n", UL_ON, UL_OFF);
	printf(" k14 %sf%slash [n]\n"
		"\t\tDisplay all or n words of program flash content.\n", UL_ON, UL_OFF);
	printf(" k14 %si%sd\n"
		"\t\tDisplay device identification.\n", UL_ON, UL_OFF);
	printf(" k14 %so%ssccal\n"
		"\t\tDisplay oscillator calibration.\n", UL_ON, UL_OFF);
	printf(" k14 %so%ssccal 0x343c\n"
		"\t\tRestore oscillator calibration as 0x343c.\n", UL_ON, UL_OFF);
	printf(" k14 %sp%srogram [file.hex] [noblank]\n"
		"\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k14 %sv%serify [file.hex]\n"
		"\t\tVerify file.hex or stdin in flash (INHX32 format).\n", UL_ON, UL_OFF);

	printf("\n");

	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k16 help
 */
#ifdef K16
void
usage_k16(struct k8048 *k, char *msg)
{
	printf("USAGE: k16 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n");
	printf("16-bit word PIC18F operations.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n");
	printf(" k16 %ss%select\n"
		"\t\tDump supported devices.\n", UL_ON, UL_OFF);
	printf(" k16 %ss%select 18LF2539 OPERATION [ARG]\n"
		"\t\tSelect device PIC18LF2539.\n", UL_ON, UL_OFF);
	printf(" k16 %sl%svp OPERATION [ARG]\n"
		"\t\tLVP 32-bit key entry.\n", UL_ON, UL_OFF);
	printf(" k16 %sh%svp OPERATION [ARG]\n"
		"\t\tHVP 32-bit key entry.\n", UL_ON, UL_OFF);
	printf(" k16 %sb%slank\n"
		"\t\tBlank device (disable protection and bulk erase).\n", UL_ON, UL_OFF);
	printf(" k16 %sc%sonfig\n"
		"\t\tDisplay device configuration.\n", UL_ON, UL_OFF);
	printf(" k16 %sda%sta\n"
		"\t\tDisplay data EEPROM content.\n", UL_ON, UL_OFF);
	printf(" k16 %sd%sump\n"
		"\t\tDump device content (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k16 %ser%sase eeprom | flash | id | row [n]\n"
		"\t\tErase EEPROM, flash, id or flash at row for n rows.\n", UL_ON, UL_OFF);
	printf(" k16 %sf%slash [n]\n"
		"\t\tDisplay all or n words of program flash content.\n", UL_ON, UL_OFF);
	printf(" k16 %si%sd\n"
		"\t\tDisplay device identification.\n", UL_ON, UL_OFF);
	printf(" k16 %sp%srogram [file.hex] [noblank]\n"
		"\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k16 %sv%serify [file.hex]\n"
		"\t\tVerify file.hex or stdin in flash (INHX32 format).\n", UL_ON, UL_OFF);
	
	printf("\n");
	
	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k24 help
 */
#ifdef K24
void
usage_k24(struct k8048 *k, char *msg)
{
	printf("USAGE: k24 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n");
	printf("24-bit word PIC24/dsPIC operations.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n");
	printf(" k24 %ss%select\n"
		"\t\tDump supported devices.\n", UL_ON, UL_OFF);
	printf(" k24 %ss%select 33EP128GP502 OPERATION [ARG]\n"
		"\t\tSelect device dsPIC33EP128GP502.\n", UL_ON, UL_OFF);
	printf(" k24 %sl%svp OPERATION [ARG]\n"
		"\t\tLVP 32-bit key entry.\n", UL_ON, UL_OFF);
	printf(" k24 %sh%svp OPERATION [ARG]\n"
		"\t\tHVP 32-bit key entry.\n", UL_ON, UL_OFF);
	printf(" k24 %sb%slank\n"
		"\t\tBlank device (disable protection and bulk erase).\n", UL_ON, UL_OFF);
	printf(" k24 %sc%sonfig\n"
		"\t\tDisplay device configuration.\n", UL_ON, UL_OFF);
	printf(" k24 %sda%sta\n"
		"\t\tDisplay data EEPROM content.\n", UL_ON, UL_OFF);
	printf(" k24 %sd%sump\n"
		"\t\tDump device content (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k24 %sex%sec\n"
		"\t\tDisplay program executive content.\n", UL_ON, UL_OFF);
	printf(" k24 %sf%slash [n]\n"
		"\t\tDisplay all or n words of program flash content.\n", UL_ON, UL_OFF);
	printf(" k24 %si%sd\n"
		"\t\tDisplay device identification.\n", UL_ON, UL_OFF);
	printf(" k24 %sp%srogram [file.hex] [noblank]\n"
		"\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n", UL_ON, UL_OFF);
	printf(" k24 %sv%serify [file.hex]\n"
		"\t\tVerify file.hex or stdin in flash (INHX32 format).\n", UL_ON, UL_OFF);

	printf("\n");
	
	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k32 help
 */
#ifdef K32
void
usage_k32(struct k8048 *k, char *msg)
{
	printf("USAGE: k32 [SELECT DEVICE] OPERATION [ARG]\n");
	printf("32-bit word PIC32 operations.\n\n");

	if (msg)
		printf("Error: %s.\n\n", msg);

	printf("FILES:\n"
		" %s\n"
		"\t\tConfiguration.\n\n", k->dotfile);

	printf("EXAMPLES:\n");

	printf("\n");
	
	printf("VERSION:\n %s\n", VERSION);

	if (msg)
		io_exit(k, EX_USAGE);
	io_exit(k, EX_OK);
}
#endif

/*
 * k12/k14/k16/k24/k32 help
 */
void
usage(struct k8048 *k, char *execname, char *msg)
{
#ifdef K12
	if (strcmp("k12", execname) == 0)
		usage_k12(k, msg);
#endif
#ifdef K14
	if (strcmp("k14", execname) == 0)
		usage_k14(k, msg);
#endif
#ifdef K16
	if (strcmp("k16", execname) == 0)
		usage_k16(k, msg);
#endif
#ifdef K24
	if (strcmp("k24", execname) == 0)
		usage_k24(k, msg);
#endif
#ifdef K32
	if (strcmp("k32", execname) == 0)
		usage_k32(k, msg);
#endif
	usage_k8048(k);
}

/*
 * Open device and perform command
 */
int
main(int argc, char **argv)
{
	struct k8048 k;
	char *execdup, *execname;

	/* Initialise */
	memset(&k, 0, sizeof(k));

	/* Get exec name */
	execdup = (char *)strdup(argv[0]);
	if (execdup == NULL) {
		printf("%s: fatal error: strdup failed\n", __func__);
		io_exit(&k, EX_OSERR); /* Panic */
	}
	execname = basename(execdup);
	if (execname == NULL) {
		printf("%s: fatal error: basename failed\n", __func__);
		io_exit(&k, EX_OSERR); /* Panic */
	}

	/* Get configuration */
	getconf(&k, execname);
	
	/* Command: k8048 */
	if (strcmp(execname, "k8048") == 0)
		usage_k8048(&k);

	/* Open device */
	if (io_open(&k) < 0) {
#ifdef KTEST
		if (strcmp(execname, "ktest") == 0)
			usage_ktest(&k, io_error(&k));
#endif
		usage(&k, execname, io_error(&k));
	}

	setpriority(PRIO_PROCESS, 0, -20);

	/* Reset uid */
	if (getuid() != geteuid()) {
		if (setuid(getuid()) < 0) {
			printf("%s: fatal error: setuid failed\n", __func__);
			io_exit(&k, EX_OSERR); /* Panic */
		}
	}
#ifdef KCTRL
	/* Command: kctrl */
	if (strcmp(execname, "kctrl") == 0) {
		if (argc < 2)
			usage_kctrl(&k, "Missing arg");
		else if (argc > 2)
			usage_kctrl(&k, "Too many args");
		if (strcasecmp(argv[1], "RUN") == 0) {
			io_close(&k, HIGH);
			printf("RUN\n");
		} else if (strcasecmp(argv[1], "STOP") == 0) {
			io_close(&k, LOW);
			printf("STOP\n");
		} else if (strcasecmp(argv[1], "RESTORE") == 0) {
			io_set_vpp(&k, LOW);
			io_usleep(&k, 10);
			io_close(&k, HIGH);
			printf("RESTORE\n");
		}
		io_exit(&k, EX_OK);
	}
#endif
#ifdef KTEST
	/* Command: ktest */
	if (strcmp(execname, "ktest") == 0) {
		if (argc < 3)
			usage_ktest(&k, "Missing args");
		else if (argc > 3)
			usage_ktest(&k, "Too many args");
		int32_t testarg = strtol(argv[2], NULL, 0);
		if (testarg < 0)
			usage_ktest(&k, "Invalid arg");

		if (strcasecmp(argv[1], "VPP") == 0) 
			io_test0(&k, 0, testarg);
		else if (strcasecmp(argv[1], "PGC") == 0)
			io_test0(&k, 1, testarg);
		else if (strcasecmp(argv[1], "PGD") == 0)
			io_test0(&k, 2, testarg);
		else if (strcasecmp(argv[1], "PGM") == 0)
			io_test0(&k, 3, testarg);
		else if (argv[1][0] >= '0' && argv[1][0] <= '9') {
			int32_t test = strtol(argv[1], NULL, 0);
			switch (test) {
#ifdef RPI
			case 0: gpio_test(&k, testarg);break;
#endif
			case 1: io_test1(&k, testarg); break;
			case 2: io_test2(&k, testarg); break;
			case 3: io_test3(&k, testarg); break;
			case 4: io_test4(&k, testarg); break;
#if defined(KTEST) && defined(KIO)
			case 5: io_test5(&k, testarg); break;
#endif
			default:usage_ktest(&k, "Invalid arg");break;
			}
		} else {
			usage_ktest(&k, "Invalid arg");
		}
		io_exit(&k, EX_OK);
	}
#endif
	/* Determine arch: k12 | k14 | k16 | k24 | k32 */
	if (pic_arch(&k, execname) == 0)
		usage_k8048(&k);
	if (argc < 2)
		usage(&k, execname, "Missing arg(s)");

	/* Device selection */
	int argv1 = tolower((int)argv[1][0]);
	if (argv1 == 's') { /* Select device */
		if (argc < 3) {
			pic_selector(&k);
			io_exit(&k, EX_OK);
		}
		if (mystrcasestr(argv[2], "dspic") == argv[2]) {
			strncpy(k.devicename, argv[2], STRLEN);
		} else if (mystrcasestr(argv[2], "pic") == argv[2]) {
			strncpy(k.devicename, argv[2], STRLEN);
		} else {
			int32_t temp = strtol(argv[2], NULL, 0);
			if (temp < 10 || temp > 33) {
				usage(&k, execname, "Invalid arg [select]");
			}
			if (temp == 30 || temp == 33) {
				strcpy(k.devicename, "dspic");
				strncpy(&k.devicename[5], argv[2], STRLEN - 5);
			} else {
				strcpy(k.devicename, "pic");
				strncpy(&k.devicename[3], argv[2], STRLEN - 3);
			}
		}
		argc -= 2;
		argv += 2;
		if (argc < 2)
			usage(&k, execname, "Missing arg(s)");
	} else if (k.pic->arch == ARCH12BIT) {
		usage(&k, execname, "Missing select");
	}

	/* Key entry */
	argv1 = tolower((int)argv[1][0]);
	if (argv1 == 'l') {			/* LVP 32-bit key entry */
		if (k.pic->arch == ARCH12BIT) {
			usage(&k, execname, "Invalid arg [lvp]");
		}
		/* ARCH14BIT || ARCH16BIT || ARCH24BIT || ARCH32BIT */
		k.key = LVPKEY;
		argc -= 1;
		argv += 1;
		if (argc < 2)
			usage(&k, execname, "Missing arg(s)");
	}
	else if (argv1 == 'h') {		/* HVP 32-bit key entry */
		if (k.pic->arch == ARCH12BIT || k.pic->arch == ARCH14BIT || k.pic->arch == ARCH32BIT) {
			usage(&k, execname, "Invalid arg [hvp]");
		}
		/* ARCH16BIT || ARCH24BIT */
		k.key = HVPKEY;
		argc -= 1;
		argv += 1;
		if (argc < 2)
			usage(&k, execname, "Missing arg(s)");
	}
	else if (k.pic->arch == ARCH32BIT) {	/* LVP 32-bit key entry */
		/* ARCH32BIT */
		k.key = LVPKEY;
	}
	else {					/* No key entry */
		/* ARCH12BIT || ARCH14BIT || ARCH16BIT || ARCH24BIT */
		k.key = NOKEY;
	}

	/* Command */
	argv1 = tolower((int)argv[1][0]);
	int argv11 = tolower((int)argv[1][1]);
	switch (argv1) {
	case 'b':	if (argc > 2)
				usage(&k, execname, "Too many args [blank]");
			if (areyousure("Blank device"))
				pic_blank(&k);
			break;

	case 'c':	if (argc > 3)
				usage(&k, execname, "Too many args [config]");
			if (argc == 2)
				pic_dumpconfig(&k);
			else
				pic_writebandgap(&k, strtoul(argv[2], NULL, 0));
			break;
	
	case 'd':	if (argv11 == 'a') {		/* DATA */
				if (argc > 2)
					usage(&k, execname, "Too many args [data]");
				pic_dumpdata(&k);
			} else {			/* DUMP */
				if (argc > 2)
					usage(&k, execname, "Too many args [dump]");
				pic_dumpdevice(&k);
			}
			break;

	case 'e':	if (argv11 == 'r') {		/* ERASE FLASH | ID | ROW[NROWS] */
				uint32_t row = 0, nrows = 1;
				char prompt[STRLEN] = {0}, *endptr = NULL;

				if (argc < 3)
					usage(&k, execname, "Missing arg [erase]");
				if (argc > 4)
					usage(&k, execname, "Too many args [erase]");
				
				int argv2 = tolower((int)argv[2][0]);
				switch (argv2) {
				case 'i': /* IDLOCATION    */
				case 'u': /* USERID/CONFIG */
					row = PIC_ERASE_ID;
					strncpy(prompt, "Erase id", STRLEN);
					break;
				case 'c': /* CONFIG */
					row = PIC_ERASE_CONFIG;
					strncpy(prompt, "Erase config", STRLEN);
					break;
				case 'e': /* EEPROM */
					row = PIC_ERASE_EEPROM;
					strncpy(prompt, "Erase EEPROM", STRLEN);
					break;
				case 'f': /* FLASH */
					nrows = UINT32_MAX;
					strncpy(prompt, "Erase program flash", STRLEN);
					break;
				default:  /* FLASH ROW */
					row = strtoul(argv[2], &endptr, 0);
					if (endptr == argv[2])
						usage(&k, execname, "Invalid arg [erase]");
					if (argc == 4) {
						nrows = strtoul(argv[3], NULL, 0);
						if (nrows == 0)
							usage(&k, execname, "Invalid arg [erase]");
					}
					snprintf(prompt, STRLEN, "Erase %u row(s) at row %u",
						nrows, row);
					break;
				}
				if (areyousure(prompt))
					pic_erase(&k, row, nrows);
			} else if (argv11 == 'x') {	/* EXECUTIVE */
				if (argc > 2)
					usage(&k, execname, "Too many args [executive]");
				pic_dumpexec(&k);
			} else {			/* EEPROM */
				if (argc > 2)
					usage(&k, execname, "Too many args [eeprom]");
				pic_dumpdata(&k);
			}
			break;

	case 'f':	{
			uint32_t words = UINT32_MAX;
			if (argc > 3)
				usage(&k, execname, "Too many args [program flash]");
			if (argc == 3) {
				words = strtoul(argv[2], NULL, 0);
				if (words == 0)
					usage(&k, execname, "Invalid arg [program flash]");
			}
			pic_dumpprogram(&k, words);
			}
			break;

	case 'i':	if (argc > 2)
				usage(&k, execname, "Too many args [id]");
			pic_dumpdeviceid(&k);
			break;

	case 'o':	if (argc > 3)
				usage(&k, execname, "Too many args [osccal]");
			if (argc == 2)
				pic_dumposccal(&k);
			else
				pic_writeosccal(&k, strtoul(argv[2], NULL, 0));
			break;

	case 'p':	{
			int blank = 1;
			if (argc > 4)
				usage(&k, execname, "Too many args [program]");
			if (argc == 4) switch (argv[3][0]) {
				case 'n':
				case 'N':
				case '0': blank = 0;
					break;
				case 'y':
				case 'Y':
				case '1': blank = 1;
					break;
				default:usage(&k, execname, "Invalid arg [program]");
					break;
			}
			if (argc < 3)
				pic_program(&k, "-", 1);
			else
				pic_program(&k, argv[2], blank);
			}
			break;

	case 'v':	if (argc > 3)
				usage(&k, execname, "Too many args [verify]");
			if (argc < 3)
				pic_verify(&k, "-");
			else
				pic_verify(&k, argv[2]);
			break;
#ifdef DEBUG
	case 'x':	if (argc > 2)
				usage(&k, execname, "Too many args [x]");
			pic_x(&k);
			break;
#endif
	default:	usage(&k, execname, "Unknown operation");
			break;
	}

	free(execdup);
	io_exit(&k, EX_OK);
}
