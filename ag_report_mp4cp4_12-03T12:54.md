# AG Report MP4CP4 2023-12-03T12:54:06-06:00 
Report generated at 2023-12-03T12:54:11-06:00, using commit ``8a6b02729c6b5a08c313042d1be226e72b8d629f``

Autograder Run ID: e1fac1bd-6052-441f-819b-8c39baefae1e

Autograder Job ID: de294834-4755-4dae-bee2-7e0c889f4907


## Logs
<details><summary>Compile ✅</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/prefetcher.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/branch_predict/gshare_branch_predictor.sv /tmp/dut/hdl/branch_predict/top_predictor.sv /tmp/dut/hdl/branch_predict/local_branch_predict.sv /tmp/dut/hdl/branch_predict/global_branch_predict.sv /tmp/dut/hdl/branch_predict/btb_4way.sv /tmp/dut/hdl/branch_predict/branch_target_buffer.sv /tmp/dut/hdl/performance_counter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv /tmp/dut/sram/output/mp3_data_array/mp3_data_array.v /tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2.v /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v /tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Dec  3 12:56:55 2023

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
Parsing design file '/tmp/dut/hdl/branch_predict/gshare_branch_predictor.sv'
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
Parsing design file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2.v'
Parsing design file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array.v'
Parsing design file '/tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2.v'
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
recompiling package cache_params_pkg
recompiling module no_prefetch_prefetcher
recompiling module ff_array
recompiling module cache
recompiling module branch_predictor_branch_only
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
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  1826 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _1670_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.297 seconds to compile + .495 seconds to elab + .335 seconds to link
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
/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db}
set design_clock_pin clk
clk
set design_reset_pin rst
rst
analyze -library WORK -format sverilog [getenv PKG_SRCS]
Running PRESTO HDLC
Compiling source file /tmp/dut/synth/../pkg/types.sv
Warning:  /tmp/dut/synth/../pkg/types.sv:235: Parameter keyword used in local parameter declaration. (VER-329)
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/tmp/dut/synth/../hdl/cache/prefetcher.sv /tmp/dut/synth/../hdl/cache/ff_array.sv /tmp/dut/synth/../hdl/cache/cache_datapath.sv /tmp/dut/synth/../hdl/cache/cache_control.sv /tmp/dut/synth/../hdl/cache/cache.sv /tmp/dut/synth/../hdl/cache/arbiter.sv /tmp/dut/synth/../hdl/branch_predict/gshare_branch_predictor.sv /tmp/dut/synth/../hdl/branch_predict/top_predictor.sv /tmp/dut/synth/../hdl/branch_predict/local_branch_predict.sv /tmp/dut/synth/../hdl/branch_predict/global_branch_predict.sv /tmp/dut/synth/../hdl/branch_predict/btb_4way.sv /tmp/dut/synth/../hdl/branch_predict/branch_target_buffer.sv /tmp/dut/synth/../hdl/performance_counter.sv /tmp/dut/synth/../hdl/mp4.sv /tmp/dut/synth/../hdl/cacheline_adaptor.sv /tmp/dut/synth/../hdl/bus_adapter.sv /tmp/dut/synth/../hdl/cpu/utils_reg.sv /tmp/dut/synth/../hdl/cpu/utils_ex.sv /tmp/dut/synth/../hdl/cpu/pipeline_reg.sv /tmp/dut/synth/../hdl/cpu/hazard_ctrl.sv /tmp/dut/synth/../hdl/cpu/forwarding.sv /tmp/dut/synth/../hdl/cpu/datapath.sv /tmp/dut/synth/../hdl/cpu/ctrl_word.sv
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
Compiling source file /tmp/dut/synth/../hdl/branch_predict/gshare_branch_predictor.sv
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
Loading db file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_2_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_TT_1p0V_25C_lib'
  Loading link library 'mp3_data_array_2_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC
Warning:  /tmp/dut/synth/../hdl/mp4.sv:121: A symbol named 'register' is already defined differently in the receiving scope.   (ELAB-106)

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
Warning:  /tmp/dut/synth/../hdl/mp4.sv:86: Netlist for always_ff block does not contain a flip-flop. (ELAB-976)
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
	the parameters "s_word=256,s_mask=32,s_index=4,s_wayidx=2,level=1". (HDL-193)
Presto compilation completed successfully. (cache_s_word256_s_mask32_s_index4_s_wayidx2_level1)
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
Information: Building the design 'branch_predictor_branch_only'. (HDL-193)
Presto compilation completed successfully. (branch_predictor_branch_only)
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
Information: Building the design 'cache_datapath' instantiated from design 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1' with
	the parameters "s_word=256,s_index=4,s_wayidx=2,level=1". (HDL-193)

