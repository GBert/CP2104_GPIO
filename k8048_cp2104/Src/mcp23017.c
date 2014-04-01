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
 * File descriptor
 */
static int mcp_fd = -1;

/*
 * Shadow output
 */
static uint8_t mcp_latch;

int
mcp_open(const char *i2c_device, int address)
{
#ifdef __linux
	mcp_fd = open(i2c_device, O_RDWR);
	if (mcp_fd < 0) {
		mcp_fd = -1;
		return -1; /* Error */
	}
	if (ioctl(mcp_fd, I2C_SLAVE, address) < 0) {
		close(mcp_fd);
		mcp_fd = -1;
		return -1; /* Error */
	}

	/* Initialise mcp23017 */
	mcp_set(MCP_IOCON, 0x00);

	/* All O/P except PGDI I/P */
	mcp_set(MCP_IODIR, MCP_PGDI);

	/* All O/P low */
	mcp_latch = 0;
	mcp_set(MCP_OUT, mcp_latch);

	return mcp_fd; /* Okay */
#else
	return -1; /* Unsupported */
#endif
}

void
mcp_close(void)
{
	close(mcp_fd);
	mcp_fd = -1;
}

void
mcp_set(uint8_t reg, uint8_t val)
{
	uint8_t buf[2];

	buf[0] = reg;
	buf[1] = val;
	int rc = write(mcp_fd, buf, 2);
	if (rc != 2) {
		printf("%s: warning: unhandled error\n", __func__);
	}
}

void
mcp_get(uint8_t reg, uint8_t *val)
{
	uint8_t buf[1];

	buf[0] = reg;
	int rc = write(mcp_fd, buf, 1);
	if (rc != 1) {
		printf("%s: warning: unhandled error\n", __func__);
	}
	rc = read(mcp_fd, buf, 1);
	if (rc != 1) {
		printf("%s: warning: unhandled error\n", __func__);
	}
	*val = buf[0];
}

void
mcp_set_pgd(int pgd)
{
	if (pgd)
		mcp_latch |=  MCP_PGDO;
	else
		mcp_latch &= ~MCP_PGDO;
	mcp_set(MCP_OUT, mcp_latch);
}

void
mcp_set_pgc(int pgc)
{
	if (pgc)
		mcp_latch |=  MCP_PGC;
	else
		mcp_latch &= ~MCP_PGC;
	mcp_set(MCP_OUT, mcp_latch);
}

void
mcp_set_pgm(int pgm)
{
	if (pgm)
		mcp_latch |=  MCP_PGM;
	else
		mcp_latch &= ~MCP_PGM;
	mcp_set(MCP_OUT, mcp_latch);
}

void
mcp_set_vpp(int vpp)
{
	if (vpp)
		mcp_latch |=  MCP_VPP;
	else
		mcp_latch &= ~MCP_VPP;
	mcp_set(MCP_OUT, mcp_latch);
}

int
mcp_get_pgd(void)
{
	uint8_t pgd;

	mcp_get(MCP_IN, &pgd);

	return (pgd & MCP_PGDI) ? HIGH : LOW;
}
