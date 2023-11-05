# AG Report MP4CP2 2023-11-04T23:59:59-05:00 
Report generated at 2023-11-05T00:46:31-05:00, using commit ``467d05583e9d07d338e4653ff4dde21030e4176a``

Autograder Run ID: a9aba5b4-5aa4-4e00-b166-51c6e4b14a3b

Autograder Job ID: b91fdb4e-fe74-4b4f-a994-c9fb822ce7e9


## Tests
|Test|Result|
|---|---|
|Compile|✅|
|Synthesis|❌|
|addi|❌|

## Logs
<details><summary>Compile ✅</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/cpu.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v /tmp/dut/sram/output/mp3_data_array/mp3_data_array.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Nov  5 00:48:59 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'
Parsing design file '/tmp/dut/hdl/cache/ff_array.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_datapath.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_control.sv'
Parsing design file '/tmp/dut/hdl/cache/cache.sv'
Parsing design file '/tmp/dut/hdl/cache/arbiter.sv'
Parsing design file '/tmp/dut/hdl/cpu/hazard_ctrl.sv'
Parsing design file '/tmp/dut/hdl/cpu/forwarding.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_ex.sv'
Parsing design file '/tmp/dut/hdl/cpu/datapath.sv'
Parsing design file '/tmp/dut/hdl/cpu/ctrl_word.sv'
Parsing design file '/tmp/dut/hdl/cpu/cpu.sv'
Parsing design file '/tmp/dut/hdl/cpu/pipeline_reg.sv'
Parsing design file '/tmp/dut/hdl/cacheline_adaptor.sv'
Parsing design file '/tmp/dut/hdl/bus_adapter.sv'
Parsing design file '/tmp/dut/hdl/mp4.sv'
Parsing design file '/tmp/dut/hvl/top_tb.sv'
Parsing design file '/tmp/dut/hvl/rvfimon.v'
Parsing design file '/tmp/dut/hvl/monitor.sv'
Parsing design file '/tmp/dut/hvl/mon_itf.sv'
Parsing design file '/tmp/dut/hvl/burst_memory.sv'
Parsing design file '/tmp/dut/hvl/bmem_itf.sv'
Parsing design file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v'
Parsing design file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array.v'
Top Level Modules:
       top_tb
TimeScale is 1 ps / 1 ps
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

