set symbol_library [list generic.sdb]
set synthetic_library [list dw_foundation.sldb]
set target_library [getenv STD_CELL_LIB]
set sram_library [getenv SRAM_LIB]

if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}

read_file -format ddc outputs/synth.ddc

read_saif -input ../sim/dump.fsdb.saif -instance top_tb/dut
report_power -analysis_effort high -hierarchy > reports/power.rpt
exit