Inferred memory devices in process
	in routine cache_datapath_s_word256_s_index4_s_wayidx2_level1 line 168 in file
		'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      PLRU_reg       | Flip-flop |  64   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
============================================================================================
|                    block name/line                     | Inputs | Outputs | # sel inputs |
============================================================================================
| cache_datapath_s_word256_s_index4_s_wayidx2_level1/50  |   4    |   256   |      2       |
| cache_datapath_s_word256_s_index4_s_wayidx2_level1/51  |   4    |   256   |      2       |
| cache_datapath_s_word256_s_index4_s_wayidx2_level1/52  |   4    |   23    |      2       |
| cache_datapath_s_word256_s_index4_s_wayidx2_level1/53  |   4    |    2    |      2       |
| cache_datapath_s_word256_s_index4_s_wayidx2_level1/197 |   16   |    3    |      4       |
============================================================================================
Presto compilation completed successfully. (cache_datapath_s_word256_s_index4_s_wayidx2_level1)
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
Information: Building the design 'local_branch_predictor_no_bht'. (HDL-193)

Inferred memory devices in process
	in routine local_branch_predictor_no_bht line 111 in file
		'/tmp/dut/synth/../hdl/branch_predict/local_branch_predict.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       PHT_reg       | Flip-flop |  256  |  Y  | Y  | Y  | N  | N  | N  | N  |
|       PHT_reg       | Flip-flop |  256  |  Y  | Y  | N  | Y  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
=======================================================================
|         block name/line           | Inputs | Outputs | # sel inputs |
=======================================================================
| local_branch_predictor_no_bht/125 |  256   |    2    |      8       |
| local_branch_predictor_no_bht/133 |  256   |    2    |      8       |
=======================================================================
Presto compilation completed successfully. (local_branch_predictor_no_bht)
Information: Building the design 'ff_array' instantiated from design 'cache_datapath_s_word256_s_index4_s_wayidx2_level1' with
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
Date:        Sun Dec  3 12:57:04 2023
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
7.0
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
  * (37 designs)              /tmp/dut/synth/mp4.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp3_data_array_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db
  mp3_tag_array_2_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db
  mp3_tag_array_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db
  mp3_data_array_2_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db

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
Information: Uniquified 2 instances of design 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1'. (OPT-1056)
Information: Uniquified 8 instances of design 'register_width4'. (OPT-1056)
Information: Uniquified 3 instances of design 'marmux_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'opcode_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'register_width3'. (OPT-1056)
Information: Uniquified 3 instances of design 'regfilemux_reg'. (OPT-1056)
Information: Uniquified 9 instances of design 'register_width5'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_control'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_datapath_s_word256_s_index4_s_wayidx2_level1'. (OPT-1056)
Information: Uniquified 2 instances of design 'CacheCounter'. (OPT-1056)
Information: Uniquified 16 instances of design 'ff_array_s_index4'. (OPT-1056)
  Simplifying Design 'mp4'
Information: Performing clock-gating with positive edge logic: 'integrated' and negative edge logic: 'or'. (PWR-1047)

Loaded alib file '/srv/ece411ag/freepdk-45nm/alib/alib-52/stdcells.db.alib'
  Building model 'DW01_NAND2'
Information: Ungrouping 139 of 237 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
  Processing 'mp4'
Information: Added key list 'DesignWare' to design 'mp4'. (DDB-72)
 Implement Synthetic for 'mp4'.
  Processing 'regfile'
  Processing 'cache_datapath_s_word256_s_index4_s_wayidx2_level1_0'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index4_s_wayidx2_level1_0'. (DDB-72)
  Processing 'arbiter_s_word256'
  Processing 'cache_datapath_s_word256_s_index4_s_wayidx2_level1_1'
Information: Added key list 'DesignWare' to design 'cache_datapath_s_word256_s_index4_s_wayidx2_level1_1'. (DDB-72)
  Processing 'local_branch_predictor_no_bht'
