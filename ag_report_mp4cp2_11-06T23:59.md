# AG Report MP4CP2 2023-11-06T23:59:59-06:00 
Report generated at 2023-11-07T03:14:03-06:00, using commit ``f82756c26dddd2b5c43524297e3dfc979c25f8cf``

Autograder Run ID: b78bfa32-794f-4a5d-b39a-d9dcb915ea9a

Autograder Job ID: 0f4f283d-09e6-4a6b-b140-8cf44c822e78


## Tests
|Test|Result|
|---|---|
|Compile|✅|
|Synthesis|❌|
|add|❌|
|addi|❌|
|and|❌|
|andi|❌|
|auipc|✅|
|beq|❌|
|bge|❌|
|bgeu|❌|
|blt|❌|
|bltu|❌|
|bne|❌|
|jal|❌|
|jalr|❌|
|lbu-align|❌|
|lb-align|❌|
|lhu-align|❌|
|lh-align|❌|
|lui|✅|
|lw-align|✅|
|misalign1-jalr|❌|
|or|❌|
|ori|❌|
|sb-align|❌|
|sh-align|❌|
|sll|❌|
|slli|❌|
|slt|❌|
|slti|❌|
|sltiu|❌|
|sltu|❌|
|sra|❌|
|srai|❌|
|srl|❌|
|srli|❌|
|sub|❌|
|sw-align|❌|
|xor|❌|
|xori|❌|
|coremark|❌|

## Score
Arbiter, Hazard, Forwarding, Static branch predictor: 0 out of 12

CoreMark: 0 out of 3


## Logs
<details><summary>Compile ✅</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv /tmp/dut/sram/output/mp3_data_array/mp3_data_array.v /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Nov  7 03:16:27 2023

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
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_ex.sv'
Parsing design file '/tmp/dut/hdl/cpu/forwarding.sv'
Parsing design file '/tmp/dut/hdl/cpu/ctrl_word.sv'
Parsing design file '/tmp/dut/hdl/cpu/datapath.sv'
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
Parsing design file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array.v'
Parsing design file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v'
Top Level Modules:
       top_tb
TimeScale is 1 ps / 1 ps
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

68 modules and 0 UDP read.
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
recompiling module ctrl_word
recompiling module pipeline_reg
recompiling module ctrlmem_reg
recompiling module ctrlwb_reg
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
recompiling module riscv_formal_monitor_rv32imc_insn_remu
recompiling module riscv_formal_monitor_rv32imc_insn_sb
50 of 68 modules done
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
All of 68 modules done
make[1]: Entering directory '/tmp/dut/sim/csrc'
make[1]: Leaving directory '/tmp/dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 32655 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _32499_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.602 seconds to compile + .496 seconds to elab + .313 seconds to link
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
# In design '%s', output port '%s' is connected directly to '%s'.
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
# The register '' is a constant and will be removed.
suppress_message OPT-1206
# The register '' will be removed.
suppress_message OPT-1207
# Can't read link_library file '%s'
suppress_message UID-3
# Design '%s' contains %d high-fanout nets.
suppress_message TIM-134
# The trip points for the library named %s differ from those in the library named %s.
suppress_message TIM-164
# Design has unannotated black box outputs.
suppress_message PWR-428
# Skipping clock gating on design %s, since there are no registers.
suppress_message PWR-806
# Ungrouping hierarchy %s before Pass 1.
suppress_message OPT-776
# Verilog 'assign' or 'tran' statements are written out.
suppress_message VO-4
# Verilog writer has added %d nets to module %s using %s as prefix.
suppress_message VO-11
# %s DEFAULT branch of CASE statement cannot be reached.
suppress_message ELAB-311
# Netlist for always_comb block is empty.
suppress_message ELAB-982
# Netlist for always_ff block is empty.
suppress_message ELAB-984
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
/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /grader/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db}
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
/tmp/dut/synth/../hdl/cache/ff_array.sv /tmp/dut/synth/../hdl/cache/cache_datapath.sv /tmp/dut/synth/../hdl/cache/cache_control.sv /tmp/dut/synth/../hdl/cache/cache.sv /tmp/dut/synth/../hdl/cache/arbiter.sv /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv /tmp/dut/synth/../hdl/cpu/utils_reg.sv /tmp/dut/synth/../hdl/cpu/utils_ex.sv /tmp/dut/synth/../hdl/cpu/forwarding.sv /tmp/dut/synth/../hdl/cpu/ctrl_word.sv /tmp/dut/synth/../hdl/cpu/datapath.sv /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv /tmp/dut/synth/../hdl/cacheline_adaptor.sv /tmp/dut/synth/../hdl/bus_adapter.sv /tmp/dut/synth/../hdl/mp4.sv
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
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_reg.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_ex.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/forwarding.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/ctrl_word.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/datapath.sv
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
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC
Warning:  /tmp/dut/synth/../hdl/mp4.sv:139: A symbol named 'register' is already defined differently in the receiving scope.   (ELAB-106)

