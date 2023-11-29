read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1b/HW5_1b/designer/CDC3FF/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\designer\CDC3FF\CDC3FF_layout_combinational_loops.xml}
report -type slack {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\designer\CDC3FF\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\designer\CDC3FF\CDC3FF_place_and_route_constraint_coverage.xml}]
set reportfile {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\designer\CDC3FF\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp