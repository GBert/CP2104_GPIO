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

struct pic_ops pic14_ops = {
	.arch                      = ARCH14BIT,
	.selector                  = pic14_selector,
	.read_config_memory        = pic14_read_config_memory,
	.get_program_size          = pic14_get_program_size,
	.get_data_size             = pic14_get_data_size,
	.get_executive_size        = NULL,
	.read_program_memory_block = pic14_read_program_memory_block,
	.read_data_memory_block    = pic14_read_data_memory_block,
	.program                   = pic14_program,
	.verify                    = pic14_verify,
	.bulk_erase                = pic14_bulk_erase,
	.row_erase                 = pic14_row_erase,
	.dumpdeviceid              = pic14_dumpdeviceid,
	.dumpconfig                = pic14_dumpconfig,
	.dumposccal                = pic14_dumposccal,
	.dumpdevice                = pic14_dumpdevice,
	.dumphexcode               = pic14_dumphexcode,
	.dumpinhxcode              = pic14_dumpinhxcode,
	.dumphexdata               = pic14_dumphexdata,
	.dumpinhxdata              = pic14_dumpinhxdata,
};

uint32_t
pic14_arch(struct k8048 *k)
{
	k->pic = &pic14_ops;

	return k->pic->arch;
}

/*****************************************************************************
 *
 * Hardware configuration
 *
 *****************************************************************************/

struct pic14_config pic14_conf;

/*****************************************************************************
 *
 * Hardware algorithm map
 *
 *****************************************************************************/

