###################################################################

# Created by write_sdc on Sun Jun  4 19:07:56 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_max_area 0
create_clock [get_ports clock]  -period 1  -waveform {0 0.5}
