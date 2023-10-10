# AG Report MP3CP2 at 2023-10-09T23:59:59-05:00
This is a report generated for ziyuanc3 at 2023-10-10T00:39:06-05:00. This autograder run used commit ``987c6ad``
## Summary 
Compilation : <img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png"> 
<details><summary>Compilation Log</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/pkg/my_types.sv /grade_job/student_dut/hdl/cache/cache_datapath.sv /grade_job/student_dut/hdl/cache/cache_control.sv /grade_job/student_dut/hdl/cache/cache.sv /grade_job/student_dut/hdl/cache/ff_array.sv /grade_job/student_dut/hdl/mp3.sv /grade_job/student_dut/hdl/cacheline_adaptor.sv /grade_job/student_dut/hdl/bus_adapter.sv /grade_job/student_dut/hdl/cpu/regfile.sv /grade_job/student_dut/hdl/cpu/alu.sv /grade_job/student_dut/hdl/cpu/datapath.sv /grade_job/student_dut/hdl/cpu/register.sv /grade_job/student_dut/hdl/cpu/cpu.sv /grade_job/student_dut/hdl/cpu/control.sv /grade_job/student_dut/hdl/cpu/cmp.sv /grade_job/student_dut/hdl/cpu/ir.sv /grade_job/student_dut/hvl/monitor.sv /grade_job/student_dut/hvl/bmem_itf.sv /grade_job/student_dut/hvl/mp3_tag_array.v /grade_job/student_dut/hvl/mp3_data_array.v /grade_job/student_dut/hvl/cache_dut_tb.sv /grade_job/student_dut/hvl/rvfimon.v /grade_job/student_dut/hvl/mon_itf.sv /grade_job/student_dut/hvl/burst_memory.sv /grade_job/student_dut/hvl/top_tb.sv -full64 -lca -sverilog +lint=all,noNS +incdir+../hvl -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -covg_enable_cross_queue -licqueue -msg_config=../vcs_warn.config -l compile_dut.log -top cache_dut_tb -o cache_dut_tb

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Oct 10 00:35:30 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[LCA_FEATURES_ENABLED] Usage warning
  LCA features enabled by '-lca' argument on the command line.  For more 
  information regarding list of LCA features please refer to Chapter "LCA 
  features" in the VCS Release Notes

Parsing design file '/grade_job/student_dut/pkg/rv32i_mux_types.sv'
Parsing design file '/grade_job/student_dut/pkg/rv32i_types.sv'
Parsing design file '/grade_job/student_dut/pkg/my_types.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache_datapath.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache_control.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/ff_array.sv'
Parsing design file '/grade_job/student_dut/hdl/mp3.sv'
Parsing design file '/grade_job/student_dut/hdl/cacheline_adaptor.sv'
Parsing design file '/grade_job/student_dut/hdl/bus_adapter.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/regfile.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/alu.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/datapath.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/register.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/cpu.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/control.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/cmp.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/ir.sv'
Parsing design file '/grade_job/student_dut/hvl/monitor.sv'
Parsing design file '/grade_job/student_dut/hvl/bmem_itf.sv'
Parsing design file '/grade_job/student_dut/hvl/mp3_tag_array.v'
Parsing design file '/grade_job/student_dut/hvl/mp3_data_array.v'
Parsing design file '/grade_job/student_dut/hvl/cache_dut_tb.sv'
Parsing included file '../hvl/ag_instantiations.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_randomization_classes.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_helpers.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_covergroups.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_tests.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing design file '/grade_job/student_dut/hvl/rvfimon.v'
Parsing design file '/grade_job/student_dut/hvl/mon_itf.sv'
Parsing design file '/grade_job/student_dut/hvl/burst_memory.sv'
Parsing design file '/grade_job/student_dut/hvl/top_tb.sv'
Top Level Modules:
       cache_dut_tb

Warning-[UII-L] Interface not instantiated
/grade_job/student_dut/hvl/mon_itf.sv, 1
mon_itf
  Interface 'mon_itf' defined in logic library 'work' is never instantiated in
  design. It will be ignored.


Warning-[UII-L] Interface not instantiated
/grade_job/student_dut/hvl/bmem_itf.sv, 1
bmem_itf
  Interface 'bmem_itf' defined in logic library 'work' is never instantiated 
  in design. It will be ignored.

TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

11 modules and 0 UDP read.
recompiling package pcmux
recompiling package marmux
recompiling package cmpmux
recompiling package alumux
recompiling package regfilemux
recompiling package rv32i_types
recompiling package pkg_cache
recompiling module cache
recompiling module ff_array
recompiling module mp3_data_array
recompiling module cache_dut_tb
All of 11 modules done
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:   745 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../cache_dut_tb ]; then chmod a-x ../cache_dut_tb; fi
g++  -o ../cache_dut_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/cache_dut_tb.daidir -Wl,-rpath=./cache_dut_tb.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _589_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../cache_dut_tb up to date
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
CPU time: 1.037 seconds to compile + .421 seconds to elab + .294 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)

mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/pkg/my_types.sv /grade_job/student_dut/hdl/cache/cache_datapath.sv /grade_job/student_dut/hdl/cache/cache_control.sv /grade_job/student_dut/hdl/cache/cache.sv /grade_job/student_dut/hdl/cache/ff_array.sv /grade_job/student_dut/hdl/mp3.sv /grade_job/student_dut/hdl/cacheline_adaptor.sv /grade_job/student_dut/hdl/bus_adapter.sv /grade_job/student_dut/hdl/cpu/regfile.sv /grade_job/student_dut/hdl/cpu/alu.sv /grade_job/student_dut/hdl/cpu/datapath.sv /grade_job/student_dut/hdl/cpu/register.sv /grade_job/student_dut/hdl/cpu/cpu.sv /grade_job/student_dut/hdl/cpu/control.sv /grade_job/student_dut/hdl/cpu/cmp.sv /grade_job/student_dut/hdl/cpu/ir.sv /grade_job/student_dut/hvl/monitor.sv /grade_job/student_dut/hvl/bmem_itf.sv /grade_job/student_dut/hvl/mp3_tag_array.v /grade_job/student_dut/hvl/mp3_data_array.v /grade_job/student_dut/hvl/cache_dut_tb.sv /grade_job/student_dut/hvl/rvfimon.v /grade_job/student_dut/hvl/mon_itf.sv /grade_job/student_dut/hvl/burst_memory.sv /grade_job/student_dut/hvl/top_tb.sv -full64 -lca -sverilog +lint=all,noNS +incdir+../hvl -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -covg_enable_cross_queue -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Oct 10 00:35:33 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[LCA_FEATURES_ENABLED] Usage warning
  LCA features enabled by '-lca' argument on the command line.  For more 
  information regarding list of LCA features please refer to Chapter "LCA 
  features" in the VCS Release Notes

Parsing design file '/grade_job/student_dut/pkg/rv32i_mux_types.sv'
Parsing design file '/grade_job/student_dut/pkg/rv32i_types.sv'
Parsing design file '/grade_job/student_dut/pkg/my_types.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache_datapath.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache_control.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/cache.sv'
Parsing design file '/grade_job/student_dut/hdl/cache/ff_array.sv'
Parsing design file '/grade_job/student_dut/hdl/mp3.sv'
Parsing design file '/grade_job/student_dut/hdl/cacheline_adaptor.sv'
Parsing design file '/grade_job/student_dut/hdl/bus_adapter.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/regfile.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/alu.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/datapath.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/register.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/cpu.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/control.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/cmp.sv'
Parsing design file '/grade_job/student_dut/hdl/cpu/ir.sv'
Parsing design file '/grade_job/student_dut/hvl/monitor.sv'
Parsing design file '/grade_job/student_dut/hvl/bmem_itf.sv'
Parsing design file '/grade_job/student_dut/hvl/mp3_tag_array.v'
Parsing design file '/grade_job/student_dut/hvl/mp3_data_array.v'
Parsing design file '/grade_job/student_dut/hvl/cache_dut_tb.sv'
Parsing included file '../hvl/ag_instantiations.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_randomization_classes.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_helpers.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_covergroups.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing included file '../hvl/ag_tests.svh'.
Back to file '/grade_job/student_dut/hvl/cache_dut_tb.sv'.
Parsing design file '/grade_job/student_dut/hvl/rvfimon.v'
Parsing design file '/grade_job/student_dut/hvl/mon_itf.sv'
Parsing design file '/grade_job/student_dut/hvl/burst_memory.sv'
Parsing design file '/grade_job/student_dut/hvl/top_tb.sv'
Top Level Modules:
       top_tb
TimeScale is 1 ns / 1 ns

Lint-[WMIA-L] Width mismatch in assignment
/grade_job/student_dut/hdl/cpu/cmp.sv, 19
  Width mismatch between LHS and RHS is found in assignment:
  The following 32-bit wide expression is assigned to a 1-bit LHS target:
  Source info: f = 0;
  Expression: f

Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

63 modules and 0 UDP read.
recompiling module ff_array
recompiling module mp3
recompiling module cacheline_adaptor
recompiling module bus_adapter
recompiling module bmem_itf
recompiling module mp3_data_array
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
50 of 63 modules done
recompiling module riscv_formal_monitor_rv32imc_insn_sw
recompiling module riscv_formal_monitor_rv32imc_insn_xor
recompiling module riscv_formal_monitor_rv32imc_insn_xori
recompiling module mon_itf
recompiling module burst_memory
recompiling module top_tb
56 of 63 modules done
	However, due to incremental compilation, only 56 modules need to be compiled. 
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  2067 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _1906_archive_1.so _prev_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
CPU time: 2.407 seconds to compile + .482 seconds to elab + .323 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
 
 ``` 

 </details> 

Passed 29 out of 29 tests
## Test Results 
| Test Name | Result | 
| --- | --- | 
single_read|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
single_read_hit_timing|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
multiple_reads|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
multiple_reads_hit_timing|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
way_associativity|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
all_sets|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
total_capacity|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
plru_single_eviction|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
plru_multiple_evictions|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
plru_single_way|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
plru_single_way_comprehensive|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
single_write_hit|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
single_write_miss|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
single_write_hit_with_writeback|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
single_write_miss_with_writeback|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
multiple_writes_with_writebacks|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
writeback_all_cachelines|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
random|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
|hidden_test|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
lw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
lbu-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
lb-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
lhu-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
lh-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
sw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
sb-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
sh-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
|hidden_test|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">
synthesis|<img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png">

Autograder Job ID: 7f0be113-7966-43a0-b130-e09f5b1dabc6

Autograder Run ID: 91251800-4caa-44e5-b6b8-24977dbc200a
