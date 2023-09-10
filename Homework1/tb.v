`timescale 1ns / 100ps

module tb();

reg 	A0; 
reg	A1; 
reg	A2; 
reg	A3;

wire	Y[7:0];

Homework1 dut(
	.A0(A0),
	.A1(A1),
	.A2(A2),
	.A3(A3),
	.Y0(Y[0]),
	.Y1(Y[1]),
	.Y2(Y[2]),
	.Y3(Y[3]),
	.Y4(Y[4]),
	.Y5(Y[5]),
	.Y6(Y[6]),
	.Y7(Y[7])
	);
	
	initial
	begin
		A0 = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;
		#20
		A0 = 1;
		$stop;
		$finish;
		end
endmodule
		