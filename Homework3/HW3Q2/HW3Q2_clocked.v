// Designed by: Matt Hartnett
// Date: 10/28/2023

module HW3Q2_clocked (
// Inputs:
	input		[31:0] A,
	input		[31:0] B,
	input		[4:0] Op,
	input 	clk,
// Outputs:
	output	reg [31:0] Y
);

	reg [31:0] out;



	always @(*) begin // This handles the upper three bits of the opcode
		case (Op[4:2])
		3'b000 	: 	out <= A;
		3'b001 	: 	out <= A + B;
		3'b010 	: 	out <= A - B;
		3'b011 	: 	out <= A & B;
		3'b100 	: 	out <= A | B;
		3'b101 	: 	out <= A + 1;
		3'b110 	: 	out <= A - 1;
		3'b111 	: 	out <= B;

		default	: 	out <= 32'bZ;
		
		endcase

	end

	// You only need to clock the output to make this design synchrnous 
	always @(posedge clk) begin // This handles the lower two bits of the opcode
		case (Op[1:0])
		2'b00 	: 	Y <= out;
		2'b01 	: 	Y <= out << 1;
		2'b10 	: 	Y <= out >> 1;
		2'b11 	: 	Y <= 32'b0;

		default	: 	Y <= 32'bZ;
		
		endcase

	end

endmodule