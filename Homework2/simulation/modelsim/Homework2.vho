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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/19/2023 23:02:45"

-- 
-- Device: Altera 5CEFA2F23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Homework2 IS
    PORT (
	a0 : IN std_logic_vector(0 TO 3);
	c0 : IN std_logic_vector(5 DOWNTO 0);
	A1 : IN std_logic;
	B1 : IN std_logic;
	C1 : IN std_logic;
	Y1 : BUFFER std_logic;
	CP2 : IN std_logic;
	SR2 : IN std_logic;
	P2 : IN std_logic_vector(3 DOWNTO 0);
	PE2 : IN std_logic;
	CEP2 : IN std_logic;
	CET2 : IN std_logic;
	Q2 : BUFFER std_logic_vector(3 DOWNTO 0);
	TC2 : BUFFER std_logic
	);
END Homework2;

-- Design Ports Information
-- a0[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[5]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC2	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CET2	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR2	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PE2	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEP2	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP2	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Homework2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic_vector(0 TO 3);
SIGNAL ww_c0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_CP2 : std_logic;
SIGNAL ww_SR2 : std_logic;
SIGNAL ww_P2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PE2 : std_logic;
SIGNAL ww_CEP2 : std_logic;
SIGNAL ww_CET2 : std_logic;
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TC2 : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \c0[0]~input_o\ : std_logic;
SIGNAL \c0[1]~input_o\ : std_logic;
SIGNAL \c0[2]~input_o\ : std_logic;
SIGNAL \c0[3]~input_o\ : std_logic;
SIGNAL \c0[4]~input_o\ : std_logic;
SIGNAL \c0[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \U1|Y~0_combout\ : std_logic;
SIGNAL \CP2~input_o\ : std_logic;
SIGNAL \CP2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CET2~input_o\ : std_logic;
SIGNAL \CEP2~input_o\ : std_logic;
SIGNAL \PE2~input_o\ : std_logic;
SIGNAL \P2[0]~input_o\ : std_logic;
SIGNAL \SR2~input_o\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \P2[1]~input_o\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \P2[2]~input_o\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux1~1_combout\ : std_logic;
SIGNAL \P2[3]~input_o\ : std_logic;
SIGNAL \U2|Mux0~1_combout\ : std_logic;
SIGNAL \U2|Mux0~2_combout\ : std_logic;
SIGNAL \U2|TC~combout\ : std_logic;
SIGNAL \U2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_P2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_P2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_P2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_CEP2~input_o\ : std_logic;
SIGNAL \ALT_INV_PE2~input_o\ : std_logic;
SIGNAL \ALT_INV_SR2~input_o\ : std_logic;
SIGNAL \ALT_INV_P2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CET2~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_C1~input_o\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_count\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a0 <= a0;
ww_c0 <= c0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_C1 <= C1;
Y1 <= ww_Y1;
ww_CP2 <= CP2;
ww_SR2 <= SR2;
ww_P2 <= P2;
ww_PE2 <= PE2;
ww_CEP2 <= CEP2;
ww_CET2 <= CET2;
Q2 <= ww_Q2;
TC2 <= ww_TC2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_P2[3]~input_o\ <= NOT \P2[3]~input_o\;
\ALT_INV_P2[2]~input_o\ <= NOT \P2[2]~input_o\;
\ALT_INV_P2[1]~input_o\ <= NOT \P2[1]~input_o\;
\ALT_INV_CEP2~input_o\ <= NOT \CEP2~input_o\;
\ALT_INV_PE2~input_o\ <= NOT \PE2~input_o\;
\ALT_INV_SR2~input_o\ <= NOT \SR2~input_o\;
\ALT_INV_P2[0]~input_o\ <= NOT \P2[0]~input_o\;
\ALT_INV_CET2~input_o\ <= NOT \CET2~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_C1~input_o\ <= NOT \C1~input_o\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\U2|ALT_INV_Mux0~1_combout\ <= NOT \U2|Mux0~1_combout\;
\U2|ALT_INV_Mux1~0_combout\ <= NOT \U2|Mux1~0_combout\;
\U2|ALT_INV_Mux0~0_combout\ <= NOT \U2|Mux0~0_combout\;
\U2|ALT_INV_count\(3) <= NOT \U2|count\(3);
\U2|ALT_INV_count\(2) <= NOT \U2|count\(2);
\U2|ALT_INV_count\(1) <= NOT \U2|count\(1);
\U2|ALT_INV_count\(0) <= NOT \U2|count\(0);

-- Location: IOOBUF_X18_Y45_N53
\Y1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Y~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1);

-- Location: IOOBUF_X0_Y21_N5
\Q2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(0),
	devoe => ww_devoe,
	o => ww_Q2(0));

