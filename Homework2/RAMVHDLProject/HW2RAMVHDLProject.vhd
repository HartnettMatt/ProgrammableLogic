--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 1 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file HW2RAMVHDLProject.vhd
-- @brief Application Assignment 2-Top level module for VHDL RAM 
-- @version: 1.0 
-- Date of current revision:  @date 2023-09-16  
-- Target FPGA: [Intel Altera Cyclone IV] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the top level code to instantiate
--									the RAM IP generated for question 8.
--
--  Hierarchy:  Insantiates the altsyncramVHDL IP module
--                
--  Designed for: Tim Scherr
--						University of Colorado Boulder
--						ECEN 5863, Homework 2
--                
--  Designed by:  @author Matt Hartnett
--                University of Colorado Boulder
--                maha7943@colorado.edu
--
--      Copyright (c) 2023 by Matt Hartnett
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 

library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity HW2RAMVHDLProject is port (                 	
	clk				: IN STD_LOGIC
	
	);        		
end HW2RAMVHDLProject;                             	

architecture Behavioral of HW2RAMVHDLProject is

component altsyncramVHDL IS
	PORT
	(
		clock			: IN STD_LOGIC  := '1';
		data			: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdaddress	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		wraddress	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		wren			: IN STD_LOGIC  := '0';
		q				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

begin


	
end Behavioral;




    