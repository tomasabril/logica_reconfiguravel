-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/31/2018 21:51:57"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex_1 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	input1 : IN std_logic;
	input2 : IN std_logic;
	input3 : IN std_logic;
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END ex_1;

-- Design Ports Information
-- input2	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input3	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_input1 : std_logic;
SIGNAL ww_input2 : std_logic;
SIGNAL ww_input3 : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan0~39clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input2~input_o\ : std_logic;
SIGNAL \input3~input_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \input1~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \clock_counter[0]~0_combout\ : std_logic;
SIGNAL \clock_counter[0]~0_wirecell_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clock_counter[1]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \LessThan0~35_combout\ : std_logic;
SIGNAL \LessThan0~33_combout\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \LessThan0~37_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \LessThan0~38_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \LessThan0~39_combout\ : std_logic;
SIGNAL \LessThan0~39clkctrl_outclk\ : std_logic;
SIGNAL \nx_state.B_102~combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \pr_state.B~q\ : std_logic;
SIGNAL \nx_state~0_combout\ : std_logic;
SIGNAL \nx_state.C_96~combout\ : std_logic;
SIGNAL \pr_state.C~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \nx_state.A_108~combout\ : std_logic;
SIGNAL \pr_state.A~0_combout\ : std_logic;
SIGNAL \pr_state.A~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.A~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_input1 <= input1;
ww_input2 <= input2;
ww_input3 <= input3;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LessThan0~39clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LessThan0~39_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pr_state.A~q\ <= NOT \pr_state.A~q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pr_state.A~q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_state.B~q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_state.C~q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\input1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1,
	o => \input1~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\input1~input_o\ & (!\pr_state.A~q\)) # (!\input1~input_o\ & ((\pr_state.C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1~input_o\,
	datab => \pr_state.A~q\,
	datac => \pr_state.C~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X28_Y20_N6
