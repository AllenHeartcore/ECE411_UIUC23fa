# AG Report MP4CP4 2023-12-02T11:59:59-06:00 
Report generated at 2023-12-02T12:30:16-06:00, using commit ``e2b0328eb6c4a25a650b79dbdc96019a7c72718e``

Autograder Run ID: 8f461bab-5e8e-48ae-b494-1bf7aaffb46e

Autograder Job ID: c86c9267-3ccf-4145-88c4-d166010b45a8


## Tests
|Test|Result|
|---|---|
|Compile|✅|
|Synth|⚠️|
|coremark_rv32i|✅|

## Metrics
|Metric|Value|Unit|
|---|---|---|
|IPC|0.2615||
|f<sub>Max</sub>|100.00|MHz|
|Power|67.9172|mW|
|Delay|27935930000|ps|
|PD<sup>2</sup>|53003.68||
|PD<sup>3</sup>|1480707.15||

## Logs
<details><summary>Compile ✅</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/prefetcher.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/branch_predict/top_predictor.sv /tmp/dut/hdl/branch_predict/local_branch_predict.sv /tmp/dut/hdl/branch_predict/global_branch_predict.sv /tmp/dut/hdl/branch_predict/btb_4way.sv /tmp/dut/hdl/branch_predict/branch_target_buffer.sv /tmp/dut/hdl/performance_counter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv /tmp/dut/sram/output/mp3_data_array/mp3_data_array.v /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sat Dec  2 12:31:51 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'
Parsing design file '/tmp/dut/hdl/cache/prefetcher.sv'
Parsing design file '/tmp/dut/hdl/cache/ff_array.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_datapath.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_control.sv'
Parsing design file '/tmp/dut/hdl/cache/cache.sv'
Parsing design file '/tmp/dut/hdl/cache/arbiter.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/top_predictor.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/local_branch_predict.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/global_branch_predict.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/btb_4way.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/branch_target_buffer.sv'
Parsing design file '/tmp/dut/hdl/performance_counter.sv'
Parsing design file '/tmp/dut/hdl/mp4.sv'
Parsing design file '/tmp/dut/hdl/cacheline_adaptor.sv'
Parsing design file '/tmp/dut/hdl/bus_adapter.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_ex.sv'
Parsing design file '/tmp/dut/hdl/cpu/pipeline_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/hazard_ctrl.sv'
Parsing design file '/tmp/dut/hdl/cpu/forwarding.sv'
Parsing design file '/tmp/dut/hdl/cpu/datapath.sv'
Parsing design file '/tmp/dut/hdl/cpu/ctrl_word.sv'
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

75 modules and 0 UDP read.
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
recompiling module no_prefetch_prefetcher
recompiling module ff_array
recompiling module cache_control
recompiling module cache
recompiling module branch_predictor
recompiling module mp4
recompiling module cacheline_adaptor
recompiling module bus_adapter
recompiling module ir_translator
recompiling module pipeline_reg
recompiling module ctrlmem_reg
recompiling module ctrlwb_reg
recompiling module forwarding_unit
recompiling module ctrl_word
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
50 of 75 modules done
recompiling module riscv_formal_monitor_rv32imc_insn_mulh
recompiling module riscv_formal_monitor_rv32imc_insn_mulhsu
recompiling module riscv_formal_monitor_rv32imc_insn_mulhu
recompiling module riscv_formal_monitor_rv32imc_insn_or
recompiling module riscv_formal_monitor_rv32imc_insn_ori
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
All of 75 modules done
make[1]: Entering directory '/tmp/dut/sim/csrc'
make[1]: Leaving directory '/tmp/dut/sim/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  3580 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _3424_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.420 seconds to compile + .492 seconds to elab + .342 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
 
 ``` 

 </details> 
<details><summary>Synthesis ⚠️</summary> 

 ``` 
 rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
mkdir -p reports outputs
dc_shell -f synthesis.tcl |& tee reports/synthesis.log
/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/dc_shell: /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/snps_platform: /bin/csh: bad interpreter: No such file or directory

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
/srv/ece411ag/freepdk-45nm/alib
set symbol_library [list generic.sdb]
generic.sdb
set synthetic_library [list dw_foundation.sldb]
dw_foundation.sldb
set target_library [getenv STD_CELL_LIB]
/srv/ece411ag/freepdk-45nm/stdcells.db
set sram_library [getenv SRAM_LIB]
/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db}
set design_clock_pin clk
clk
set design_reset_pin rst
rst
analyze -library WORK -format sverilog [getenv PKG_SRCS]
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/tmp/dut/synth/../hdl/cache/prefetcher.sv /tmp/dut/synth/../hdl/cache/ff_array.sv /tmp/dut/synth/../hdl/cache/cache_datapath.sv /tmp/dut/synth/../hdl/cache/cache_control.sv /tmp/dut/synth/../hdl/cache/cache.sv /tmp/dut/synth/../hdl/cache/arbiter.sv /tmp/dut/synth/../hdl/branch_predict/top_predictor.sv /tmp/dut/synth/../hdl/branch_predict/local_branch_predict.sv /tmp/dut/synth/../hdl/branch_predict/global_branch_predict.sv /tmp/dut/synth/../hdl/branch_predict/btb_4way.sv /tmp/dut/synth/../hdl/branch_predict/branch_target_buffer.sv /tmp/dut/synth/../hdl/performance_counter.sv /tmp/dut/synth/../hdl/mp4.sv /tmp/dut/synth/../hdl/cacheline_adaptor.sv /tmp/dut/synth/../hdl/bus_adapter.sv /tmp/dut/synth/../hdl/cpu/utils_reg.sv /tmp/dut/synth/../hdl/cpu/utils_ex.sv /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv /tmp/dut/synth/../hdl/cpu/forwarding.sv /tmp/dut/synth/../hdl/cpu/datapath.sv /tmp/dut/synth/../hdl/cpu/ctrl_word.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cache/prefetcher.sv
Presto compilation completed successfully.
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
Compiling source file /tmp/dut/synth/../hdl/branch_predict/top_predictor.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/branch_predict/local_branch_predict.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/branch_predict/global_branch_predict.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/branch_predict/btb_4way.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/branch_predict/branch_target_buffer.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/performance_counter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/mp4.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cacheline_adaptor.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/bus_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_reg.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/utils_ex.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/forwarding.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/datapath.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../hdl/cpu/ctrl_word.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC
Warning:  /tmp/dut/synth/../hdl/mp4.sv:127: A symbol named 'register' is already defined differently in the receiving scope.   (ELAB-106)

Statistics for case statements in always block at line 136 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           137            |    auto/auto     |
|           141            |    auto/auto     |
|           146            |    auto/auto     |
===============================================

