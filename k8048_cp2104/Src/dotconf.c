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
 * Dot file
 */
void
getdotfile(struct k8048 *k)
{
	char dir[STRLEN], *filename, *homedir, *username;

	filename = getenv("K8048");
	if (filename != NULL && access(filename, R_OK) == 0) {
		snprintf(k->dotfile, STRLEN, "%s", filename);
		return;
	}
	
	if (getcwd(dir, STRLEN) == NULL) {
		printf("%s: fatal error: getcwd failed\n", __func__);
		io_exit(k, EX_OSERR); /* Panic */
	}

	snprintf(k->dotfile, STRLEN, "%s/%s", dir, DOTFILENAME);
	if (access(k->dotfile, R_OK) == 0) {
		return;
	}

	homedir = getenv("HOME");
	if (homedir != NULL) {
		snprintf(k->dotfile, STRLEN, "%s/%s", homedir, DOTFILENAME);
		if (access(k->dotfile, R_OK) == 0) {
			return;
		}
	}

	username = getenv("USER");
	if (username != NULL) {
		snprintf(k->dotfile, STRLEN, "/home/%s/%s", username, DOTFILENAME);
		if (access(k->dotfile, R_OK) == 0) {
			return;
		}
	}

	/* No dot file available */
	k->dotfile[0] = '\0';
}

/*
 * Configuration
 */
void
getconf(struct k8048 *k, char *e)
{
	FILE *f1;
	char line[STRLEN];

	/* Configure defaults */
	bzero(k, sizeof(struct k8048));
	k->bitrules = (PGD_IN_PULLUP | PGD_OUT_FLIP | PGC_OUT_FLIP | VPP_OUT_FLIP | PGD_IN_FLIP);
	k->sleep_low = 1;
	k->sleep_high = 1;
	k->fwsleep = 30;

	/* Configure I/O defaults */
	io_config(k);

	/* Load dot file if available */
	getdotfile(k);
#ifdef DEBUG
	printf("%s: DOTFILE=%s\n", __func__, k->dotfile);
#endif
	if (k->dotfile[0] && (f1 = fopen(k->dotfile, "rb")) != NULL) {

		while (fgets(line, STRLEN, f1) != NULL) {
			line[strlen(line) - 1] = '\0'; /* Remove LF */

			if (mystrcasestr(line, "DEVICE=") == line) {
#ifdef DEBUG
				printf("%s: DEVICE=%s\n", __func__, &line[7]);
#endif
				strncpy(k->device, &line[7], STRLEN);
			}
			else if (mystrcasestr(line, "SLEEP=") == line) {
#ifdef DEBUG
				printf("%s: SLEEP=%s\n", __func__, &line[6]);
#endif
				k->sleep_low = strtoul(&line[6], NULL, 0);
				k->sleep_high = k->sleep_low;
			}
			else if (mystrcasestr(line, "SLEEP_LOW=") == line) {
#ifdef DEBUG
				printf("%s: SLEEP_LOW=%s\n", __func__, &line[10]);
#endif
				k->sleep_low = strtoul(&line[10], NULL, 0);
			}
			else if (mystrcasestr(line, "SLEEP_HIGH=") == line) {
#ifdef DEBUG
				printf("%s: SLEEP_HIGH=%s\n", __func__, &line[11]);
#endif
				k->sleep_high = strtoul(&line[11], NULL, 0);
			}
			else if (mystrcasestr(line, "BITRULES=") == line) {
#ifdef DEBUG
				printf("%s: BITRULES=%s\n", __func__, &line[9]);
#endif
				k->bitrules = strtoul(&line[9], NULL, 0);
			}
			else if (mystrcasestr(line, "BUSY=") == line) {
#ifdef DEBUG
				printf("%s: BUSY=%s\n", __func__, &line[5]);
#endif
				k->busy = strtoul(&line[5], NULL, 0);
			}
#if defined(RPI) || defined(BITBANG)
			else if (mystrcasestr(line, "VPP=") == line) {
#ifdef DEBUG
				printf("%s: VPP=%s\n", __func__, &line[4]);
#endif
				k->vpp = strtoul(&line[4], NULL, 0);
			}
			else if (mystrcasestr(line, "PGM=") == line) {
#ifdef DEBUG
				printf("%s: PGM=%s\n", __func__, &line[4]);
#endif
				k->pgm = strtoul(&line[4], NULL, 0);
			}
			else if (mystrcasestr(line, "PGC=") == line) {
#ifdef DEBUG
				printf("%s: PGC=%s\n", __func__, &line[4]);
#endif
				k->pgc = strtoul(&line[4], NULL, 0);
			}
			else if (mystrcasestr(line, "PGD=") == line) {
#ifdef DEBUG
				printf("%s: PGD=%s\n", __func__, &line[4]);
#endif
				k->pgdi = strtoul(&line[4], NULL, 0);
				k->pgdo = k->pgdi;
			}
			else if (mystrcasestr(line, "PGDO=") == line) {
#ifdef DEBUG
				printf("%s: PGDO=%s\n", __func__, &line[5]);
#endif
				k->pgdo = strtoul(&line[5], NULL, 0);
			}
			else if (mystrcasestr(line, "PGDI=") == line) {
#ifdef DEBUG
				printf("%s: PGDI=%s\n", __func__, &line[5]);
#endif
				k->pgdi = strtoul(&line[5], NULL, 0);
			}
#endif /* RPI || BITBANG */
#ifdef MCP23017
			else if (mystrcasestr(line, "MCP=") == line) {
#ifdef DEBUG
				printf("%s: MCP=%s\n", __func__, &line[4]);
#endif
				k->mcp = strtoul(&line[4], NULL, 0);
			}
#endif /* MCP23017 */
			else if (mystrcasestr(line, "FWSLEEP=") == line) {
#ifdef DEBUG
				printf("%s: FWSLEEP=%s\n", __func__, &line[8]);
#endif
				k->fwsleep = strtoul(&line[8], NULL, 0);
			}
			else if (mystrcasestr(line, "DEBUG=") == line) {
#ifdef DEBUG
				printf("%s: DEBUG=%s\n", __func__, &line[6]);
#endif
				k->debug = strtoul(&line[6], NULL, 0);
			}
		}
		fclose(f1);
	} else { /* We are using the defaults */
		snprintf(k->dotfile, STRLEN, "Using defaults (override in %s)", DOTFILENAME);
	}
}