struct pic14_dsmap pic14_map[] =
{
/*Device name	Device id	Flash	EEPROM	Data-sheet Config  Data    #Config #Calib #Latches EraseSize*/
{"PIC16C84",	PIC16C84,	1024,	64,	DS30189D,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F83",	PIC16F83,	512,	64,	DS30262E,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F84",	PIC16F84,	1024,	64,	DS30262E,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F84A",	PIC16F84A,	1024,	64,	DS30262E,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F627",	PIC16F627,	1024,	128,	DS30034D,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F628",	PIC16F628,	2048,	128,	DS30034D,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F870",	PIC16F870,	2048,	64,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F871",	PIC16F871,	2048,	64,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F872",	PIC16F872,	2048,	64,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F873",	PIC16F873,	4096,	128,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F874",	PIC16F874,	4096,	128,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F876",	PIC16F876,	8192,	256,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F877",	PIC16F877,	8192,	256,	DS39025F,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F873A",	PIC16F873A,	4096,	128,	DS39589C,  0x2000, 0x2100, 1,      0,     8,       0},
{"PIC16F874A",	PIC16F874A,	4096,	128,	DS39589C,  0x2000, 0x2100, 1,      0,     8,       0},
{"PIC16F876A",	PIC16F876A,	8192,	256,	DS39589C,  0x2000, 0x2100, 1,      0,     8,       0},
{"PIC16F877A",	PIC16F877A,	8192,	256,	DS39589C,  0x2000, 0x2100, 1,      0,     8,       0},

/* These devices have two config words at 2007 & 2008 */
{"PIC16F87",	PIC16F87,	4096,	256,	DS39607B,  0x2000, 0x2100, 2,      0,     4,       0},
{"PIC16F88",	PIC16F88,	4096,	256,	DS39607B,  0x2000, 0x2100, 2,      0,     4,       0},

{"PIC12F629",	PIC12F629,	1024,	128,	DS41191C,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC12F675",	PIC12F675,	1024,	128,	DS41191C,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F630",	PIC16F630,	1024,	128,	DS41191C,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F676",	PIC16F676,	1024,	128,	DS41191C,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F627A",	PIC16F627A,	1024,	128,	DS41196F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F628A",	PIC16F628A,	2048,	128,	DS41196F,  0x2000, 0x2100, 1,      0,     1,       0},
{"PIC16F648A",	PIC16F648A,	4096,	256,	DS41196F,  0x2000, 0x2100, 1,      0,     1,       0},

{"PIC16F818",	PIC16F818,	1024,	128,	DS39603C,  0x2000, 0x2100, 1,      0,     4,       0},
{"PIC16F819",	PIC16F819,	2048,	256,	DS39603C,  0x2000, 0x2100, 1,      0,     4,       0},

{"PIC16F716",	PIC16F716,	2048,	0,	DS40245B,  0x2000, 0x2100, 1,      0,     4,       0},

/* These devices have one config word at 2007 and up to two calibration words at 2008 & 2009 */
{"PIC16F631",	PIC16F631,	1024,	128,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F677",	PIC16F677,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F685",	PIC16F685,	4096,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F687",	PIC16F687,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F689",	PIC16F689,	4096,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F690",	PIC16F690,	4096,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC12F635",	PIC12F635,	1024,	128,	DS41204G,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC16F636",	PIC16F636,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC16F639",	PIC16F639,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC12F683",	PIC12F683,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F684",	PIC16F684,	2048,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16F688",	PIC16F688,	4096,	256,	DS41204G,  0x2000, 0x2100, 1,      1,     4,       16},

/* These devices have two config words at 2007 & 2008 and two calibration words at 2009 & 200A */
{"PIC16F722",	PIC16F722,	2048,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F722A",	PIC16F722A,	2048,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F723",	PIC16F723,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F723A",	PIC16F723A,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F724",	PIC16F724,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F726",	PIC16F726,	8192,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16F727",	PIC16F727,	8192,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF722",	PIC16LF722,	2048,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF722A",	PIC16LF722A,	2048,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF723",	PIC16LF723,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF723A",	PIC16LF723A,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF724",	PIC16LF724,	4096,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF726",	PIC16LF726,	8192,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF727",	PIC16LF727,	8192,	0,	DS41332D,  0x2000, 0x2100, 2,      2,     8,       32},

/* These devices have two config words at 2007 & 2008 and two calibration words at 2009 & 200A */
{"PIC16F720",	PIC16F720,	2048,	0,	DS41409B,  0x2000, 0x2100, 2,      2,     32,      32},
{"PIC16F721",	PIC16F721,	4096,	0,	DS41409B,  0x2000, 0x2100, 2,      2,     32,      32},
{"PIC16LF720",	PIC16LF720,	2048,	0,	DS41409B,  0x2000, 0x2100, 2,      2,     32,      32},
{"PIC16LF721",	PIC16LF721,	4096,	0,	DS41409B,  0x2000, 0x2100, 2,      2,     32,      32},

/* These devices have two config words at 2007 & 2008 and two calibration words at 2009 & 200A */
{"PIC16F707",	PIC16F707,	8192,	0,	DS41405A,  0x2000, 0x2100, 2,      2,     8,       32},
{"PIC16LF707",	PIC16LF707,	8192,	0,	DS41405A,  0x2000, 0x2100, 2,      2,     8,       32},

/* These devices have one config word at 2007 and one calibration word at 2008 */
{"PIC12F609",	PIC12F609,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC12HV609",	PIC12HV609,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC12F615",	PIC12F615,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC12HV615",	PIC12HV615,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC16F610",	PIC16F610,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC16HV610",	PIC16HV610,	1024,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     1,       0},
{"PIC16F616",	PIC16F616,	2048,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC16HV616",	PIC16HV616,	2048,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     4,       16},
{"PIC12F617",	PIC12F617,	2048,	0,	DS41284E,  0x2000, 0x2100, 1,      1,     4,       16},

/* These devices have two config words at 2007 & 2008 and one calibration word at 2009 */
{"PIC16F882",	PIC16F882,	2048,	128,	DS41287D,  0x2000, 0x2100, 2,      1,     8,       16},
{"PIC16F883",	PIC16F883,	4096,	256,	DS41287D,  0x2000, 0x2100, 2,      1,     8,       16},
{"PIC16F884",	PIC16F884,	4096,	256,	DS41287D,  0x2000, 0x2100, 2,      1,     8,       16},
{"PIC16F886",	PIC16F886,	8192,	256,	DS41287D,  0x2000, 0x2100, 2,      1,     8,       16},
{"PIC16F887",	PIC16F887,	8192,	256,	DS41287D,  0x2000, 0x2100, 2,      1,     8,       16},

{"PIC16F73",	PIC16F73,	4096,	0,	DS30324B,  0x2000, 0x2100, 1,      0,     2,       0},
{"PIC16F74",	PIC16F74,	4096,	0,	DS30324B,  0x2000, 0x2100, 1,      0,     2,       0},
{"PIC16F76",	PIC16F76,	8192,	0,	DS30324B,  0x2000, 0x2100, 1,      0,     2,       0},
{"PIC16F77",	PIC16F77,	8192,	0,	DS30324B,  0x2000, 0x2100, 1,      0,     2,       0},

/* These devices have one config word at 2007 and two calibration words at 2008 & 2009 */
{"PIC10F320",	PIC10F320,	256,	0,	DS41572D,  0x2000, 0x2100, 1,      2,     16,      16},
{"PIC10F322",	PIC10F322,	512,	0,	DS41572D,  0x2000, 0x2100, 1,      2,     16,      16},
{"PIC10LF320",	PIC10LF320,	256,	0,	DS41572D,  0x2000, 0x2100, 1,      2,     16,      16},
{"PIC10LF322",	PIC10LF322,	512,	0,	DS41572D,  0x2000, 0x2100, 1,      2,     16,      16},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC12F1501",	PIC12F1501,	1024,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1503",	PIC16F1503,	2048,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16F1507",	PIC16F1507,	2048,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16F1508",	PIC16F1508,	4096,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1509",	PIC16F1509,	8192,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC12LF1501",	PIC12LF1501,	1024,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1503",	PIC16LF1503,	2048,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16LF1507",	PIC16LF1507,	2048,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16LF1508",	PIC16LF1508,	4096,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1509",	PIC16LF1509,	8192,	0,	DS41573C,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC12F1840",	PIC12F1840,	4096,	256,	DS41439A,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1847",	PIC16F1847,	8192,	256,	DS41439A,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC12LF1840",	PIC12LF1840,	4096,	256,	DS41439A,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1847",	PIC16LF1847,	8192,	256,	DS41439A,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC16F1933",	PIC16F1933,	4096,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1934",	PIC16F1934,	4096,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1936",	PIC16F1936,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1937",	PIC16F1937,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1938",	PIC16F1938,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1939",	PIC16F1939,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1946",	PIC16F1946,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1947",	PIC16F1947,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1933",	PIC16LF1933,	4096,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1934",	PIC16LF1934,	4096,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1936",	PIC16LF1936,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1937",	PIC16LF1937,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1938",	PIC16LF1938,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1939",	PIC16LF1939,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1946",	PIC16LF1946,	8192,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1947",	PIC16LF1947,	16384,	256,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1902",	PIC16LF1902,	2048,	0,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1903",	PIC16LF1903,	4096,	0,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1904",	PIC16LF1904,	4096,	0,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1906",	PIC16LF1906,	8192,	0,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1907",	PIC16LF1907,	8192,	0,	DS41397B,  0x8000, 0xF000, 2,      2,     8,       32},

{"PIC16F917",	PIC16F917,	8192,	256,	DS41244F,  0x2000, 0x2100, 1,      2,     8,       16},
{"PIC16F916",	PIC16F916,	8192,	256,	DS41244F,  0x2000, 0x2100, 1,      2,     8,       16},
{"PIC16F914",	PIC16F914,	4096,	256,	DS41244F,  0x2000, 0x2100, 1,      2,     8,       16},
{"PIC16F913",	PIC16F913,	4096,	256,	DS41244F,  0x2000, 0x2100, 1,      2,     8,       16},
{"PIC16F946",	PIC16F946,	16384,	256,	DS41244F,  0x2000, 0x2100, 1,      2,     8,       16},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC12F1822",	PIC12F1822,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16F1823",	PIC16F1823,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16F1826",	PIC16F1826,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1827",	PIC16F1827,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16F1824",	PIC16F1824,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1828",	PIC16F1828,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1825",	PIC16F1825,	8192,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1829",	PIC16F1829,	8192,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC12LF1822",	PIC12LF1822,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16LF1823",	PIC16LF1823,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16LF1826",	PIC16LF1826,	2048,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1827",	PIC16LF1827,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     8,       32},
{"PIC16LF1824",	PIC16LF1824,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1828",	PIC16LF1828,	4096,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1825",	PIC16LF1825,	8192,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1829",	PIC16LF1829,	8192,	256,	DS41390D,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have two config words at 2007 & 2008 */
{"PIC16F737",	PIC16F737,	4096,	0,	DS30492B,  0x2000, 0x2100, 2,      0,     2,       0},
{"PIC16F747",	PIC16F747,	4096,	0,	DS30492B,  0x2000, 0x2100, 2,      0,     2,       0},
{"PIC16F767",	PIC16F767,	8192,	0,	DS30492B,  0x2000, 0x2100, 2,      0,     2,       0},
{"PIC16F777",	PIC16F777,	8192,	0,	DS30492B,  0x2000, 0x2100, 2,      0,     2,       0},

/* These devices have two config words at 8007 & 8008 and multiple calibration words from 8009 onward */
{"PIC16F1782",	PIC16F1782,	2048,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1783",	PIC16F1783,	4096,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1784",	PIC16F1784,	4096,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1786",	PIC16F1786,	8192,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1787",	PIC16F1787,	8192,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1788",	PIC16F1788,	16384,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16F1789",	PIC16F1789,	16384,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1782",	PIC16LF1782,	2048,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1783",	PIC16LF1783,	4096,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1784",	PIC16LF1784,	4096,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1786",	PIC16LF1786,	8192,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1787",	PIC16LF1787,	8192,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1788",	PIC16LF1788,	16384,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},
{"PIC16LF1789",	PIC16LF1789,	16384,	256,	DS41457E,  0x8000, 0xF000, 2,      11,    32,      32},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC16F1454",	PIC16F1454,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1455",	PIC16F1455,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1459",	PIC16F1459,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1454",	PIC16F1454,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1455",	PIC16F1455,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1459",	PIC16F1459,	8192,	0,	DS41620C,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC16F1527",	PIC16F1527,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1526",	PIC16F1526,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1519",	PIC16F1519,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1518",	PIC16F1518,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1517",	PIC16F1517,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1516",	PIC16F1516,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1513",	PIC16F1513,	4096,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16F1512",	PIC16F1512,	2048,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1527",	PIC16LF1527,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1526",	PIC16LF1526,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1519",	PIC16LF1519,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1518",	PIC16LF1518,	16384,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1517",	PIC16LF1517,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1516",	PIC16LF1516,	8192,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1513",	PIC16LF1513,	4096,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1512",	PIC16LF1512,	2048,	0,	DS41442B,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have one config word at 2007 and two calibration words at 2008 & 2009 */
{"PIC12F752",	PIC12F752,	1024,	0,	DS41561C,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC12HV752",	PIC12HV752,	1024,	0,	DS41561C,  0x2000, 0x2100, 1,      2,     4,       16},

/* This device has two config words at 8007 & 8008 and two calibration words at 8009 & 800A */
{"PIC12LF1552",	PIC12LF1552,	2048,	0,	DS41642A,  0x8000, 0xF000, 2,      2,     16,      16},
{"PIC16LF1554",	PIC16LF1554,	4096,	0,   DS40001743A,  0x8000, 0xF000, 2,      2,     32,      32},
{"PIC16LF1559",	PIC16LF1559,	8192,	0,   DS40001743A,  0x8000, 0xF000, 2,      2,     32,      32},

/* These devices have one config word at 2007 and two calibration words at 2008 & 2009 */
{"PIC16F753",	PIC16F753,	2048,	0,	DS41686A,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC16HV752",	PIC16HV753,	2048,	0,	DS41686A,  0x2000, 0x2100, 1,      2,     4,       16},

/* These devices have one config word at 2007 and two calibration words at 2008 & 2009 */
{"PIC16F785",	PIC16F785,	2048,	256,	DS41237D,  0x2000, 0x2100, 1,      2,     4,       16},
{"PIC16HV785",	PIC16HV785,	2048,	256,	DS41237D,  0x2000, 0x2100, 1,      2,     4,       16},

/* These devices have two config words at 8007 & 8008 and multiple calibration words from 8009 onward */
{"PIC16F1703",	PIC16F1703,	2048,	0,   DS40001683B,  0x8000, 0xF000, 2,      4,     16,      16},
{"PIC16F1704",	PIC16F1704,	4096,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1705",	PIC16F1705,	8192,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1707",	PIC16F1707,	2048,	0,   DS40001683B,  0x8000, 0xF000, 2,      4,     16,      16},
{"PIC16F1708",	PIC16F1708,	4096,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1709",	PIC16F1709,	8192,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1703",	PIC16LF1703,	2048,	0,   DS40001683B,  0x8000, 0xF000, 2,      4,     16,      16},
{"PIC16LF1704",	PIC16LF1704,	4096,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1705",	PIC16LF1705,	8192,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1707",	PIC16LF1707,	2048,	0,   DS40001683B,  0x8000, 0xF000, 2,      4,     16,      16},
{"PIC16LF1708",	PIC16LF1708,	4096,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1709",	PIC16LF1709,	8192,	0,   DS40001683B,  0x8000, 0xF000, 2,      8,     32,      32},

/* These devices have three config words at 8007/8/9 and three calibration words at 200A/B/C */
{"PIC12F1612",	PIC12F1612,	2048,	0,   DS40001720A,  0x8000, 0xF000, 3,      3,     16,      16},
{"PIC12LF1612",	PIC12LF1612,	2048,	0,   DS40001720A,  0x8000, 0xF000, 3,      3,     16,      16},
{"PIC16F1613",	PIC16F1613,	2048,	0,   DS40001720A,  0x8000, 0xF000, 3,      3,     16,      16},
{"PIC16LF1613",	PIC16LF1613,	2048,	0,   DS40001720A,  0x8000, 0xF000, 3,      3,     16,      16},

/* These devices have two config words at 8007 & 8008 and multiple calibration words from 8009 onward */
{"PIC16F1713",	PIC16F1713,	4096,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1716",	PIC16F1716,	8192,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1717",	PIC16F1717,	8192,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1718",	PIC16F1718,	16384,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16F1719",	PIC16F1719,	16384,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1713",	PIC16LF1713,	4096,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1716",	PIC16LF1716,	8192,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1717",	PIC16LF1717,	8192,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1718",	PIC16LF1718,	16384,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},
{"PIC16LF1719",	PIC16LF1719,	16384,	0,   DS40001714C,  0x8000, 0xF000, 2,      8,     32,      32},

/* These devices have two config words at 8007/8 and three calibration words at 2009/A/B */
{"PIC12F1571",	PIC12F1571,	1024,	0,   DS40001713A,  0x8000, 0xF000, 2,      3,     16,      16},
{"PIC12LF1571",	PIC12LF1571,	1024,	0,   DS40001713A,  0x8000, 0xF000, 2,      3,     16,      16},
{"PIC12F1572",	PIC12F1572,	2048,	0,   DS40001713A,  0x8000, 0xF000, 2,      3,     16,      16},
{"PIC12LF1572",	PIC12LF1572,	2048,	0,   DS40001713A,  0x8000, 0xF000, 2,      3,     16,      16},

{"(null)",	0,		0,	0,	0,	   0,      0,      0,      0,     0,       0}
/*Device name	Device id	Flash	EEPROM	Data-sheet Config  Data    #Config #Calib #Latches EraseSize*/
};
#define PIC14_SIZE ((sizeof(pic14_map) / sizeof(struct pic14_dsmap)) - 1)

/* Default device (null) */
uint32_t pic14_index = PIC14_SIZE;

void
pic14_selector(void)
{
	uint32_t i;
	char *dnames[PIC14_SIZE];

	for (i = 0; i < PIC14_SIZE; ++i) {
		dnames[i] = pic14_map[i].devicename;
	}
	qsort(dnames, PIC14_SIZE, sizeof(char *), pic_cmp);
	for (i = 0; i < PIC14_SIZE; ++i) {
		if ((i % PIC_NCOLS) == (PIC_NCOLS - 1))
			printf("%s\n", dnames[i]);
		else
			printf("%s\t", dnames[i]);
	}
	if (i % PIC_NCOLS)
		printf("\n");
	printf("Total: %u\n", (uint32_t)PIC14_SIZE);
}

/*****************************************************************************
 *
 * Program/Verify mode
 *
 *****************************************************************************/

/*
 * ENTER HVP/LVP PROGRAM/VERIFY MODE
 *
 * ENTRY - VDD FIRST
 *
 * DS41204H-page 12 PIC16F688
 */
void
pic14_program_verify(struct k8048 *k)
{
	/* INPUT DATA ON CLOCK RISING EDGE */
	io_configure(k, FALSE);

	/* RESET & ACQUIRE GPIO */
	io_set_vpp(k, LOW);
	/* DS41204H PIC16F688  THLD0(2us) */
	/* DS41620C PIC16F1455 TENTS(100ns) */
	io_usleep(k, 1000);
	/* PGD + PGC + PGM LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);
	io_set_pgm(k, LOW);
	io_usleep(k, 1000);

	/* LVP(KEY) */
	if (k->key == LVPKEY) {
		/* VPP HIGH */
		io_set_vpp(k, HIGH);
		/* DS41620C PIC16F1455 TENTH(250us) */
		io_usleep(k, 250);

		/* VPP LOW */
		io_set_vpp(k, LOW);
		/* DS41620C PIC16F1455 TENTH(250us) */
		io_usleep(k, 250);

		/* PROGRAM/VERIFY ENTRY CODE */
		io_program_out(k, MCHPKEY, 33);
		/* UNSPECIFIED */
		io_usleep(k, 250);
	}
	/* LVP(PGM) | HVP */
	else {
		/* PGM HIGH */
		io_set_pgm(k, HIGH);
		io_usleep(k, 10);

		/* VPP HIGH */
		io_set_vpp(k, HIGH);
		/* DS41204H PIC16F688 TPPDP(5us) */
		io_usleep(k, 250);
	}
}

/*
 * EXIT HVP/LVP PROGRAM/VERIFY MODE
 *
 * EXIT - VDD LAST
 */
void
pic14_standby(struct k8048 *k)
{
	/* PGD + PGC LOW */
	io_set_pgd(k, LOW);
	io_set_pgc(k, LOW);

	/* LVP(KEY) */
	if (k->key == LVPKEY) {
		/* VPP HIGH */
		io_set_vpp(k, HIGH);
		/* DS41620C PIC16F1455 TENTH(250us) */
		io_usleep(k, 250);

		/* VPP LOW */
		io_set_vpp(k, LOW);
	}
	/* LVP(PGM) | HVP */
	else {
		/* VPP LOW */
		io_set_vpp(k, LOW);

		/* PGM LOW */
		io_set_pgm(k, LOW);
	}
}

/*****************************************************************************
 *
 * Hardware functions
 *
 *****************************************************************************/

/*I/O*************************************************************************/

/*
 * LOAD CONFIGURATION
 *  PC <= CONFIG_LOW
 *
 * X00000 = 0x00
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS40245B-page 5	16F716
 * DS41204H-page 14	12F683
 * DS41332D-page 13	16F726
 * DS41284E-page 8	12F615
 * DS41284E-page 8	12F617
 * DS41287D-page 13	16F886
 * DS30324B-page 4	16F73
 * DS41572D-page 11	10F320
 * DS41573C-page 15	16F1507
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS30492B-page 7	16F767
 * DS41457E-page 19	16F1788
 * DS41442B-page 17	16F1518
 * DS41620C-page 14	16F1455
 * DS41409B-page 9	16F721
 * DS41561C-page 6	12F752
 * DS41642A-page 8	12LF1552
 * DS41686A-page 7	16F753
 * DS41237D-page 8	16F785
 * DS41405A-page 8	16F707
 * DS40001683B-page 16	16F1708
 */
static inline void
pic14_load_configuration(struct k8048 *k, uint16_t word)
{
	io_program_out(k, 0x00, 6);
	word = (word << 1) | 0x8001;
	io_program_out(k, word, 16);
}

/*
 * LOAD DATA FOR PROGRAM MEMORY
 *  PC <= 0
 *  WR <= word
 *
 * X00010 = 0x02
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS40245B-page 5	16F716
 * DS41204H-page 14	12F683
 * DS41332D-page 13	16F726
 * DS41284E-page 8	12F615
 * DS41284E-page 8	12F617
 * DS41287D-page 13	16F886
 * DS30324B-page 4	16F73
 * DS41572D-page 11	10F320
 * DS41573C-page 15	16F1507
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS30492B-page 7	16F767
 * DS41457E-page 19	16F1788
 * DS41442B-page 17	16F1518
 * DS41620C-page 14	16F1455
 * DS41409B-page 9	16F721
 * DS41561C-page 6	12F752
 * DS41642A-page 8	12LF1552
 * DS41686A-page 7	16F753
 * DS41237D-page 8	16F785
 * DS41405A-page 8	16F707
 * DS40001683B-page 16	16F1708
 */
static inline void
pic14_load_data_for_program_memory(struct k8048 *k, uint16_t word)
{
	io_program_out(k, 0x02, 6);
	word = (word << 1) | 0x8001;
	io_program_out(k, word, 16);
}

/*
 * LOAD DATA FOR DATA MEMORY
 *  PC <= DATA_LOW
 *  WR <= word
 *
 * X00011 = 0x03
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS41204H-page 14	12F683
 * DS41287D-page 13	16F886
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS41457E-page 19	16F1788
 * DS41237D-page 8	16F785
 */
static inline void
pic14_load_data_for_data_memory(struct k8048 *k, uint16_t word)
{
	io_program_out(k, 0x03, 6);
	word = (word << 1) | 0x8001;
	io_program_out(k, word, 16);
}

/*
 * READ DATA FROM PROGRAM MEMORY
 *  RETURN (PC)
 *
 * X00100 = 0x04
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS40245B-page 5	16F716
 * DS41204H-page 14	12F683
 * DS41332D-page 13	16F726
 * DS41284E-page 8	12F615
 * DS41284E-page 8	12F617
 * DS41287D-page 13	16F886
 * DS30324B-page 4	16F73
 * DS41572D-page 11	10F320
 * DS41573C-page 15	16F1507
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS30492B-page 7	16F767
 * DS41457E-page 19	16F1788
 * DS41442B-page 17	16F1518
 * DS41620C-page 14	16F1455
 * DS41409B-page 9	16F721
 * DS41561C-page 6	12F752
 * DS41642A-page 8	12LF1552
 * DS41686A-page 7	16F753
 * DS41237D-page 8	16F785
 * DS41405A-page 8	16F707
 * DS40001683B-page 16	16F1708
 */
static inline uint16_t
pic14_read_data_from_program_memory(struct k8048 *k)
{
	uint16_t word;

	io_program_out(k, 0x04, 6);
	word = io_program_in(k, 16);
	word = (word >> 1) & PIC14_MASK;

	return word;
}

/*
 * READ DATA FROM DATA MEMORY
 *  RETURN (PC)
 *
 * X00101 = 0x05
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS41204H-page 14	12F683
 * DS41287D-page 13	16F886
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS41457E-page 19	16F1788
 * DS41237D-page 8	16F785
 */
static inline uint8_t
pic14_read_data_from_data_memory(struct k8048 *k)
{
	uint16_t word;

	io_program_out(k, 0x05, 6);
	word = io_program_in(k, 16);
	word = (word >> 1) & PIC14_MASK;

	return word;
}

/*
 * INCREMENT ADDRESS
 *  PC <= 1 + PC
 *
 * X00110 = 0x06
 *
 * DS30189D-page 4	16C84
 * DS30262E-page 4	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 * DS39589C-page 7	16F877A
 * DS39607C-page 9	16F88
 * DS41191B-page 4	16F676
 * DS41196G-page 5	16F628A
 * DS39603C-page 7	16F819
 * DS40245B-page 5	16F716
 * DS41204H-page 14	12F683
 * DS41332D-page 13	16F726
 * DS41284E-page 8	12F615
 * DS41284E-page 8	12F617
 * DS41287D-page 13	16F886
 * DS30324B-page 4	16F73
 * DS41572D-page 11	10F320
 * DS41573C-page 15	16F1507
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41244F-page 12	16F917
 * DS41390D-page 13	16F1825
 * DS30492B-page 7	16F767
 * DS41457E-page 19	16F1788
 * DS41442B-page 17	16F1518
 * DS41620C-page 14	16F1455
 * DS41409B-page 9	16F721
 * DS41561C-page 6	12F752
 * DS41642A-page 8	12LF1552
 * DS41686A-page 7	16F753
 * DS41237D-page 8	16F785
 * DS41405A-page 8	16F707
 * DS40001683B-page 16	16F1708
 */
static inline void
pic14_increment_address(struct k8048 *k)
{
	io_program_out(k, 0x06, 6);
}

/*
 * RESET ADDRESS
 *  PC <= 0
 *
 * X10110 = 0x16
 *
 * DS41332D-page 13	16F726
 * DS41572D-page 11	10F320
 * DS41573C-page 15	16F1507
 * DS41439A-page 11	16F1847
 * DS41397B-page 19	16F1936
 * DS41390D-page 13	16F1825
 * DS41457E-page 19	16F1788
 * DS41442B-page 17	16F1518
 * DS41620C-page 14	16F1455
 * DS41409B-page 9	16F721
 * DS41642A-page 8	12LF1552
 * DS41405A-page 8	16F707
 * DS40001683B-page 16	16F1708
 */
static inline void
pic14_reset_address(struct k8048 *k)
{
	io_program_out(k, 0x16, 6);
}

/*PROG************************************************************************/

/*
 * BEGIN PROGRAMMING B'001000'
 *  (PC) <= WR
 *
 * 001000 = 0x08
 *
 * DS30189D-page 4	16C84    WAIT(10ms)					INTERNAL
 * DS30262E-page 4	16F84A   TERA+TPROG(4+4ms) OR 10ms			INTERNAL
 * DS30034D-page 4	16F627   TERA+TPROG(5+8ms)				INTERNAL
 * DS39025F-page 6	16F872   TERA+TPROG(4+4ms)				INTERNAL
 * DS39589C-page 7	16F877A  TPROG2(10ms)					INTERNAL
 * DS39607C-page 9	16F88    TPROG2(1ms)					EXTERNAL
 * DS39603C-page 7	16F819   TPROG2(1ms)					EXTERNAL
 * DS41196G-page 5	16F628A  TPROG(4ms)   OR TDPROG(6ms DATA)		INTERNAL
 * DS41191B-page 4	16F676   TPROG1(3ms)  OR TPROG1(6ms DATA + ERASE)	INTERNAL
 * DS41204H-page 14	12F683   TPROG1(3ms)  OR TPROG1(6ms DATA)		INTERNAL
 * DS41332D-page 13	16F726   TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41287D-page 13	16F886   TPROG1(3ms)  OR TPROG1(6ms DATA)		INTERNAL
 * DS30324B-page 4	16F73    TPROG(1ms)					EXTERNAL
 * DS41572D-page 11	10F320   TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41573C-page 15	16F1507  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41439A-page 11	16F1847  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41397B-page 19	16F1936  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41244F-page 12	16F917   TPROG1(3ms)  OR TPROG1(6ms DATA)		INTERNAL
 * DS41390D-page 13	16F1825  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS30492B-page 7	16F767   TPROG(1ms)					EXTERNAL
 * DS41457E-page 19	16F1788  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41442B-page 17	16F1518  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41620C-page 14	16F1455  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41409B-page 9	16F721   TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41642A-page 8	12LF1552 TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS41237D-page 8	16F785   TPROG1(2.5ms) OR TPROG1(6ms DATA)		INTERNAL
 * DS41405A-page 8	16F707   TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 * DS40001683B-page 16	16F1708  TPINT(2.5ms) OR TPINT(5ms CONFIG)		INTERNAL
 */
static inline void
pic14_begin_programming_001000(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x08, 6);
	io_usleep(k, t);
}

/*
 * BEGIN PROGRAMMING B'011000'
 *  (PC) <= WR
 *
 * 011000 = 0x18
 *
 * DS30262E-page 4	16F84A   TPROG(8ms)	INTERNAL
 * DS30034D-page 4	16F627   TPROG(8ms)	INTERNAL
 * DS39025F-page 6	16F872   TPROG(4ms)	INTERNAL
 * DS39589C-page 7	16F877A  TPROG1(1ms)	EXTERNAL
 * DS39607C-page 9	16F88    TPROG1(1ms)	EXTERNAL
 * DS41191B-page 4	16F676   TPROG2(2ms)	EXTERNAL
 * DS39603C-page 7	16F819   TPROG1(1ms)	EXTERNAL
 * DS40245B-page 5	16F716   TPROG(2ms)	EXTERNAL
 * DS41204H-page 14	12F683   TPROG2(3ms)	EXTERNAL
 * DS41332D-page 13	16F726   TPEXT(2.1ms)	EXTERNAL
 * DS41284E-page 8	12F615   TPROG(3ms)	EXTERNAL
 * DS41284E-page 8	12F617   TPROG(3ms)	EXTERNAL
 * DS41287D-page 13	16F886   TPROG2(2.5ms)	EXTERNAL
 * DS41572D-page 11	10F320   TPEXT(2.1ms)	EXTERNAL
 * DS41573C-page 15	16F1507  TPEXT(2.1ms)	EXTERNAL
 * DS41439A-page 11	16F1847  TPEXT(2.1ms)	EXTERNAL
 * DS41397B-page 19	16F1936  TPEXT(2.1ms)	EXTERNAL (NOT CONFIG)
 * DS41244F-page 12	16F917   TPROG2(3ms)	EXTERNAL
 * DS41390D-page 13	16F1825  TPEXT(2.1ms)	EXTERNAL
 * DS41457E-page 19	16F1788  TPEXT(2.1ms)	EXTERNAL
 * DS41442B-page 17	16F1518  TPEXT(2.1ms)	EXTERNAL (NOT CONFIG)
 * DS41620C-page 14	16F1455  TPEXT(2.1ms)	EXTERNAL
 * DS41409B-page 9	16F721   TPEXT(2.1ms)	EXTERNAL
 * DS41561C-page 6	12F752   TPROG(3ms min)	EXTERNAL
 * DS41642A-page 8	12LF1552 TPEXT(2.1ms)	EXTERNAL (NOT CONFIG)
 * DS41686A-page 7	16F753   TPROG(3ms min)	EXTERNAL
 * DS41237D-page 8	16F785   TPROG2(2.5ms)	EXTERNAL
 * DS41405A-page 8	16F707   TPEXT(2.1ms)	EXTERNAL (NOT CONFIG)
 * DS40001683B-page 16	16F1708  TPEXT(2.1ms)   EXTERNAL (NOT CONFIG)
 */
static inline void
pic14_begin_programming_011000(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x18, 6);
	io_usleep(k, t);
}

/*
 * END PROGRAMMING B'010111'
 *
 * 010111 = 0x17
 *
 * DS39589C-page 7	16F877A UNKNOWN
 * DS39607C-page 9	16F88   UNKNOWN
 * DS39603C-page 7	16F819  UNKNOWN
 */
static inline void
pic14_end_programming_010111(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x17, 6);
	io_usleep(k, t);
}

/*
 * END PROGRAMMING B'001110'
 *
 * 001110 = 0x0E
 *
 * DS40245B-page 5	16F716 TDIS(100us)
 * DS30324B-page 4	16F73  UNKNOWN
 * DS30492B-page 7	16F767 UNKNOWN
 */
static inline void
pic14_end_programming_001110(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x0E, 6);
	io_usleep(k, t);
}

/*
 * END PROGRAMMING B'001010'
 *
 * 001010 = 0x0A
 *
 * DS41191B-page 4	16F676   TDIS(0.5us)
 * DS41204H-page 14	12F683   TDIS(100us)
 * DS41332D-page 13	16F726   TDIS(100us)
 * DS41284E-page 8	12F615   TDIS(100us)
 * DS41284E-page 8	12F617   TDIS(100us)
 * DS41287D-page 13	16F886   TDIS(100us)
 * DS41572D-page 11	10F320   TDIS(100us)
 * DS41573C-page 15	16F1507  TDIS(300us)
 * DS41439A-page 11	16F1847  TDIS(100us)
 * DS41397B-page 19	16F1936  TDIS(300us)
 * DS41244F-page 12	16F917   TDIS(100us)
 * DS41390D-page 13	16F1825  TDIS(300us)
 * DS41457E-page 19	16F1788  TDIS(300us)
 * DS41442B-page 17	16F1518  TDIS(300us)
 * DS41620C-page 14	16F1455  TDIS(300us)
 * DS41409B-page 9	16F721   TDIS(100us)
 * DS41561C-page 6	12F752   TDIS(100us)
 * DS41642A-page 8	12LF1552 TDIS(300us)
 * DS41686A-page 7	16F753   TDIS(100us)
 * DS41237D-page 8	16F785   TDIS(100us)
 * DS41405A-page 8	16F707   TDIS(100us)
 * DS40001683B-page 16	16F1708  TDIS(300us)
 */
static inline void
pic14_end_programming_001010(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x0A, 6);
	io_usleep(k, t);
}

/*ERASE***********************************************************************/

/*
 * BULK ERASE PROGRAM MEMORY (PRELOAD 0x3FFF)
 *
 * X01001 = 0x09
 *
 * DS30189D-page 4	16C84    WAIT(10ms)
 * DS30262E-page 4	16F84A   BEGIN ERASE(8ms)
 * DS30034D-page 4	16F627   TERA(5ms)
 * DS39589C-page 7	16F877A  BEGIN ERASE(10ms)
 * DS39607C-page 9	16F88    TPROG3(10ms)
 * DS41191B-page 4	16F676   TERA(6ms)
 * DS41196G-page 5	16F628A  TERA(6ms)
 * DS39603C-page 7	16F819   TPROG3(2ms)
 * DS40245B-page 5	16F716   TERA(6ms)
 * DS41204H-page 14	12F683   TERA(6ms)
 * DS41332D-page 13	16F726   TERAB(5ms)
 * DS41284E-page 8	12F615   TERA(6ms)
 * DS41284E-page 8	12F617   TERA(6ms)
 * DS41287D-page 13	16F886   TERA(6ms)
 * DS30324B-page 4	16F73    TERA(30ms)
 * DS41572D-page 11	10F320   TERAB(5ms)
 * DS41573C-page 15	16F1507  TERAB(5ms)
 * DS41439A-page 11	16F1847  TERAB(5ms)
 * DS41397B-page 19	16F1936  TERAB(5ms)
 * DS41244F-page 12	16F917   TERA(6ms)
 * DS41390D-page 13	16F1825  TERAB(5ms)
 * DS30492B-page 7	16F767   TERA(30ms)
 * DS41457E-page 19	16F1788  TERAB(5ms)
 * DS41442B-page 17	16F1518  TERAB(5ms)
 * DS41620C-page 14	16F1455  TERAB(5ms)
 * DS41409B-page 9	16F721   TERAB(5ms)
 * DS41561C-page 6	12F752   TERA(6ms)
 * DS41642A-page 8	12LF1552 TERAB(5ms)
 * DS41686A-page 7	16F753   TERA(6ms)
 * DS41237D-page 8	16F785   TERA(6ms)
 * DS41405A-page 8	16F707   TERAB(5ms)
 * DS40001683B-page 16	16F1708  TERAB(5ms)
 */
static inline void
pic14_bulk_erase_program_memory(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x09, 6);
	io_usleep(k, t);
}

/*
 * BULK ERASE DATA MEMORY (PRELOAD 0x3FFF)
 *
 * X01011 = 0x0B
 *
 * DS30189D-page 4	16C84   WAIT(10ms)
 * DS30262E-page 4	16F84A  BEGIN ERASE(8ms)
 * DS30034D-page 4	16F627  TERA(5ms)
 * DS39589C-page 7	16F877A BEGIN ERASE(10ms)
 * DS39607C-page 9	16F88   TPROG3(10ms)
 * DS41191B-page 4	16F676  TERA(6ms)
 * DS41196G-page 5	16F628A TERA(6ms)
 * DS39603C-page 7	16F819  TPROG3(2ms)
 * DS41204H-page 14	12F683  TERA(6ms)
 * DS41287D-page 13	16F886  TERA(6ms)
 * DS41439A-page 11	16F1847 TERAB(5ms)
 * DS41397B-page 19	16F1936 TERAB(5ms)
 * DS41244F-page 12	16F917  TERA(6ms)
 * DS41390D-page 13	16F1825 TERAB(5ms)
 * DS41457E-page 19	16F1788 TERAB(5ms)
 * DS41237D-page 8	16F785  TERA(6ms)
 */
static inline void
pic14_bulk_erase_data_memory(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x0B, 6);
	io_usleep(k, t);
}

/*
 * BULK ERASE SETUP 1 (TOGGLE SELECT EVEN ROWS)
 *
 * 000001 = 0x01
 *
 * DS30262E-page 10	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 */
static inline void
pic14_bulk_erase_setup1(struct k8048 *k)
{
	io_program_out(k, 0x01, 6);
}

/*
 * BULK ERASE SETUP 2 (TOGGLE SELECT EVEN ROWS)
 *
 * 000111 = 0x07
 *
 * DS30262E-page 10	16F84A
 * DS30034D-page 4	16F627
 * DS39025F-page 6	16F872
 */
static inline void
pic14_bulk_erase_setup2(struct k8048 *k)
{
	io_program_out(k, 0x07, 6);
}

/*
 * CHIP ERASE (PRELOAD 0x3FFF)
 *
 * X11111 = 0x1F
 *
 * DS39589C-page 7	16F877A TPROG3(10ms)
 * DS39607C-page 9	16F88   TPROG4(10ms)
 * DS39603C-page 7	16F819  TPROG4(8ms)
 */
static inline void
pic14_chip_erase(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x1F, 6);
	io_usleep(k, t);
}

/*
 * ROW ERASE PROGRAM MEMORY
 *
 * X10001 = 0x11
 *
 * DS41204H-page 14	12F683   TERA(6ms)
 * DS41332D-page 13	16F726   TERAR(2.5ms)
 * DS41284E-page 8	12F615   TERA(6ms) (NON-FUNCTIONAL)
 * DS41284E-page 8	12F617   TERA(6ms)
 * DS41287D-page 13	16F886   TERA(6ms)
 * DS41572D-page 11	10F320   TERAR(2.5ms)
 * DS41573C-page 15	16F1507  TERAR(2.5ms)
 * DS41439A-page 11	16F1847  TERAR(2.5ms)
 * DS41397B-page 19	16F1936  TERAR(2.5ms)
 * DS41244F-page 12	16F917   TERA(6ms)
 * DS41390D-page 13	16F1825  TERAR(2.5ms)
 * DS41457E-page 19	16F1788  TERAR(2.5ms)
 * DS41442B-page 17	16F1518  TERAR(2.5ms)
 * DS41620C-page 14	16F1455  TERAR(2.5ms)
 * DS41409B-page 9	16F721   TERAR(2.5ms)
 * DS41561C-page 6	12F752   TERA(6ms)
 * DS41642A-page 8	12LF1552 TERAR(2.5ms)
 * DS41686A-page 7	16F753   TERA(6ms)
 * DS41237D-page 8	16F785   TERA(6ms)
 * DS41405A-page 8	16F707   TERAR(2.5ms)
 * DS40001683B-page 16	16F1708  TERAR(2.5ms)
 */
static inline void
pic14_row_erase_program_memory(struct k8048 *k, uint32_t t)
{
	io_program_out(k, 0x11, 6);
	io_usleep(k, t);
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
pic14_read_program_memory_increment(struct k8048 *k)
{
	uint16_t data = pic14_read_data_from_program_memory(k);

	pic14_increment_address(k);

	return data;
}

/*
 * READ DATA EEPROM MEMORY
 *
 *  RETURN DATA BYTE, INCREMENT PC
 */
uint8_t
pic14_read_data_memory_increment(struct k8048 *k)
{
	uint8_t data = pic14_read_data_from_data_memory(k);

	pic14_increment_address(k);

	return data;
}

/*
 * BULK ERASE (DISABLE PROTECTION AND ERASE DEVICE)
 *
 * 1. SAVE OSCCAL (DEPENDANT UPON DEVICE AND OPTION)
 * 2. DISABLE PROTECTION AND ERASE DEVICE
 * 3. RESTORE OSCCAL (DEPENDANT UPON DEVICE AND OPTION)
 */
void
pic14_bulk_erase(struct k8048 *k, uint16_t osccal, uint16_t bandgap)
{
	if (pic14_map[pic14_index].datasheet != DS41191C) {
		if (osccal != PIC_INTERNAL && osccal != PIC_NOINTERNAL) {
			printf("%s: error: OSCCAL is not supported on this device\n",
				__func__);
			return;
		}
		if (bandgap != PIC_INTERNAL && bandgap != PIC_NOINTERNAL) {
			printf("%s: error: BANDGAP is not supported on this device\n",
				__func__);
			return;
		}
	} else {
		if (osccal == PIC_INTERNAL) {
			osccal = pic14_read_osccal(k);
		}
		if (bandgap == PIC_INTERNAL) {
			bandgap = pic14_conf.config[0];
		}
	}

	pic14_program_verify(k);

	switch (pic14_map[pic14_index].datasheet) {
	case DS30189D:	/* PIC16C84		*/
	case DS30262E:	/* PIC16F83/84/84A	*/
	case DS30034D:	/* PIC16F62X		*/
	case DS39025F:	/* PIC16F87X		*/
			/* DISABLE PROTECTION & ERASE PROGRAM FLASH */
			pic14_load_configuration(k, 0x3FFF);
			for (uint32_t i = 0; i < 7; i++)
				pic14_increment_address(k);
			pic14_bulk_erase_setup1(k);
			pic14_bulk_erase_setup2(k);
			pic14_begin_programming_001000(k, PIC14_TERASE_DEFAULT);
			pic14_bulk_erase_setup1(k);
			pic14_bulk_erase_setup2(k);
			/* ERASE DATA EEPROM */
			pic14_load_data_for_data_memory(k, 0x3FFF);
			if (pic14_conf.deviceid == PIC16F83 || pic14_conf.deviceid == PIC16F84) {
				pic14_bulk_erase_setup1(k);
				pic14_bulk_erase_setup2(k);
				pic14_begin_programming_001000(k, PIC14_TERASE_20MS);
				pic14_bulk_erase_setup1(k);
				pic14_bulk_erase_setup2(k);
			} else {
				pic14_bulk_erase_data_memory(k, PIC14_TERASE_DEFAULT);
				pic14_begin_programming_011000(k, PIC14_TPROG_DEFAULT);
			}
			break;

	case DS39589C:	/* PIC16F87XA	 */
	case DS39603C:	/* PIC16F818/819 */
	case DS39607B:	/* PIC16F87/88	 */
			pic14_load_configuration(k, 0x3FFF);
			pic14_chip_erase(k, PIC14_TERASE_DEFAULT);
			break;

			/* HAS DATA EEPROM	*/
	case DS41196F:	/* PIC16F627A/628A/648A	*/
	case DS41287D:	/* PIC16F887		*/
	case DS41204G:	/* PIC12F6XX/16F6XX	*/
	case DS41191C:	/* PIC12F629/675	*/
			/* PIC16F630/676	*/
	case DS41439A:	/* PIC16F1847		*/
	case DS41397B:	/* PIC16F1936		*/
	case DS41244F:	/* PIC16F917		*/
	case DS41390D:	/* PIC16F1825		*/
	case DS41457E:	/* PIC16F1788		*/
	case DS41237D:	/* PIC16F785		*/
			pic14_load_configuration(k, 0x3FFF);
			/* DISABLE PROTECTION & ERASE PROGRAM FLASH */
			pic14_bulk_erase_program_memory(k, PIC14_TERASE_DEFAULT);
			/* ERASE DATA EEPROM */
			pic14_bulk_erase_data_memory(k, PIC14_TERASE_DEFAULT);
			break;

			 /* HAS NO DATA EEPROM	*/
	case DS40245B:	 /* PIC16F716		*/
	case DS41332D:	 /* PIC16F726		*/
	case DS41409B:	 /* PIC16F720/721	*/
	case DS41405A:	 /* PIC16F707		*/
	case DS41284E:	 /* PIC12F615/617	*/
	case DS41572D:	 /* PIC10F320		*/
	case DS41573C:	 /* PIC16F1507		*/
	case DS41442B:	 /* PIC16F1518		*/
	case DS41620C:	 /* PIC16F1455		*/
	case DS41561C:	 /* PIC12F752		*/
	case DS41642A:	 /* PIC12LF1552		*/
	case DS40001743A:/* PIC12LF1554/9	*/
	case DS41686A:	 /* PIC16F753		*/
	case DS40001683B:/* PIC16F1708		*/
	case DS40001720A:/* PIC12F1612		*/
	case DS40001714C:/* PIC16LF1716		*/
	case DS40001713A:/* PIC12LF1572		*/
			pic14_load_configuration(k, 0x3FFF);
			/* ERASE PROGRAM FLASH */
			pic14_bulk_erase_program_memory(k, PIC14_TERASE_DEFAULT);
			break;

			/* HAS NO DATA EEPROM		*/
	case DS30324B:  /* PIC16F73  30MS ERASE TIME	*/
	case DS30492B:  /* PIC16F767 30MS ERASE TIME	*/
			pic14_load_configuration(k, 0x3FFF);
			/* DISABLE PROTECTION & ERASE PROGRAM FLASH */
			pic14_bulk_erase_program_memory(k, PIC14_TERASE_30MS);
			break;

	default:	printf("%s: information: unimplemented\n", __func__);
			break;
	}

	pic14_standby(k);

	if (pic14_map[pic14_index].datasheet == DS41191C) {
		if (osccal != PIC_NOINTERNAL) {
			pic14_write_osccal(k, osccal);
		}
		if (bandgap != PIC_NOINTERNAL) {
			bandgap = (bandgap & PIC14_BANDGAPMASK) | PIC14_CONFIGMASK;
			pic14_write_config(k, bandgap);
		}
	}
}

/*
 * ROW ERASE
 */
void
pic14_row_erase(struct k8048 *k, uint32_t row, uint32_t nrows)
{
	if (row == PIC_ERASE_EEPROM) {
		if (pic14_map[pic14_index].eeprom == 0) {
			printf("%s: information: data EEPROM/flash is not supported on this device\n", __func__);
			return; /* NO EEPROM */
		}

		pic14_program_verify(k);

		/* ERASE EEPROM */
		for (uint32_t i = 0; i < pic14_map[pic14_index].eeprom; ++i) {
			pic14_load_data_for_data_memory(k, 0x3FFF);
			pic14_write_word(k, PIC14_REGIONDATA);
			pic14_increment_address(k);
		}

		pic14_standby(k);
		return;
	}
#if 1
	if (pic14_map[pic14_index].erasesize == 0) {
		printf("%s: information: unsupported\n", __func__);
		return;
	}
#endif
	if (row == PIC_ERASE_ID) {
		pic14_program_verify(k);

		pic14_load_configuration(k, 0x3FFF);

		/* ERASE USERID */
		pic14_row_erase_program_memory(k, 6000); /* 6ms */

		pic14_standby(k);
		return;
	}
#if 0
	if (row == PIC_ERASE_CONFIG) {
		pic14_program_verify(k);

		pic14_load_configuration(k, 0x3FFF);

		/* ERASE CONFIG */
		pic14_row_erase_program_memory(k, 6000); /* 6ms */

		pic14_standby(k);
		return;
	}
#endif
	/*
	 * ERASE PROGRAM FLASH ROW(S)
	 */

	uint32_t erasesize = pic14_map[pic14_index].erasesize;
	if (erasesize == 0)
		erasesize = 16;

	uint32_t maxrows = pic14_map[pic14_index].flash / erasesize;
	if (row >= maxrows) {
		printf("%s: information: row out of range\n", __func__);
		return;
	}

	uint32_t numrows = maxrows - row;
	if (nrows > numrows) {
		nrows = numrows;
	}

	uint32_t address = row * erasesize, PC_address = 0;

	pic14_program_verify(k);

	pic14_load_data_for_program_memory(k, 0x3FFF);

	while (nrows--) {
		while (address > PC_address) {
			PC_address++;
			pic14_increment_address(k);
		}

		/* ERASE PROGRAM FLASH */
		pic14_row_erase_program_memory(k, 6000); /* 6ms */

		address += erasesize;
	}

	pic14_standby(k);
}

/*****************************************************************************
 *
 * Read block data
 *
 *****************************************************************************/

/*
 * READ CONFIGURATION MEMORY 2000/8000 .. 200X/800X AND STORE DEVICE MAP INDEX
 */
void
pic14_read_config_memory(struct k8048 *k, int flag __attribute__((unused)))
{
	uint32_t dev;

	/* NULL device */
	pic14_index = PIC14_SIZE;

	/* Reset configuraton */
	memset(&pic14_conf, 0, sizeof(pic14_conf));

	pic14_program_verify(k);
	pic14_load_configuration(k, 0);

	for (uint32_t i = 0; i < 4; ++i)
		pic14_conf.userid[i] = pic14_read_program_memory_increment(k); /*      Userid     */
	pic14_conf.reserved = pic14_read_program_memory_increment(k);	/* Reserved               */
	pic14_conf.revisionid = pic14_read_program_memory_increment(k); /* Reserved or Revisionid */
	pic14_conf.deviceid = pic14_read_program_memory_increment(k);	/* Reserved or Deviceid   */

	/* Device selected by user */
	if (k->devicename[0]) {
		for (dev = 0; pic14_map[dev].deviceid; ++dev) {
			if (strcasecmp(pic14_map[dev].devicename, k->devicename) == 0) {
				pic14_conf.deviceid = pic14_map[dev].deviceid;
				break;
			}
		}
		if (pic14_map[dev].deviceid == 0) {
			printf("%s: fatal error: unknown device: [%s]\n", __func__, k->devicename);
			pic14_standby(k);
			io_exit(k, EX_SOFTWARE); /* Panic */
		}
	}
	/* Device detect */
	else {
		uint16_t deviceid;
		if ((pic14_conf.deviceid & PIC14_DEVICEID_MASK3) == PIC14_DEVICEID_MASK3) {
			/* PIC16F1788 */
			/* PIC16F1455 */
			/* PIC16F753  */
			/* PIC16F1708 */
			deviceid = pic14_conf.deviceid;
		} else {
			deviceid = pic14_conf.deviceid & PIC14_DEVICEID_MASK;
		}
		for (dev = 0; pic14_map[dev].deviceid; ++dev) {
			if (pic14_map[dev].deviceid == deviceid) {
				break;
			}
		}
		if (pic14_map[dev].deviceid == 0) {
			/*
			 * VELLEMAN K8048 SWITCH IN STANDBY [0000]
			 * VELLEMAN K8048 NO POWER	    [3FFF]
			 * VELLEMAN K0848 SWITCH IN RUN     [3FFF]
			 * VELLEMAN K0848 SWITCH IN PROG    [XXXX]
			 */
			if (pic14_conf.deviceid == 0x0000 || pic14_conf.deviceid == 0x3FFF) {
				printf("%s: fatal error: %s.\n",
					__func__, io_fault(k, pic14_conf.deviceid));
			} else {
				printf("%s: fatal error: device unknown: [%04X]\n",
					__func__, pic14_conf.deviceid);
			}
			pic14_standby(k);
			io_exit(k, EX_SOFTWARE); /* Panic */
		}
	}

	/* Device recognised */
	pic14_index = dev;

	/* Config word(s) */
	for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i)
		pic14_conf.config[i] = pic14_read_program_memory_increment(k);

	/* Calibration word(s) */
	if (pic14_map[pic14_index].ncalib) {
		for (uint32_t i = 0; i < pic14_map[pic14_index].ncalib; ++i)
			pic14_conf.calib[i] = pic14_read_program_memory_increment(k);
	}

	pic14_standby(k);
}

/*
 * GET PROGRAM FLASH SIZE
 *
 *  RETURN SIZE IN WORDS
 */
uint32_t
pic14_get_program_size(uint32_t *addr)
{
	*addr = 0;

	return pic14_map[pic14_index].flash;
}

/*
 * GET DATA EEPROM/FLASH SIZE
 *
 *  RETURN SIZE IN BYTES
 */
uint32_t
pic14_get_data_size(uint32_t *addr)
{
	*addr = pic14_map[pic14_index].dataaddr;

	return pic14_map[pic14_index].eeprom;
}

/*
 * READ PROGRAM FLASH OR DATA FLASH MEMORY BLOCK ADDR .. ADDR + SIZE
 *
 *  RETURN ADDR
 */
uint32_t
pic14_read_program_memory_block(struct k8048 *k, uint32_t *data, uint32_t addr, uint32_t size)
{
	uint32_t i;

	pic14_program_verify(k);
	pic14_load_data_for_program_memory(k, 0);

	for (i = 0; i < addr; i++)
		pic14_increment_address(k);
	for (i = 0; i < size; i++)
		data[i] = (uint32_t)pic14_read_program_memory_increment(k);

	pic14_standby(k);

	return addr;
}

/*
 * READ DATA EEPROM/FLASH MEMORY BLOCK ADDR .. ADDR + SIZE
 *
 *  RETURN ADDR
 */
uint32_t
pic14_read_data_memory_block(struct k8048 *k, uint16_t *data, uint32_t addr, uint16_t size)
{
	uint32_t i;

	pic14_program_verify(k);
	pic14_load_data_for_data_memory(k, 0);

	addr -= pic14_map[pic14_index].dataaddr;
	for (i = 0; i < addr; i++)
		pic14_increment_address(k);
	for (i = 0; i < size; i++)
		data[i] = (uint16_t)pic14_read_data_memory_increment(k);

	pic14_standby(k);

	return addr;
}

/*
 * WRITE LATCH OR WRITE LATCHES
 *
 *  RETURN 1
 */
uint32_t
pic14_write_word(struct k8048 *k, uint16_t region)
{
	switch (pic14_map[pic14_index].datasheet) {
	case DS30262E:  /* PIC16F83/84/84A */
	case DS30034D:  /* PIC16F62X	   */
	case DS39025F:  /* PIC16F87X		BEGIN PROGRAMMING ONLY CYCLE */
			if (region == PIC14_REGIONDATA &&
				(pic14_conf.deviceid == PIC16F83 || pic14_conf.deviceid == PIC16F84)) {
				pic14_begin_programming_011000(k, PIC14_TPROG_20MS);
			} else {
				pic14_begin_programming_011000(k, PIC14_TPROG_DEFAULT);
			}
			break;

	case DS39589C:  /* PIC16F87XA		BEGIN PROGRAMMING ONLY CYCLE */
	case DS39607B:  /* PIC16F87/88		BEGIN PROGRAMMING ONLY CYCLE */
	case DS39603C:  /* PIC16F818/819	BEGIN PROGRAMMING ONLY CYCLE */
			pic14_begin_programming_011000(k, PIC14_TPROG_DEFAULT);
			/*			END PROGRAMMING   */
			pic14_end_programming_010111(k, PIC14_TDISCHARGE_DEFAULT);
			break;

	case DS40245B:  /* PIC16F716		BEGIN PROGRAMMING */
			pic14_begin_programming_011000(k, PIC14_TPROG_DEFAULT);
			/*			END PROGRAMMING   */
			pic14_end_programming_001110(k, PIC14_TDISCHARGE_DEFAULT);
			break;

	case DS30189D:	 /* PIC16C84		 BEGIN PROGRAMMING INTERNAL   */
	case DS41196F:	 /* PIC16F627A/628A/648A BEGIN PROGRAMMING ONLY CYLCE */
	case DS41204G:	 /* PIC12F6XX/16F6XX	 BEGIN PROGRAMMING INTERNAL   */
	case DS41572D:	 /* PIC10F320	  */
	case DS41287D:	 /* PIC16F887	  */
	case DS41332D:	 /* PIC16F726	  */
	case DS41409B:	 /* PIC16F720/721 */
	case DS41405A:	 /* PIC16F707	  */
	case DS41573C:	 /* PIC16F1507	  */
	case DS41439A:	 /* PIC16F1847	  */
	case DS41397B:	 /* PIC16F1936	  */
	case DS41244F:	 /* PIC16F917	  */
	case DS41390D:	 /* PIC16F1825	  */
	case DS41457E:	 /* PIC16F1788	  */
	case DS41442B:	 /* PIC16F1518	  */
	case DS41620C:	 /* PIC16F1455	  */
	case DS41642A:	 /* PIC12LF1552	  */
	case DS40001743A:/* PIC12LF1554/9 */
	case DS41237D:	 /* PIC16F785	  */
	case DS40001683B:/* PIC16F1708	  */
	case DS40001720A:/* PIC12F1612	  */
	case DS40001714C:/* PIC16LF1716	  */
	case DS40001713A:/* PIC12LF1572	  */
			pic14_begin_programming_001000(k, PIC14_TPROG_DEFAULT);
			break;

	case DS30324B:	/* PIC16F73		BEGIN PROGRAMMING */
	case DS30492B:	/* PIC16F767		BEGIN PROGRAMMING */
			pic14_begin_programming_001000(k, PIC14_TPROG_DEFAULT);
			/*			END PROGRAMMING   */
			pic14_end_programming_001110(k, PIC14_TDISCHARGE_DEFAULT);
			break;
			
	case DS41284E:	/* PIC12F615/617	BEGIN PROGRAMMING */
	case DS41191C:	/* PIC12F629/675	BEGIN PROGRAMMING */
			/* PIC16F630/676	BEGIN PROGRAMMING */
	case DS41561C:	/* PIC12F752		BEGIN PROGRAMMING */
	case DS41686A:	/* PIC16F753		BEGIN PROGRAMMING */
			pic14_begin_programming_011000(k, PIC14_TPROG_DEFAULT);
			/*			END PROGRAMMING   */
			pic14_end_programming_001010(k, PIC14_TDISCHARGE_DEFAULT);
			break;

	default:	printf("%s: information: unimplemented\n", __func__);
			return 0;
			break;
	}
	return 1;
}

/*****************************************************************************
 *
 * Read/Write Oscillator Calibration 
 *
 * DS41191C
 *
 *****************************************************************************/

/*
 * READ OSCILLATOR CALIBRATION WORD
 *
 *  RETURN OSCCAL WORD
 */
uint16_t
pic14_read_osccal(struct k8048 *k)
{
	if (pic14_map[pic14_index].datasheet != DS41191C) {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
		return 0;
	}

	pic14_program_verify(k);
	pic14_load_data_for_program_memory(k, 0);

	for (uint32_t i = 0; i < PIC14_OSCCALADDR; i++)
		pic14_increment_address(k);
	uint16_t osccal = pic14_read_program_memory_increment(k);

	pic14_standby(k);
#ifdef DEBUG
	if (k->debug >= 10) {
		printf("%s: information: OSCCAL read: word [%04X]\n", __func__, osccal);
	}
#endif
	return osccal;
}

/*
 * WRITE OSCILLATOR CALIBRATION WORD
 */
uint32_t
pic14_write_osccal(struct k8048 *k, uint16_t osccal)
{
	if (pic14_map[pic14_index].datasheet != DS41191C) {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
		return 0;
	}

	pic14_program_verify(k);
	pic14_load_data_for_program_memory(k, osccal);

#ifdef DEBUG
	if (k->debug >= 10) {
		printf("%s: information: OSCCAL write: word [%04X]\n", __func__, osccal);
	}
#endif
	for (uint16_t i = 0; i < PIC14_OSCCALADDR; i++)
		pic14_increment_address(k);
	pic14_write_word(k, PIC14_REGIONCODE);
	uint16_t vdata = pic14_read_data_from_program_memory(k);

	pic14_standby(k);

	if (vdata != osccal) {
		printf("%s: error: OSCCAL write failed: read [%04X] expected [%04X]\n",
			__func__, vdata, osccal);
		return 0;
	}
	return 1; /* OSCCAL WRITTEN */
}

/*
 * WRITE CALIBRATION WORD AT X00X
 */
#if 0
uint32_t
pic14_write_calib(struct k8048 *k, uint16_t calib, uint16_t ofs)
{
	if (pic14_map[pic14_index].datasheet != DS41204G) {
		printf("%s: error: CALIB is not supported on this device\n", __func__);
		return 0;
	}

	pic14_program_verify(k);
	pic14_load_configuration(k, calib);

#ifdef DEBUG
	if (k->debug >= 10) {
		printf("%s: information: CALIB write: word [%04X]\n", __func__, calib);
	}
#endif
	for (uint32_t i = 0; i < ofs; i++)
		pic14_increment_address(k);
	pic14_write_word(k, PIC14_REGIONCONFIG);
	uint16_t vdata = pic14_read_data_from_program_memory(k);

	pic14_standby(k);
	if (vdata != calib) {
		printf("%s: error: CALIB write failed: read [%04X] expected [%04X]\n",
			__func__, vdata, calib);
		return 0;
	}
	return 1; /* CALIB WRITTEN */
}
#endif

/*****************************************************************************
 *
 * Program Config
 *
 *****************************************************************************/

/*
 * WRITE CONFIG
 *
 *  RETURN 0 ON ERROR ELSE PROGRAM COUNT
 */
uint32_t
pic14_write_config(struct k8048 *k, uint16_t config1)
{
	uint16_t cdata[PIC14_CONFIG_MAX], vdata[PIC14_CONFIG_MAX] = {0};

	cdata[0] = config1;
	for (uint32_t i = 1; i < pic14_map[pic14_index].nconfig; ++i)
		cdata[i] = pic14_conf.config[i];

#ifdef DEBUG
	if (k->debug >= 10) {
		for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i)
			printf("%s: information: CONFIG%d [%04X]\n", __func__,
				i + 1, cdata[i]);
	}
#endif
	pic14_program_verify(k);
	pic14_load_configuration(k, cdata[0]);

