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

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <errno.h>
#include <sys/ioctl.h>

#include "gpio-bb.h"

/*
 * File descriptor
 */
int gpio_bb_fd = -1;

int
gpio_bb_open(const char *device)
{
#ifdef __linux
	gpio_bb_fd = open(device, O_RDWR);
	if (gpio_bb_fd < 0) {
		printf("%s: warning: open failed [%s]\n", __func__, strerror(errno));
		gpio_bb_fd = -1;
		return -1;
	}
	return gpio_bb_fd;
#else
	return -1;
#endif
}

void
gpio_bb_close(void)
{
#ifdef __linux
	close(gpio_bb_fd);
	gpio_bb_fd = -1;
#endif
}

int
gpio_bb_io(struct gpio_bb_io *io)
{
#ifdef __linux
	return ioctl(gpio_bb_fd, GPIO_BB_IO, io);
#else
	return -1
#endif
}

int
gpio_bb_configure(struct gpio_bb_config *config)
{
#ifdef __linux
	return ioctl(gpio_bb_fd, GPIO_BB_CONFIGURE, config);
#else
	return -1
#endif
}

int
gpio_bb_shift(struct gpio_bb_shift *shift)
{
#ifdef __linux
	return ioctl(gpio_bb_fd, GPIO_BB_SHIFT, shift);
#else
	return -1;
#endif
}
