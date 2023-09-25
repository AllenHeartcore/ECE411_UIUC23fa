set hdlin_ff_always_sync_set_reset true
set hdlin_ff_always_async_set_reset true
set hdlin_infer_multibit default_all
set hdlin_check_no_latch true
set_host_options -max_cores 4
set_app_var report_default_significant_digits 6
set design_toplevel mp3

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

define_design_lib WORK -path ./work
set alib_library_analysis_path [getenv STD_CELL_ALIB]

set symbol_library [list generic.sdb]
set synthetic_library [list dw_foundation.sldb]
set target_library [getenv STD_CELL_LIB]
set link_library   [list "*" $target_library $synthetic_library [getenv SRAM_LIB]]

set design_clock_pin clk
set design_reset_pin rst

set pkgs [glob -nocomplain ../pkg/*.sv]
foreach module $pkgs {
    puts "analyzing $module"
    analyze -library WORK -format sverilog "${module}"
}

set modules [glob -nocomplain ../hdl/cpu/*.sv]
foreach module $modules {
   puts "analyzing $module"
   analyze -library WORK -format sverilog "${module}"
}

set modules [glob -nocomplain ../hdl/cache/*.sv]
foreach module $modules {
   puts "analyzing $module"
   analyze -library WORK -format sverilog "${module}"
}

set modules [glob -nocomplain ../hdl/*.sv]
foreach module $modules {
   puts "analyzing $module"
   analyze -library WORK -format sverilog "${module}"
}

elaborate $design_toplevel
current_design $design_toplevel
check_design

set_wire_load_model -name "5K_hvratio_1_1"
set_wire_load_mode enclosed

set clk_name $design_clock_pin
create_clock -period 10 -name my_clk $clk_name
# set_dont_touch_network [get_clocks my_clk]
# set_ideal_network [get_ports clk]
set_clock_uncertainty 0.1 [get_clocks my_clk]
set_fix_hold [get_clocks my_clk]

set_input_delay 1 [all_inputs] -clock my_clk
set_output_delay 1 [all_outputs] -clock my_clk
set_load 0.1 [all_outputs]
set_max_fanout 1 [all_inputs]
set_fanout_load 8 [all_outputs]

link

# compile_ultra -gate_clock -retime
compile

current_design $design_toplevel

report_area -hier > reports/area.rpt
report_timing > reports/timing.rpt
check_design > reports/check.rpt

write_file -format ddc -hierarchy -output outputs/synth.ddc
write_file -format verilog -hierarchy -output [format "outputs/%s.gate.v" $design_toplevel]

exit
