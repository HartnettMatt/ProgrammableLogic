set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {PLL_SUPPLY} {PLL_SUPPLY_25}
set_def USE_CONSTRAINTS_FLOW 1
set_netlist -afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A.afl} -adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A.adl}
set_constraints   {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A.tcml}
set_placement   {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A.loc}
set_routing     {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A.seg}
