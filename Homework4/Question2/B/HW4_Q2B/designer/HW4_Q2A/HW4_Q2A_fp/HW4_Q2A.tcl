open_project -project {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A_fp\HW4_Q2A.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S010} \
    -fpga {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A.map} \
    -header {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A.hdr} \
    -spm {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A.spm} \
    -dca {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A.dca}
export_single_ppd \
    -name {M2S010} \
    -file {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2A\HW4_Q2A.ppd}

save_project
close_project
