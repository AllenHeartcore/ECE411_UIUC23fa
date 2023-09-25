OBJECTS = $(notdir $(basename $(wildcard $(PWD)/config/*.py)))

export CONDA_HOME=/class/ece411/OpenRAM/conda
export OPENRAM_HOME=/class/ece411/OpenRAM/compiler
export OPENRAM_TECH=/class/ece411/OpenRAM/technology
export PYTHONPATH=$(OPENRAM_HOME)

.PHONY: all
all: $(OBJECTS)
	rm -rf config/__pycache__

%:
	source /class/ece411/OpenRAM/conda/bin/activate ;\
	python3 $(OPENRAM_HOME)/../sram_compiler.py $(PWD)/config/$@.py
	sed -i -E 's/DELAY = [0-9]/DELAY = 0/g' $(PWD)/output/$(basename $@)/$(basename $@).v
	sed -i -E 's/VERBOSE = [0-9]/VERBOSE = 0/g' $(PWD)/output/$(basename $@)/$(basename $@).v
	sed -i -E 's/#\(T_HOLD\).*//g' $(PWD)/output/$(basename $@)/$(basename $@).v
	sed -i -E 's/!csb0_reg && web0_reg/!csb0_reg/g' $(PWD)/output/$(basename $@)/$(basename $@).v
	sed -i -E 's/#\(DELAY\)//g' $(PWD)/output/$(basename $@)/$(basename $@).v
	source /class/ece411/OpenRAM/conda/bin/activate ;\
	python3 $(PWD)/area.py $(PWD)/output/$(basename $@)/$(basename $@).gds > $(PWD)/output/$(basename $@)/$(basename $@).area.txt
	cd $(PWD)/output/$(basename $@) ;\
	lc_shell -x 'read_lib $(PWD)/output/$(basename $@)/$(basename $@)_TT_1p0V_25C.lib; write_lib $(basename $@)_TT_1p0V_25C_lib; exit' ;\
	rm -f lc*.log lc*.txt

.PHONY: clean
clean:
	rm -rf output config/__pycache__
