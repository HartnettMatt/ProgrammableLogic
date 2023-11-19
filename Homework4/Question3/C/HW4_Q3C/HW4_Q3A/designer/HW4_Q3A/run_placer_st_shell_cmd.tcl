read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question3/A/HW4_Q3A/designer/HW4_Q3A/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\HW4_Q3A_layout_combinational_loops.xml}
report -type slack {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\HW4_Q3A_place_and_route_constraint_coverage.xml}]
set reportfile {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp