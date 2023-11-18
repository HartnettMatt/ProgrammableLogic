///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Colorado Boulder
//
// File: HW4_Q2B.v
// File history:
//      1.0: 11/18/2023: Initial work
//
// Description: A top level module for a 16 bit counter on a SmartFusion2 FPGA
//
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 


module HW4_Q2B( clk, rst_n, q, rollover, sC ); /* synthesis syn_noprune=1 */;
    input           clk;
    input           rst_n;
    output  [15:0]  q;
    output          rollover;
    output	[3:0] 	sC;
    
	parameter n = 16; 			// Quantity of bits for the counter
	parameter k = 65536;		// Highest value of counter
	
	reg [n-1:0] Q;
	reg Rollover;
	wire Reset_n;
	wire Clock;
	wire [15:0] inverterString /* synthesis syn_keep=1 */;
	
	assign Clock = clk;
	assign Reset_n = rst_n;
	assign q = Q;
	assign rollover = Rollover;
	
	always @(posedge Clock or negedge Reset_n)
	begin
		if(!Reset_n) begin		// Active low reset
			Q <= 1'b0;
			Rollover <= 1'b0;
		end else begin
			// Count up from Q = 0 to k-1
			if(Q < k-1)
				Q <= Q + 1'b1;
			else
				Q <= 0;
			// Rollover (has to be k-2 due to non-blocking assignments):
			if (Q == k-2)
				Rollover <= 1'b1;
			else
				Rollover <= 1'b0;
		end
	end

	genvar i;
	assign inverterString[0] = clk;
	assign sC[0] = inverterString[3];
	assign sC[1] = inverterString[7];
	assign sC[2] = inverterString[11];
	assign sC[3] = inverterString[15];
	for(i = 1; i < 16; i = i + 1) begin
		assign inverterString[i] = ~inverterString[i-1];
	end
 
endmodule

