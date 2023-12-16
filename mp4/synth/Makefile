export CLOCK_PERIOD_PS = $(shell cat clock_period.txt)

SHELL=/bin/bash -o pipefail
.SHELLFLAGS += -e

export PKG_SRCS = $(PWD)/../pkg/types.sv
export HDL_SRCS = $(shell find $(PWD)/../hdl -name '*.sv')

export FREEPDK45=/class/ece411/freepdk-45nm
export STD_CELL_LIB=$(FREEPDK45)/stdcells.db
export STD_CELL_ALIB=$(FREEPDK45)/alib
export SRAM_LIB=$(shell find $(PWD)/../sram/output/ -name "*.db")

.PHONY: synth
synth: clean
	mkdir -p reports outputs
	dc_shell -f synthesis.tcl |& tee reports/synthesis.log
	rm -f  *.log
	rm -f  default.svf
	rm -rf work
	bash check_synth_error.sh

../sim/dump.fsdb.saif: ../sim/dump.fsdb
	cd ../sim && fsdb2saif dump.fsdb

.PHONY: power
power: ../sim/dump.fsdb.saif
	dc_shell -f power.tcl 2>&1 |& tee reports/power.log

.PHONY: dv
dv:
	design_vision -f dc-gui.tcl

.PHONY: clean
clean:
	rm -f  *.log
	rm -f  default.svf
	rm -rf work
	rm -rf reports
	rm -rf outputs