	for (uint32_t i = 0; i < 6; ++i)
		pic14_increment_address(k);
	if (pic14_map[pic14_index].nconfig == 1) {
		pic14_increment_address(k);
		switch (pic14_map[pic14_index].datasheet) {
		case DS39589C:	/* PIC16F87XA	BEGIN ERASE/PROGRAMMING CYCLE */
			pic14_begin_programming_001000(k, PIC14_TERASE_DEFAULT);
			break;
		case DS30324B:	/* PIC16F73				      */
		case DS41196F:	/* PIC16F6XXA LOAD DATA FOR PROGRAM MEMORY    */
			pic14_load_data_for_program_memory(k, cdata[0]);
		default:pic14_write_word(k, PIC14_REGIONCONFIG);
			break;
		}
		vdata[0] = pic14_read_data_from_program_memory(k);
	}
	else for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
		pic14_increment_address(k);
		pic14_load_data_for_program_memory(k, cdata[i]);
		pic14_write_word(k, PIC14_REGIONCONFIG);
		vdata[i] = pic14_read_data_from_program_memory(k);
	}

	pic14_standby(k);

	if (pic14_map[pic14_index].datasheet == DS41191C) {
		vdata[0] &= PIC14_CONFIGMASK;
		cdata[0] &= PIC14_CONFIGMASK;
	}
	for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
		if (vdata[i] != cdata[i]) {
			printf("%s: error: CONFIG%d write failed: read [%04X] expected [%04X]\n",
				__func__, i + 1, vdata[i], cdata[i]);
			return 0; /* FAILED */
		}
	}
	return pic14_map[pic14_index].nconfig;
}