Statistics for case statements in always block at line 156 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           159            |    auto/auto     |
|           160            |    auto/auto     |
|           162            |    auto/auto     |
|           166            |    auto/auto     |
|           174            |    auto/auto     |
|           176            |    auto/auto     |
|           180            |    auto/auto     |
===============================================

Statistics for case statements in always block at line 314 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           315            |    user/user     |
===============================================

Statistics for case statements in always block at line 321 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           322            |    user/user     |
===============================================

Statistics for case statements in always block at line 333 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           335            |    user/user     |
===============================================

Statistics for case statements in always block at line 343 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           344            |    user/user     |
===============================================

Statistics for case statements in always block at line 355 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           356            |    user/user     |
===============================================

Statistics for case statements in always block at line 365 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           367            |    user/user     |
|           374            |    auto/auto     |
|           382            |    auto/auto     |
|           390            |    auto/auto     |
|           396            |    auto/auto     |
===============================================

Statistics for case statements in always block at line 406 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           407            |    user/user     |
===============================================

Statistics for case statements in always block at line 415 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           416            |    user/user     |
===============================================

Statistics for case statements in always block at line 426 in file
	'/tmp/dut/synth/../hdl/cpu/datapath.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           428            |    user/user     |
===============================================

Inferred memory devices in process
	in routine mp4 line 52 in file
		'/tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv'.
========================================================================================
|        Register Name         |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
========================================================================================
| hazard_ctrl_unit/if_mask_reg | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
========================================================================================

Inferred memory devices in process
	in routine mp4 line 67 in file
		'/tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv'.
==========================================================================================
|         Register Name          |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
==========================================================================================
| hazard_ctrl_unit/ex_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/if_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| hazard_ctrl_unit/id_enable_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
==========================================================================================

Inferred memory devices in process
	in routine mp4 line 175 in file
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
Warning:  /tmp/dut/synth/../hdl/mp4.sv:92: Netlist for always_ff block does not contain a flip-flop. (ELAB-976)
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
Information: Building the design 'pcmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine pcmux_reg line 111 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   2   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (pcmux_reg)
Information: Building the design 'pipeline_reg'. (HDL-193)
Presto compilation completed successfully. (pipeline_reg)
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
|            79            |    auto/auto     |
|            92            |    auto/auto     |
|           140            |    auto/auto     |
|           177            |     no/auto      |
===============================================
Presto compilation completed successfully. (ctrl_word)
Information: Building the design 'forwarding_unit'. (HDL-193)
Presto compilation completed successfully. (forwarding_unit)
Information: Building the design 'ctrlex_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlex_reg)
Information: Building the design 'ctrlmem_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlmem_reg)
Information: Building the design 'ctrlwb_reg'. (HDL-193)
Presto compilation completed successfully. (ctrlwb_reg)
Information: Building the design 'bus_adapter' instantiated from design 'mp4' with
	the parameters "s_word=256,s_mask=32". (HDL-193)
Presto compilation completed successfully. (bus_adapter_s_word256_s_mask32)
Information: Building the design 'no_prefetch_prefetcher' instantiated from design 'mp4' with
	the parameters "s_word=256". (HDL-193)
Presto compilation completed successfully. (no_prefetch_prefetcher_s_word256)
Information: Building the design 'cache' instantiated from design 'mp4' with
	the parameters "s_word=256,s_mask=32,s_index=3,s_wayidx=1,use_register=1". (HDL-193)
Presto compilation completed successfully. (cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1)
Information: Building the design 'cache' instantiated from design 'mp4' with
	the parameters "s_word=256,s_mask=32,s_index=4,s_wayidx=4". (HDL-193)
Presto compilation completed successfully. (cache_s_word256_s_mask32_s_index4_s_wayidx4)
Information: Building the design 'arbiter' instantiated from design 'mp4' with
	the parameters "s_word=256". (HDL-193)

Statistics for case statements in always block at line 41 in file
	'/tmp/dut/synth/../hdl/cache/arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            45            |     no/auto      |
===============================================

Statistics for case statements in always block at line 59 in file
	'/tmp/dut/synth/../hdl/cache/arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            70            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine arbiter_s_word256 line 34 in file
		'/tmp/dut/synth/../hdl/cache/arbiter.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      state_reg      | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (arbiter_s_word256)
Information: Building the design 'cacheline_adaptor' instantiated from design 'mp4' with
	the parameters "s_word=256". (HDL-193)

Statistics for case statements in always block at line 49 in file
	'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            59            |    user/user     |
===============================================

Inferred memory devices in process
	in routine cacheline_adaptor_s_word256 line 34 in file
		'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|     counter_reg     | Flip-flop |  32   |  Y  | Y  | N  | N  | N  | N  | N  |
|      state_reg      | Flip-flop |   2   |  Y  | Y  | Y  | N  | N  | N  | N  |
|     buffer_reg      | Flip-flop |  256  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cacheline_adaptor_s_word256)
Information: Building the design 'branch_predictor'. (HDL-193)
Presto compilation completed successfully. (branch_predictor)
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
Information: Building the design 'aluop_reg'. (HDL-193)

Inferred memory devices in process
	in routine aluop_reg line 225 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (aluop_reg)
Information: Building the design 'cmpop_reg'. (HDL-193)

Inferred memory devices in process
	in routine cmpop_reg line 244 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cmpop_reg)
Information: Building the design 'alumux1_reg'. (HDL-193)

Inferred memory devices in process
	in routine alumux1_reg line 130 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (alumux1_reg)
Information: Building the design 'alumux2_reg'. (HDL-193)

Inferred memory devices in process
	in routine alumux2_reg line 149 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (alumux2_reg)
Information: Building the design 'cmpmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine cmpmux_reg line 206 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cmpmux_reg)
Information: Building the design 'marmux_reg'. (HDL-193)

Inferred memory devices in process
	in routine marmux_reg line 187 in file
		'/tmp/dut/synth/../hdl/cpu/pipeline_reg.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (marmux_reg)
Information: Building the design 'opcode_reg'. (HDL-193)

Inferred memory devices in process
	in routine opcode_reg line 92 in file
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
	in routine regfilemux_reg line 168 in file
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

Statistics for case statements in always block at line 81 in file
	'/tmp/dut/synth/../hdl/cache/cache_control.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            84            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cache_control line 73 in file
		'/tmp/dut/synth/../hdl/cache/cache_control.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      state_reg      | Flip-flop |   2   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cache_control)
Information: Building the design 'cache_datapath' instantiated from design 'cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1' with
	the parameters "s_word=256,s_index=3,s_wayidx=1,use_register=1". (HDL-193)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:200: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)

Inferred memory devices in process
	in routine cache_datapath_s_word256_s_index3_s_wayidx1_use_register1 line 169 in file
		'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      PLRU_reg       | Flip-flop |   8   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
