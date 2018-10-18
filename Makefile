COMPONENT=NodeC


INCLUDE=-IdataStructures
INCLUDE+=-IdataStructures/interfaces/ -IdataStructures/modules
INCLUDE+=-Ilib/interfaces -Ilib/modules
CFLAGS += -DTOSH_DATA_LENGTH=28
CFLAGS+=$(INCLUDE)
TINYOS_ROOT_DIR = /home/wcrumpton/tinyOS/tiny/tinyos-main
include $(TINYOS_ROOT_DIR)/Makefile.include

CommandMsg.py: CommandMsg.h
	nescc-mig python -python-classname=CommandMsg CommandMsg.h CommandMsg -o $@

packet.py: packet.h
	nescc-mig python -python-classname=pack packet.h pack -o packet.py
