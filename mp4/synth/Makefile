export CLOCK_PERIOD_PS = $(shell cat clock_period.txt)

SHELL=/bin/bash -o pipefail

AREA_LIMIT = 75000

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
	@if grep -q -i -w -f synth-error-codes reports/synthesis.log; then \
		echo -e "\033[0;31m Synthesis Failed: \033[0m"; \
		grep -H -i -n -w -f synth-error-codes reports/synthesis.log; exit 1; \
		exit 1; \
	else \
		echo -e "\033[0;32m Synthesis Successful \033[0m"; \
    fi
	@if ! grep -q -i -w 'slack (MET)' reports/timing.rpt; then \
		echo -e "\033[0;31m Timing Not Met \033[0m"; \
		exit 1; \
	else \
		echo -e "\033[0;32m Timing Met \033[0m"; \
    fi
	@if $$([ $$(sed -nr 's/Total cell area: +?([0-9]+?)\.[0-9]+?$$/\1/p' reports/area.rpt) -gt $(AREA_LIMIT) ]); then \
		echo -e "\033[0;31m Area Not Met \033[0m"; \
		exit 1; \
	else \
		echo -e "\033[0;32m Area Met \033[0m"; \
    fi

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
