read_sdc -scenario "timing_analysis" -netlist "optimized" -pin_separator "/" -ignore_errors {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5/designer/CDC3FF/timing_analysis.sdc}
set_options -analysis_scenario "timing_analysis" 
save
