# cocotb setup
MODULE = test
TOPLEVEL = top
VERILOG_SOURCES = top.v filter.v

include $(shell cocotb-config --makefiles)/Makefile.sim

# filters exported by pyfda always have module name set to top
filter.v:
	sed -i 's/top/filter/' $@

.PHONY: filter.v