===================================================================================================
|                       block name/line                         | Inputs | Outputs | # sel inputs |
===================================================================================================
| cache_datapath_s_word256_s_index3_s_wayidx1_use_register1/198 |   8    |    1    |      3       |
===================================================================================================
Presto compilation completed successfully. (cache_datapath_s_word256_s_index3_s_wayidx1_use_register1)
Information: Building the design 'CacheCounter'. (HDL-193)

Inferred memory devices in process
	in routine CacheCounter line 54 in file
		'/tmp/dut/synth/../hdl/performance_counter.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| countTimer_reg_reg  | Flip-flop |  32   |  Y  | Y  | Y  | N  | N  | N  | N  |
|      state_reg      | Flip-flop |   1   |  N  | N  | Y  | N  | Y  | Y  | N  |
|  countMiss_reg_reg  | Flip-flop |  32   |  Y  | Y  | Y  | N  | N  | N  | N  |
| countAccess_reg_reg | Flip-flop |  32   |  Y  | Y  | Y  | N  | N  | N  | N  |
===============================================================================
Presto compilation completed successfully. (CacheCounter)
Information: Building the design 'cache_datapath' instantiated from design 'cache_s_word256_s_mask32_s_index4_s_wayidx4' with
	the parameters "s_word=256,s_index=4,s_wayidx=4,use_register=0". (HDL-193)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:200: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)

Inferred memory devices in process
	in routine cache_datapath_s_word256_s_index4_s_wayidx4_use_register0 line 169 in file
		'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      PLRU_reg       | Flip-flop |  256  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
===================================================================================================
|                       block name/line                         | Inputs | Outputs | # sel inputs |
===================================================================================================
| cache_datapath_s_word256_s_index4_s_wayidx4_use_register0/50  |   16   |   256   |      4       |
| cache_datapath_s_word256_s_index4_s_wayidx4_use_register0/51  |   16   |   256   |      4       |
| cache_datapath_s_word256_s_index4_s_wayidx4_use_register0/52  |   16   |   23    |      4       |
| cache_datapath_s_word256_s_index4_s_wayidx4_use_register0/53  |   16   |    2    |      4       |
| cache_datapath_s_word256_s_index4_s_wayidx4_use_register0/198 |   16   |   15    |      4       |
===================================================================================================
Presto compilation completed successfully. (cache_datapath_s_word256_s_index4_s_wayidx4_use_register0)
Information: Building the design 'btb'. (HDL-193)

Inferred memory devices in process
	in routine btb line 26 in file
		'/tmp/dut/synth/../hdl/branch_predict/branch_target_buffer.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   btb_entries_reg   | Flip-flop | 2048  |  Y  | Y  | N  | N  | N  | N  | N  |
|   btb_entries_reg   | Flip-flop |  32   |  Y  | Y  | Y  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|      btb/45      |   32   |    1    |      5       |
|      btb/45      |   32   |   64    |      5       |
======================================================
Presto compilation completed successfully. (btb)
Information: Building the design 'global_branch_predictor'. (HDL-193)

Inferred memory devices in process
	in routine global_branch_predictor line 112 in file
		'/tmp/dut/synth/../hdl/branch_predict/global_branch_predict.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       PHT_reg       | Flip-flop | 1024  |  Y  | Y  | Y  | N  | N  | N  | N  |
|       PHT_reg       | Flip-flop | 1024  |  Y  | Y  | N  | Y  | N  | N  | N  |
|       BHR_reg       | Flip-flop |  10   |  Y  | Y  | Y  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
=================================================================
|      block name/line        | Inputs | Outputs | # sel inputs |
=================================================================
| global_branch_predictor/125 |  1024  |    2    |      10      |
=================================================================
Presto compilation completed successfully. (global_branch_predictor)
Information: Building the design 'masked_ff_array' instantiated from design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1' with
	the parameters "s_index=3,width=256". (HDL-193)

Inferred memory devices in process
	in routine masked_ff_array_s_index3_width256 line 58 in file
		'/tmp/dut/synth/../hdl/cache/ff_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| internal_array_reg  | Flip-flop | 2048  |  Y  | Y  | N  | N  | Y  | N  | N  |
|      dout0_reg      | Flip-flop |  256  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
==========================================================================
|           block name/line            | Inputs | Outputs | # sel inputs |
==========================================================================
| masked_ff_array_s_index3_width256/73 |   8    |   256   |      3       |
==========================================================================
Presto compilation completed successfully. (masked_ff_array_s_index3_width256)
Information: Building the design 'ff_array' instantiated from design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1' with
	the parameters "s_index=3,width=24". (HDL-193)

Inferred memory devices in process
	in routine ff_array_s_index3_width24 line 18 in file
		'/tmp/dut/synth/../hdl/cache/ff_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      dout0_reg      | Flip-flop |  24   |  Y  | Y  | N  | N  | N  | N  | N  |
| internal_array_reg  | Flip-flop |  192  |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
==================================================================
|       block name/line        | Inputs | Outputs | # sel inputs |
==================================================================
| ff_array_s_index3_width24/29 |   8    |   24    |      3       |
==================================================================
Presto compilation completed successfully. (ff_array_s_index3_width24)
Information: Building the design 'ff_array' instantiated from design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1' with
	the parameters "s_index=3". (HDL-193)

Inferred memory devices in process
	in routine ff_array_s_index3 line 18 in file
		'/tmp/dut/synth/../hdl/cache/ff_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      dout0_reg      | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
| internal_array_reg  | Flip-flop |   8   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
==========================================================
|   block name/line    | Inputs | Outputs | # sel inputs |
==========================================================
| ff_array_s_index3/29 |   8    |    1    |      3       |
==========================================================
Presto compilation completed successfully. (ff_array_s_index3)
Information: Building the design 'ff_array' instantiated from design 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0' with
	the parameters "s_index=4". (HDL-193)

Inferred memory devices in process
	in routine ff_array_s_index4 line 18 in file
		'/tmp/dut/synth/../hdl/cache/ff_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      dout0_reg      | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
| internal_array_reg  | Flip-flop |  16   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
==========================================================
|   block name/line    | Inputs | Outputs | # sel inputs |
==========================================================
| ff_array_s_index4/29 |   16   |    1    |      4       |
==========================================================
Presto compilation completed successfully. (ff_array_s_index4)
1
current_design $design_toplevel
Current design is 'mp4'.
{mp4}
check_design
 
