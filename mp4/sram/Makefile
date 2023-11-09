SHELL=/bin/bash -o pipefail
.SHELLFLAGS += -e

SOURCE  = $(wildcard ./config/*.py)
OBJECTS = $(foreach sause,$(notdir $(basename $(SOURCE))),./output/$(sause).py)

export OPENRAM=/class/ece411/OpenRAM
export CONDA_HOME=$(OPENRAM)/conda
export OPENRAM_HOME=$(OPENRAM)/compiler
export OPENRAM_TECH=$(OPENRAM)/technology
export PYTHONPATH=$(OPENRAM_HOME)

.PHONY: all
all: $(OBJECTS)

output/%.py: config/%.py
	source $(CONDA_HOME)/bin/activate ;\
	python3 $(OPENRAM_HOME)/../sram_compiler.py $^ ;\
	python3 ./area.py ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).gds > ./output/$(basename $(notdir $@))/$(basename $(notdir $@))_area.txt
	cat ./output/$(basename $(notdir $@))/$(basename $(notdir $@))_area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@))_TT_1p0V_25C.lib
	sed -i -E 's/falling_edge/rising_edge/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@))_TT_1p0V_25C.lib
	sed -i -E 's/DELAY = [0-9]/DELAY = 0/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	sed -i -E 's/VERBOSE = [0-9]/VERBOSE = 0/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	sed -i -E 's/#\(T_HOLD\).*//g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	sed -i -E 's/!csb0_reg && web0_reg/!csb0_reg/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	sed -i -E 's/!csb1_reg && web1_reg/!csb1_reg/g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	sed -i -E 's/#\(DELAY\)//g' ./output/$(basename $(notdir $@))/$(basename $(notdir $@)).v
	cd ./output/$(basename $(notdir $@)) ;\
	lc_shell -x 'read_lib $(basename $(notdir $@))_TT_1p0V_25C.lib; write_lib $(basename $(notdir $@))_TT_1p0V_25C_lib; exit' ;\
	rm -f lc*.log lc*.txt
	cp $^ $@

.PHONY: clean
clean:
	rm -rf output config/__pycache__
	mkdir -p output
	touch output/.gitkeep