/*****************************************************************************
 *
 * Region control
 *
 *****************************************************************************/

/*
 * DETERMINE MEMORY REGION: CODE, CONFIG or DATA
 *
 *  RETURN REGION
 */
uint16_t
pic14_getregion(uint16_t address)
{
	/* CODE */
	uint16_t code_high = pic14_map[pic14_index].flash - 1;

	if (address <= code_high) {
		return PIC14_REGIONCODE;
	}
	/* EEPROM */
	if (pic14_map[pic14_index].eeprom) {
		uint16_t data_low = pic14_map[pic14_index].dataaddr;
		uint16_t data_high = data_low + pic14_map[pic14_index].eeprom - 1;

		if (address >= data_low && address <= data_high) {
			return PIC14_REGIONDATA;
		}
	}
	/* USERID/CONFIG */
	uint16_t config_low = pic14_map[pic14_index].configaddr;
	uint16_t config_high = config_low + 7 + pic14_map[pic14_index].nconfig - 1;

	if (address >= config_low && address <= config_high) {
		return PIC14_REGIONCONFIG;
	}
	printf("%s: warning: address unsupported [%04X]\n",
		__func__, address);
	return PIC14_REGIONNOTSUP;
}

/*
 * INITIALISE FOR REGION
 *
 *  RETURN REGION
 */