70 modules and 0 UDP read.
recompiling package pcmux
recompiling package marmux
recompiling package cmpmux
recompiling package alumux
recompiling package regfilemux
recompiling package fwdmux
recompiling package rv32i_types
recompiling package cache_types
recompiling package pipeline_pkg
recompiling package hazard_ctrl_pkg
recompiling module ff_array
recompiling module cache
recompiling module arbiter
recompiling module pipeline_reg
recompiling module ctrlmem_reg
recompiling module ctrlwb_reg
recompiling module cacheline_adaptor
recompiling module bus_adapter
recompiling module mp4
recompiling module top_tb
recompiling module riscv_formal_monitor_rv32imc_rob
recompiling module riscv_formal_monitor_rv32imc_insn_c_jr
recompiling module riscv_formal_monitor_rv32imc_insn_c_li
recompiling module riscv_formal_monitor_rv32imc_insn_c_lui
recompiling module riscv_formal_monitor_rv32imc_insn_c_lw
recompiling module riscv_formal_monitor_rv32imc_insn_c_lwsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_mv
recompiling module riscv_formal_monitor_rv32imc_insn_c_or
recompiling module riscv_formal_monitor_rv32imc_insn_c_slli
recompiling module riscv_formal_monitor_rv32imc_insn_c_srai
recompiling module riscv_formal_monitor_rv32imc_insn_c_srli
recompiling module riscv_formal_monitor_rv32imc_insn_c_sub
recompiling module riscv_formal_monitor_rv32imc_insn_c_sw
recompiling module riscv_formal_monitor_rv32imc_insn_c_swsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_xor
recompiling module riscv_formal_monitor_rv32imc_insn_divu
recompiling module riscv_formal_monitor_rv32imc_insn_jal
recompiling module riscv_formal_monitor_rv32imc_insn_jalr
recompiling module riscv_formal_monitor_rv32imc_insn_lb
recompiling module riscv_formal_monitor_rv32imc_insn_lbu
recompiling module riscv_formal_monitor_rv32imc_insn_lh
recompiling module riscv_formal_monitor_rv32imc_insn_lhu
recompiling module riscv_formal_monitor_rv32imc_insn_lui
recompiling module riscv_formal_monitor_rv32imc_insn_lw
recompiling module riscv_formal_monitor_rv32imc_insn_mul
recompiling module riscv_formal_monitor_rv32imc_insn_mulh
recompiling module riscv_formal_monitor_rv32imc_insn_mulhsu
recompiling module riscv_formal_monitor_rv32imc_insn_mulhu
recompiling module riscv_formal_monitor_rv32imc_insn_or
recompiling module riscv_formal_monitor_rv32imc_insn_ori
50 of 70 modules done
recompiling module riscv_formal_monitor_rv32imc_insn_remu
recompiling module riscv_formal_monitor_rv32imc_insn_sb
recompiling module riscv_formal_monitor_rv32imc_insn_sh
recompiling module riscv_formal_monitor_rv32imc_insn_sll
recompiling module riscv_formal_monitor_rv32imc_insn_slli
recompiling module riscv_formal_monitor_rv32imc_insn_slt
recompiling module riscv_formal_monitor_rv32imc_insn_slti
recompiling module riscv_formal_monitor_rv32imc_insn_sltiu
recompiling module riscv_formal_monitor_rv32imc_insn_sltu
recompiling module riscv_formal_monitor_rv32imc_insn_sra
recompiling module riscv_formal_monitor_rv32imc_insn_srai
recompiling module riscv_formal_monitor_rv32imc_insn_srl
recompiling module riscv_formal_monitor_rv32imc_insn_srli
recompiling module riscv_formal_monitor_rv32imc_insn_sub
recompiling module riscv_formal_monitor_rv32imc_insn_sw
recompiling module riscv_formal_monitor_rv32imc_insn_xor
recompiling module riscv_formal_monitor_rv32imc_insn_xori
recompiling module mon_itf
recompiling module bmem_itf
recompiling module mp3_data_array
All of 70 modules done
make[1]: Entering directory '/tmp/dut/sim/csrc'
make[1]: Leaving directory '/tmp/dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 12041 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _11885_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.786 seconds to compile + .534 seconds to elab + .351 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
 
 ``` 

 </details> 
<details><summary>Synthesis ❌</summary> 

 ``` 
 rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
mkdir -p reports outputs
dc_shell -f synthesis.tcl |& tee reports/synthesis.log
/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/dc_shell: /software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/snps_platform: /bin/csh: bad interpreter: No such file or directory

                           Design Compiler Graphical 
                                 DC Ultra (TM)
                                  DFTMAX (TM)
                              Power Compiler (TM)
                                 DesignWare (R)
                                 DC Expert (TM)
                               Design Vision (TM)
                               HDL Compiler (TM)
                               VHDL Compiler (TM)
                                  DFT Compiler
                               Design Compiler(R)

               Version R-2020.09-SP4 for linux64 - Mar 02, 2021 

                    Copyright (c) 1988 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.
