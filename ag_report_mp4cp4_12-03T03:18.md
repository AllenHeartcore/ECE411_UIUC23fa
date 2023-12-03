# AG Report MP4CP4 2023-12-03T03:18:44-06:00 
Report generated at 2023-12-03T03:27:48-06:00, using commit ``1a8ea888f9d816b72c4dfcc280272900da5c4d99``

Autograder Run ID: 4650f7a7-56d9-488b-bc0f-cd4b030e1452

Autograder Job ID: 39a1a279-59fd-4d79-be53-caa7fd42f19c


## Logs
<details><summary>Compile ✅</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/prefetcher.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/branch_predict/gshare_branch_predictor.sv /tmp/dut/hdl/branch_predict/top_predictor.sv /tmp/dut/hdl/branch_predict/local_branch_predict.sv /tmp/dut/hdl/branch_predict/global_branch_predict.sv /tmp/dut/hdl/branch_predict/btb_4way.sv /tmp/dut/hdl/branch_predict/branch_target_buffer.sv /tmp/dut/hdl/performance_counter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv /tmp/dut/sram/output/mp3_tag_array_1/mp3_tag_array_1.v /tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2.v /tmp/dut/sram/output/mp3_data_array_1/mp3_data_array_1.v /tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Dec  3 03:29:10 2023

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
Parsing design file '/tmp/dut/sram/output/mp3_tag_array_1/mp3_tag_array_1.v'
Parsing design file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2.v'
Parsing design file '/tmp/dut/sram/output/mp3_data_array_1/mp3_data_array_1.v'
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
recompiling module mp3_data_array_1
All of 75 modules done
make[1]: Entering directory '/tmp/dut/sim/csrc'
make[1]: Leaving directory '/tmp/dut/sim/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  5483 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _5327_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.302 seconds to compile + .497 seconds to elab + .345 seconds to link
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
/tmp/dut/synth/../sram/output/mp3_tag_array_1/mp3_tag_array_1_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_1/mp3_data_array_1_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/tmp/dut/synth/../sram/output/mp3_tag_array_1/mp3_tag_array_1_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_1/mp3_data_array_1_TT_1p0V_25C_lib.db /tmp/dut/synth/../sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db}
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
Loading db file '/tmp/dut/sram/output/mp3_tag_array_1/mp3_tag_array_1_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array_1/mp3_data_array_1_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array_2/mp3_data_array_2_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp3_tag_array_1_TT_1p0V_25C_lib'
  Loading link library 'mp3_tag_array_2_TT_1p0V_25C_lib'
  Loading link library 'mp3_data_array_1_TT_1p0V_25C_lib'
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
	the parameters "s_word=128,s_mask=16". (HDL-193)
Presto compilation completed successfully. (bus_adapter_s_word128_s_mask16)
Information: Building the design 'no_prefetch_prefetcher' instantiated from design 'mp4' with
	the parameters "s_word=128". (HDL-193)
Presto compilation completed successfully. (no_prefetch_prefetcher_s_word128)
Information: Building the design 'cache' instantiated from design 'mp4' with
	the parameters "s_word=128,s_mask=16,s_index=4,s_wayidx=1,level=1". (HDL-193)
Presto compilation completed successfully. (cache_s_word128_s_mask16_s_index4_s_wayidx1_level1)
Information: Building the design 'arbiter' instantiated from design 'mp4' with
	the parameters "s_word=128". (HDL-193)

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
	in routine arbiter_s_word128 line 34 in file
		'/tmp/dut/synth/../hdl/cache/arbiter.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      state_reg      | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (arbiter_s_word128)
Information: Building the design 'cacheline_adaptor' instantiated from design 'mp4' with
	the parameters "s_word=128". (HDL-193)

Statistics for case statements in always block at line 49 in file
	'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            59            |    user/user     |
===============================================

Inferred memory devices in process
	in routine cacheline_adaptor_s_word128 line 34 in file
		'/tmp/dut/synth/../hdl/cacheline_adaptor.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|     counter_reg     | Flip-flop |  32   |  Y  | Y  | N  | N  | N  | N  | N  |
|      state_reg      | Flip-flop |   2   |  Y  | Y  | Y  | N  | N  | N  | N  |
|     buffer_reg      | Flip-flop |  128  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cacheline_adaptor_s_word128)
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
Information: Building the design 'cache_datapath' instantiated from design 'cache_s_word128_s_mask16_s_index4_s_wayidx1_level1' with
	the parameters "s_word=128,s_index=4,s_wayidx=1,level=1". (HDL-193)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:174: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:197: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:199: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:174: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:197: signed to unsigned part selection occurs. (VER-318)

Inferred memory devices in process
	in routine cache_datapath_s_word128_s_index4_s_wayidx1_level1 line 168 in file
		'/tmp/dut/synth/../hdl/cache/cache_datapath.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      PLRU_reg       | Flip-flop |  16   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================
