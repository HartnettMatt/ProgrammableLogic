// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Sun Sep 03 16:02:59 2023"

module Homework1(
	A0,
	A1,
	A3,
	A2,
	Y7,
	Y6,
	Y5,
	Y4,
	Y3,
	Y2,
	Y1,
	Y0
);


input wire	A0;
input wire	A1;
input wire	A3;
input wire	A2;
output wire	Y7;
output wire	Y6;
output wire	Y5;
output wire	Y4;
output wire	Y3;
output wire	Y2;
output wire	Y1;
output wire	Y0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;

assign	Y1 = 0;
assign	Y0 = A0;
assign	SYNTHESIZED_WIRE_4 = 0;
assign	SYNTHESIZED_WIRE_9 = 0;
assign	SYNTHESIZED_WIRE_13 = 0;




Homework1_1BitAdder	b2v_16_1(
	.A0(A2),
	.B0(SYNTHESIZED_WIRE_0),
	.Ci(SYNTHESIZED_WIRE_1),
	.Co(SYNTHESIZED_WIRE_6),
	.S0(SYNTHESIZED_WIRE_3));


Homework1_1BitAdder	b2v_16_2(
	.A0(SYNTHESIZED_WIRE_2),
	.B0(SYNTHESIZED_WIRE_3),
	.Ci(SYNTHESIZED_WIRE_4),
	.Co(SYNTHESIZED_WIRE_7),
	.S0(Y4));


Homework1_1BitAdder	b2v_32(
	.A0(SYNTHESIZED_WIRE_5),
	.B0(SYNTHESIZED_WIRE_6),
	.Ci(SYNTHESIZED_WIRE_7),
	.Co(SYNTHESIZED_WIRE_11),
	.S0(Y5));


Homework1_1BitAdder	b2v_4(
	.A0(A1),
	.B0(SYNTHESIZED_WIRE_8),
	.Ci(SYNTHESIZED_WIRE_9),
	.Co(SYNTHESIZED_WIRE_14),
	.S0(Y2));


Homework1_1BitAdder	b2v_64(
	.A0(A3),
	.B0(SYNTHESIZED_WIRE_10),
	.Ci(SYNTHESIZED_WIRE_11),
	.Co(Y7),
	.S0(Y6));


Homework1_1BitAdder	b2v_8(
	.A0(SYNTHESIZED_WIRE_12),
	.B0(SYNTHESIZED_WIRE_13),
	.Ci(SYNTHESIZED_WIRE_14),
	.Co(SYNTHESIZED_WIRE_1),
	.S0(Y3));




assign	SYNTHESIZED_WIRE_10 = A3 & A2;

assign	SYNTHESIZED_WIRE_5 = A3 & A1;

assign	SYNTHESIZED_WIRE_12 = A2 & A0;

assign	SYNTHESIZED_WIRE_2 = A3 & A0;

assign	SYNTHESIZED_WIRE_0 = A2 & A1;

assign	SYNTHESIZED_WIRE_8 = A1 & A0;



endmodule