\clock_counter[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter[0]~0_combout\ = (!\LessThan0~39_combout\) # (!\clock_counter[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_counter[0]~0_combout\,
	datad => \LessThan0~39_combout\,
	combout => \clock_counter[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\clock_counter[0]~0_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter[0]~0_wirecell_combout\ = !\clock_counter[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_counter[0]~0_combout\,
	combout => \clock_counter[0]~0_wirecell_combout\);

-- Location: LCCOMB_X30_Y13_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\clock_counter[1]~1_combout\ & (\clock_counter[0]~0_wirecell_combout\ $ (VCC))) # (!\clock_counter[1]~1_combout\ & (\clock_counter[0]~0_wirecell_combout\ & VCC))
-- \Add0~1\ = CARRY((\clock_counter[1]~1_combout\ & \clock_counter[0]~0_wirecell_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_counter[1]~1_combout\,
	datab => \clock_counter[0]~0_wirecell_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y20_N0
\clock_counter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter[1]~1_combout\ = (\Add0~0_combout\ & \LessThan0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \LessThan0~39_combout\,
	combout => \clock_counter[1]~1_combout\);

-- Location: LCCOMB_X30_Y13_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~1\ & (((!\Add0~2_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~1\ & (((\LessThan0~39_combout\ & \Add0~2_combout\)) # (GND)))
-- \Add0~3\ = CARRY(((!\Add0~1\) # (!\Add0~2_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y13_N6
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3\ & (\Add0~4_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~3\ & ((((\Add0~4_combout\ & \LessThan0~39_combout\)))))
-- \Add0~5\ = CARRY((\Add0~4_combout\ & (\LessThan0~39_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y13_N8
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5\ & (((!\Add0~6_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~5\ & (((\LessThan0~39_combout\ & \Add0~6_combout\)) # (GND)))
-- \Add0~7\ = CARRY(((!\Add0~5\) # (!\Add0~6_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y13_N10
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~7\ & (\LessThan0~39_combout\ & (\Add0~8_combout\ & VCC))) # (!\Add0~7\ & ((((\LessThan0~39_combout\ & \Add0~8_combout\)))))
-- \Add0~9\ = CARRY((\LessThan0~39_combout\ & (\Add0~8_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y13_N12
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & (((!\LessThan0~39_combout\)) # (!\Add0~10_combout\))) # (!\Add0~9\ & (((\Add0~10_combout\ & \LessThan0~39_combout\)) # (GND)))
-- \Add0~11\ = CARRY(((!\Add0~9\) # (!\LessThan0~39_combout\)) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X30_Y13_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (\Add0~12_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~11\ & ((((\Add0~12_combout\ & \LessThan0~39_combout\)))))
-- \Add0~13\ = CARRY((\Add0~12_combout\ & (\LessThan0~39_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y13_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & (((!\Add0~14_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~13\ & (((\LessThan0~39_combout\ & \Add0~14_combout\)) # (GND)))
-- \Add0~15\ = CARRY(((!\Add0~13\) # (!\Add0~14_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X30_Y13_N18
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15\ & (\LessThan0~39_combout\ & (\Add0~16_combout\ & VCC))) # (!\Add0~15\ & ((((\LessThan0~39_combout\ & \Add0~16_combout\)))))
-- \Add0~17\ = CARRY((\LessThan0~39_combout\ & (\Add0~16_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X30_Y13_N20
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~17\ & (((!\Add0~18_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~17\ & (((\LessThan0~39_combout\ & \Add0~18_combout\)) # (GND)))
-- \Add0~19\ = CARRY(((!\Add0~17\) # (!\Add0~18_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y13_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~19\ & (\Add0~20_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~19\ & ((((\Add0~20_combout\ & \LessThan0~39_combout\)))))
-- \Add0~21\ = CARRY((\Add0~20_combout\ & (\LessThan0~39_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y13_N24
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21\ & (((!\LessThan0~39_combout\)) # (!\Add0~22_combout\))) # (!\Add0~21\ & (((\Add0~22_combout\ & \LessThan0~39_combout\)) # (GND)))
-- \Add0~23\ = CARRY(((!\Add0~21\) # (!\LessThan0~39_combout\)) # (!\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X30_Y13_N26
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23\ & (\Add0~24_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~23\ & ((((\Add0~24_combout\ & \LessThan0~39_combout\)))))
-- \Add0~25\ = CARRY((\Add0~24_combout\ & (\LessThan0~39_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y13_N28
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~25\ & (((!\Add0~26_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~25\ & (((\LessThan0~39_combout\ & \Add0~26_combout\)) # (GND)))
-- \Add0~27\ = CARRY(((!\Add0~25\) # (!\Add0~26_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y13_N30
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Add0~27\ & (\Add0~28_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~27\ & ((((\Add0~28_combout\ & \LessThan0~39_combout\)))))
-- \Add0~29\ = CARRY((\Add0~28_combout\ & (\LessThan0~39_combout\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X30_Y12_N0
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~29\ & (((!\Add0~30_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~29\ & (((\LessThan0~39_combout\ & \Add0~30_combout\)) # (GND)))
-- \Add0~31\ = CARRY(((!\Add0~29\) # (!\Add0~30_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X30_Y12_N2
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~31\ & (\LessThan0~39_combout\ & (\Add0~32_combout\ & VCC))) # (!\Add0~31\ & ((((\LessThan0~39_combout\ & \Add0~32_combout\)))))
-- \Add0~33\ = CARRY((\LessThan0~39_combout\ & (\Add0~32_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X30_Y12_N4
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Add0~33\ & (((!\Add0~34_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~33\ & (((\LessThan0~39_combout\ & \Add0~34_combout\)) # (GND)))
-- \Add0~35\ = CARRY(((!\Add0~33\) # (!\Add0~34_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X30_Y12_N6
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\Add0~35\ & (\Add0~36_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~35\ & ((((\Add0~36_combout\ & \LessThan0~39_combout\)))))
-- \Add0~37\ = CARRY((\Add0~36_combout\ & (\LessThan0~39_combout\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X30_Y12_N8
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~37\ & (((!\LessThan0~39_combout\)) # (!\Add0~38_combout\))) # (!\Add0~37\ & (((\Add0~38_combout\ & \LessThan0~39_combout\)) # (GND)))
-- \Add0~39\ = CARRY(((!\Add0~37\) # (!\LessThan0~39_combout\)) # (!\Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X30_Y12_N10
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Add0~39\ & (\Add0~40_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~39\ & ((((\Add0~40_combout\ & \LessThan0~39_combout\)))))
-- \Add0~41\ = CARRY((\Add0~40_combout\ & (\LessThan0~39_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X30_Y12_N12
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~41\ & (((!\LessThan0~39_combout\)) # (!\Add0~42_combout\))) # (!\Add0~41\ & (((\Add0~42_combout\ & \LessThan0~39_combout\)) # (GND)))
-- \Add0~43\ = CARRY(((!\Add0~41\) # (!\LessThan0~39_combout\)) # (!\Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X30_Y13_N0
\LessThan0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = (((!\Add0~14_combout\ & !\Add0~16_combout\)) # (!\Add0~20_combout\)) # (!\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~16_combout\,
	combout => \LessThan0~34_combout\);

-- Location: LCCOMB_X28_Y20_N12
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_combout\ = (\Add0~26_combout\) # ((\Add0~24_combout\ & ((\Add0~22_combout\) # (!\LessThan0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \LessThan0~34_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~22_combout\,
	combout => \LessThan0~35_combout\);

-- Location: LCCOMB_X28_Y20_N26
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_combout\ = (\Add0~36_combout\) # ((\Add0~32_combout\) # (\Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan0~33_combout\);

-- Location: LCCOMB_X28_Y20_N22
\LessThan0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = (!\LessThan0~33_combout\ & (((!\LessThan0~35_combout\ & !\Add0~28_combout\)) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~35_combout\,
	datab => \Add0~30_combout\,
	datac => \LessThan0~33_combout\,
	datad => \Add0~28_combout\,
	combout => \LessThan0~36_combout\);

-- Location: LCCOMB_X30_Y12_N14
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~43\ & (\LessThan0~39_combout\ & (\Add0~44_combout\ & VCC))) # (!\Add0~43\ & ((((\LessThan0~39_combout\ & \Add0~44_combout\)))))
-- \Add0~45\ = CARRY((\LessThan0~39_combout\ & (\Add0~44_combout\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X28_Y20_N16
\LessThan0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~37_combout\ = (\Add0~44_combout\) # ((!\LessThan0~36_combout\ & (\Add0~38_combout\ & \Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~36_combout\,
	datab => \Add0~38_combout\,
	datac => \Add0~44_combout\,
	datad => \Add0~40_combout\,
	combout => \LessThan0~37_combout\);

-- Location: LCCOMB_X30_Y12_N16
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~45\ & (((!\Add0~46_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~45\ & (((\LessThan0~39_combout\ & \Add0~46_combout\)) # (GND)))
-- \Add0~47\ = CARRY(((!\Add0~45\) # (!\Add0~46_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X30_Y12_N18
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\Add0~47\ & (\Add0~48_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~47\ & ((((\Add0~48_combout\ & \LessThan0~39_combout\)))))
-- \Add0~49\ = CARRY((\Add0~48_combout\ & (\LessThan0~39_combout\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X30_Y12_N20
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~49\ & (((!\Add0~50_combout\)) # (!\LessThan0~39_combout\))) # (!\Add0~49\ & (((\LessThan0~39_combout\ & \Add0~50_combout\)) # (GND)))
-- \Add0~51\ = CARRY(((!\Add0~49\) # (!\Add0~50_combout\)) # (!\LessThan0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~39_combout\,
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X28_Y20_N10
\LessThan0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~38_combout\ = (\Add0~50_combout\) # ((\Add0~46_combout\ & ((\Add0~42_combout\) # (\LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \LessThan0~37_combout\,
	datac => \Add0~50_combout\,
	datad => \Add0~46_combout\,
	combout => \LessThan0~38_combout\);

-- Location: LCCOMB_X30_Y12_N22
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\Add0~51\ & (\Add0~52_combout\ & (\LessThan0~39_combout\ & VCC))) # (!\Add0~51\ & ((((\Add0~52_combout\ & \LessThan0~39_combout\)))))
-- \Add0~53\ = CARRY((\Add0~52_combout\ & (\LessThan0~39_combout\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \LessThan0~39_combout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X30_Y12_N24
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~53\ & (((!\Add0~54_combout\)) # (!\Add0~60_combout\))) # (!\Add0~53\ & (((\Add0~60_combout\ & \Add0~54_combout\)) # (GND)))
-- \Add0~55\ = CARRY(((!\Add0~53\) # (!\Add0~54_combout\)) # (!\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~54_combout\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X30_Y12_N26
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~55\ & (\Add0~60_combout\ & (\Add0~56_combout\ & VCC))) # (!\Add0~55\ & ((((\Add0~60_combout\ & \Add0~56_combout\)))))
-- \Add0~57\ = CARRY((\Add0~60_combout\ & (\Add0~56_combout\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X30_Y12_N28
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\Add0~57\ & (((!\Add0~58_combout\)) # (!\Add0~60_combout\))) # (!\Add0~57\ & (((\Add0~60_combout\ & \Add0~58_combout\)) # (GND)))
-- \Add0~59\ = CARRY(((!\Add0~57\) # (!\Add0~58_combout\)) # (!\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~58_combout\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X30_Y12_N30
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = \Add0~60_combout\ $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X28_Y20_N24
\LessThan0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = (!\Add0~54_combout\ & (!\Add0~58_combout\ & (!\Add0~56_combout\ & !\Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~52_combout\,
	combout => \LessThan0~32_combout\);

-- Location: LCCOMB_X28_Y20_N28
\LessThan0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~39_combout\ = (\Add0~60_combout\) # ((!\LessThan0~38_combout\ & (\LessThan0~32_combout\ & !\Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~38_combout\,
	datab => \LessThan0~32_combout\,
	datac => \Add0~48_combout\,
	datad => \Add0~60_combout\,
	combout => \LessThan0~39_combout\);

-- Location: CLKCTRL_G13
\LessThan0~39clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan0~39clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan0~39clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N10
\nx_state.B_102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nx_state.B_102~combout\ = (GLOBAL(\LessThan0~39clkctrl_outclk\) & ((\nx_state.B_102~combout\))) # (!GLOBAL(\LessThan0~39clkctrl_outclk\) & (\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \LessThan0~39clkctrl_outclk\,
	datad => \nx_state.B_102~combout\,
	combout => \nx_state.B_102~combout\);

-- Location: IOIBUF_X0_Y23_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X1_Y21_N11
\pr_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nx_state.B_102~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.B~q\);

-- Location: LCCOMB_X1_Y21_N26
\nx_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nx_state~0_combout\ = (\input1~input_o\ & \pr_state.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1~input_o\,
	datac => \pr_state.B~q\,
	combout => \nx_state~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\nx_state.C_96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nx_state.C_96~combout\ = (GLOBAL(\LessThan0~39clkctrl_outclk\) & ((\nx_state.C_96~combout\))) # (!GLOBAL(\LessThan0~39clkctrl_outclk\) & (\nx_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nx_state~0_combout\,
	datac => \LessThan0~39clkctrl_outclk\,
	datad => \nx_state.C_96~combout\,
	combout => \nx_state.C_96~combout\);

-- Location: FF_X1_Y21_N21
\pr_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nx_state.C_96~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.C~q\);

-- Location: LCCOMB_X1_Y21_N22
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = \input1~input_o\ $ (\pr_state.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1~input_o\,
	datac => \pr_state.C~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\nx_state.A_108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nx_state.A_108~combout\ = (GLOBAL(\LessThan0~39clkctrl_outclk\) & ((\nx_state.A_108~combout\))) # (!GLOBAL(\LessThan0~39clkctrl_outclk\) & (!\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \LessThan0~39clkctrl_outclk\,
	datad => \nx_state.A_108~combout\,
	combout => \nx_state.A_108~combout\);

-- Location: LCCOMB_X1_Y21_N24
\pr_state.A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pr_state.A~0_combout\ = !\nx_state.A_108~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nx_state.A_108~combout\,
	combout => \pr_state.A~0_combout\);

-- Location: FF_X1_Y21_N25
\pr_state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr_state.A~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.A~q\);

-- Location: IOIBUF_X0_Y27_N1
\input2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2,
	o => \input2~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\input3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input3,
	o => \input3~input_o\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


