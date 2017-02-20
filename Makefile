## Copyright (c) 1996, 1999 Johan Bevemyr
## Copyright (c) 2007, 2009 Tony Garnock-Jones
## Copyright (c) 2017  Jean Parpaillon
## 
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
## 
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
## 
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
##
#  File:	 Makefile
#  Author:	 Johan Bevemyr
#                Jean Parpaillon (migrate to erlang.mk)
#  Created:	 Fri Oct 18 09:59:34 1996

PROJECT = serial
PROJECT_VERSION = 1.1

WARNING_OPTIONS =
LANGUAGE_OPTIONS = 
COMPILER_OPTIONS = -g 

CFLAGS += $(WARNING_OPTIONS) $(LANGUAGE_OPTIONS) $(COMPILER_OPTIONS)

C_OUT_DIR = $(CURDIR)/priv/bin
C_SRC_OUTPUT = $(C_OUT_DIR)/$(PROJECT)
C_SRC_TYPE = exe

include erlang.mk

$(PROJECT).d:: $(C_OUT_DIR)

$(C_OUT_DIR):
	mkdir -p $@
