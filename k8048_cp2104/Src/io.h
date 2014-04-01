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

#ifndef _IO_H
#define _IO_H

/* I/O bit rules */
#define PGD_OUT_FLIP  (0x0001)	/* invert pgd o/p */
#define PGC_OUT_FLIP  (0x0002)	/* invert pgc o/p */
#define VPP_OUT_FLIP  (0x0004)	/* invert vpp o/p */
#define PGD_IN_FLIP   (0x0008)	/* invert pgd i/p */
#define PGD_IN_PULLUP (0x0010)	/* pgd o/p high for pgd i/p */
#define PGM_OUT_FLIP  (0x0020)	/* invert pgm o/p */
/* GPIO bit rules */
#define PGD_RELEASE   (0x0100)	/* pgd released on exit */
#define PGC_RELEASE   (0x0200)	/* pgc released on exit */
#define PGM_RELEASE   (0x0400)	/* pgm released on exit */
#define VPP_RELEASE   (0x0800)	/* vpp released on exit */
#define VPP_RUN       (0x1000)	/* vpp high on exit (if not released) */
#define BB_LOCK       (0x2000)	/* gpio-bb shift with lock */

/* I/O backends */
#define IONONE  (0)
#define IOTTY   (1)     /* TTY/TTYUSB                     */
#define IORPI   (2)     /* RPI GPIO DIRECT/VELLEMAN K8048 */
#define IOI2C   (3)     /* MCP23017 I2C                   */
#define IOBB    (4)     /* LINUX BIT-BANG DRIVER          */

/* Default GPIO pins */
#define GPIO_PGM_DISABLED (255)
#define GPIO_VPP  (9)
#define GPIO_PGC  (10)
#define GPIO_PGDO (11)
#define GPIO_PGDI (11)
#define GPIO_PGM  (GPIO_PGM_DISABLED)

/******************************************************************************
 * ICSP I/O
 */

/* command i/o */
#define RESYNC (256)
#define EOT (0x04)
#define ACK (0x06)
#define NAK (0x15)

/*
 * CONSTANT CMD_LED        = 0x01  ; 0x00..0x3F        SET K8048 LEDS
 * CONSTANT CMD_SWITCH     = 0x02  ;                   GET K8048 SWITCHES
 * CONSTANT CMD_SLEEP      = 0x10  ;                   SLEEP UNTIL WATCHDOG TIME-OUT
 * CONSTANT CMD_WATCHDOG   = 0x11  ; 1|0               SET WATCHDOG ENABLE/DISABLE
 * CONSTANT CMD_CLOCK      = 0x12  ; 0..7              SET INTERNAL RC CLOCK DIVIDER
 * CONSTANT CMD_DIRECTION  = 0x20  ; 0..5 0x00..0xFF   SET PORT DATA DIRECTION
 * CONSTANT CMD_OUTPUT     = 0x21  ; 0..5 0x00..0xFF   SET PORT DATA OUTPUT
 * CONSTANT CMD_INPUT      = 0x22  ; 0..5              GET PORT DATA INPUT
 * CONSTANT CMD_ANALOG     = 0x30  ; 0..N|0xFF         SET ANALOG CHANNEL ENABLE/DISABLE
 * CONSTANT CMD_SAMPLE     = 0x31  ;                   GET ANALOG CHANNEL INPUT
 * CONSTANT CMD_VREF       = 0x38  ; 0..15|0xFF        SET VREF VOLTAGE LEVEL OR DISABLE
 * CONSTANT CMD_EEREAD     = 0x40  ; ADDRESS           READ DATA EEPROM
 * CONSTANT CMD_EEWRITE    = 0x41  ; ADDRESS DATA      WRITE DATA EEPROM
 * CONSTANT CMD_READ       = 0x50  ; ADDRESH ADDRESL   READ PROGRAM FLASH
 * CONSTANT CMD_WRITE      = 0x51  ; 		       UNIMPLIMENTED
 * CONSTANT CMD_ARG8       = 0xF0  ; 0..0xFF           SEND AN 8-BIT ARG & GET AN 8-BIT ANSWER
 * CONSTANT CMD_ARG16      = 0xF1  ; 0..0xFFFF         SEND A 16-BIT ARG & GET AN 8-BIT ANSWER
 * CONSTANT CMD_ARG24      = 0xF2  ; 0..0xFFFFFF       SEND A 24-BIT ARG & GET AN 8-BIT ANSWER
 * CONSTANT CMD_ARG32      = 0xF3  ; 0..0xFFFFFFFF     SEND A 32-BIT ARG & GET AN 8-BIT ANSWER
 * CONSTANT CMD_TEST       = 0xFE  ; 0..0xFF           SEND AN 8-BIT TEST ARG & GET NO REPLY
 * CONSTANT CMD_ERROR      = 0xFF  ;                   GET LAST FIRMWARE ERROR
 */
