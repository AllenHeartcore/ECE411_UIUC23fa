
#Collect All Source Files
HDL_SRCS := $(shell find $(PWD)/hdl -name '*.sv')
HVL_SRCS := $(shell find $(PWD)/hvl -name '*.sv' -o -name '*.v')
SRCS := $(HDL_SRCS) $(HVL_SRCS)

VCS_FLAGS= -full64 -sverilog +lint=all -timescale=1ns/10ps -debug_acc+all -kdb -fsdb 

SYNTH_TCL := $(CURDIR)/synthesis.tcl

.PHONY: clean
.PHONY: run

sim/simv: $(SRCS)
	mkdir -p sim
	cd sim && vcs $(SRCS) $(VCS_FLAGS) -l compile.log

run: sim/simv
	cd sim && ./simv -l simulation.log

synth : $(SRCS) $(SYNTH_TCL)
	mkdir -p synth
	cd synth && dc_shell -f $(SYNTH_TCL)

clean: 
	rm -rf sim synth