****************************************
check_design summary:
Version:     R-2020.09-SP4
Date:        Sat Dec  2 12:32:05 2023
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
  * (43 designs)              /tmp/dut/synth/mp4.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
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
Information: Uniquified 19 instances of design 'register_width1'. (OPT-1056)
Information: Uniquified 2 instances of design 'pcmux_reg'. (OPT-1056)
Information: Uniquified 4 instances of design 'pipeline_reg'. (OPT-1056)
Information: Uniquified 42 instances of design 'register'. (OPT-1056)
Information: Uniquified 3 instances of design 'ctrlmem_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'ctrlwb_reg'. (OPT-1056)
Information: Uniquified 2 instances of design 'bus_adapter_s_word256_s_mask32'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_s_word256_s_mask32_s_index4_s_wayidx4'. (OPT-1056)
Information: Uniquified 8 instances of design 'register_width4'. (OPT-1056)
Information: Uniquified 3 instances of design 'marmux_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'opcode_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'register_width3'. (OPT-1056)
Information: Uniquified 3 instances of design 'regfilemux_reg'. (OPT-1056)
Information: Uniquified 9 instances of design 'register_width5'. (OPT-1056)
Information: Uniquified 4 instances of design 'cache_control'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1'. (OPT-1056)
Information: Uniquified 4 instances of design 'CacheCounter'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0'. (OPT-1056)
Information: Uniquified 4 instances of design 'masked_ff_array_s_index3_width256'. (OPT-1056)
Information: Uniquified 4 instances of design 'ff_array_s_index3_width24'. (OPT-1056)
Information: Uniquified 8 instances of design 'ff_array_s_index3'. (OPT-1056)
Information: Uniquified 64 instances of design 'ff_array_s_index4'. (OPT-1056)
  Simplifying Design 'mp4'
Information: Performing clock-gating with positive edge logic: 'integrated' and negative edge logic: 'or'. (PWR-1047)

Loaded alib file '/srv/ece411ag/freepdk-45nm/alib/alib-52/stdcells.db.alib'
  Building model 'DW01_NAND2'
Information: Ungrouping 203 of 1465 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
  Processing 'global_branch_predictor'
  Processing 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0'. (DDB-72)
 Implement Synthetic for 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0'.
  Processing 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1'. (DDB-72)
 Implement Synthetic for 'cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1'.
  Processing 'masked_ff_array_s_index3_width256_0'
  Processing 'mp4'
Information: Added key list 'DesignWare' to design 'mp4'. (DDB-72)
 Implement Synthetic for 'mp4'.
  Processing 'btb'
Information: Added key list 'DesignWare' to design 'btb'. (DDB-72)
  Processing 'regfile'
  Processing 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0'. (DDB-72)
  Processing 'arbiter_s_word256'
  Processing 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1'. (DDB-72)
  Processing 'cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_0'
  Processing 'cache_s_word256_s_mask32_s_index4_s_wayidx4_0'
  Processing 'cache_s_word256_s_mask32_s_index4_s_wayidx4_1'
  Processing 'cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_1'
  Processing 'branch_predictor'
 Implement Synthetic for 'branch_predictor'.
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
  Processing 'SNPS_CLOCK_GATE_HIGH_register_width4_1'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_14'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_alumux2_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cmpop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_aluop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word256_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_40000000'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_global_branch_predictor'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_btb_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_32_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_4_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_regfile_0'
  Mapping integrated clock gating circuitry

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design mp4. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_1. (PWR-730)
Information: Performing clock-gating on design regfile. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1. (PWR-730)
Information: Performing clock-gating on design btb. (PWR-730)
Information: Performing clock-gating on design global_branch_predictor. (PWR-730)
Information: Performing clock-gating on design masked_ff_array_s_index3_width256_3. (PWR-730)
Information: Performing clock-gating on design masked_ff_array_s_index3_width256_0. (PWR-730)
Information: Performing clock-gating on design masked_ff_array_s_index3_width256_1. (PWR-730)
Information: Performing clock-gating on design masked_ff_array_s_index3_width256_2. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index4_s_wayidx4_1. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_0. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index4_s_wayidx4_0. (PWR-730)
Information: Performing clock-gating on design arbiter_s_word256. (PWR-730)
Information: Converting capacitance units for library 'mp3_data_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp3_tag_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Complementing port 'actual_branch_taken' in design 'global_branch_predictor'.
	 The new name of the port is 'actual_branch_taken_BAR'. (OPT-319)
Information: Complementing port 'branch_taken' in design 'branch_predictor'.
	 The new name of the port is 'branch_taken_BAR'. (OPT-319)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:44  466615.1   7882.49 38845156.0 129544072.2                           2913792.2500      0.00  
    0:02:44  466615.1   7882.49 38845156.0 129544072.2                           2913792.2500      0.00  
    0:02:44  466617.5   7882.49 38845156.0 129544064.2                           2913878.5000      0.00  
Information: Complementing port 'S3' in design 'global_branch_predictor_MUX_OP_1024_10_2'.
	 The new name of the port is 'S3_BAR'. (OPT-319)
Information: Complementing port 'S3_BAR' in design 'global_branch_predictor_MUX_OP_1024_10_2'.
	 The new name of the port is 'S3'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Added key list 'DesignWare' to design 'branch_predictor'. (DDB-72)
Information: Updating design information... (UID-85)
Information: Ungrouping hierarchy branch_predictor/global_branch_predictor/C43741 'global_branch_predictor_MUX_OP_1024_10_2' #insts = 1486. (OPT-777)
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:04:11  544012.1      0.00       0.0   29836.1                           7005563.0000      0.00  
    0:04:29  543788.9      0.00       0.0   30424.8                           7000073.0000      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:04:34  543959.4      0.00       0.0   30424.8                           7009212.0000      0.00  
    0:04:49  543959.4      0.00       0.0   30424.8                           7009212.0000      0.00  

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
  Global Optimization (Phase 31)
  Global Optimization (Phase 32)
  Global Optimization (Phase 33)
  Global Optimization (Phase 34)

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:05:29  467599.3      0.00       0.0   28612.5                           2958125.5000      0.00  
    0:05:29  467599.3      0.00       0.0   28612.5                           2958125.5000      0.00  
    0:05:29  467599.3      0.00       0.0   28612.5                           2958125.5000      0.00  
    0:05:30  467580.4      0.00       0.0   28613.1                           2958566.0000      0.00  
    0:05:42  467578.6      0.00       0.0   28613.1                           2958517.2500      0.00  
    0:05:55  467578.6      0.00       0.0   28613.1                           2958517.2500      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:06:22  466994.2      0.00       0.0   28425.1                           2931348.0000      0.00  
    0:06:34  466621.5      0.00       0.0   28388.6                           2918248.5000      0.00  
    0:06:35  466605.5      0.00       0.0   28388.6                           2917819.7500      0.00  
    0:06:35  466605.5      0.00       0.0   28388.6                           2917819.7500      0.00  
    0:06:35  466605.5      0.00       0.0   28388.6                           2917819.7500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:06:46  466361.6      0.00       0.0   28226.8                           2887688.2500      0.00  
  Global Optimization (Phase 35)
  Global Optimization (Phase 36)
  Global Optimization (Phase 37)
    0:06:48  466884.3      0.00       0.0   26327.6 i2mem_cache/datapath/tag_q[8][12] 2904609.0000      0.00  
    0:06:50  467260.7      0.00       0.0   25164.9 i2mem_cache/datapath/tag_q[5][14] 2914877.5000      0.00  
    0:06:50  467323.2      0.00       0.0   24777.7                           2916264.7500      0.00  
    0:06:50  467323.2      0.00       0.0   24777.7                           2916264.7500      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:06:50  467323.2      0.00       0.0   24777.7                           2916264.7500      0.00  
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
  Global Optimization (Phase 48)
  Global Optimization (Phase 49)
  Global Optimization (Phase 50)
  Global Optimization (Phase 51)