Statistics for MUX_OPs
============================================================================================
|                    block name/line                     | Inputs | Outputs | # sel inputs |
============================================================================================
| cache_datapath_s_word128_s_index4_s_wayidx1_level1/197 |   16   |    1    |      4       |
============================================================================================
Presto compilation completed successfully. (cache_datapath_s_word128_s_index4_s_wayidx1_level1)
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
Information: Building the design 'ff_array' instantiated from design 'cache_datapath_s_word128_s_index4_s_wayidx1_level1' with
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
Date:        Sun Dec  3 03:29:18 2023
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
3.5
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
  mp3_tag_array_1_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_tag_array_1/mp3_tag_array_1_TT_1p0V_25C_lib.db
  mp3_tag_array_2_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db
  mp3_data_array_1_TT_1p0V_25C_lib (library)
                              /tmp/dut/sram/output/mp3_data_array_1/mp3_data_array_1_TT_1p0V_25C_lib.db
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
Information: Uniquified 2 instances of design 'bus_adapter_s_word128_s_mask16'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_s_word128_s_mask16_s_index4_s_wayidx1_level1'. (OPT-1056)
Information: Uniquified 8 instances of design 'register_width4'. (OPT-1056)
Information: Uniquified 3 instances of design 'marmux_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'opcode_reg'. (OPT-1056)
Information: Uniquified 3 instances of design 'register_width3'. (OPT-1056)
Information: Uniquified 3 instances of design 'regfilemux_reg'. (OPT-1056)
Information: Uniquified 9 instances of design 'register_width5'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_control'. (OPT-1056)
Information: Uniquified 2 instances of design 'cache_datapath_s_word128_s_index4_s_wayidx1_level1'. (OPT-1056)
Information: Uniquified 2 instances of design 'CacheCounter'. (OPT-1056)
Information: Uniquified 8 instances of design 'ff_array_s_index4'. (OPT-1056)
  Simplifying Design 'mp4'
Information: Performing clock-gating with positive edge logic: 'integrated' and negative edge logic: 'or'. (PWR-1047)

Loaded alib file '/srv/ece411ag/freepdk-45nm/alib/alib-52/stdcells.db.alib'
  Building model 'DW01_NAND2'
Information: Ungrouping 136 of 219 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
  Processing 'mp4'
Information: Added key list 'DesignWare' to design 'mp4'. (DDB-72)
 Implement Synthetic for 'mp4'.
  Processing 'regfile'
  Processing 'local_branch_predictor_no_bht'
Information: Added key list 'DesignWare' to design 'local_branch_predictor_no_bht'. (DDB-72)
  Processing 'branch_predictor_branch_only'
 Implement Synthetic for 'branch_predictor_branch_only'.
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_ff_array_s_index4_4_0'
  Mapping integrated clock gating circuitry
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
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word128_s_index4_s_wayidx1_level1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_width4_1'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_14'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_datapath_s_word128_s_index4_s_wayidx1_level1_1'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_alumux2_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cmpop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_aluop_reg'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cacheline_adaptor_s_word128_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_register_40000000'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_local_branch_predictor_no_bht'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_regfile_0'
  Mapping integrated clock gating circuitry

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design mp4. (PWR-730)
Information: Performing clock-gating on design regfile. (PWR-730)
Information: Performing clock-gating on design local_branch_predictor_no_bht. (PWR-730)
Information: Converting capacitance units for library 'mp3_data_array_1_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp3_tag_array_1_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Ungrouping hierarchy branch_predictor/local_branch_predictor_no_bht 'local_branch_predictor_no_bht' #insts = 2129. (OPT-777)
Information: Added key list 'DesignWare' to design 'branch_predictor_branch_only'. (DDB-72)
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:53   57694.0      0.96     360.4    2648.3                           996835.1250      0.00  
    0:00:54   57674.6      1.04     363.3    2672.9                           996388.4375      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:00:55   58037.9      1.30     366.6    2672.9                           1014518.8125      0.00  
    0:00:56   58037.9      1.30     366.6    2672.9                           1014518.8125      0.00  

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
  Mapping 'mp4_DP_OP_1509J1_122_6251_0'

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:01:02   48067.4      0.94      14.2    2183.4                           500189.7188      0.00  
    0:01:03   48286.6      0.00       0.0    2164.5                           508386.2812      0.00  
    0:01:03   48286.6      0.00       0.0    2164.5                           508386.2812      0.00  
    0:01:04   48247.3      0.00       0.0    2172.0                           508240.9688      0.00  
    0:01:06   48244.3      0.00       0.0    2172.0                           508156.5000      0.00  
    0:01:07   48044.0      0.00       0.0    2172.0                           502994.1562      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:01:11   47559.1      0.00       0.0    2118.4                           481665.0938      0.00  
    0:01:11   47559.1      0.00       0.0    2118.4                           481665.0938      0.00  
    0:01:11   47559.1      0.00       0.0    2118.4                           481665.0938      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:13   47234.9      0.00       0.0    2022.8                           461511.3750      0.00  
  Global Optimization (Phase 32)
  Global Optimization (Phase 33)
  Global Optimization (Phase 34)
    0:01:14   47516.8      0.00       0.0    1193.5                           468277.8438      0.00  
    0:01:14   47516.8      0.00       0.0    1193.5                           468277.8438      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:14   47516.8      0.00       0.0    1193.5                           468277.8438      0.00  
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
  Global Optimization (Phase 48)
  Global Optimization (Phase 49)
  Global Optimization (Phase 50)