Statistics for case statements in always block at line 91 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            92            |    auto/auto     |
|            96            |    auto/auto     |
|           101            |    auto/auto     |
===============================================

Statistics for case statements in always block at line 111 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           114            |    auto/auto     |
|           115            |    auto/auto     |
|           117            |    auto/auto     |
|           121            |    auto/auto     |
|           129            |    auto/auto     |
|           131            |    auto/auto     |
|           135            |    auto/auto     |
===============================================

Statistics for case statements in always block at line 240 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           244            |    user/user     |
|           251            |    user/user     |
|           257            |    user/user     |
|           267            |    user/user     |
|           273            |    user/user     |
|           279            |    user/user     |
|           286            |    auto/auto     |
|           293            |    auto/auto     |
|           300            |    auto/auto     |
|           305            |    auto/auto     |
|           312            |    user/user     |
|           319            |    user/user     |
===============================================

Inferred memory devices in process
	in routine mp4 line 50 in file
		'/tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv'.
==========================================================================================
|         Register Name          |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
==========================================================================================
| hazard_ctrl_unit/ex_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/if_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/id_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
==========================================================================================

Inferred memory devices in process
	in routine mp4 line 156 in file
		'/tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv'.
==========================================================================================
|         Register Name          |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
==========================================================================================
| hazard_ctrl_unit/wb_state_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/if_state_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/id_state_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/ex_state_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/mem_state_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
==========================================================================================
Warning:  /tmp/dut/synth/../hdl/mp4.sv:88: Netlist for always_ff block does not contain a flip-flop. (ELAB-976)
Information:  Complex logic will not be considered for set/reset inference. (ELAB-2008)
Presto compilation completed successfully. (mp4)
Elaborated 1 design.
Current design is now 'mp4'.
Information: Building the design 'register' instantiated from design 'mp4' with
	the parameters "rst_value=32'h40000000". (HDL-193)

Inferred memory devices in process
	in routine register_40000000 line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |  31   |  Y  | Y  | N  | N  | Y  | N  | N  |
|      data_reg       | Flip-flop |   1   |  N  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Presto compilation completed successfully. (register_40000000)
Information: Building the design 'regfile'. (HDL-193)

Inferred memory devices in process
	in routine regfile line 41 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop | 1024  |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|    regfile/50    |   32   |   32    |      5       |
|    regfile/51    |   32   |   32    |      5       |
======================================================
Presto compilation completed successfully. (regfile)
Information: Building the design 'ir_translator'. (HDL-193)
Presto compilation completed successfully. (ir_translator)
Information: Building the design 'pipeline_reg'. (HDL-193)
Presto compilation completed successfully. (pipeline_reg)
Information: Building the design 'alu'. (HDL-193)

Statistics for case statements in always block at line 9 in file
	'/tmp/dut/synth/../hdl/cpu/utils_ex.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            10            |    user/user     |
===============================================
Presto compilation completed successfully. (alu)
Information: Building the design 'cmp'. (HDL-193)

Statistics for case statements in always block at line 34 in file
	'/tmp/dut/synth/../hdl/cpu/utils_ex.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            35            |    user/user     |
===============================================
Presto compilation completed successfully. (cmp)
Information: Building the design 'ctrl_word'. (HDL-193)

Statistics for case statements in always block at line 77 in file
	'/tmp/dut/synth/../hdl/cpu/ctrl_word.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            79            |     no/auto      |