Initializing...
set hdlin_ff_always_sync_set_reset true
true
set hdlin_ff_always_async_set_reset true
true
set hdlin_infer_multibit default_all
default_all
set hdlin_check_no_latch true
true
set_app_var report_default_significant_digits 6
6
set design_toplevel mp4
mp4
# output port '%s' is connected directly to output port '%s'
suppress_message LINT-31
# In  design  '%s',  output  port  '%s'  is connected directly to '%s'.
suppress_message LINT-52
# '%s' is not connected to any nets
suppress_message LINT-28
# output port '%s' is connected directly to output port '%s'
suppress_message LINT-29
# a pin on submodule '%s' is connected to logic 1 or logic 0
suppress_message LINT-32
# the same net is connected to more than one pin on submodule '%s'
suppress_message LINT-33
# '%s' is not connected to any nets
suppress_message LINT-28
# In design '%s', cell '%s' does not drive any nets.
suppress_message LINT-1
# There are %d potential problems in your design. Please run 'check_design' for more information.
suppress_message LINT-99
# In design '%s', net '%s' driven by pin '%s' has no loads.
suppress_message LINT-2
#The register '' is a constant and will be removed.
suppress_message OPT-1206
#The register '' will be removed.
suppress_message OPT-1207
#Can't read link_library file '%s'
suppress_message UID-3
#Design '%s' contains %d high-fanout nets.
suppress_message TIM-134
#The trip points for the library named %s differ from those in the library named %s.
suppress_message TIM-164
#Design has unannotated black box outputs.
suppress_message PWR-428
#Verilog 'assign' or 'tran' statements are written out.
suppress_message VO-4
#Verilog writer has added %d nets to module %s using %s as prefix.
suppress_message VO-11
#%s DEFAULT branch of CASE statement cannot be reached.
suppress_message ELAB-311
#Netlist for always_comb block is empty.
suppress_message ELAB-982
define_design_lib WORK -path ./work
1
set alib_library_analysis_path [getenv STD_CELL_ALIB]
/grader/freepdk-45nm/alib
set symbol_library [list generic.sdb]
generic.sdb
set synthetic_library [list dw_foundation.sldb]
dw_foundation.sldb
set target_library [getenv STD_CELL_LIB]
/grader/freepdk-45nm/stdcells.db
set sram_library [getenv SRAM_LIB]
/tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /grader/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db}
set design_clock_pin clk
clk
set design_reset_pin rst
rst
analyze -library WORK -format sverilog [getenv PKG_SRCS]
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/grader/freepdk-45nm/stdcells.db'
Loading db file '/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/tmp/dut/synth/../hdl/cache/ff_array.sv /tmp/dut/synth/../hdl/cache/cache_datapath.sv /tmp/dut/synth/../hdl/cache/cache_control.sv /tmp/dut/synth/../hdl/cache/cache.sv /tmp/dut/synth/../hdl/cache/arbiter.sv /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv /tmp/dut/synth/../hdl/cpu/forwarding.sv /tmp/dut/synth/../hdl/cpu/utils_reg.sv /tmp/dut/synth/../hdl/cpu/utils_ex.sv /tmp/dut/synth/../hdl/cpu/datapath.sv /tmp/dut/synth/../hdl/cpu/ctrl_word.sv /tmp/dut/synth/../hdl/cpu/cpu.sv /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv /tmp/dut/synth/../hdl/cacheline_adaptor.sv /tmp/dut/synth/../hdl/bus_adapter.sv /tmp/dut/synth/../hdl/mp4.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/ff_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/cache_datapath.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/cache_control.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/arbiter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/forwarding.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_reg.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_ex.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/datapath.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/ctrl_word.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/cpu.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cacheline_adaptor.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/bus_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/mp4.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_tag_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_data_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC
Error:  /tmp/dut/synth/../hdl/mp4.sv:58: Found expression without known width in context that requires one (ELAB-425)
*** Presto compilation terminated with 1 errors. ***
0
current_design $design_toplevel
Error: Can't find design 'mp4'. (UID-109)
Error: Current design is not defined. (UID-4)
check_design
Error: Current design is not defined. (UID-4)
0
set_wire_load_model -name "5K_hvratio_1_1"
Error: Current design is not defined. (UID-4)
0
set_wire_load_mode enclosed
Error: Current design is not defined. (UID-4)
0
set clk_name $design_clock_pin
clk
set clk_period [expr [getenv CLOCK_PERIOD_PS] / 1000.0]
10.0
create_clock -period $clk_period -name my_clk $clk_name
Error: Current design is not defined. (UID-4)
Error: Can't find object 'clk'. (UID-109)
Error: Value for list 'source_objects' must have 1 elements. (CMD-036)
0
set_fix_hold [get_clocks my_clk]
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '<clock_list>' must have 1 elements. (CMD-036)
0
set_input_delay 0.5 [all_inputs] -clock my_clk
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_pin_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '-clock' must have 1 elements. (CMD-036)
0
set_output_delay 0.5 [all_outputs] -clock my_clk
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_pin_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '-clock' must have 1 elements. (CMD-036)
0
set_load 0.1 [all_outputs]
Error: Current design is not defined. (UID-4)
Error: Value for list 'objects' must have 1 elements. (CMD-036)
0
set_max_fanout 1 [all_inputs]
Error: Current design is not defined. (UID-4)
Error: Value for list 'object_list' must have 1 elements. (CMD-036)
0
set_fanout_load 8 [all_outputs]
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_list' must have 1 elements. (CMD-036)
0
link
Error: Current design is not defined. (UID-4)
0
compile_ultra -gate_clock -retime
Error: Current design is not defined. (UID-4)
0
current_design $design_toplevel
Error: Can't find design 'mp4'. (UID-109)
Error: Current design is not defined. (UID-4)
report_area -hier > reports/area.rpt
report_timing -delay max > reports/timing.rpt
check_design > reports/check.rpt
write_file -format ddc -hierarchy -output outputs/synth.ddc
Error: No files or designs were specified. (UID-22)
0
write_file -format verilog -hierarchy -output [format "outputs/%s.gate.v" $design_toplevel]
Error: No files or designs were specified. (UID-22)
0
exit

