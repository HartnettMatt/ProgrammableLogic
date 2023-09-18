--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 1 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file Homework2.vhd
-- @brief Application Assignment 2-Top level module
-- @version: 1.0 
-- Date of current revision:  @date 2023-09-16  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the top level code to test the
--									other modules in assignment 2.
--  Hierarchy:  Only 1 level for this simple device 
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
                                             		
entity Homework2 is port (                 	
	a0: in bit_vector(0 to 3);
	b0: out std_logic_vector(3 to 0);
	c0: in bit_vector(5 downto 0); 
	A1, B1, C1: in std_logic; 			
	Y1: out std_logic;
	CP2: in std_logic; -- clock
	SR2: in std_logic; -- Active low, synchronous reset
	P2: in std_logic_vector(3 downto 0); -- Parallel input
	PE2: in std_logic; -- Parallel Enable (Load)
	CEP2: in std_logic; -- Count enable parallel input
	CET2: in std_logic; -- Count enable trickle input
	Q2: out std_logic_vector(3 downto 0);
	TC2: out std_logic -- Terminal Count
	
	);        		
end Homework2;                             	

architecture Behavioral of Homework2 is


	component find_errors is port(
		a: in bit_vector(0 to 3);
		b: out std_logic_vector(3 to 0);
		c: in bit_vector(5 downto 0)); 
	end component;
	
	component Majority is port (                 	
		 A, B, C: in std_logic; 			
		 Y: out std_logic);            		
	end component;
	
	component HW2Q5 is port (
		CP: in std_logic; -- clock
		SR: in std_logic; -- Active low, synchronous reset
		P: in std_logic_vector(3 downto 0); -- Parallel input
		PE: in std_logic; -- Parallel Enable (Load)
		CEP: in std_logic; -- Count enable parallel input
		CET: in std_logic; -- Count enable trickle input
		Q: out std_logic_vector(3 downto 0);
		TC: out std_logic -- Terminal Count
	);
	end component; 
	
begin

	U0 : find_errors port map(
		a 		=> a0,
		b 		=> b0,
		c 		=> c0
	);
	
	
	U1 : Majority port map(
		A 		=> A1,
		B 		=> B1,
		C 		=> C1,
		Y 		=> Y1
	);
	
	U2 : HW2Q5 port map(
		CP 	=> CP2,
		SR 	=> SR2,
		P 		=> P2,
		PE 	=> PE2,
		CEP 	=> CEP2,
		CET 	=> CET2,
		Q 		=> Q2,
		TC 	=> TC2
	);
	
end Behavioral;




    