|            91            |    auto/auto     |
|           139            |    auto/auto     |
|           176            |     no/auto      |
===============================================
Presto compilation completed successfully. (ctrl_word)
Information: Building the design 'forwarding_unit'. (HDL-193)

Inferred memory devices in process
	in routine forwarding_unit line 65 in file
		'/tmp/dut/synth/../hdl/cpu/forwarding.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|  hazard_state_reg   | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (forwarding_unit)
Information: Building the design 'register' instantiated from design 'mp4' with
	the parameters "width=1". (HDL-193)

Inferred memory devices in process
	in routine register_width1 line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (register_width1)
Information: Building the design 'ctrlex_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlex_reg)
Information: Building the design 'ctrlmem_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlmem_reg)
Information: Building the design 'ctrlwb_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlwb_reg)
Information: Building the design 'bus_adapter'. (HDL-193)
Presto compilation completed successfully. (bus_adapter)
Information: Building the design 'cache'. (HDL-193)
Presto compilation completed successfully. (cache)
Information: Building the design 'arbiter'. (HDL-193)

Statistics for case statements in always block at line 39 in file
	'/tmp/dut/synth/../hdl/cache/arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            43            |     no/auto      |
===============================================

Statistics for case statements in always block at line 55 in file
	'/tmp/dut/synth/../hdl/cache/arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            66            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine arbiter line 32 in file
		'/tmp/dut/synth/../hdl/cache/arbiter.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      state_reg      | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (arbiter)
Information: Building the design 'cacheline_adaptor'. (HDL-193)

Statistics for case statements in always block at line 42 in file
	'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            52            |    user/user     |
===============================================

Inferred memory devices in process
	in routine cacheline_adaptor line 30 in file
		'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|     buffer_reg      | Flip-flop |  256  |  Y  | Y  | N  | N  | N  | N  | N  |
|      state_reg      | Flip-flop |   4   |  Y  | Y  | Y  | N  | N  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cacheline_adaptor)
Information: Building the design 'register'. (HDL-193)

Inferred memory devices in process
	in routine register line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (register)
Information: Building the design 'register' instantiated from design 'pipeline_reg' with
	the parameters "width=4". (HDL-193)

Inferred memory devices in process
	in routine register_width4 line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (register_width4)
Information: Building the design 'pcmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine pcmux_reg line 112 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   2   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (pcmux_reg)
Information: Building the design 'aluop_reg'. (HDL-193)

Inferred memory devices in process
	in routine aluop_reg line 226 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (aluop_reg)
Information: Building the design 'cmpop_reg'. (HDL-193)

Inferred memory devices in process
	in routine cmpop_reg line 245 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cmpop_reg)
Information: Building the design 'alumux1_reg'. (HDL-193)

Inferred memory devices in process
	in routine alumux1_reg line 131 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (alumux1_reg)
Information: Building the design 'alumux2_reg'. (HDL-193)

Inferred memory devices in process
	in routine alumux2_reg line 150 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (alumux2_reg)
Information: Building the design 'cmpmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine cmpmux_reg line 207 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cmpmux_reg)
Information: Building the design 'marmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine marmux_reg line 188 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (marmux_reg)
Information: Building the design 'opcode_reg'. (HDL-193)

Inferred memory devices in process
	in routine opcode_reg line 93 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   7   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (opcode_reg)
Information: Building the design 'register' instantiated from design 'ctrlmem_reg' with
	the parameters "width=3". (HDL-193)

Inferred memory devices in process
	in routine register_width3 line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (register_width3)
Information: Building the design 'regfilemux_reg'. (HDL-193)

Inferred memory devices in process
	in routine regfilemux_reg line 169 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (regfilemux_reg)
Information: Building the design 'register' instantiated from design 'ctrlwb_reg' with
	the parameters "width=5". (HDL-193)

Inferred memory devices in process
	in routine register_width5 line 15 in file
		'/tmp/dut/synth/../hdl/cpu/utils_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (register_width5)
Information: Building the design 'cache_control'. (HDL-193)

Statistics for case statements in always block at line 73 in file
	'/tmp/dut/synth/../hdl/cache/cache_control.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            76            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cache_control line 65 in file
		'/tmp/dut/synth/../hdl/cache/cache_control.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      state_reg      | Flip-flop |   2   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cache_control)
