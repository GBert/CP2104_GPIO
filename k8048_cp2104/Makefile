#
# Copyright (C) 2005-2014 Darron Broad
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# 3. Neither the name `Darron Broad' nor the names of any contributors
#    may be used to endorse or promote products derived from this
#    software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#

#
# COMMAND LINE TOOL ONLY
#
# DEBIAN:
#  sudo apt-get install mercurial
#  hg clone http://hg.kewl.org/pub/k8048/
#  cd k8048
#  make build
#  sudo make install
#
build:
	cd Src && $(MAKE)

install:
	cd Src && $(MAKE) install

uninstall:
	cd Src && $(MAKE) uninstall

clean:
	rm -f *~
	cd Doc && $(MAKE) clean
	cd Src && $(MAKE) clean
#
# COMMAND LINE TOOL & ASSEMBLER DEMOS
# 
# REQUIRES: gpasm gEDA gEDA-utils
#
# DEBIAN:
#  sudo apt-get install gputils
#  sudo apt-get install geda
#  sudo apt-get install geda-utils
#  sudo apt-get install libreadline-dev
#  sudo apt-get install libncurses-dev
#  make build-all
#  sudo make install-all
#
build-all:
	cd Doc && $(MAKE)
	cd Src && $(MAKE) build-all

install-all:
	cd Src && $(MAKE) install-all

uninstall-all:
	cd Src && $(MAKE) uninstall-all

clean-all:
	rm -f *~
	cd Doc && $(MAKE) clean
	cd Src && $(MAKE) clean-all
