add wave -divider "Inputs"
add wave -label A -radix hexadecimal /HW3Q2_tb_clocked/A
add wave -label B -radix hexadecimal /HW3Q2_tb_clocked/B
add wave -label clk /HW3Q2_tb_clocked/clock
add wave -label Op /HW3Q2_tb_clocked/Op
add wave -divider "Outputs"
add wave -label Y -radix hexadecimal /HW3Q2_tb_clocked/Y
add wave -divider "ALU Internal"
add wave -label out -radix hexadecimal /HW3Q2_tb_clocked/dut/out
add wave -divider "TB Indices"
add wave -label i -radix unsigned /HW3Q2_tb_clocked/i
add wave -label j -radix unsigned /HW3Q2_tb_clocked/j
add wave -divider "Expected outputs"
add wave -label expOut -radix hexadecimal /HW3Q2_tb_clocked/expOut
add wave -label expY -radix hexadecimal /HW3Q2_tb_clocked/expY
add wave -label Correctness /HW3Q2_tb_clocked/correctness
add wave -label error_count /HW3Q2_tb_clocked/error_count
