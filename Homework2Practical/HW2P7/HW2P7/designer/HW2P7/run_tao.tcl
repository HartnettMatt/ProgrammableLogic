set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\HW2P7\HW2P7\hdl\HW2P7.v}
set_top_level {HW2P7}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\HW2P7\HW2P7\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\HW2P7\HW2P7\designer\HW2P7\synthesis.fdc}
