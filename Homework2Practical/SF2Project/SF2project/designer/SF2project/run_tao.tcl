set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\SF2Project\SF2project\component\work\SF2project_MSS\SF2project_MSS.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\SF2Project\SF2project\component\work\SF2project\SF2project.v}
set_top_level {SF2project}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\SF2Project\SF2project\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework2Practical\SF2Project\SF2project\designer\SF2project\synthesis.fdc}
