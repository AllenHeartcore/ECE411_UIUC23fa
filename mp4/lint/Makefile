SHELL=/bin/bash -o pipefail
.SHELLFLAGS += -e

export PKG_SRCS = $(PWD)/../pkg/types.sv
export HDL_SRCS = $(shell find $(PWD)/../hdl -name '*.sv')
export SRAM_LIB = $(shell find $(PWD)/../sram/output/ -name "*.db")

.PHONY: lint
lint: clean
	mkdir -p reports
	sg_shell < lint.tcl
	mv spyglass-1/consolidated_reports/mp4_lint_lint_turbo_rtl/*.rpt reports/
	mv reports/moresimple_turbo.rpt reports/lint.rpt
	rm -rf spyglass-1 WORK *.log
	
.PHONY: clean
clean:
	rm -rf spyglass-1 WORK *.log reports