Information: Added key list 'DesignWare' to design 'local_branch_predictor_no_bht'. (DDB-72)
  Processing 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_0'
  Processing 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_1'
  Processing 'branch_predictor_branch_only'
 Implement Synthetic for 'branch_predictor_branch_only'.
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
  Processing 'SNPS_CLOCK_GATE_HIGH_local_branch_predictor_no_bht'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx2_level1_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_8_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word256_s_index4_s_wayidx2_level1_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_regfile_0'
  Mapping integrated clock gating circuitry

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design mp4. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index4_s_wayidx2_level1_0. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_1. (PWR-730)
Information: Performing clock-gating on design cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_0. (PWR-730)
Information: Performing clock-gating on design arbiter_s_word256. (PWR-730)
Information: Performing clock-gating on design regfile. (PWR-730)
Information: Performing clock-gating on design cache_datapath_s_word256_s_index4_s_wayidx2_level1_1. (PWR-730)
Information: Performing clock-gating on design local_branch_predictor_no_bht. (PWR-730)
Information: Converting capacitance units for library 'mp3_data_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp3_tag_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Ungrouping hierarchy imem_cache 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_1' #insts = 13. (OPT-777)
Information: Ungrouping hierarchy dmem_cache 'cache_s_word256_s_mask32_s_index4_s_wayidx2_level1_0' #insts = 19. (OPT-777)
Information: Ungrouping hierarchy arbiter 'arbiter_s_word256' #insts = 1098. (OPT-777)
Information: Ungrouping hierarchy imem_cache/datapath 'cache_datapath_s_word256_s_index4_s_wayidx2_level1_1' #insts = 1541. (OPT-777)
Information: Ungrouping hierarchy branch_predictor/local_branch_predictor_no_bht 'local_branch_predictor_no_bht' #insts = 2129. (OPT-777)
Information: Added key list 'DesignWare' to design 'branch_predictor_branch_only'. (DDB-72)
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:08  126593.4      0.00       0.0    7952.6                           1547178.5000      0.00  
    0:01:09  126580.4      0.00       0.0    7952.6                           1546795.2500      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:01:10  126663.6      0.00       0.0    7952.6                           1551312.2500      0.00  
    0:01:11  126663.6      0.00       0.0    7952.6                           1551312.2500      0.00  

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
    0:01:19  108747.5      0.00       0.0    7570.2                           619894.5000      0.00  
    0:01:19  108747.5      0.00       0.0    7570.2                           619894.5000      0.00  
    0:01:19  108747.5      0.00       0.0    7570.2                           619894.5000      0.00  
    0:01:19  108728.0      0.00       0.0    7570.2                           620318.6875      0.00  
    0:01:21  108725.9      0.00       0.0    7570.2                           620253.5000      0.00  
    0:01:23  108725.9      0.00       0.0    7570.2                           620253.5000      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:01:28  108527.2      0.00       0.0    7508.3                           612240.8750      0.00  
    0:01:28  108527.2      0.00       0.0    7508.3                           612240.8750      0.00  
    0:01:28  108527.2      0.00       0.0    7508.3                           612240.8750      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:29  108501.1      0.00       0.0    7506.5                           607437.9375      0.00  
  Global Optimization (Phase 31)
  Global Optimization (Phase 32)
  Global Optimization (Phase 33)
    0:01:30  108915.0      0.00       0.0    5751.0 imem_cache/datapath/tag_q[2][22] 618796.7500      0.00  
    0:01:31  109297.8      0.00       0.0    5031.9                           630689.9375      0.00  
    0:01:31  109297.8      0.00       0.0    5031.9                           630689.9375      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:31  109297.8      0.00       0.0    5031.9                           630689.9375      0.00  
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
    0:01:34  109435.6      0.00       0.0    4648.6                           641984.0625      0.00  
    0:01:34  109435.6      0.00       0.0    4648.6                           641984.0625      0.00  
    0:01:34  109435.6      0.00       0.0    4648.6                           641984.0625      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  
    0:01:35  108997.5      0.00       0.0    4651.9                           618110.5000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:36  108877.8      0.00       0.0    4651.9                           616336.3750      0.00  
    0:01:38  108714.2      0.00       0.0    4683.6                           612113.7500      0.00  
    0:01:38  108714.2      0.00       0.0    4683.6                           612113.7500      0.00  
    0:01:38  108714.2      0.00       0.0    4683.6                           612113.7500      0.00  
    0:01:38  108712.3      0.00       0.0    4683.6                           611912.5625      0.00  
    0:01:40  108902.3      0.00       0.0    4281.5 dmem_cache/datapath/data_q[0][109] 616025.6875      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:41  109332.9      0.00       0.0    3513.7                           628779.4375      0.00  
    0:01:43  109277.3      0.00       0.0    3512.9                           626046.9375      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array/mp3_data_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array/mp3_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db'


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

Memory usage for this session 216 Mbytes.
Memory usage for this session including child processes 236 Mbytes.
CPU usage for this session 107 seconds ( 0.03 hours ).
Elapsed time for this session 115 seconds ( 0.03 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work

[0;32mTiming Met [0m
[0;31mArea Not Met [0m
 
 ``` 

 </details> 
