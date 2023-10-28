module HW3Q1 (
// Inputs:
	input 		clk,
	input 		RdPtrClr,
	input 		WrPtrClr,
	input 		rdinc,
	input 		wrinc,
	input 		[8:0] DataIn,
	input 		rden,
	input 		wden,
// Outputs:
	output 		[8:0] DataOut
);

reg [8:0] MEM [0:7]; // Array of registers used for the FIFO (9 bits wide, 8 blocks deep)
reg [2:0] RdPtr = 0; // Indicates the next memory location to read from
reg [2:0] WrPtr = 0; // Indicates the next memory location to write to
reg [8:0] Data; 		// Register to clock out the data


assign DataOut = Data; // If rden is not high, then set DataOut to high Z

always @(posedge clk) begin
	if(RdPtrClr == 1'b1) begin 				// Pointer clear
		RdPtr = 3'b000;
	end else if (rdinc == 1'b1 && rden == 1'b0) begin // Pointer increment without read
		RdPtr = RdPtr + 1;
	end else if (rden == 1'b1) begin 		// Read and increment pointer
		Data = MEM [RdPtr];
		RdPtr = RdPtr + 1;
	end 
	if (rden == 1'b0) begin 					// If rden isn't high, hold in high z (synchronously)
		Data = 9'bZZZZZZZZZ;
	end
	
	if(WrPtrClr == 1'b1) begin 				// Pointer clear
		WrPtr = 3'b000;
	end else if (wrinc == 1'b1 && wden == 1'b0) begin // Pointer increment without write
		WrPtr = WrPtr + 1;	
	end else if (wden == 1'b1) begin 		// Write value and increment pointer
		MEM [WrPtr] = DataIn;
		WrPtr = WrPtr + 1;
	end
end


endmodule