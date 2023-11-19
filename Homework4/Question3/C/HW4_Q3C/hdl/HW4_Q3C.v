///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Colorado Boulder
//
// File: HW4_Q3C.v
// File history:
//      1.0: 11/18/2023: Initial work
//
// Description: A top level module for a 24 bit counter on a SmartFusion2 FPGA
//
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


module HW4_Q3A( clk, rst_n, q, TC );
    input           clk;
    input           rst_n;
    output  [23:0]  q;
    output			TC;
    
	parameter n = 24; 			// Quantity of bits for the counter
	
	reg [n-1:0] Q;
	wire Reset_n;
	wire Clock;
	
	assign Clock = clk;
	assign Reset_n = rst_n;
	assign q = Q;
	assign TC = Q[n-1];
	
	always @(posedge Clock or negedge Reset_n)
	begin
		if(!Reset_n) begin		// Active low reset
			Q <= 1'b0;
		end else begin
			// Count up from Q = 0 to 2^n - 1
			Q <= Q + 1;
		end
	end

endmodule