Information: Complementing port 'pmem_resp' in design 'arbiter_s_word256'.
	 The new name of the port is 'pmem_resp_BAR'. (OPT-319)
    0:07:07  467369.5      0.00       0.0   24146.6                           2924832.0000      0.00  
    0:07:09  467369.5      0.00       0.0   24146.6                           2924832.0000      0.00  
    0:07:09  467369.5      0.00       0.0   24146.6                           2924832.0000      0.00  
    0:07:09  467369.5      0.00       0.0   24146.6                           2924832.0000      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  
    0:07:13  466905.0      0.00       0.0   24161.0                           2899460.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:07:19  464794.3      0.00       0.0   24161.0                           2868176.5000      0.00  
    0:07:23  464554.7      0.00       0.0   24162.9                           2867841.0000      0.00  
    0:07:23  464554.7      0.00       0.0   24162.9                           2867841.0000      0.00  
    0:07:23  464554.7      0.00       0.0   24162.9                           2867841.0000      0.00  
    0:07:27  464536.0      0.00       0.0   24168.7                           2866292.0000      0.00  
    0:07:38  464494.3      0.00       0.0   24162.2                           2864916.2500      0.00  
    0:07:40  464764.3      0.00       0.0   23235.7 d2mem_cache/datapath/tag_q[7][20] 2870665.0000      0.00  
    0:07:42  465316.8      0.00       0.0   22301.2 d2mem_cache/datapath/data_q[6][190] 2887996.5000      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:42  465383.0      0.00       0.0   21983.1                           2888927.2500      0.00  
    0:07:48  465299.7      0.00       0.0   21994.8                           2885262.7500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
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

