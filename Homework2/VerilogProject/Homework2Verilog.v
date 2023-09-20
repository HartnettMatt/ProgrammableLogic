//--------------------------------------------------------------------------------
//--
//-- [Replace [items in brackets] with your content]
//-- @file Homework2Verilog.v
//-- @brief Top level module for the Homework2Verilog project
//-- @version: 1.0 
//-- Date of current revision:  @date 2023-09-20 
//-- Target FPGA: [Intel Altera Cyclone IV] 
//-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
//--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//--             [Quartus Prime 16.1]  for place and route if applied
//--             
//--  Functional Description:  This file contains the verilog which describes the 
//--               top level module of this project. 
// 
//--  Hierarchy:  Each problem is instantiated as a module that has signals 
//--					connected to the output port of the top level module.
//--  
//--  Designed for: Tim Scherr
//--                Univeristy of Colorado Boulder
//--                ECEN 5863
//--                
//--  Designed by:  @author Matt Hartnett
//--                University of Colorado Boulder
//--                maha7943@colorado.edu
//-- 
//--      Copyright (c) 2019 by Tim Scherr
//--
//-- Redistribution, modification or use of this software in source or binary
//-- forms is permitted as long as the files maintain this copyright. Users are
//-- permitted to modify this and use it to learn about the field of HDl code.
//-- Tim Scherr and the University of Colorado are not liable for any misuse
//-- of this material.
//------------------------------------------------------------------------------



module Homework2Verilog(
	input [1:0] A0,
	input [1:0] B0,
	output Equals0,
	input [3:0] P0,
	input clk, 
	input SR0, 
	input PE0, 
	input CEP0, 
	input CET0,
	output TC,
	output [3:0] Q0
);



//=======================================================
//  REG/WIRE declarations
//=======================================================



//=======================================================
//  Structural coding
//=======================================================

HW2P6 U0(.A(A0), .B(B0), .Equals(Equals0));
HW2P7 U1(.P(P0), .CP(clk), .SR(SR0), .PE(PE0), .CEP(CEP0), .CET(CET0), .Q(Q0), .TC(TC0));


endmodule