uint16_t
pic14_initregion(struct k8048 *k, uint16_t region, uint16_t *address)
{
	switch (region) {
	case PIC14_REGIONCODE:
		pic14_load_data_for_program_memory(k, 0);
		*address = 0;
		return region;
		break;
	case PIC14_REGIONCONFIG:
		pic14_load_configuration(k, 0);
		*address = pic14_map[pic14_index].configaddr;
		return region;
		break;
	case PIC14_REGIONDATA:
		pic14_load_data_for_data_memory(k, 0);
		*address = pic14_map[pic14_index].dataaddr;
		return region;
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		break;
	}
	return PIC14_REGIONNOTSUP;
}

/*
 * LOAD DATA FOR REGION (STORE WORD IN WORKING REGISTER)
 */
void
pic14_loadregion(struct k8048 *k, uint16_t region, uint16_t word)
{
	switch (region) {
	case PIC14_REGIONCODE:
	case PIC14_REGIONCONFIG:
		pic14_load_data_for_program_memory(k, word);
		break;
	case PIC14_REGIONDATA:
		pic14_load_data_for_data_memory(k, word);
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		break;
	}
}

/*****************************************************************************
 *
 * Program & verify region
 *
 *****************************************************************************/

/*
 * PROGRAM DATA FOR REGION (CACHE CONFIG WORDS FOR LATER)
 */