Information: Building the design 'cache_datapath'. (HDL-193)

Statistics for case statements in always block at line 55 in file
	'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            56            |     auto/no      |
===============================================

Statistics for case statements in always block at line 108 in file
	'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           113            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cache_datapath line 108 in file
		'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      PLRU_reg       | Flip-flop |  48   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
========================================================
|  block name/line   | Inputs | Outputs | # sel inputs |
========================================================
| cache_datapath/45  |   4    |   256   |      2       |
| cache_datapath/46  |   4    |   256   |      2       |
| cache_datapath/47  |   4    |   23    |      2       |
| cache_datapath/48  |   4    |    2    |      2       |
| cache_datapath/124 |   16   |    3    |      4       |
========================================================
Presto compilation completed successfully. (cache_datapath)
Information: Building the design 'ff_array'. (HDL-193)

Inferred memory devices in process
	in routine ff_array line 18 in file
		'/tmp/dut/synth/../hdl/cache/ff_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      dout0_reg      | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
| internal_array_reg  | Flip-flop |  16   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|   ff_array/29    |   16   |    1    |      4       |
======================================================
Presto compilation completed successfully. (ff_array)
1
current_design $design_toplevel
Current design is 'mp4'.
{mp4}
check_design
 
****************************************
check_design summary:
Version:     R-2020.09-SP4
Date:        Tue Nov  7 03:16:37 2023
****************************************

                   Name                                            Total
--------------------------------------------------------------------------------
No issues found.
--------------------------------------------------------------------------------

1
set_wire_load_model -name "5K_hvratio_1_1"
1
set_wire_load_mode enclosed
1
set clk_name $design_clock_pin
clk
set clk_period [expr [getenv CLOCK_PERIOD_PS] / 1000.0]
10.0
create_clock -period $clk_period -name my_clk $clk_name
1
set_fix_hold [get_clocks my_clk]
1
set_input_delay 0.5 [all_inputs] -clock my_clk
1
set_output_delay 0.5 [all_outputs] -clock my_clk
1
set_load 0.1 [all_outputs]
1
set_max_fanout 1 [all_inputs]
1
set_fanout_load 8 [all_outputs]
1
link

  Linking design 'mp4'
  Using the following designs and libraries:
  --------------------------------------------------------------------------
  * (33 designs)              /tmp/dut/synth/mp4.db, etc
  NangateOpenCellLibrary (library)
                              /grader/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp3_data_array_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db
  mp3_tag_array_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db

1
compile_ultra -gate_clock -retime
Information: Performing power optimization. (PWR-850)
Alib files are up-to-date.
Information: Evaluating DesignWare library utilization. (UISN-27)

============================================================================
| DesignWare Building Block Library  |         Version         | Available |
============================================================================
| Basic DW Building Blocks           | R-2020.09-DWBB_202009.4 |     *     |
| Licensed DW Building Blocks        | R-2020.09-DWBB_202009.4 |     *     |
============================================================================

Information: Sequential output inversion is enabled.  SVF file must be used for formal verification. (OPT-1208)
Information: Retiming is enabled. SVF file must be used for formal verification. (OPT-1210)


Information: Uniquified 2 instances of design 'ir_translator'. (OPT-1056)
Information: Uniquified 4 instances of design 'pipeline_reg'. (OPT-1056)
Information: Uniquified 18 instances of design 'register_width1'. (OPT-1056)
Information: Uniquified 3 instances of design 'ctrlmem_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'ctrlwb_reg'. (OPT-1056)
Information: Uniquified 2 instances of design 'bus_adapter'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache'. (OPT-1056)
Information: Uniquified 40 instances of design 'register'. (OPT-1056)
Information: Uniquified 8 instances of design 'register_width4'. (OPT-1056)
Information: Uniquified 5 instances of design 'pcmux_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'marmux_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'opcode_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'register_width3'. (OPT-1056)
Information: Uniquified 3 instances of design 'regfilemux_reg'. (OPT-1056)
Information: Uniquified 9 instances of design 'register_width5'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_control'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_datapath'. (OPT-1056)
Information: Uniquified 16 instances of design 'ff_array'. (OPT-1056)
  Simplifying Design 'mp4'