-- Location: IOOBUF_X0_Y20_N22
\Q2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(1),
	devoe => ww_devoe,
	o => ww_Q2(1));

-- Location: IOOBUF_X0_Y21_N39
\Q2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(2),
	devoe => ww_devoe,
	o => ww_Q2(2));

-- Location: IOOBUF_X0_Y21_N56
\Q2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(3),
	devoe => ww_devoe,
	o => ww_Q2(3));

-- Location: IOOBUF_X0_Y21_N22
\TC2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|TC~combout\,
	devoe => ww_devoe,
	o => ww_TC2);

-- Location: IOIBUF_X18_Y45_N18
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X18_Y45_N1
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X18_Y45_N35
\C1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: MLABCELL_X18_Y44_N36
\U1|Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Y~0_combout\ = ( \C1~input_o\ & ( (\B1~input_o\) # (\A1~input_o\) ) ) # ( !\C1~input_o\ & ( (\A1~input_o\ & \B1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111100000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datac => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_C1~input_o\,
	combout => \U1|Y~0_combout\);

-- Location: IOIBUF_X54_Y18_N61
\CP2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP2,
	o => \CP2~input_o\);

-- Location: CLKCTRL_G10
\CP2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CP2~input_o\,
	outclk => \CP2~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y18_N61
\CET2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CET2,
	o => \CET2~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\CEP2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEP2,
	o => \CEP2~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\PE2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PE2,
	o => \PE2~input_o\);

-- Location: IOIBUF_X0_Y19_N38
\P2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(0),
	o => \P2[0]~input_o\);

-- Location: IOIBUF_X0_Y19_N4
\SR2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR2,
	o => \SR2~input_o\);

-- Location: LABCELL_X1_Y19_N42
\U2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = ( \U2|count\(0) & ( \SR2~input_o\ & ( (!\PE2~input_o\ & \P2[0]~input_o\) ) ) ) # ( !\U2|count\(0) & ( \SR2~input_o\ & ( (!\PE2~input_o\ & (((\P2[0]~input_o\)))) # (\PE2~input_o\ & (\CET2~input_o\ & (\CEP2~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111100010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CET2~input_o\,
	datab => \ALT_INV_CEP2~input_o\,
	datac => \ALT_INV_PE2~input_o\,
	datad => \ALT_INV_P2[0]~input_o\,
	datae => \U2|ALT_INV_count\(0),
	dataf => \ALT_INV_SR2~input_o\,
	combout => \U2|Mux3~0_combout\);

-- Location: FF_X1_Y19_N44
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputCLKENA0_outclk\,
	d => \U2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: IOIBUF_X0_Y18_N95
\P2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(1),
	o => \P2[1]~input_o\);

