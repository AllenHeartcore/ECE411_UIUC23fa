SHELL=/bin/bash -o pipefail

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
	@if grep -q -i -f synth-error-codes reports/synthesis.log; then \
		echo -e "\033[0;31m Fix errors/warnings below \033[0m"; \
		grep -H -i -n -f synth-error-codes reports/synthesis.log; exit 1; \
	else \
		echo -e "\033[0;32m Synthesis Successful \033[0m Check timing and power report under synth/reports/"; \
    fi

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
