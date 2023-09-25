SHELL=/bin/bash -o pipefail

PKG_SRCS := $(PWD)/pkg/rv32i_mux_types.sv $(PWD)/pkg/rv32i_types.sv $(PWD)/pkg/my_types.sv
HDL_SRCS := $(shell find $(PWD)/hdl -name '*.sv')
HVL_SRCS := $(shell find $(PWD)/hvl -name '*.sv' -o -name '*.v')
SRCS := $(PKG_SRCS) $(HDL_SRCS) $(HVL_SRCS)

VCS_FLAGS= -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb 

sim/top_tb: $(SRCS)
	mkdir -p sim
	cd sim && vcs $(SRCS) $(VCS_FLAGS) -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb

sim/cache_dut_tb : $(SRCS)
	mkdir -p sim
	cd sim && vcs $(SRCS) $(VCS_FLAGS) -msg_config=../vcs_warn.config -l compile_dut.log -top cache_dut_tb -o cache_dut_tb

.PHONY: run_top_tb
run_top_tb: sim/top_tb $(PROG)
	bin/generate_memory_file.sh $(PROG)
	cd sim && ./top_tb -l simulation.log

.PHONY: run_cache_dut
run_cache_dut: sim/cache_dut_tb
	cd sim && ./cache_dut_tb -l simulation_dut.log

.PHONY: covrep_dut
covrep_dut: sim/cache_dut_tb.vdb
	cd sim && urg -dir cache_dut_tb.vdb

.PHONY: spike
spike: $(ELF)
	/class/ece411/software/spike_new/bin/spike --isa=rv32i -m0x40000000:0x20000000 --log-commits $(ELF) |& tail -n +6 > sim/golden_spike0.log
	bash -c 'head -n -$$(echo $$(grep -c "$$(tail -n 1 sim/golden_spike0.log)" sim/golden_spike0.log)-1 | bc) sim/golden_spike0.log > sim/golden_spike.log'
	rm sim/golden_spike0.log

.PHONY: interactive_spike
interactive_spike: $(ELF)
	/class/ece411/software/spike_new/bin/spike --isa=rv32i -m0x40000000:0x20000000 --log-commits -d $(ELF)

.PHONY: clean
clean: 
	rm -rf sim verdi
	cd synth && $(MAKE) clean
