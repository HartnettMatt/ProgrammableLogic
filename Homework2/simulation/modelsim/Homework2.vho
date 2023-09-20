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

-- DATE "09/20/2023 09:58:20"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Homework2 IS
    PORT (
	a0 : IN STD.STANDARD.bit_vector(0 TO 3);
	c0 : IN STD.STANDARD.bit_vector(5 DOWNTO 0);
	A1 : IN std_logic;
	B1 : IN std_logic;
	C1 : IN std_logic;
	Y1 : OUT std_logic;
	CP2 : IN std_logic;
	SR2 : IN std_logic;
	P2 : IN std_logic_vector(3 DOWNTO 0);
	PE2 : IN std_logic;
	CEP2 : IN std_logic;
	CET2 : IN std_logic;
	Q2 : OUT std_logic_vector(3 DOWNTO 0);
	TC2 : OUT std_logic
	);
END Homework2;

-- Design Ports Information
-- a0[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC2	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CET2	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR2	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PE2	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEP2	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP2	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CP2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Q2[0]~output_o\ : std_logic;
SIGNAL \Q2[1]~output_o\ : std_logic;
SIGNAL \Q2[2]~output_o\ : std_logic;
SIGNAL \Q2[3]~output_o\ : std_logic;
SIGNAL \TC2~output_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \U1|Y~0_combout\ : std_logic;
SIGNAL \CP2~input_o\ : std_logic;
SIGNAL \CP2~inputclkctrl_outclk\ : std_logic;
SIGNAL \PE2~input_o\ : std_logic;
SIGNAL \SR2~input_o\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \CET2~input_o\ : std_logic;
SIGNAL \CEP2~input_o\ : std_logic;
SIGNAL \U2|Mux3~1_combout\ : std_logic;
SIGNAL \P2[0]~input_o\ : std_logic;
SIGNAL \U2|Mux3~2_combout\ : std_logic;
SIGNAL \P2[1]~input_o\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Add0~1_combout\ : std_logic;
SIGNAL \P2[2]~input_o\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \P2[3]~input_o\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|TC~0_combout\ : std_logic;
SIGNAL \U2|TC~combout\ : std_logic;
SIGNAL \U2|count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a0 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(a0);
ww_c0 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(c0);
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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CP2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CP2~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y39_N16
\Y1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Y~0_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Q2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(0),
	devoe => ww_devoe,
	o => \Q2[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Q2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(1),
	devoe => ww_devoe,
	o => \Q2[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Q2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(2),
	devoe => ww_devoe,
	o => \Q2[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Q2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|count\(3),
	devoe => ww_devoe,
	o => \Q2[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\TC2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|TC~combout\,
	devoe => ww_devoe,
	o => \TC2~output_o\);

-- Location: IOIBUF_X24_Y39_N22
\B1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\C1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\A1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X24_Y38_N20
\U1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Y~0_combout\ = (\B1~input_o\ & ((\C1~input_o\) # (\A1~input_o\))) # (!\B1~input_o\ & (\C1~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1~input_o\,
	datac => \C1~input_o\,
	datad => \A1~input_o\,
	combout => \U1|Y~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\CP2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP2,
	o => \CP2~input_o\);

-- Location: CLKCTRL_G3
\CP2~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CP2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CP2~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N29
\PE2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PE2,
	o => \PE2~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\SR2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR2,
	o => \SR2~input_o\);

-- Location: LCCOMB_X55_Y53_N12
\U2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (!\PE2~input_o\ & \SR2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2~input_o\,
	datad => \SR2~input_o\,
	combout => \U2|Mux3~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\CET2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CET2,
	o => \CET2~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\CEP2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEP2,
	o => \CEP2~input_o\);

-- Location: LCCOMB_X55_Y53_N26
\U2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux3~1_combout\ = (((!\SR2~input_o\) # (!\CEP2~input_o\)) # (!\CET2~input_o\)) # (!\PE2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2~input_o\,
	datab => \CET2~input_o\,
	datac => \CEP2~input_o\,
	datad => \SR2~input_o\,
	combout => \U2|Mux3~1_combout\);

-- Location: IOIBUF_X58_Y54_N1
\P2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(0),
	o => \P2[0]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\U2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux3~2_combout\ = (\U2|Mux3~0_combout\ & ((\P2[0]~input_o\) # ((!\U2|Mux3~1_combout\ & !\U2|count\(0))))) # (!\U2|Mux3~0_combout\ & (!\U2|Mux3~1_combout\ & (!\U2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux3~1_combout\,
	datac => \U2|count\(0),
	datad => \P2[0]~input_o\,
	combout => \U2|Mux3~2_combout\);

-- Location: FF_X55_Y53_N25
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputclkctrl_outclk\,
	d => \U2|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: IOIBUF_X56_Y54_N8
\P2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(1),
	o => \P2[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N28
\U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|count\(1) $ (\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(1),
	datad => \U2|count\(0),
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X55_Y53_N18
\U2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U2|Mux3~0_combout\ & ((\P2[1]~input_o\) # ((!\U2|Mux3~1_combout\ & \U2|Add0~0_combout\)))) # (!\U2|Mux3~0_combout\ & (!\U2|Mux3~1_combout\ & ((\U2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux3~1_combout\,
	datac => \P2[1]~input_o\,
	datad => \U2|Add0~0_combout\,
	combout => \U2|Mux2~0_combout\);

-- Location: FF_X55_Y53_N19
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputclkctrl_outclk\,
	d => \U2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X55_Y53_N22
\U2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~1_combout\ = \U2|count\(2) $ (((\U2|count\(1) & \U2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datac => \U2|count\(1),
	datad => \U2|count\(0),
	combout => \U2|Add0~1_combout\);

-- Location: IOIBUF_X58_Y54_N15
\P2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(2),
	o => \P2[2]~input_o\);

-- Location: LCCOMB_X55_Y53_N16
\U2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U2|Mux3~0_combout\ & ((\P2[2]~input_o\) # ((!\U2|Mux3~1_combout\ & \U2|Add0~1_combout\)))) # (!\U2|Mux3~0_combout\ & (!\U2|Mux3~1_combout\ & (\U2|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux3~1_combout\,
	datac => \U2|Add0~1_combout\,
	datad => \P2[2]~input_o\,
	combout => \U2|Mux1~0_combout\);

-- Location: FF_X55_Y53_N17
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputclkctrl_outclk\,
	d => \U2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: IOIBUF_X58_Y54_N8
\P2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P2(3),
	o => \P2[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N20
\U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = \U2|count\(3) $ (((\U2|count\(2) & (\U2|count\(1) & \U2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datab => \U2|count\(2),
	datac => \U2|count\(1),
	datad => \U2|count\(0),
	combout => \U2|Add0~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\U2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U2|Mux3~0_combout\ & ((\P2[3]~input_o\) # ((!\U2|Mux3~1_combout\ & \U2|Add0~2_combout\)))) # (!\U2|Mux3~0_combout\ & (!\U2|Mux3~1_combout\ & ((\U2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux3~1_combout\,
	datac => \P2[3]~input_o\,
	datad => \U2|Add0~2_combout\,
	combout => \U2|Mux0~0_combout\);

-- Location: FF_X55_Y53_N11
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP2~inputclkctrl_outclk\,
	d => \U2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X55_Y53_N8
\U2|TC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|TC~0_combout\ = (\U2|count\(2) & \U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => \U2|count\(0),
	combout => \U2|TC~0_combout\);

-- Location: LCCOMB_X55_Y53_N2
\U2|TC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|TC~combout\ = (\U2|count\(3) & (\U2|count\(1) & (\U2|TC~0_combout\ & \CET2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datab => \U2|count\(1),
	datac => \U2|TC~0_combout\,
	datad => \CET2~input_o\,
	combout => \U2|TC~combout\);

-- Location: IOIBUF_X22_Y39_N22
\a0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N29
\a0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\a0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\a0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\c0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(0),
	o => \c0[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\c0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(1),
	o => \c0[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\c0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(2),
	o => \c0[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\c0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(3),
	o => \c0[3]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\c0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(4),
	o => \c0[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\c0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0(5),
	o => \c0[5]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Y1 <= \Y1~output_o\;

ww_Q2(0) <= \Q2[0]~output_o\;

ww_Q2(1) <= \Q2[1]~output_o\;

ww_Q2(2) <= \Q2[2]~output_o\;

ww_Q2(3) <= \Q2[3]~output_o\;

ww_TC2 <= \TC2~output_o\;
END structure;


