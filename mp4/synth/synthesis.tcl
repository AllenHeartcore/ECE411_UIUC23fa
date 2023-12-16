set hdlin_ff_always_sync_set_reset true
set hdlin_ff_always_async_set_reset true
set hdlin_infer_multibit default_all
set hdlin_check_no_latch true
set_host_options -max_cores 4
set_app_var report_default_significant_digits 6
set design_toplevel mp4

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
set alib_library_analysis_path [getenv STD_CELL_ALIB]

set symbol_library [list generic.sdb]
set synthetic_library [list dw_foundation.sldb]
set target_library [getenv STD_CELL_LIB]
set sram_library [getenv SRAM_LIB]

if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}

set design_clock_pin clk
set design_reset_pin rst

analyze -library WORK -format sverilog [getenv PKG_SRCS]

set modules [split [getenv HDL_SRCS] " "]
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}

elaborate $design_toplevel
current_design $design_toplevel
check_design

set_wire_load_model -name "5K_hvratio_1_1"
set_wire_load_mode enclosed

set clk_name $design_clock_pin
set clk_period [expr [getenv CLOCK_PERIOD_PS] / 1000.0]
create_clock -period $clk_period -name my_clk $clk_name
set_fix_hold [get_clocks my_clk]

set_input_delay 0.5 [all_inputs] -clock my_clk
set_output_delay 0.5 [all_outputs] -clock my_clk
set_load 0.1 [all_outputs]
set_max_fanout 1 [all_inputs]
set_fanout_load 8 [all_outputs]

link

# compile_ultra -gate_clock -retime
compile

current_design $design_toplevel

report_area -hier > reports/area.rpt
report_timing -delay max > reports/timing.rpt
check_design > reports/check.rpt

write_file -format ddc -hierarchy -output outputs/synth.ddc
write_file -format verilog -hierarchy -output [format "outputs/%s.gate.v" $design_toplevel]

exit
