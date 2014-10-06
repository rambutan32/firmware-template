# Root of the project
BASEDIR := $(shell pwd)

# Libmaple location
LIB_MAPLE_HOME ?= ~/your/custom/path/to/libmaple

# If you are using an "out of tree" port to custom hardware, fill in the below
# paths.
# If you are using hardware that has support in mainline libmaple, comment out
# the below lines (including the exports).
# Either way, don't forget to fill out BOARD below!
BOARD_INCLUDE_DIR := $(BASEDIR)/custom_hardware
WIRISH_BOARD_PATH := $(BASEDIR)/custom_hardware/wirish
export BOARD_INCLUDE_DIR
export WIRISH_BOARD_PATH

# Board configuration
BOARD ?= maple
MEMORY_TARGET ?= flash

# Custom modules listed here.
USER_MODULES := $(BASEDIR)/libfoo

# === You don't have to edit anything below this line ==========================

# Export them to make it available in libmaple Makefile
export BOARD
export MEMORY_TARGET

# Convert fs links and '~' to absolute path
export LIB_MAPLE_HOME := $(shell dirname $(LIB_MAPLE_HOME)/stub)

# Root of the project should be listed as a user module too,
# custom user modules path fix
export USER_MODULES := $(BASEDIR) $(USER_MODULES)

.DEFAULT_GOAL := sketch

# To make it compatible with default project settings of Eclipse CDT.
# If it still reporting "No rule to make target `all'" false error
# while project build, then you may fix it this way:
#     1) go to Project proprties -> C/C++ Build -> Behaviour tab
#     2) change build target name from "all" to "sketch"   

all: sketch

# proxy target
%:
	$(MAKE) -f $(LIB_MAPLE_HOME)/Makefile $@