Information: Performing clock-gating with positive edge logic: 'integrated' and negative edge logic: 'or'. (PWR-1047)

Loaded alib file '/grader/freepdk-45nm/alib/alib-52/stdcells.db.alib'
  Building model 'DW01_NAND2'
Information: Ungrouping 137 of 256 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
  Processing 'mp4'
Information: Added key list 'DesignWare' to design 'mp4'. (DDB-72)
 Implement Synthetic for 'mp4'.
  Processing 'regfile'
  Processing 'cache_datapath_1'
Information: Added key list 'DesignWare' to design 'cache_datapath_1'. (DDB-72)
  Processing 'cache_0'
  Processing 'cache_1'
  Processing 'cache_datapath_0'
Information: Added key list 'DesignWare' to design 'cache_datapath_0'. (DDB-72)
  Processing 'SNPS_CLOCK_GATE_HIGH_register_width5_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_regfilemux_reg_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_width3_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_opcode_reg_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_3_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_5_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_28'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_14'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_alumux2_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cmpop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_aluop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_arbiter'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_40000000'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_8_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_regfile_0'
  Mapping integrated clock gating circuitry

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design mp4. (PWR-730)
Information: Performing clock-gating on design cache_datapath_0. (PWR-730)
Information: Performing clock-gating on design cache_1. (PWR-730)
Information: Performing clock-gating on design cache_0. (PWR-730)
Information: Performing clock-gating on design regfile. (PWR-730)
Information: Performing clock-gating on design cache_datapath_1. (PWR-730)
Information: Converting capacitance units for library 'mp3_data_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp3_tag_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Ungrouping hierarchy imem_cache 'cache_1' #insts = 13. (OPT-777)
Information: Ungrouping hierarchy dmem_cache 'cache_0' #insts = 19. (OPT-777)
Information: Ungrouping hierarchy imem_cache/datapath 'cache_datapath_1' #insts = 1473. (OPT-777)
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:15  117775.2      0.00       0.0    7434.1                           1305015.5000      0.00  
    0:01:16  117763.3      0.00       0.0    7434.1                           1304659.2500      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:01:16  117855.8      0.00       0.0    7434.1                           1309699.5000      0.00  
    0:01:17  117855.8      0.00       0.0    7434.1                           1309699.5000      0.00  

  Beginning Global Optimizations
  ------------------------------
  Numerical Synthesis (Phase 1)
  Numerical Synthesis (Phase 2)
  Global Optimization (Phase 1)
  Global Optimization (Phase 2)
  Global Optimization (Phase 3)
  Global Optimization (Phase 4)
  Global Optimization (Phase 5)
  Global Optimization (Phase 6)
  Global Optimization (Phase 7)
  Global Optimization (Phase 8)
  Global Optimization (Phase 9)
  Global Optimization (Phase 10)
  Global Optimization (Phase 11)
  Global Optimization (Phase 12)
  Global Optimization (Phase 13)
  Global Optimization (Phase 14)
  Global Optimization (Phase 15)
  Global Optimization (Phase 16)
  Global Optimization (Phase 17)
  Global Optimization (Phase 18)
  Global Optimization (Phase 19)
  Global Optimization (Phase 20)
  Global Optimization (Phase 21)
  Global Optimization (Phase 22)
  Global Optimization (Phase 23)
  Global Optimization (Phase 24)
  Global Optimization (Phase 25)
  Global Optimization (Phase 26)
  Global Optimization (Phase 27)
  Global Optimization (Phase 28)
  Global Optimization (Phase 29)
  Global Optimization (Phase 30)

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:01:24  102699.4      0.00       0.0    7096.8                           510968.9688      0.00  
    0:01:24  102699.4      0.00       0.0    7096.8                           510968.9688      0.00  
    0:01:24  102699.4      0.00       0.0    7096.8                           510968.9688      0.00  
    0:01:24  102682.7      0.00       0.0    7155.2                           510853.5000      0.00  
    0:01:26  102681.3      0.00       0.0    7155.2                           510824.7500      0.00  
    0:01:27  102680.3      0.00       0.0    7155.2                           510802.0312      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:01:33  102230.5      0.00       0.0    7144.5                           488491.1875      0.00  
    0:01:33  102230.5      0.00       0.0    7144.5                           488491.1875      0.00  
    0:01:33  102230.5      0.00       0.0    7144.5                           488491.1875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:34  102147.5      0.00       0.0    7143.0                           480878.6875      0.00  
  Global Optimization (Phase 31)
  Global Optimization (Phase 32)
  Global Optimization (Phase 33)
    0:01:35  102621.7      0.00       0.0    5645.5 dmem_cache/datapath/data_q[3][77] 493017.0938      0.00  
    0:01:36  103038.3      0.00       0.0    4725.7                           503731.1250      0.00  
    0:01:36  103038.3      0.00       0.0    4725.7                           503731.1250      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:36  103038.3      0.00       0.0    4725.7                           503731.1250      0.00  
  Global Optimization (Phase 34)
  Global Optimization (Phase 35)
  Global Optimization (Phase 36)
  Global Optimization (Phase 37)
  Global Optimization (Phase 38)
  Global Optimization (Phase 39)
  Global Optimization (Phase 40)
  Global Optimization (Phase 41)
  Global Optimization (Phase 42)
  Global Optimization (Phase 43)
  Global Optimization (Phase 44)
  Global Optimization (Phase 45)
  Global Optimization (Phase 46)
  Global Optimization (Phase 47)
    0:01:39  102745.4      0.00       0.0    4342.5                           494903.0312      0.00  
    0:01:39  102745.4      0.00       0.0    4342.5                           494903.0312      0.00  
    0:01:39  102745.4      0.00       0.0    4342.5                           494903.0312      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  
    0:01:40  102686.9      0.00       0.0    4347.2                           491819.7188      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:41  102575.2      0.00       0.0    4347.2                           490163.8750      0.00  
    0:01:43  114879.6      0.00       0.0    4367.5                           957745.5625      0.00  
    0:01:43  114879.6      0.00       0.0    4367.5                           957745.5625      0.00  
    0:01:43  114879.6      0.00       0.0    4367.5                           957745.5625      0.00  
    0:01:47  102468.8      0.00       0.0    4370.3                           487372.6250      0.00  
    0:01:49  102667.2      0.00       0.0    3942.2 dmem_cache/datapath/data_q[1][171] 491636.9375      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:50  103010.1      0.00       0.0    3293.3                           501678.0000      0.00  
    0:01:52  102973.4      0.00       0.0    3296.6                           500106.7500      0.00  
