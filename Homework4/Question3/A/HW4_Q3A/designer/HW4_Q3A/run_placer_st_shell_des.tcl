set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   -1 \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name HW4_Q3A
set_workdir {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A}
set_log     {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\HW4_Q3A_sdc.log}
set_design_state pre_layout