#define CMD_LED       (0x01)
#define CMD_SWITCH    (0x02)
#define CMD_SLEEP     (0x10)
#define CMD_WATCHDOG  (0x11)
#define CMD_CLOCK     (0x12)
#define CMD_DIRECTION (0x20)
#define CMD_OUTPUT    (0x21)
#define CMD_INPUT     (0x22)
#define CMD_ANALOG    (0x30)
#define CMD_SAMPLE    (0x31)
#define CMD_VREF      (0x38)
#define CMD_EEREAD    (0x40)
#define CMD_EEWRITE   (0x41)
#define CMD_READ      (0x50)
#define CMD_WRITE     (0x51)
#define CMD_ARG8      (0xF0)
#define CMD_ARG16     (0xF1)
#define CMD_ARG24     (0xF2)
#define CMD_ARG32     (0xF3)
#define CMD_TEST      (0xFE)
#define CMD_ERROR     (0xFF)

/* Analog sample delay */
#define FWSAMPLE  (200)
/* EEPROM write delay */
#define FWEEPROM  (200)

/*
 * CONSTANT ERRNONE     = 0    ; OK
 * CONSTANT ERRTIMEOUT  = 1    ; CLOCK TIMED OUT
 * CONSTANT ERRPROTOCOL = 2    ; INVALID STOP OR START BIT
 * CONSTANT ERRPARITY   = 3    ; INVALID PARITY BIT
 * CONSTANT ERRNOTSUP   = 4    ; COMMAND NOT SUPPORTED
 * CONSTANT ERRINVALID  = 5    ; INVALID RESPONSE
 */
#define ERRNONE     (0)
#define ERRTIMEOUT  (1)
#define ERRPROTOCOL (2)
#define ERRPARITY   (3)
#define ERRNOTSUP   (4)
#define ERRINVALID  (5)

/*****************************************************************************/

/* prototypes */
void io_signal();
void io_signal_on();
void io_signal_off();
void io_config(struct k8048 *);
int io_open(struct k8048 *);
void io_release(struct k8048 *);
void io_close(struct k8048 *, int);
void io_exit(struct k8048 *, int);
char *io_fault(struct k8048 *, int);
char *io_error(struct k8048 *);
void io_usleep(struct k8048 *, uint32_t);
void io_set_pgm(struct k8048 *, uint8_t);
void io_set_vpp(struct k8048 *, uint8_t);
void io_set_pgd(struct k8048 *, uint8_t);
void io_set_pgc(struct k8048 *, uint8_t);
uint8_t io_get_pgd(struct k8048 *);
void io_configure(struct k8048 *, uint8_t);
void io_data_input(struct k8048 *);
uint32_t io_clock_in_bits(struct k8048 *, uint32_t, uint32_t, uint8_t);
void io_data_output(struct k8048 *, uint8_t);
void io_clock_out_bits(struct k8048 *, uint32_t, uint32_t, uint32_t, uint8_t);
uint8_t io_clock_bit_4phase(struct k8048 *, uint8_t, uint8_t);
uint32_t io_clock_bits_4phase(struct k8048 *, uint8_t, uint32_t, uint32_t);
uint32_t io_program_in(struct k8048 *, uint8_t);
void io_program_out(struct k8048 *, uint32_t, uint8_t);
void io_program_feedback(struct k8048 *, char);
void io_test0(struct k8048 *, int, int);
void io_test1(struct k8048 *, int);
void io_test2(struct k8048 *, int);
void io_test3(struct k8048 *, int);
void io_test4(struct k8048 *, int);
void io_test5(struct k8048 *, int);
int io_test_out(struct k8048 *, int, int, uint8_t);
int io_test_in(struct k8048 *, int, int, uint8_t *);
char *io_test_err(int);
int io_test_command(struct k8048 *, int, int, uint8_t *, int, uint32_t *, int);
int io_test_switch(struct k8048 *, int);
int io_test_lasterror(struct k8048 *, int);

#endif /* !_IO_H */