Loading db file '/grader/freepdk-45nm/stdcells.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'


Note: Symbol # after min delay cost means estimated hold TNS across all active scenarios 


  Optimization Complete
  ---------------------
Information: State dependent leakage is now switched from off to on.
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
1
current_design $design_toplevel
Current design is 'mp4'.
{mp4}
report_area -hier > reports/area.rpt
report_timing -delay max > reports/timing.rpt
check_design > reports/check.rpt
write_file -format ddc -hierarchy -output outputs/synth.ddc
Writing ddc file 'outputs/synth.ddc'.
1
write_file -format verilog -hierarchy -output [format "outputs/%s.gate.v" $design_toplevel]
Writing verilog file '/tmp/dut/synth/outputs/mp4.gate.v'.
1
exit

Memory usage for this session 197 Mbytes.
Memory usage for this session including child processes 221 Mbytes.
CPU usage for this session 121 seconds ( 0.03 hours ).
Elapsed time for this session 125 seconds ( 0.03 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work

[0;32mTiming Met [0m
[0;31mArea Not Met [0m
 
 ``` 

 </details> 
<details><summary>addi ❌</summary> 

 ``` 
 cd sim && ./top_tb -l simulation.log
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov  7 03:18 2023
-------- RVFI Monitor error 131 in reordered channel 0: top_tb.monitor.monitor.ro0_handle_error_r at time 360000 --------
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
Error: "/tmp/dut/hvl/monitor.sv", 105: top_tb.monitor: at time 380000 ps
RVFI Monitor Error
$finish called from file "/tmp/dut/hvl/top_tb.sv", line 73.
IPC: 0.159091
$finish at simulation time               440000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 440000 ps
CPU Time:      0.410 seconds;       Data structure size:   0.2Mb
Tue Nov  7 03:18:38 2023
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
