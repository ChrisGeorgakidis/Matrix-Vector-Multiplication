
set search_path {/home/inf2014/istamoulis/SoC}
set_units -time ns -resistance kOhm -capacitance fF -voltage V -current mA
set target_library {NangateOpenCellLibrary_typical.db}
set synthetic_library {dw_foundation.sldb}
set link_library {NangateOpenCellLibrary_typical.db dw_foundation.sldb *}

analyze -f VHDL {project2.vhd counter_address_generator.vhd fsm.vhd mac.vhd ramA.vhd ramR.vhd rom.vhd}
elaborate project2
current_design project2
create_clock "clock" -name clock -period 1 -waveform { 0 0.5 }


link
compile
optimize_registers
check_design

exec mkdir reports
report_constraint -all_violators > /home/inf2014/cgeorgakidis/SoC/reports/constraints_report.txt
report_timing  > /home/inf2014/cgeorgakidis/SoC/reports/timing_report.txt
report_area > /home/inf2014/cgeorgakidis/SoC/reports/area_report.txt
report_power -analysis_effort high > /home/inf2014/cgeorgakidis/SoC/reports/power_report.txt

write -h -f ddc -output final.ddc
write -h -f VHDL -output final.vhd
write -h -f verilog -output final.v

write_sdc final.sdc
write_sdf final.sdf
