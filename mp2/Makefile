SHELL = /bin/bash -o pipefail

#Collect All Source Files
PKG_SRCS := $(PWD)/pkg/rv32i_mux_types.sv $(PWD)/pkg/rv32i_types.sv
HDL_SRCS := $(shell find $(PWD)/hdl -name '*.sv')
HVL_SRCS := $(shell find $(PWD)/hvl -name '*.sv' -o -name '*.v')
SRCS := $(PKG_SRCS) $(HDL_SRCS) $(HVL_SRCS)

SYNTH_TCL := $(CURDIR)/synthesis.tcl

VCS_FLAGS= -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/10ps -debug_acc+all -kdb -fsdb

sim/simv: $(SRCS)
	mkdir -p sim
	cd sim && vcs $(SRCS) $(VCS_FLAGS) -msg_config=../warn.config -l compile.log

.PHONY: run
run: sim/simv $(PROG)
	bin/generate_memory_file.sh $(PROG)
	cd sim && ./simv -l simulation.log

.PHONY: covrep
covrep: sim/simv.vdb
	cd sim && urg -dir simv.vdb

.PHONY: synth
synth: $(SRCS) $(SYNTH_TCL)
	mkdir -p synth/reports
	cd synth && dc_shell -f $(SYNTH_TCL) |& tee synthesis.log
	@if grep -q -i -f synth-error-codes synth/synthesis.log; then \
		echo -e "\033[0;31m Fix errors/warnings below \033[0m"; \
		grep -H -i -n -f synth-error-codes synth/synthesis.log; exit 1; \
	else \
		echo -e "\033[0;32m Synthesis Successful \033[0m Check timing and power report under synth/reports/"; \
    fi

.PHONY: clean
clean:
	rm -rf sim synth verdi

.PHONY: spike
spike: $(ELF)
	/class/ece411/software/spike_new/bin/spike --isa=rv32i -m0x40000000:0x80000000 --log-commits $(ELF) |& tail -n +6 > sim/golden_spike0.log
	bash -c 'head -n -$$(echo $$(grep -c "$$(tail -n 1 sim/golden_spike0.log)" sim/golden_spike0.log)-1 | bc) sim/golden_spike0.log > sim/golden_spike.log'
	rm sim/golden_spike0.log

.PHONY: interactive_spike
interactive_spike: $(ELF)
	/class/ece411/software/spike_new/bin/spike --isa=rv32i -m0x40000000:0x80000000 --log-commits -d $(ELF)