Memory usage for this session 86 Mbytes.
Memory usage for this session including child processes 86 Mbytes.
CPU usage for this session 3 seconds ( 0.00 hours ).
Elapsed time for this session 4 seconds ( 0.00 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work

[0;31mSynthesis failed:[0m
Error:  /tmp/dut/synth/../hdl/mp4.sv:58: Found expression without known width in context that requires one (ELAB-425)
Error: Can't find design 'mp4'. (UID-109)
Error: Current design is not defined. (UID-4)
Error: Current design is not defined. (UID-4)
Error: Current design is not defined. (UID-4)
Error: Current design is not defined. (UID-4)
Error: Current design is not defined. (UID-4)
Error: Can't find object 'clk'. (UID-109)
Error: Value for list 'source_objects' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '<clock_list>' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_pin_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '-clock' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_pin_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Can't find clock 'my_clk'. (UID-109)
Error: Value for list '-clock' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Value for list 'objects' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Value for list 'object_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Value for list 'port_list' must have 1 elements. (CMD-036)
Error: Current design is not defined. (UID-4)
Error: Current design is not defined. (UID-4)
Error: Can't find design 'mp4'. (UID-109)
Error: Current design is not defined. (UID-4)
Error: No files or designs were specified. (UID-22)
Error: No files or designs were specified. (UID-22)
 
 ``` 

 </details> 
<details><summary>addi ❌</summary> 

 ``` 
 cd sim && ./top_tb -l simulation.log
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov  5 00:49 2023
-------- RVFI Monitor error 131 in reordered channel 0: top_tb.monitor.monitor.ro0_handle_error_r at time 460000 --------
Error message: mismatch with shadow rs1
rvfi_valid = 1
rvfi_order = 0000000000000003
rvfi_rs1_addr = 14
rvfi_rs2_addr = 00
rvfi_rs1_rdata = 00000200
rvfi_rs2_rdata = 00000000
rvfi_rd_addr = 07
rvfi_rd_wdata = fffffa00
rvfi_pc_rdata = 4000000c
rvfi_pc_wdata = 40000010
rvfi_intr = 0
rvfi_trap = 0
shadow_rs1_valid = 1
shadow_rs1_rdata = 20000000
shadow_rs2_valid = 1
shadow_rs2_rdata = 00000000
Error: "/tmp/dut/hvl/monitor.sv", 105: top_tb.monitor: at time 480000 ps
RVFI Monitor Error
$finish called from file "/tmp/dut/hvl/top_tb.sv", line 73.
IPC: 0.129630
$finish at simulation time               540000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 540000 ps
CPU Time:      0.460 seconds;       Data structure size:   0.2Mb
Sun Nov  5 00:49:08 2023
4c4
< core   0: 3 0x4000000c (0x800a0393) x7  0x1ffff800
---
> core   0: 3 0x4000000c (0x800a0393) x7  0xfffffa00
8,1515d7
< core   0: 3 0x4000001c (0x7ff20b13) x22 0x000005fe
< core   0: 3 0x40000020 (0x00000f13) x30 0x00000000
< core   0: 3 0x40000024 (0x001f0593) x11 0x00000001
< core   0: 3 0x40000028 (0x80000db7) x27 0x80000000
< core   0: 3 0x4000002c (0x010d8f93) x31 0x80000010
----- More lines omitted -----
 
 ``` 

 </details> 
