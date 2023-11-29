quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a/HW5_1a"

if {[file exists ../designer/CDC3FF/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/CDC3FF/simulation/postlayout already exists"
} else {
   file delete -force ../designer/CDC3FF/simulation/postlayout 
   vlib ../designer/CDC3FF/simulation/postlayout
}
vmap postlayout ../designer/CDC3FF/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postlayout "${PROJECT_DIR}/designer/CDC3FF/CDC3FF_ba.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /CDC3FF=${PROJECT_DIR}/designer/CDC3FF/CDC3FF_ba.sdf +transport_path_delays postlayout.CDC3FF
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
