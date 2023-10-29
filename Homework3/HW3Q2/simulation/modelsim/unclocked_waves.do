add wave -divider "Inputs"
add wave -label A -radix hexadecimal /HW3Q2_tb_unclocked/A
add wave -label B -radix hexadecimal /HW3Q2_tb_unclocked/B
add wave -label Op /HW3Q2_tb_unclocked/Op
add wave -divider "Outputs"
add wave -label Y -radix hexadecimal /HW3Q2_tb_unclocked/Y
add wave -divider "ALU Internal"
add wave -label out -radix hexadecimal /HW3Q2_tb_unclocked/dut/out
add wave -divider "TB Indices"
add wave -label i -radix unsigned /HW3Q2_tb_unclocked/i
add wave -label j -radix unsigned /HW3Q2_tb_unclocked/j
add wave -divider "Expected outputs"
add wave -label expOut -radix hexadecimal /HW3Q2_tb_unclocked/expOut
add wave -label expY -radix hexadecimal /HW3Q2_tb_unclocked/expY
add wave -label Correctness /HW3Q2_tb_unclocked/correctness
add wave -label error_count /HW3Q2_tb_unclocked/error_count
