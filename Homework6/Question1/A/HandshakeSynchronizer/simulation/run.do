quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer"

if {[file exists ../designer/HandshakeSynchronizer/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/HandshakeSynchronizer/simulation/postlayout already exists"
} else {
   file delete -force ../designer/HandshakeSynchronizer/simulation/postlayout 
   vlib ../designer/HandshakeSynchronizer/simulation/postlayout
}
vmap postlayout ../designer/HandshakeSynchronizer/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postlayout "${PROJECT_DIR}/designer/HandshakeSynchronizer/HandshakeSynchronizer_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -sv -work postlayout "${PROJECT_DIR}/stimulus/HandshakeSynchronizer_tb.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /DUT0=${PROJECT_DIR}/designer/HandshakeSynchronizer/HandshakeSynchronizer_ba.sdf +transport_path_delays postlayout.HandshakeSynchronizer_tb
do "wave.do"
run 1000ns