void
pic14_programregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{ 
	static int write_pending = 0;

#ifdef DEBUG
	if (k->debug >= 10) {
		printf("%s(,%04X,%d,%04X)\n", __func__, address, region, data);
	}
#endif
	/*
	 * Cache config word(s)
	 */
	if (region == PIC14_REGIONCONFIG && address >= (pic14_map[pic14_index].configaddr + 4)) {
		uint16_t config = address - pic14_map[pic14_index].configaddr;

		/* 2007 / 8007 */
		if (config == PIC14_CONFIG_WORD1) {
			if (pic14_map[pic14_index].datasheet == DS41191C) {
				data = (data & PIC14_CONFIGMASK) | (pic14_conf.config[0] & PIC14_BANDGAPMASK);
			}
			pic14_conf.config[0] = data;
			return;
		}
		/* 2008 / 8008 */
		if (config == PIC14_CONFIG_WORD2 && pic14_map[pic14_index].nconfig >= 2) {
			pic14_conf.config[1] = data;
			return;
		}
		/* 2009 / 8009 */
		if (config == PIC14_CONFIG_WORD3 && pic14_map[pic14_index].nconfig >= 3) {
			pic14_conf.config[2] = data;
			return;
		}
		printf("%s: warning: config word ignored: word [%04X] address [%04X]\n",
			__func__, data, address);
		return;
	}
	
	/*
	 * Write single or multi-word code
	 */
	if (region == PIC14_REGIONCODE) {
		if (data != PIC_VOID) {
			/* Ignore OSCCAL */
			if (pic14_map[pic14_index].datasheet == DS41191C) {
				if (address == PIC14_OSCCALADDR) {
					printf("%s: warning: OSCCAL word ignored: word [%04X] address [%04X]\n",
						__func__, data, address);
					return;
				}
			}
			/* Cache */
			pic14_loadregion(k, PIC14_REGIONCODE, data);
			write_pending = 1;
		}
		/* Flush */
		uint16_t mask = pic14_map[pic14_index].nlatches - 1;
		if ((address & mask) == mask) {
			if (write_pending) {
				pic14_write_word(k, PIC14_REGIONCODE);
				write_pending = 0;
			}
		}
		return;
	}
	
	/*
	 * Write single word data EEPROM or USERID
	 */

	/* Store data in working register */
	pic14_loadregion(k, region, data);

	/* Program working register */
	pic14_write_word(k, region);
}

/*
 * VERIFY DATA FOR REGION
 *
 *  RETURN FAILURE COUNT
 */
