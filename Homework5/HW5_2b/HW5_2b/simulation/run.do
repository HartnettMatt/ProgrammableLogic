quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_2b/HW5_2b"

if {[file exists ../designer/SlowFast/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/SlowFast/simulation/postlayout already exists"
} else {
   file delete -force ../designer/SlowFast/simulation/postlayout 
   vlib ../designer/SlowFast/simulation/postlayout
}
vmap postlayout ../designer/SlowFast/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vcom -2008 -explicit  -work postlayout "${PROJECT_DIR}/designer/SlowFast/SlowFast_ba.vhd"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /SlowFast=${PROJECT_DIR}/designer/SlowFast/SlowFast_ba.sdf +transport_path_delays postlayout.SlowFast
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
