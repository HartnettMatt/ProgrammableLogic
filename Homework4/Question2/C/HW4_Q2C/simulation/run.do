quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/C/HW4_Q2C"

if {[file exists ../designer/HW4_Q2C/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/HW4_Q2C/simulation/postlayout already exists"
} else {
   file delete -force ../designer/HW4_Q2C/simulation/postlayout 
   vlib ../designer/HW4_Q2C/simulation/postlayout
}
vmap postlayout ../designer/HW4_Q2C/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postlayout "${PROJECT_DIR}/designer/HW4_Q2C/HW4_Q2C_ba.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /HW4_Q2C=${PROJECT_DIR}/designer/HW4_Q2C/HW4_Q2C_ba.sdf +transport_path_delays postlayout.HW4_Q2C
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