-- Location: LABCELL_X1_Y19_N36
\U2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = ( \PE2~input_o\ & ( (\SR2~input_o\ & (\CEP2~input_o\ & \CET2~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SR2~input_o\,
	datab => \ALT_INV_CEP2~input_o\,
	datac => \ALT_INV_CET2~input_o\,
	datae => \ALT_INV_PE2~input_o\,
	combout => \U2|Mux0~0_combout\);

-- Location: LABCELL_X1_Y19_N6
\U2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = ( \U2|count\(1) & ( \U2|count\(0) & ( (\SR2~input_o\ & (\P2[1]~input_o\ & !\PE2~input_o\)) ) ) ) # ( !\U2|count\(1) & ( \U2|count\(0) & ( ((\SR2~input_o\ & (\P2[1]~input_o\ & !\PE2~input_o\))) # (\U2|Mux0~0_combout\) ) ) ) # ( 
-- \U2|count\(1) & ( !\U2|count\(0) & ( ((\SR2~input_o\ & (\P2[1]~input_o\ & !\PE2~input_o\))) # (\U2|Mux0~0_combout\) ) ) ) # ( !\U2|count\(1) & ( !\U2|count\(0) & ( (\SR2~input_o\ & (\P2[1]~input_o\ & !\PE2~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000111110000111100011111000011110001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SR2~input_o\,
	datab => \ALT_INV_P2[1]~input_o\,
	datac => \U2|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_PE2~input_o\,
	datae => \U2|ALT_INV_count\(1),
	dataf => \U2|ALT_INV_count\(0),
	combout => \U2|Mux2~0_combout\);

-- Location: FF_X1_Y19_N8
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputCLKENA0_outclk\,
	d => \U2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: IOIBUF_X0_Y18_N78
\P2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(2),
	o => \P2[2]~input_o\);

-- Location: LABCELL_X1_Y19_N21
\U2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = ( !\PE2~input_o\ & ( \SR2~input_o\ & ( \P2[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_P2[2]~input_o\,
	datae => \ALT_INV_PE2~input_o\,
	dataf => \ALT_INV_SR2~input_o\,
	combout => \U2|Mux1~0_combout\);

-- Location: LABCELL_X1_Y19_N54
\U2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux1~1_combout\ = ( \U2|count\(2) & ( \U2|count\(0) & ( ((\U2|Mux0~0_combout\ & !\U2|count\(1))) # (\U2|Mux1~0_combout\) ) ) ) # ( !\U2|count\(2) & ( \U2|count\(0) & ( ((\U2|Mux0~0_combout\ & \U2|count\(1))) # (\U2|Mux1~0_combout\) ) ) ) # ( 
-- \U2|count\(2) & ( !\U2|count\(0) & ( (\U2|Mux0~0_combout\) # (\U2|Mux1~0_combout\) ) ) ) # ( !\U2|count\(2) & ( !\U2|count\(0) & ( \U2|Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011101110111011101010101011101110111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux1~0_combout\,
	datab => \U2|ALT_INV_Mux0~0_combout\,
	datad => \U2|ALT_INV_count\(1),
	datae => \U2|ALT_INV_count\(2),
	dataf => \U2|ALT_INV_count\(0),
	combout => \U2|Mux1~1_combout\);

-- Location: FF_X1_Y19_N56
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputCLKENA0_outclk\,
	d => \U2|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: IOIBUF_X0_Y19_N55
\P2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(3),
	o => \P2[3]~input_o\);

-- Location: LABCELL_X1_Y19_N27
\U2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~1_combout\ = ( !\PE2~input_o\ & ( \SR2~input_o\ & ( \P2[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P2[3]~input_o\,
	datae => \ALT_INV_PE2~input_o\,
	dataf => \ALT_INV_SR2~input_o\,
	combout => \U2|Mux0~1_combout\);

-- Location: LABCELL_X1_Y19_N48
\U2|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Mux0~2_combout\ = ( \U2|count\(3) & ( \U2|count\(1) & ( ((\U2|Mux0~0_combout\ & ((!\U2|count\(2)) # (!\U2|count\(0))))) # (\U2|Mux0~1_combout\) ) ) ) # ( !\U2|count\(3) & ( \U2|count\(1) & ( ((\U2|Mux0~0_combout\ & (\U2|count\(2) & \U2|count\(0)))) # 
-- (\U2|Mux0~1_combout\) ) ) ) # ( \U2|count\(3) & ( !\U2|count\(1) & ( (\U2|Mux0~0_combout\) # (\U2|Mux0~1_combout\) ) ) ) # ( !\U2|count\(3) & ( !\U2|count\(1) & ( \U2|Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011101110111011101010101010101110111011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Mux0~1_combout\,
	datab => \U2|ALT_INV_Mux0~0_combout\,
	datac => \U2|ALT_INV_count\(2),
	datad => \U2|ALT_INV_count\(0),
	datae => \U2|ALT_INV_count\(3),
	dataf => \U2|ALT_INV_count\(1),
	combout => \U2|Mux0~2_combout\);

-- Location: FF_X1_Y19_N50
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputCLKENA0_outclk\,
	d => \U2|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LABCELL_X1_Y19_N30
\U2|TC\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|TC~combout\ = ( \U2|count\(2) & ( \U2|count\(0) & ( (\U2|count\(3) & (\CET2~input_o\ & \U2|count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_count\(3),
	datab => \ALT_INV_CET2~input_o\,
	datad => \U2|ALT_INV_count\(1),
	datae => \U2|ALT_INV_count\(2),
	dataf => \U2|ALT_INV_count\(0),
	combout => \U2|TC~combout\);

-- Location: IOIBUF_X54_Y16_N55
\a0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X34_Y45_N1
\a0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\a0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\a0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\c0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(0),
	o => \c0[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\c0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(1),
	o => \c0[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\c0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(2),
	o => \c0[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\c0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(3),
	o => \c0[3]~input_o\);

-- Location: IOIBUF_X54_Y16_N4
\c0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(4),
	o => \c0[4]~input_o\);

-- Location: IOIBUF_X20_Y45_N18
\c0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(5),
	o => \c0[5]~input_o\);

-- Location: LABCELL_X31_Y4_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