Information: Complementing port 'branch_taken' in design 'branch_predictor_branch_only'.
	 The new name of the port is 'branch_taken_BAR'. (OPT-319)
    0:01:16   47367.3      0.00       0.0     961.4                           461630.5312      0.00  
    0:01:16   47367.3      0.00       0.0     961.4                           461630.5312      0.00  
    0:01:16   47367.3      0.00       0.0     961.4                           461630.5312      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  
    0:01:17   47351.1      0.00       0.0     962.4                           460759.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:18   47231.4      0.00       0.0     962.4                           458985.6250      0.00  
    0:01:19   47160.1      0.01       0.0     970.1                           456493.0625      0.00  
    0:01:19   47162.5      0.00       0.0     970.1                           456582.6250      0.00  
    0:01:19   47162.5      0.00       0.0     970.1                           456582.6250      0.00  
    0:01:19   47162.5      0.00       0.0     970.1                           456522.1875      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:21   47391.3      0.00       0.0     475.8                           461571.6250      0.00  
    0:01:22   47385.4      0.00       0.0     477.3                           461490.2812      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array_1/mp3_tag_array_1_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_tag_array_2/mp3_tag_array_2_TT_1p0V_25C_lib.db'
Loading db file '/tmp/dut/sram/output/mp3_data_array_1/mp3_data_array_1_TT_1p0V_25C_lib.db'
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

Memory usage for this session 189 Mbytes.
Memory usage for this session including child processes 242 Mbytes.
CPU usage for this session 85 seconds ( 0.02 hours ).
Elapsed time for this session 91 seconds ( 0.03 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work

[0;32mTiming Met [0m
[0;32mArea Met [0m
[0;33mSynthesis finished with warnings:[0m
Warning:  /tmp/dut/synth/../pkg/types.sv:235: Parameter keyword used in local parameter declaration. (VER-329)
Warning:  /tmp/dut/synth/../hdl/mp4.sv:121: A symbol named 'register' is already defined differently in the receiving scope.   (ELAB-106)
Warning:  /tmp/dut/synth/../hdl/mp4.sv:86: Netlist for always_ff block does not contain a flip-flop. (ELAB-976)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:66: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:174: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:197: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:199: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:174: signed to unsigned part selection occurs. (VER-318)
Warning:  /tmp/dut/synth/../hdl/cache/cache_datapath.sv:197: signed to unsigned part selection occurs. (VER-318)
 
 ``` 

 </details> 
<details><summary>coremark_rv32i ❌</summary> 

 ``` 
 cd sim && ./top_tb -l simulation.log
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Dec  3 03:30 2023
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* : Create FSDB file 'dump.fsdb'
*Verdi* : Begin traversing the scopes, layer (0).
*Verdi* : Enable +all dumping.
*Verdi* : End of traversing.
Error: "/tmp/dut/hvl/burst_memory.sv", 116: top_tb.burst_memory.memread.f.error_check: at time 73500 ps
Memory Error: Read deasserted early
$finish called from file "/tmp/dut/hvl/top_tb.sv", line 77.
Monitor: Total IPC: 0.000000
Monitor: Total Time:                95000
$finish at simulation time                94500
           V C S   S i m u l a t i o n   R e p o r t 
Time: 94500 ps
CPU Time:      0.490 seconds;       Data structure size:   0.3Mb
Sun Dec  3 03:30:50 2023
1,747980d0
< core   0: 3 0x40000000 (0x00004317) x6  0x40004000
< core   0: 3 0x40000004 (0x36430313) x6  0x40004364
< core   0: 3 0x40000008 (0x00005397) x7  0x40005008
< core   0: 3 0x4000000c (0xb3838393) x7  0x40004b40
< core   0: 3 0x40000010 (0x00730863)
< core   0: 3 0x40000014 (0x00032023) mem 0x40004364 0x00000000
< core   0: 3 0x40000018 (0x00430313) x6  0x40004368
< core   0: 3 0x4000001c (0xfe736ce3)
< core   0: 3 0x40000014 (0x00032023) mem 0x40004368 0x00000000
----- More lines omitted -----
 
 ``` 

 </details> 