uint32_t
pic14_verifyregion(struct k8048 *k, uint16_t address, uint16_t region, uint16_t data)
{
	uint16_t vdata = 0;

	switch (region) {
	case PIC14_REGIONCODE:
	case PIC14_REGIONCONFIG:
		vdata = pic14_read_data_from_program_memory(k);
		break;
	case PIC14_REGIONDATA:
		vdata = pic14_read_data_from_data_memory(k);
		break;
	default:printf("%s: warning: region unsupported [%d]\n",
		__func__, region);
		return 1;
		break;
	}
	if (pic14_map[pic14_index].datasheet == DS41191C) {
		if (address == PIC14_BANDGAPADDR) {
			vdata &= PIC14_CONFIGMASK;
			data  &= PIC14_CONFIGMASK;
		}
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
 * Program & verify file
 *
 *****************************************************************************/

/*
 * PROGRAM FILE
 */
void
pic14_program(struct k8048 *k, char *filename, int blank)
{
	uint16_t hex_address, PC_address = 0, wdata;
	uint16_t new_region, current_region = PIC14_REGIONNOTSUP;
	uint16_t total = 0;

	/* Get HEX */
	if (!inhx32(k, filename, 2))
		return;

	/* Initialise device for programming */
	if (blank)
		pic14_bulk_erase(k, PIC_INTERNAL, PIC_NOINTERNAL);
	
	/*
	 * Program device
	 */

	/* For each line */
	for (uint32_t i = 0; i < k->count; i++) {
		hex_address = (k->pdata[i]->address >> 1);
		new_region = pic14_getregion(hex_address);
		if (new_region == PIC14_REGIONNOTSUP)
			continue;
		if (new_region != current_region) {
			if (current_region == PIC14_REGIONCODE)
				pic14_programregion(k, PIC_VOID, PIC14_REGIONCODE, PIC_VOID);
			pic14_program_verify(k);  /* Reset P.C. */
			if (pic14_initregion(k, new_region, &PC_address) == PIC14_REGIONNOTSUP)
				continue;
			current_region = new_region;
		}

		/* Skip over unused P.C. locations */
		while (hex_address > PC_address) {
			if (current_region == PIC14_REGIONCODE)
				pic14_programregion(k, PC_address, PIC14_REGIONCODE, PIC_VOID);
			PC_address++;
			pic14_increment_address(k);
		}

		/* For each 14-bit word in line */
		for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
			wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
			wdata &= PIC14_MASK;
			pic14_programregion(k, PC_address, current_region, wdata);
			PC_address++;
			pic14_increment_address(k);
			total++;
		}
	}
	if (current_region == PIC14_REGIONCODE)
		pic14_programregion(k, PIC_VOID, PIC14_REGIONCODE, PIC_VOID);

	pic14_standby(k);

	/* Finalise device programming (write config word(s)) */
	if (blank)
		pic14_write_config(k, pic14_conf.config[0]);

	printf("Total: %u\n", total);

	inhx32_free(k);

	if (pic14_map[pic14_index].datasheet == DS40245B) {
		printf("%s: information: The %s must be power cycled before verification.\n",
			__func__, pic14_map[pic14_index].devicename);
	}
}

/*
 * VERIFY FILE
 */
uint32_t
pic14_verify(struct k8048 *k, char *filename)
{
	uint16_t hex_address, PC_address = 0, wdata;
	uint16_t new_region, current_region = PIC14_REGIONNOTSUP;
	uint16_t fail = 0, total = 0;

	/* Get HEX */
	if (!inhx32(k, filename, 2))
		return 1;

	/*
	 * Verify device
	 */

	/* For each line */
	for (uint32_t i = 0; i < k->count; i++) {
		hex_address = (k->pdata[i]->address >> 1);
		new_region = pic14_getregion(hex_address);
		if (new_region == PIC14_REGIONNOTSUP)
			continue;
		if (new_region != current_region) {
			pic14_program_verify(k); /* Reset P.C. */
			if (pic14_initregion(k, new_region, &PC_address) == PIC14_REGIONNOTSUP)
				continue;
			current_region = new_region;
		}

		/* Skip over unused P.C. locations */
		while (hex_address > PC_address) {
			PC_address++;
			pic14_increment_address(k);
		}

		/* For each 14-bit word in line */
		for (uint32_t j = 0; j < k->pdata[i]->nbytes; j += 2) {
			wdata = k->pdata[i]->bytes[j] | (k->pdata[i]->bytes[j + 1] << 8);
			wdata &= PIC14_MASK;
			fail += pic14_verifyregion(k, PC_address++, current_region, wdata);
			pic14_increment_address(k);
			total++;
		}
	}
	pic14_standby(k);

	printf("Total: %u Pass: %u Fail: %u\n", total, total-fail, fail);

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
pic14_dumpdeviceid(struct k8048 *k)
{
	printf("[0000] [PROGRAM]  %04X WORDS", pic14_map[pic14_index].flash);
	if (pic14_map[pic14_index].erasesize) {
		printf(" (%04X ROWS OF %04X WORDS)",
			pic14_map[pic14_index].flash / pic14_map[pic14_index].erasesize,
			pic14_map[pic14_index].erasesize);
	}
	printf("\n");

	if (pic14_map[pic14_index].datasheet == DS41191C)
		pic14_dumposccal(k);

	for (uint32_t i = 0; i < 4; i++) {
		printf("[%04X] [USERID%d]  ", pic14_map[pic14_index].configaddr + i, i);
		printf("%04X %c\n", pic14_conf.userid[i], PIC_CHAR(0xFF & pic14_conf.userid[i]));
	}

	printf("[%04X] [RESERVED] %04X\n", pic14_map[pic14_index].configaddr + 4, pic14_conf.reserved);

	if (k->devicename[0]) {
		printf("[%04X] [RESERVED] %04X\n",
			pic14_map[pic14_index].configaddr + 5, pic14_conf.revisionid);
		printf("       [DEVICEID]");
	} else if ((pic14_conf.deviceid & PIC14_DEVICEID_MASK3) == PIC14_DEVICEID_MASK3) {
		/* PIC16F1788 */
		/* PIC16F1455 */
		/* PIC16F753  */
		/* PIC16F1708 */
		printf("[%04X] [REVISION] %04X REV:%03X\n",
			pic14_map[pic14_index].configaddr + 5,
			pic14_conf.revisionid, pic14_conf.revisionid & PIC14_DEVICEREV_MASK3);
		printf("[%04X] [DEVICEID] %04X DEV:%04X",
			pic14_map[pic14_index].configaddr + 6,
			pic14_conf.deviceid, pic14_conf.deviceid);
	} else {
		printf("[%04X] [RESERVED] %04X\n",
			pic14_map[pic14_index].configaddr + 5,
			pic14_conf.reserved);
		printf("[%04X] [DEVICEID] %04X DEV:%03X REV:%02X",
			pic14_map[pic14_index].configaddr + 6,
			pic14_conf.deviceid,
			pic14_conf.deviceid & PIC14_DEVICEID_MASK,
			pic14_conf.deviceid & PIC14_DEVICEREV_MASK);
	}
	printf(" %s\n", pic14_map[pic14_index].devicename);

	pic14_dumpconfig(k, PIC_BRIEF);

	if (pic14_map[pic14_index].ncalib) {
		uint16_t caddr = pic14_map[pic14_index].configaddr +
			PIC14_CONFIG_WORD1 + pic14_map[pic14_index].nconfig;

		if (pic14_map[pic14_index].ncalib == 1) {
			printf("[%04X] [CALIB]    %04X\n", caddr, pic14_conf.calib[0]);
		} else for (uint32_t i = 0; i < pic14_map[pic14_index].ncalib; ++i) {
			if (i < 9)
				printf("[%04X] [CALIB%d]   %04X\n", caddr++, i + 1, pic14_conf.calib[i]);
			else 
				printf("[%04X] [CALIB%d]  %04X\n", caddr++, i + 1, pic14_conf.calib[i]);
		}
	}

	if (pic14_map[pic14_index].eeprom) {
		printf("[%04X] [DATA]     %04X BYTES\n",
			pic14_map[pic14_index].dataaddr, pic14_map[pic14_index].eeprom);
	}
}

/*
 * DUMP OSCCAL DETAILS
 */
void
pic14_dumposccal(struct k8048 *k)
{
	if (pic14_map[pic14_index].datasheet != DS41191C) {
		printf("%s: error: OSCCAL is not supported on this device\n", __func__);
	} else {
		printf("[%04X] [OSCCAL]   %04X\n", PIC14_OSCCALADDR, pic14_read_osccal(k));
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR DEVICE
 */
void
pic14_dumpconfig(struct k8048 *k, int mode)
{
	if (pic14_map[pic14_index].nconfig == 1) {
		printf("[%04X] [CONFIG]   %04X\n",
			pic14_map[pic14_index].configaddr + PIC14_CONFIG_WORD1,
				pic14_conf.config[0]);
	} else for (uint32_t i = 0; i < pic14_map[pic14_index].nconfig; ++i) {
		printf("[%04X] [CONFIG%d]  %04X\n",
			i + pic14_map[pic14_index].configaddr + PIC14_CONFIG_WORD1, i + 1,
				pic14_conf.config[i]);
	}
#ifdef VERBOSE
	if (mode == PIC_VERBOSE) switch (pic14_map[pic14_index].datasheet) {
	case DS30034D:	pic14_dumpconfig_16f627(pic14_conf.index[PIC14_CONFIG_WORD1]);
			break;
	case DS39589C:	pic14_dumpconfig_16f877a(pic14_conf.index[PIC14_CONFIG_WORD1]);
			break;
	case DS41191C:	pic14_dumpconfig_12f675(pic14_conf.index[PIC14_CONFIG_WORD1]);
			break;
	case DS39607B:	pic14_dumpconfig_16f88(pic14_conf.index[PIC14_CONFIG_WORD1],
				pic14_conf.index[PIC14_CONFIG_WORD2]);
			break;
	case DS41196F:	pic14_dumpconfig_16f628a(pic14_conf.index[PIC14_CONFIG_WORD1]);
			break;
	case DS41204G:	pic14_dumpconfig_12f683(pic14_conf.index[PIC14_CONFIG_WORD1]);
			break;
	case DS41287D:	pic14_dumpconfig_16f886(pic14_conf.index[PIC14_CONFIG_WORD1],
				pic14_conf.index[PIC14_CONFIG_WORD2]);
			break;
	}
#endif
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC16F627
 */
#ifdef VERBOSE
void
pic14_dumpconfig_16f627(uint16_t config)
{
	uint16_t w;

	w = (config & 0x3000) >> 12;
	printf("\nCode protection for 2K program memory:\n");
	switch (w) {
	case 0: printf("\t[CP] 0000h -> 07FFh code protected\n"); break;
	case 1: printf("\t[CP] 0200h -> 07FFh code protected\n"); break;
	case 2: printf("\t[CP] 0400h -> 07FFh code protected\n"); break;
	case 3: printf("\t[CP] Program memory code protection off\n"); break;
	}

	w = (config & 0x0c00) >> 10;
	printf("\nCode protection for 1K program memory:\n");
	switch (w) {
	case 0: printf("\t[CP] 0000h -> 03FFh code protected\n"); break;
	case 1: printf("\t[CP] 0200h -> 03FFh code protected\n"); break;
	case 2: printf("\t[CP] Program memory code protection off\n"); break;
	case 3: printf("\t[CP] Program memory code protection off\n"); break;
	}

	w = config & 0x100;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");

	w = config & 0x80;
	if (w)
		printf("\n[LVP] Low voltage programming enabled\n");
	else
		printf("\n[LVP] Low voltage programming disabled\n");

	w = config & 0x40;
	if (w)
		printf("\n[BODEN] Brown-out detect reset enabled\n");
	else
		printf("\n[BODEN] Brown-out detect reset disabled\n");

	w = config & 0x20;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config & 0x08;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config & 0x04;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = ((config & 0x10) >> 2) | (config & 0x03);
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[ER] 111\n"); break;
	case 6: printf("\t[ER] 110\n"); break;
	case 5: printf("\t[INTRC] 101\n"); break;
	case 4: printf("\t[INTRC] 100\n"); break;
	case 3: printf("\t[EC] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC12F675
 */
void
pic14_dumpconfig_12f675(uint16_t config)
{
	uint16_t w;

	w = (config & 0x3000) >> 12;
	printf("\nBand-gap calibration bits:\n");
	switch (w) {
	case 0: printf("\t[BG1:BG0] 00\n"); break;
	case 1: printf("\t[BG1:BG0] 01\n"); break;
	case 2: printf("\t[BG1:BG0] 10\n"); break;
	case 3: printf("\t[BG1:BG0] 11\n"); break;
	}
	
	w = config & 0x100;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");
	
	w = config & 0x80;
	if (w)
		printf("\n[CP] Program memory code protection off\n");
	else
		printf("\n[CP] Program memory code protection on\n");
	
	w = config & 0x40;
	if (w)
		printf("\n[BODEN] Brown-out detect reset enabled\n");
	else
		printf("\n[BODEN] Brown-out detect reset disabled\n");

	w = config & 0x20;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config & 0x10;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config & 0x08;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = config & 0x07;
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[RC] 111\n"); break;
	case 6: printf("\t[RC] 110\n"); break;
	case 5: printf("\t[INTOSC] 101 CLKOUT\n"); break;
	case 4: printf("\t[INTOSC] 100 NO CLKOUT\n"); break;
	case 3: printf("\t[EC] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC16F877A
 */
void
pic14_dumpconfig_16f877a(uint16_t config)
{
	uint16_t w;

	w = config & 0x2000;
	if (w)
		printf("\n[CP] Code memory code protection off\n");
	else
		printf("\n[CP] Code memory code protection on\n");

	w = config & 0x0800;
	if (w)
		printf("\n[DEBUG] In circuit debugger off\n");
	else
		printf("\n[DEBUG] In circuit debugger on\n");
	
	w = (config & 0x0600) >> 9;
	printf("\nWrite protection:\n");
	switch (w) {
	case 3: printf("\t[WRT1:WRT0] 11 off\n"); break;
	case 2: printf("\t[WRT1:WRT0] 10 0000 => 00ff Protected\n"); break;
	case 1: printf("\t[WRT1:WRT0] 01 0000 => 07ff Protected\n"); break;
	case 0: printf("\t[WRT1:WRT0] 00 0000 => 0fff Protected\n"); break;
	}

	w = config & 0x0100;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");

	w = config & 0x80;
	if (w)
		printf("\n[LVP] Low voltage programming enabled\n");
	else
		printf("\n[LVP] Low voltage programming disabled\n");

	w = config & 0x40;
	if (w)
		printf("\n[BOREN] Brown-out reset enabled\n");
	else
		printf("\n[BOREN] Brown-out reset disabled\n");

	w = config & 0x20;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config & 0x08;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config & 0x04;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = config & 0x03;
	printf("\nOscillator selection:\n");
	switch (w) {
	case 3: printf("\t[RC] 11\n"); break;
	case 2: printf("\t[HS] 10\n"); break;
	case 1: printf("\t[XT] 01\n"); break;
	case 0: printf("\t[LP] 00\n"); break;
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC16F87/8
 */
void
pic14_dumpconfig_16f88(uint16_t config1, uint16_t config2)
{
	uint16_t w;

	w = config1 & 0x2000;
	if (w)
		printf("\n[CP] Code memory code protection off\n");
	else
		printf("\n[CP] Code memory code protection on\n");

	w = config1 & 0x0800;
	if (w)
		printf("\n[DEBUG] In circuit debugger off\n");
	else
		printf("\n[DEBUG] In circuit debugger on\n");

	w = (config1 & 0x0600) >> 9;
	printf("\n[WRT1:WRT0] Write protection: 0x%02X\n", w);

	w = config1 & 0x0100;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");

	w = config1 & 0x80;
	if (w)
		printf("\n[LVP] Low voltage programming enabled\n");
	else
		printf("\n[LVP] Low voltage programming disabled\n");

	w = config1 & 0x40;
	if (w)
		printf("\n[BOREN] Brown-out reset enabled\n");
	else
		printf("\n[BOREN] Brown-out reset disabled\n");

	w = config1 & 0x20;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config1 & 0x08;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config1 & 0x04;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = ((config1 & 0x10) >> 2) | (config1 & 0x03);
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[EXTRC] 111 CLKOUT\n"); break;
	case 6: printf("\t[EXTRC] 110 NO CLKOUT\n"); break;
	case 5: printf("\t[INTRC] 101 CLKOUT\n"); break;
	case 4: printf("\t[INTRC] 100 NO CLKOUT\n"); break;
	case 3: printf("\t[ECIO] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}

	w = config2 & 0x01;
	if (w)
		printf("\n[FCMEN] Fail-safe clock monitor enabled\n");
	else
		printf("\n[FCMEN] Fail-safe clock monitor disabled\n");

	w = config2 & 0x02;
	if (w)
		printf("\n[IESO] Internal/external switch over mode enabled\n");
	else
		printf("\n[IESO] Internal/external switch over mode disabled\n");
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC16F628A
 */
void
pic14_dumpconfig_16f628a(uint16_t config)
{
	uint16_t w;

	w = config & 0x2000;
	if (w)
		printf("\n[CP] Code memory code protection off\n");
	else
		printf("\n[CP] Code memory code protection on\n");

	w = config & 0x0100;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");

	w = config & 0x80;
	if (w)
		printf("\n[LVP] Low voltage programming enabled\n");
	else
		printf("\n[LVP] Low voltage programming disabled\n");

	w = config & 0x40;
	if (w)
		printf("\n[BOREN] Brown-out reset enabled\n");
	else
		printf("\n[BOREN] Brown-out reset disabled\n");

	w = config & 0x20;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config & 0x08;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config & 0x04;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = ((config & 0x10) >> 2) | (config & 0x03);
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[RC] 111 CLKOUT\n"); break;
	case 6: printf("\t[RC] 110 NO CLKOUT\n"); break;
	case 5: printf("\t[INTOSC] 101 CLKOUT\n"); break;
	case 4: printf("\t[INTOSC] 100 NO CLKOUT\n"); break;
	case 3: printf("\t[ECIO] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC12F683
 */
void
pic14_dumpconfig_12f683(uint16_t config)
{
	uint16_t w;

	w = config & 0x0800;
	if (w)
		printf("\n[FCMEN] Fail-safe clock monitor enabled\n");
	else
		printf("\n[FCMEN] Fail-safe clock monitor disabled\n");
	
	w = config & 0x0300;
	printf("\nBrown-out reset selection:\n");
	switch (w) {
	case 3:	printf("\t[BOR] Enabled\n"); break;
	case 2:	printf("\t[BOR] Enabled during operation and disabled in Sleep\n"); break;
	case 1:	printf("\t[BOR] Controlled by SBOREN bit of the PCON register\n"); break;
	case 0: printf("\t[BOR] Disabled\n"); break;
	}

	w = config & 0x0080;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");
	
	w = config & 0x0040;
	if (w)
		printf("\n[CP] Program memory code protection off\n");
	else
		printf("\n[CP] Program memory code protection on\n");
	
	w = config & 0x0020;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config & 0x0010;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config & 0x0008;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = config & 0x07;
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[RC] 111 CLKOUT\n"); break;
	case 6: printf("\t[RCIO] 110 NO CLKOUT\n"); break;
	case 5: printf("\t[INTOSC] 101 CLKOUT\n"); break;
	case 4: printf("\t[INTOSCIO] 100 NO CLKOUT\n"); break;
	case 3: printf("\t[EC] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}
}

/*
 * DUMP CONFIG WORD DETAILS FOR PIC16F886
 */
void
pic14_dumpconfig_16f886(uint16_t config1, uint16_t config2)
{
	uint16_t w;
	
	w = config1 & 0x2000;
	if (w)
		printf("\n[DEBUG] In circuit debugger off\n");
	else
		printf("\n[DEBUG] In circuit debugger on\n");

	w = config1 & 0x1000;
	if (w)
		printf("\n[LVP] Low voltage programming enabled\n");
	else
		printf("\n[LVP] Low voltage programming disabled\n");

	w = config1 & 0x0800;
	if (w)
		printf("\n[FCMEN] Fail-safe clock monitor enabled\n");
	else
		printf("\n[FCMEN] Fail-safe clock monitor disabled\n");
	
	w = config1 & 0x0400;
	if (w)
		printf("\n[IESO] Internal/external switch over mode enabled\n");
	else
		printf("\n[IESO] Internal/external switch over mode disabled\n");
	
	w = config1 & 0x0300;
	printf("\nBrown-out reset selection:\n");
	switch (w) {
	case 3:	printf("\t[BOR] Enabled\n"); break;
	case 2:	printf("\t[BOR] Enabled during operation and disabled in Sleep\n"); break;
	case 1:	printf("\t[BOR] Controlled by SBOREN bit of the PCON register\n"); break;
	case 0: printf("\t[BOR] Disabled\n"); break;
	}

	w = config1 & 0x0080;
	if (w)
		printf("\n[CPD] Data memory code protection off\n");
	else
		printf("\n[CPD] Data memory code protection on\n");

	w = config1 & 0x0040;
	if (w)
		printf("\n[CP] Code memory code protection off\n");
	else
		printf("\n[CP] Code memory code protection on\n");

	w = config1 & 0x0020;
	if (w)
		printf("\n[MCLRE] MCLR enabled\n");
	else
		printf("\n[MCLRE] MCLR disabled\n");

	w = config1 & 0x0010;
	if (w)
		printf("\n[PWRTE] Power-up timer disabled\n");
	else
		printf("\n[PWRTE] Power-up timer enabled\n");

	w = config1 & 0x0008;
	if (w)
		printf("\n[WDT] Watchdog timer enabled\n");
	else
		printf("\n[WDT] Watchdog timer disabled\n");

	w = config1 & 0x0007;
	printf("\nOscillator selection:\n");
	switch (w) {
	case 7: printf("\t[RC] 111 CLKOUT\n"); break;
	case 6: printf("\t[RCIO] 110 NO CLKOUT\n"); break;
	case 5: printf("\t[INTOSC] 101 CLKOUT\n"); break;
	case 4: printf("\t[INTOSCIO] 100 NO CLKOUT\n"); break;
	case 3: printf("\t[ECIO] 011\n"); break;
	case 2: printf("\t[HS] 010\n"); break;
	case 1: printf("\t[XT] 001\n"); break;
	case 0: printf("\t[LP] 000\n"); break;
	}

	w = (config2 & 0x0006) >> 1;
	printf("\n[WRT1:WRT0] Write protection: 0x%02X\n", w);
	
	w = config2 & 0x0001;
	if (w)
		printf("\n[BOR4V] Brown-out reset set to 4.0V\n");
	else
		printf("\n[BOR4V] Brown-out reset set to 2.1V\n");
}
#endif /* VERBOSE */

/*
 * DUMP HEX FLASH WORDS
 */
void
pic14_dumphexcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
	uint32_t i, j, nlines = 0;

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtcode(PIC14_MASK, 8, &data[i]))
			continue;
		printf("[%04X] ", address);
		for (j = 0; j < 8; ++j)
			printf("%04X ", data[i + j] & PIC14_MASK);
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
pic14_dumpinhxcode(struct k8048 *k, uint32_t address, uint32_t size, uint32_t *data)
{
	uint32_t i, j;

	/* 14-bit: Extended address = 0x0000 */
	pic_dumpaddr(0, 1);

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtcode(PIC14_MASK, 8, &data[i]))
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
 * DUMP HEX DATA EEPROM BYTES
 */
void
pic14_dumphexdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
	uint32_t i, j, nlines = 0;

	for (i = 0; i < size; address += 16, i += 16) {
		if (pic_mtdata(0xFF, 16, &data[i]))
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
		printf("%s: information: data eeprom empty\n", __func__);
}

/*
 * DUMP INHX32 DATA EEPROM BYTES
 */
void
pic14_dumpinhxdata(struct k8048 *k, uint32_t address, uint32_t size, uint16_t *data)
{
	uint32_t i, j;

	/* Enhanced 14-bit: Extended address = 0x0001 (EEPROM: 0xF000) */
	pic_dumpaddr(address << 1, 1);

	for (i = 0; i < size; address += 8, i += 8) {
		if (pic_mtdata(0xFF, 8, &data[i]))
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
 * DUMP INHX32 DEVICE CONFIGURATION
 */
void
pic14_dumpdevice(struct k8048 *k)
{
	uint32_t i;

	/* Enhanced 14-bit: Extended address = 0x0001 (CONFIG: 0x8000) */
	pic_dumpaddr(pic14_map[pic14_index].configaddr << 1, 1);
	
	/* USERID */
	for (i = 0; i < 4; ++i)
		pic_dumpword16(pic14_map[pic14_index].configaddr + i, pic14_conf.userid[i]);

	/* CONFIG */
	for (i = 0; i < pic14_map[pic14_index].nconfig; ++i)
		pic_dumpword16(i + pic14_map[pic14_index].configaddr + PIC14_CONFIG_WORD1,
			pic14_conf.config[i]);
}
