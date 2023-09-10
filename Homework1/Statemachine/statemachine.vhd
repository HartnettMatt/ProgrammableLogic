-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Sat Sep 09 15:56:58 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY statemachine IS 
	PORT
	(
		Y :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		X :  OUT  STD_LOGIC
	);
END statemachine;

ARCHITECTURE bdf_type OF statemachine IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



PROCESS(clk,rst)
BEGIN
IF (rst = '0') THEN
	X <= '0';
ELSIF (RISING_EDGE(clk)) THEN
	X <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(Y);



END bdf_type;