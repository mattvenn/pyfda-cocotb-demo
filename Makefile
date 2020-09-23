# cocotb setup
MODULE = test
TOPLEVEL = top
VERILOG_SOURCES = top.v

include $(shell cocotb-config --makefiles)/Makefile.sim