Memory usage for this session 471 Mbytes.
Memory usage for this session including child processes 471 Mbytes.
CPU usage for this session 482 seconds ( 0.13 hours ).
Elapsed time for this session 501 seconds ( 0.14 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work

[0;32mTiming Met [0m
[0;33mSynthesis finished with warnings:[0m
Warning:  /tmp/dut/synth/../hdl/mp4.sv:127: A symbol named 'register' is already defined differently in the receiving scope.   (ELAB-106)
Warning:  /tmp/dut/synth/../hdl/mp4.sv:92: Netlist for always_ff block does not contain a flip-flop. (ELAB-976)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:200: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:200: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:175: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:198: signed to unsigned part selection occurs. (VER-318)
 
 ``` 

 </details> 
<details><summary>coremark_rv32i ✅</summary> 

 ``` 
 cd sim && ./top_tb -l simulation.log
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Dec  2 12:40 2023
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* : Create FSDB file 'dump.fsdb'
*Verdi* : Begin traversing the scopes, layer (0).
*Verdi* : Enable +all dumping.
*Verdi* : End of traversing.
Monitor: Start time is            608830000
Monitor: Stop time is          28544760000
Monitor: Segment IPC: 0.261504
Monitor: Segment Time:          27935930000
$finish called from file "/tmp/dut/hvl/top_tb.sv", line 65.
$finish at simulation time          28588580000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 28588580000 ps
CPU Time:    321.350 seconds;       Data structure size:   0.7Mb
Sat Dec  2 12:43:51 2023
 
 ``` 

 </details> 
<details><summary>Power Estimation ✅</summary> 

 ``` 
 cd ../sim && fsdb2saif dump.fsdb
fsdb2saif - FSDB to backward SAIF converter, Release Verdi_R-2020.12-SP1-1 (RH Linux x86_64/64bit) -- Tue Apr 20 04:17:41 PDT 2021

Copyright (c) 1996 - 2021 Synopsys, Inc.
This software and the associated documentation are proprietary to Synopsys, Inc. 
This software may only be used in accordance with the terms and conditions of a written license agreement with Synopsys, Inc. 
All other use, reproduction, or distribution of this software is strictly prohibited.

done
dump.fsdb.saif is generated successfully.
logDir = /tmp/dut/sim/fsdb2saifLog
dc_shell -f power.tcl 2>&1 |& tee reports/power.log
/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/dc_shell: /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/snps_platform: /bin/csh: bad interpreter: No such file or directory

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
set symbol_library [list generic.sdb]
generic.sdb
set synthetic_library [list dw_foundation.sldb]
dw_foundation.sldb
set target_library [getenv STD_CELL_LIB]
/srv/ece411ag/freepdk-45nm/stdcells.db
set sram_library [getenv SRAM_LIB]
/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db}
read_file -format ddc outputs/synth.ddc
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Reading ddc file '/tmp/dut/synth/outputs/synth.ddc'.
Information: Checking out the license 'DesignWare'. (SEC-104)
Loaded 699 designs.
Current design is 'mp4'.
mp4 regfile cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_1 cache_s_word256_s_mask32_s_index4_s_wayidx4_1 cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_0 cache_s_word256_s_mask32_s_index4_s_wayidx4_0 arbiter_s_word256 branch_predictor SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word256_1 SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word256_0 SNPS_CLOCK_GATE_HIGH_register_3_15 SNPS_CLOCK_GATE_HIGH_register_3_14 SNPS_CLOCK_GATE_HIGH_register_3_11 SNPS_CLOCK_GATE_HIGH_register_3_8 SNPS_CLOCK_GATE_HIGH_register_3_4 SNPS_CLOCK_GATE_HIGH_register_3_2 SNPS_CLOCK_GATE_HIGH_mp4_2 SNPS_CLOCK_GATE_HIGH_regfile_31 SNPS_CLOCK_GATE_HIGH_regfile_30 SNPS_CLOCK_GATE_HIGH_regfile_29 SNPS_CLOCK_GATE_HIGH_regfile_28 SNPS_CLOCK_GATE_HIGH_regfile_27 SNPS_CLOCK_GATE_HIGH_regfile_26 SNPS_CLOCK_GATE_HIGH_regfile_25 SNPS_CLOCK_GATE_HIGH_regfile_24 SNPS_CLOCK_GATE_HIGH_regfile_23 SNPS_CLOCK_GATE_HIGH_regfile_22 SNPS_CLOCK_GATE_HIGH_regfile_21 SNPS_CLOCK_GATE_HIGH_regfile_20 SNPS_CLOCK_GATE_HIGH_regfile_19 SNPS_CLOCK_GATE_HIGH_regfile_18 SNPS_CLOCK_GATE_HIGH_regfile_17 SNPS_CLOCK_GATE_HIGH_regfile_16 SNPS_CLOCK_GATE_HIGH_regfile_15 SNPS_CLOCK_GATE_HIGH_regfile_14 SNPS_CLOCK_GATE_HIGH_regfile_13 SNPS_CLOCK_GATE_HIGH_regfile_12 SNPS_CLOCK_GATE_HIGH_regfile_11 SNPS_CLOCK_GATE_HIGH_regfile_10 SNPS_CLOCK_GATE_HIGH_regfile_9 SNPS_CLOCK_GATE_HIGH_regfile_8 SNPS_CLOCK_GATE_HIGH_regfile_7 SNPS_CLOCK_GATE_HIGH_regfile_6 SNPS_CLOCK_GATE_HIGH_regfile_5 SNPS_CLOCK_GATE_HIGH_regfile_4 SNPS_CLOCK_GATE_HIGH_regfile_3 SNPS_CLOCK_GATE_HIGH_regfile_2 SNPS_CLOCK_GATE_HIGH_regfile_1 cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1 cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1 cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0 cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0 btb global_branch_predictor masked_ff_array_s_index3_width256_3 masked_ff_array_s_index3_width256_2 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_35 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_34 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_33 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_32 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_31 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_30 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_29 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_28 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_26 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_25 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_24 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_23 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_22 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_21 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_20 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_19 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_18 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1_1 masked_ff_array_s_index3_width256_1 masked_ff_array_s_index3_width256_0 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_17 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_16 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_15 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_14 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_13 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_12 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_11 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_10 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_0_0 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_1_0 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_9 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_8 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_7 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_6 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_5 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_4 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_3 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_2 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_1_1 SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_0_1 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0_0 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0_1 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_0 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_0 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_15 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_15 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_14 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_14 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_13 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_13 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_12 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_12 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_11 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_11 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_10 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_10 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_9 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_9 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_8 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_8 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_7 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_7 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_6 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_6 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_5 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_5 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_4 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_4 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_3 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_3 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_2 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_2 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_1 SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_1 SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0_0 SNPS_CLOCK_GATE_HIGH_btb_0 SNPS_CLOCK_GATE_HIGH_btb_32 SNPS_CLOCK_GATE_HIGH_btb_31 SNPS_CLOCK_GATE_HIGH_btb_30 SNPS_CLOCK_GATE_HIGH_btb_29 SNPS_CLOCK_GATE_HIGH_btb_28 SNPS_CLOCK_GATE_HIGH_btb_27 SNPS_CLOCK_GATE_HIGH_btb_26 SNPS_CLOCK_GATE_HIGH_btb_25 SNPS_CLOCK_GATE_HIGH_btb_24 SNPS_CLOCK_GATE_HIGH_btb_23 SNPS_CLOCK_GATE_HIGH_btb_22 SNPS_CLOCK_GATE_HIGH_btb_21 SNPS_CLOCK_GATE_HIGH_btb_20 SNPS_CLOCK_GATE_HIGH_btb_19 SNPS_CLOCK_GATE_HIGH_btb_18 SNPS_CLOCK_GATE_HIGH_btb_17 SNPS_CLOCK_GATE_HIGH_btb_16 SNPS_CLOCK_GATE_HIGH_btb_15 SNPS_CLOCK_GATE_HIGH_btb_14 SNPS_CLOCK_GATE_HIGH_btb_13 SNPS_CLOCK_GATE_HIGH_btb_12 SNPS_CLOCK_GATE_HIGH_btb_11 SNPS_CLOCK_GATE_HIGH_btb_10 SNPS_CLOCK_GATE_HIGH_btb_9 SNPS_CLOCK_GATE_HIGH_btb_8 SNPS_CLOCK_GATE_HIGH_btb_7 SNPS_CLOCK_GATE_HIGH_btb_6 SNPS_CLOCK_GATE_HIGH_btb_5 SNPS_CLOCK_GATE_HIGH_btb_4 SNPS_CLOCK_GATE_HIGH_btb_3 SNPS_CLOCK_GATE_HIGH_btb_2 SNPS_CLOCK_GATE_HIGH_btb_1 SNPS_CLOCK_GATE_HIGH_global_branch_predictor SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_996 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_964 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_932 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_900 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_868 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_836 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_804 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_772 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_771 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_739 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_707 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_675 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_643 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_611 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_579 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_547 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_515 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_514 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_513 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_512 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_511 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_510 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_509 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_508 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_507 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_506 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_505 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_504 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_503 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_502 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_501 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_500 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_499 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_498 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_497 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_496 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_495 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_494 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_493 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_492 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_491 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_490 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_489 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_488 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_487 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_486 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_485 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_484 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_483 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_482 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_481 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_480 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_479 
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_478 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_477 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_476 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_475 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_474 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_473 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_472 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_471 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_470 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_469 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_468 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_467 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_466 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_465 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_464 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_463 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_462 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_461 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_460 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_459 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_458 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_457 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_456 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_455 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_454 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_453 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_452 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_451 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_450 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_449 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_448 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_447 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_446 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_445 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_444 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_443 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_442 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_441 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_440 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_439 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_438 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_437 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_436 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_435 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_434 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_433 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_432 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_431 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_430 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_429 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_428 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_427 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_426 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_425 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_424 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_423 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_422 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_421 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_420 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_419 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_418 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_417 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_416 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_415 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_414 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_413 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_412 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_411 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_410 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_409 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_408 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_407 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_406 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_405 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_404 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_403 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_402 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_401 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_400 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_399 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_398 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_397 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_396 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_395 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_394 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_393 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_392 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_391 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_390 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_389 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_388 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_387 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_386 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_385 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_384 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_383 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_382 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_381 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_380 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_379 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_378 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_377 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_376 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_375 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_374 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_373 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_372 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_371 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_370 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_369 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_368 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_367 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_366 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_365 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_364 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_363 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_362 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_361 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_360 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_359 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_358 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_357 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_356 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_355 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_354 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_353 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_352 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_351 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_350 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_349 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_348 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_347 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_346 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_345 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_344 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_343 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_342 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_341 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_340 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_339 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_338 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_337 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_336 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_335 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_334 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_333 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_332 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_331 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_330 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_329 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_328 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_327 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_326 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_325 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_324 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_323 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_322 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_321 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_320 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_319 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_318 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_317 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_316 
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_315 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_314 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_313 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_312 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_311 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_310 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_309 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_308 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_307 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_306 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_305 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_304 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_303 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_302 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_301 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_300 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_299 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_298 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_297 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_296 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_295 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_294 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_293 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_292 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_291 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_290 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_289 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_288 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_287 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_286 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_285 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_284 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_283 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_282 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_281 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_280 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_279 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_278 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_277 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_276 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_275 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_274 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_273 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_272 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_271 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_270 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_269 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_268 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_267 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_266 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_265 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_264 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_263 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_262 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_261 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_260 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_259 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_258 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_257 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_0 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_256 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_255 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_254 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_253 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_252 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_251 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_250 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_249 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_248 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_247 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_246 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_245 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_244 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_243 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_242 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_241 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_240 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_239 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_238 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_237 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_236 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_235 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_234 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_233 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_232 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_231 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_230 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_229 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_228 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_227 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_226 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_225 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_224 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_223 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_222 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_221 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_220 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_219 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_218 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_217 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_216 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_215 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_214 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_213 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_212 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_211 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_210 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_209 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_208 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_207 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_206 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_205 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_204 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_203 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_202 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_201 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_200 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_199 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_198 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_197 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_196 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_195 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_194 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_193 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_192 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_191 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_190 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_189 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_188 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_187 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_186 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_185 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_184 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_183 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_182 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_181 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_180 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_179 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_178 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_177 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_176 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_175 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_174 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_173 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_172 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_171 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_170 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_169 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_168 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_167 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_166 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_165 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_164 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_163 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_162 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_161 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_160 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_159 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_158 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_157 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_156 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_155 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_154 
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_153 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_152 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_151 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_150 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_149 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_148 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_147 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_146 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_145 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_144 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_143 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_142 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_141 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_140 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_139 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_138 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_137 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_136 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_135 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_134 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_133 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_132 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_131 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_130 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_129 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_128 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_127 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_126 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_125 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_124 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_123 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_122 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_121 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_120 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_119 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_118 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_117 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_116 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_115 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_114 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_113 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_112 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_111 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_110 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_109 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_108 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_107 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_106 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_105 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_104 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_103 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_102 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_101 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_100 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_99 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_98 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_97 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_96 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_95 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_94 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_93 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_92 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_91 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_90 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_89 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_88 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_87 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_86 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_85 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_84 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_83 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_82 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_81 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_80 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_79 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_78 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_77 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_76 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_75 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_74 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_73 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_72 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_71 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_70 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_69 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_68 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_67 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_66 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_65 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_64 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_63 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_62 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_61 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_60 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_59 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_58 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_57 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_56 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_55 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_54 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_53 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_52 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_51 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_50 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_49 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_48 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_47 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_46 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_45 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_44 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_43 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_42 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_41 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_40 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_39 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_38 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_37 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_36 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_35 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_34 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_33 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_32 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_31 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_30 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_29 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_28 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_27 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_26 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_25 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_24 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_23 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_22 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_21 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_20 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_19 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_18 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_17 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_16 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_15 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_14 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_13 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_12 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_11 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_10 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_9 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_8 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_7 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_6 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_5 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_4 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_3 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_2 SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_1
read_saif -input ../sim/dump.fsdb.saif -instance top_tb/dut
Warning: There are 175235 objects not found during annotation. (PWR-452)
1
report_power -analysis_effort high
Information: Updating design information... (UID-85)
Warning: Design 'mp4' contains 6 high-fanout nets. A fanout number of 1000 will be used for delay calculations involving these nets. (TIM-134)
Warning: There are 473 switching activity information conflicts. (PWR-19)
Information: Propagating switching activity (high effort zero delay simulation). (PWR-6)
Warning: Invalid switching activity annotation on constant net(s) is being ignored. (PWR-421)
Warning: Design has unannotated sequential cell outputs. (PWR-415)
 
****************************************
Report : power
        -analysis_effort high
Design : mp4
Version: R-2020.09-SP4
Date   : Sat Dec  2 12:54:39 2023
****************************************


Library(s) Used:

    NangateOpenCellLibrary (File: /srv/ece411ag/freepdk-45nm/stdcells.db)
    mp3_tag_array_TT_1p0V_25C_lib (File: /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db)
    mp3_data_array_TT_1p0V_25C_lib (File: /tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db)


Operating Conditions: typical   Library: NangateOpenCellLibrary
Wire Load Model Mode: enclosed

Design        Wire Load Model            Library
------------------------------------------------
mp4                    5K_hvratio_1_1    NangateOpenCellLibrary
regfile                5K_hvratio_1_1    NangateOpenCellLibrary
cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_s_word256_s_mask32_s_index4_s_wayidx4_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_s_word256_s_mask32_s_index3_s_wayidx1_use_register1_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_s_word256_s_mask32_s_index4_s_wayidx4_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
arbiter_s_word256      5K_hvratio_1_1    NangateOpenCellLibrary
branch_predictor       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word256_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word256_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_register_3_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_mp4_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_31
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_30
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_29
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_28
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_27
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_26
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_25
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_24
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_23
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_22
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_21
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_20
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_19
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_18
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_17
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_16
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_regfile_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
btb                    5K_hvratio_1_1    NangateOpenCellLibrary
global_branch_predictor
                       5K_hvratio_1_1    NangateOpenCellLibrary
masked_ff_array_s_index3_width256_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
masked_ff_array_s_index3_width256_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_35
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_34
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_33
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_32
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_31
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_30
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_29
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_28
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_26
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_25
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_24
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_23
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_22
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_21
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_20
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_19
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_18
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
masked_ff_array_s_index3_width256_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
masked_ff_array_s_index3_width256_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_17
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_16
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_1_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_width24_0_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index3_0_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index3_s_wayidx1_use_register1_0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx4_use_register0_0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_32
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_31
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_30
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_29
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_28
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_27
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_26
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_25
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_24
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_23
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_22
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_21
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_20
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_19
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_18
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_17
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_16
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_btb_1
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_global_branch_predictor
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_996
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_964
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_932
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_900
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_868
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_836
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_804
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_772
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_771
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_739
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_707
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_675
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_643
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_611
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_579
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_547
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_515
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_514
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_513
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_512
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_511
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_510
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_509
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_508
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_507
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_506
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_505
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_504
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_503
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_502
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_501
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_500
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_499
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_498
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_497
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_496
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_495
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_494
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_493
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_492
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_491
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_490
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_489
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_488
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_487
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_486
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_485
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_484
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_483
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_482
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_481
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_480
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_479
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_478
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_477
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_476
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_475
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_474
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_473
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_472
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_471
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_470
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_469
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_468
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_467
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_466
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_465
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_464
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_463
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_462
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_461
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_460
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_459
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_458
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_457
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_456
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_455
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_454
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_453
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_452
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_451
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_450
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_449
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_448
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_447
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_446
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_445
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_444
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_443
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_442
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_441
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_440
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_439
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_438
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_437
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_436
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_435
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_434
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_433
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_432
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_431
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_430
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_429
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_428
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_427
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_426
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_425
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_424
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_423
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_422
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_421
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_420
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_419
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_418
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_417
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_416
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_415
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_414
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_413
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_412
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_411
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_410
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_409
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_408
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_407
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_406
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_405
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_404
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_403
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_402
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_401
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_400
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_399
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_398
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_397
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_396
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_395
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_394
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_393
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_392
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_391
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_390
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_389
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_388
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_387
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_386
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_385
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_384
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_383
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_382
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_381
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_380
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_379
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_378
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_377
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_376
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_375
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_374
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_373
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_372
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_371
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_370
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_369
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_368
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_367
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_366
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_365
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_364
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_363
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_362
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_361
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_360
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_359
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_358
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_357
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_356
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_355
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_354
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_353
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_352
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_351
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_350
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_349
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_348
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_347
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_346
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_345
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_344
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_343
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_342
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_341
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_340
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_339
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_338
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_337
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_336
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_335
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_334
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_333
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_332
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_331
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_330
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_329
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_328
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_327
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_326
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_325
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_324
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_323
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_322
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_321
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_320
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_319
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_318
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_317
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_316
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_315
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_314
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_313
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_312
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_311
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_310
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_309
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_308
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_307
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_306
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_305
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_304
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_303
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_302
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_301
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_300
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_299
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_298
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_297
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_296
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_295
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_294
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_293
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_292
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_291
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_290
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_289
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_288
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_287
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_286
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_285
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_284
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_283
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_282
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_281
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_280
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_279
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_278
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_277
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_276
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_275
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_274
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_273
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_272
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_271
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_270
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_269
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_268
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_267
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_266
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_265
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_264
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_263
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_262
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_261
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_260
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_259
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_258
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_257
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_0
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_256
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_255
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_254
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_253
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_252
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_251
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_250
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_249
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_248
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_247
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_246
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_245
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_244
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_243
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_242
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_241
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_240
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_239
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_238
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_237
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_236
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_235
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_234
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_233
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_232
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_231
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_230
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_229
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_228
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_227
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_226
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_225
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_224
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_223
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_222
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_221
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_220
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_219
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_218
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_217
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_216
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_215
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_214
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_213
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_212
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_211
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_210
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_209
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_208
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_207
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_206
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_205
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_204
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_203
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_202
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_201
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_200
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_199
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_198
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_197
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_196
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_195
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_194
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_193
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_192
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_191
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_190
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_189
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_188
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_187
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_186
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_185
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_184
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_183
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_182
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_181
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_180
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_179
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_178
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_177
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_176
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_175
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_174
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_173
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_172
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_171
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_170
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_169
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_168
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_167
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_166
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_165
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_164
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_163
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_162
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_161
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_160
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_159
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_158
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_157
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_156
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_155
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_154
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_153
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_152
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_151
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_150
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_149
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_148
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_147
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_146
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_145
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_144
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_143
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_142
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_141
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_140
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_139
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_138
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_137
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_136
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_135
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_134
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_133
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_132
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_131
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_130
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_129
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_128
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_127
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_126
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_125
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_124
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_123
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_122
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_121
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_120
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_119
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_118
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_117
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_116
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_115
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_114
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_113
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_112
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_111
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_110
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_109
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_108
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_107
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_106
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_105
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_104
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_103
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_102
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_101
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_100
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_99
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_98
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_97
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_96
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_95
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_94
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_93
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_92
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_91
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_90
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_89
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_88
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_87
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_86
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_85
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_84
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_83
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_82
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_81
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_80
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_79
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_78
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_77
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_76
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_75
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_74
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_73
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_72
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_71
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_70
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_69
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_68
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_67
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_66
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_65
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_64
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_63
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_62
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_61
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_60
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_59
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_58
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_57
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_56
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_55
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_54
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_53
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_52
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_51
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_50
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_49
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_48
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_47
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_46
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_45
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_44
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_43
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_42
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_41
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_40
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_39
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_38
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_37
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_36
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_35
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_34
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_33
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_32
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_31
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_30
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_29
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_28
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_27
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_26
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_25
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_24
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_23
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_22
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_21
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_20
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_19
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_18
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_17
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_16
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_15
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_14
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_13
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_12
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_11
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_10
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_9
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_8
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_7
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_6
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_5
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_4
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_3
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_2
                       5K_hvratio_1_1    NangateOpenCellLibrary
SNPS_CLOCK_GATE_HIGH_masked_ff_array_s_index3_width256_0_1
                       5K_hvratio_1_1    NangateOpenCellLibrary


Global Operating Voltage = 1.1  
Power-specific unit information :
    Voltage Units = 1V
    Capacitance Units = 1.000000ff
    Time Units = 1ns
    Dynamic Power Units = 1uW    (derived from V,C,T units)
    Leakage Power Units = 1nW


  Cell Internal Power  =  10.7465 mW   (17%)
  Net Switching Power  =  54.2016 mW   (83%)
                         ---------
Total Dynamic Power    =  64.9481 mW  (100%)

Cell Leakage Power     =   2.9691 mW


                 Internal         Switching           Leakage            Total
Power Group      Power            Power               Power              Power   (   %    )  Attrs
--------------------------------------------------------------------------------------------------
io_pad             0.0000            0.0000            0.0000            0.0000  (   0.00%)
memory         8.8823e+03           25.6058        1.6560e+05        9.0735e+03  (  13.36%)
black_box          0.0000            0.0000            0.0000            0.0000  (   0.00%)
clock_network    281.4475        5.4041e+04        4.1560e+04        5.4365e+04  (  80.04%)
register       1.5057e+03           12.5061        1.6509e+06        3.1691e+03  (   4.67%)
sequential         0.0000            0.0000            0.0000            0.0000  (   0.00%)
combinational     77.0969          122.5543        1.1111e+06        1.3107e+03  (   1.93%)
--------------------------------------------------------------------------------------------------
Total          1.0746e+04 uW     5.4202e+04 uW     2.9691e+06 nW     6.7918e+04 uW
1
exit

Memory usage for this session 258 Mbytes.
Memory usage for this session including child processes 258 Mbytes.
CPU usage for this session 27 seconds ( 0.01 hours ).
Elapsed time for this session 28 seconds ( 0.01 hours ).

Thank you...
 
 ``` 

 </details> 
