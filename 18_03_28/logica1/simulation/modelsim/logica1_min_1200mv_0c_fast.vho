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

-- DATE "03/28/2018 16:41:07"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	logica1 IS
    PORT (
	in1 : IN std_logic_vector(1 DOWNTO 0);
	in2 : IN std_logic_vector(1 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	saida : OUT std_logic_vector(6 DOWNTO 0)
	);
END logica1;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF logica1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \x[1]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \x[3]~5_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \x[3]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \x[2]~3_combout\ : std_logic;
SIGNAL \x[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \x[0]~0_combout\ : std_logic;
SIGNAL \x[0]~1_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \saida~18_combout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \saida~19_combout\ : std_logic;
SIGNAL \saida~16_combout\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;
SIGNAL \saida~17_combout\ : std_logic;
SIGNAL \saida~20_combout\ : std_logic;
SIGNAL \saida~38_combout\ : std_logic;
SIGNAL \saida~21_combout\ : std_logic;
SIGNAL \saida~22_combout\ : std_logic;
SIGNAL \saida~23_combout\ : std_logic;
SIGNAL \saida~24_combout\ : std_logic;
SIGNAL \saida~26_combout\ : std_logic;
SIGNAL \saida~25_combout\ : std_logic;
SIGNAL \saida~27_combout\ : std_logic;
SIGNAL \saida~28_combout\ : std_logic;
SIGNAL \saida~29_combout\ : std_logic;
SIGNAL \saida~31_combout\ : std_logic;
SIGNAL \saida~30_combout\ : std_logic;
SIGNAL \saida~32_combout\ : std_logic;
SIGNAL \saida~33_combout\ : std_logic;
SIGNAL \saida~34_combout\ : std_logic;
SIGNAL \saida~35_combout\ : std_logic;
SIGNAL \saida~36_combout\ : std_logic;
SIGNAL \saida~37_combout\ : std_logic;
SIGNAL x : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_in1 <= in1;
ww_in2 <= in2;
ww_sel <= sel;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X26_Y29_N16
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~11_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~12_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~20_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~29_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~32_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~35_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~37_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\in1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\in1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\in2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\in2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: LCCOMB_X17_Y25_N14
\Mult0|mult_core|result[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~0_combout\ = (\in1[0]~input_o\ & (\in2[1]~input_o\ $ (((\in1[1]~input_o\ & \in2[0]~input_o\))))) # (!\in1[0]~input_o\ & (\in1[1]~input_o\ & (\in2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Mult0|mult_core|result[1]~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X17_Y25_N20
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \in1[1]~input_o\ $ (\in2[1]~input_o\ $ (((\in1[0]~input_o\ & \in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X17_Y25_N24
\x[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[1]~2_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\Mult0|mult_core|result[1]~0_combout\)) # (!\sel[1]~input_o\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mult0|mult_core|result[1]~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \x[1]~2_combout\);

-- Location: LCCOMB_X17_Y25_N26
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \in1[1]~input_o\ $ (\in2[1]~input_o\ $ (((\in1[0]~input_o\) # (!\in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X17_Y25_N0
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\in2[0]~input_o\ & (\in1[1]~input_o\ $ (VCC))) # (!\in2[0]~input_o\ & ((\in1[1]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\in1[1]~input_o\) # (!\in2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[0]~input_o\,
	datab => \in1[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X17_Y25_N2
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\in2[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\in2[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\in2[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in2[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X17_Y25_N4
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X17_Y25_N6
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X17_Y25_N10
\x[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- x(1) = (\sel[0]~input_o\ & ((\x[1]~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))) # (!\x[1]~2_combout\ & (!\Add1~0_combout\)))) # (!\sel[0]~input_o\ & (\x[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \x[1]~2_combout\,
	datac => \Add1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => x(1));

-- Location: LCCOMB_X16_Y27_N12
\saida~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\in1[1]~input_o\ & (\in2[1]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \saida~3_combout\);

-- Location: LCCOMB_X16_Y27_N2
\Mult0|mult_core|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (\in1[1]~input_o\ & (\in1[0]~input_o\ & (\in2[1]~input_o\ & \in2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in1[0]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X16_Y27_N16
\saida~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (!\in2[1]~input_o\ & !\in2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[1]~input_o\,
	datac => \in2[0]~input_o\,
	combout => \saida~2_combout\);

-- Location: LCCOMB_X16_Y27_N6
\x[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[3]~5_combout\ = (\saida~3_combout\ & ((\Mult0|mult_core|_~0_combout\) # ((\sel[0]~input_o\ & \saida~2_combout\)))) # (!\saida~3_combout\ & (((\sel[0]~input_o\ & \saida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~3_combout\,
	datab => \Mult0|mult_core|_~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \saida~2_combout\,
	combout => \x[3]~5_combout\);

-- Location: LCCOMB_X17_Y25_N12
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\in1[1]~input_o\ & ((\in1[0]~input_o\) # ((!\in2[1]~input_o\) # (!\in2[0]~input_o\)))) # (!\in1[1]~input_o\ & (!\in2[1]~input_o\ & ((\in1[0]~input_o\) # (!\in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X17_Y25_N22
\x[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[3]~6_combout\ = (\sel[1]~input_o\ & (\x[3]~5_combout\)) # (!\sel[1]~input_o\ & (((!\Add1~1_combout\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~5_combout\,
	datab => \Add1~1_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \x[3]~6_combout\);

-- Location: LCCOMB_X17_Y25_N30
\Mult0|mult_core|result[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~1_combout\ = (\in1[1]~input_o\ & (\in2[1]~input_o\ & ((!\in2[0]~input_o\) # (!\in1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Mult0|mult_core|result[2]~1_combout\);

-- Location: LCCOMB_X17_Y25_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\in1[1]~input_o\ & ((\in2[1]~input_o\) # ((\in1[0]~input_o\ & \in2[0]~input_o\)))) # (!\in1[1]~input_o\ & (\in1[0]~input_o\ & (\in2[0]~input_o\ & \in2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \in2[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X17_Y25_N18
\x[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[2]~3_combout\ = (\sel[0]~input_o\ & (\sel[1]~input_o\)) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\Mult0|mult_core|result[2]~1_combout\)) # (!\sel[1]~input_o\ & ((\Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \Mult0|mult_core|result[2]~1_combout\,
	datad => \Add0~1_combout\,
	combout => \x[2]~3_combout\);

-- Location: LCCOMB_X17_Y25_N28
\x[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[2]~4_combout\ = (\sel[0]~input_o\ & ((\x[2]~3_combout\ & (\saida~2_combout\)) # (!\x[2]~3_combout\ & ((!\Add1~1_combout\))))) # (!\sel[0]~input_o\ & (\x[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \x[2]~3_combout\,
	datac => \saida~2_combout\,
	datad => \Add1~1_combout\,
	combout => \x[2]~4_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X17_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\in1[1]~input_o\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[1]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\in1[0]~input_o\) # (!\in2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in2[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X23_Y25_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\in2[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\in2[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X23_Y25_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X23_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X23_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X23_Y25_N0
\x[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[0]~0_combout\ = (\in1[0]~input_o\ & (\in2[0]~input_o\ $ (!\sel[1]~input_o\))) # (!\in1[0]~input_o\ & (\in2[0]~input_o\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in2[0]~input_o\,
	datac => \sel[1]~input_o\,
	combout => \x[0]~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\x[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x[0]~1_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)) # (!\sel[1]~input_o\ & ((\x[0]~0_combout\))))) # (!\sel[0]~input_o\ & (((\x[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \x[0]~0_combout\,
	combout => \x[0]~1_combout\);

-- Location: LCCOMB_X28_Y26_N2
\Equal14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (x(1) & (!\x[3]~6_combout\ & (\x[2]~4_combout\ & \x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X28_Y26_N16
\Equal14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!x(1) & (!\x[3]~6_combout\ & (!\x[2]~4_combout\ & !\x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X28_Y26_N26
\Equal14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (!x(1) & (!\x[3]~6_combout\ & (!\x[2]~4_combout\ & \x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X28_Y26_N12
\saida~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (x(1) & (!\x[3]~6_combout\ & !\x[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	combout => \saida~4_combout\);

-- Location: LCCOMB_X28_Y26_N0
\saida~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\Equal14~0_combout\) # ((\Equal14~1_combout\) # (\saida~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~0_combout\,
	datac => \Equal14~1_combout\,
	datad => \saida~4_combout\,
	combout => \saida~6_combout\);

-- Location: LCCOMB_X28_Y26_N6
\saida~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\Equal14~0_combout\) # ((\Equal14~1_combout\) # (!\saida~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~0_combout\,
	datac => \Equal14~1_combout\,
	datad => \saida~4_combout\,
	combout => \saida~5_combout\);

-- Location: LCCOMB_X28_Y26_N24
\saida~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (!\x[3]~6_combout\ & (x(1) $ (\x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datad => \x[0]~1_combout\,
	combout => \saida~8_combout\);

-- Location: LCCOMB_X28_Y26_N14
\saida~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\x[3]~6_combout\ & (!\x[2]~4_combout\ & (x(1) $ (\x[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \saida~7_combout\);

-- Location: LCCOMB_X28_Y26_N28
\Equal14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (!x(1) & (\x[3]~6_combout\ & (!\x[2]~4_combout\ & !\x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~3_combout\);

-- Location: LCCOMB_X28_Y26_N10
\saida~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (!\saida~7_combout\ & (!\Equal14~3_combout\ & ((!\x[2]~4_combout\) # (!\saida~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~8_combout\,
	datab => \x[2]~4_combout\,
	datac => \saida~7_combout\,
	datad => \Equal14~3_combout\,
	combout => \saida~9_combout\);

-- Location: LCCOMB_X28_Y26_N4
\Equal14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~4_combout\ = (!x(1) & (!\x[3]~6_combout\ & (\x[2]~4_combout\ & !\x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~4_combout\);

-- Location: LCCOMB_X27_Y28_N0
\saida~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (\saida~9_combout\ & !\Equal14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida~9_combout\,
	datac => \Equal14~4_combout\,
	combout => \saida~10_combout\);

-- Location: LCCOMB_X27_Y28_N2
\saida~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = (\saida~5_combout\ & ((\Equal14~2_combout\) # ((\saida~6_combout\) # (\saida~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~2_combout\,
	datab => \saida~6_combout\,
	datac => \saida~5_combout\,
	datad => \saida~10_combout\,
	combout => \saida~11_combout\);

-- Location: LCCOMB_X27_Y28_N4
\saida~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\saida~6_combout\ & (((!\Equal14~0_combout\)))) # (!\saida~6_combout\ & ((\Equal14~2_combout\) # ((\saida~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~2_combout\,
	datab => \saida~10_combout\,
	datac => \Equal14~0_combout\,
	datad => \saida~6_combout\,
	combout => \saida~12_combout\);

-- Location: LCCOMB_X16_Y27_N8
\saida~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\in2[0]~input_o\ & ((\in1[1]~input_o\ & ((\in2[1]~input_o\) # (\sel[0]~input_o\))) # (!\in1[1]~input_o\ & (!\in2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \saida~13_combout\);

-- Location: LCCOMB_X16_Y27_N10
\saida~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~18_combout\ = (\in2[1]~input_o\ & ((\sel[0]~input_o\ & (\in1[1]~input_o\)) # (!\sel[0]~input_o\ & ((\in2[0]~input_o\))))) # (!\in2[1]~input_o\ & (((\in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \saida~18_combout\);

-- Location: LCCOMB_X28_Y26_N22
\Equal14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal14~5_combout\ = (x(1) & (\x[3]~6_combout\ & (!\x[2]~4_combout\ & !\x[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \Equal14~5_combout\);

-- Location: LCCOMB_X16_Y27_N4
\saida~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~19_combout\ = (\saida~18_combout\) # ((!\in2[1]~input_o\ & (!\Equal14~5_combout\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~18_combout\,
	datab => \in2[1]~input_o\,
	datac => \Equal14~5_combout\,
	datad => \sel[0]~input_o\,
	combout => \saida~19_combout\);

-- Location: LCCOMB_X16_Y27_N30
\saida~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~16_combout\ = (\in2[0]~input_o\) # ((\in2[1]~input_o\ & (\in1[1]~input_o\ $ (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \in2[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \saida~16_combout\);

-- Location: LCCOMB_X16_Y27_N26
\saida~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = (\in1[1]~input_o\ & (\in2[1]~input_o\ & !\in2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \in2[0]~input_o\,
	combout => \saida~14_combout\);

-- Location: LCCOMB_X16_Y27_N20
\saida~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = (\saida~14_combout\) # ((\sel[0]~input_o\ & (!\Equal14~5_combout\ & \saida~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~14_combout\,
	datab => \sel[0]~input_o\,
	datac => \Equal14~5_combout\,
	datad => \saida~2_combout\,
	combout => \saida~15_combout\);

-- Location: LCCOMB_X16_Y27_N24
\saida~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~17_combout\ = (\sel[1]~input_o\ & ((\in1[0]~input_o\) # ((\saida~15_combout\)))) # (!\sel[1]~input_o\ & (!\in1[0]~input_o\ & (\saida~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \in1[0]~input_o\,
	datac => \saida~16_combout\,
	datad => \saida~15_combout\,
	combout => \saida~17_combout\);

-- Location: LCCOMB_X16_Y27_N22
\saida~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~20_combout\ = (\in1[0]~input_o\ & ((\saida~17_combout\ & ((\saida~19_combout\))) # (!\saida~17_combout\ & (!\saida~13_combout\)))) # (!\in1[0]~input_o\ & (((\saida~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \saida~13_combout\,
	datac => \saida~19_combout\,
	datad => \saida~17_combout\,
	combout => \saida~20_combout\);

-- Location: LCCOMB_X23_Y25_N30
\saida~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~38_combout\ = (\in1[1]~input_o\ & (((\in2[1]~input_o\ & !\sel[0]~input_o\)) # (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \in1[1]~input_o\,
	combout => \saida~38_combout\);

-- Location: LCCOMB_X23_Y25_N20
\saida~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~21_combout\ = (\sel[1]~input_o\ & (\in1[0]~input_o\ & ((\in2[0]~input_o\)))) # (!\sel[1]~input_o\ & (\in2[1]~input_o\ $ (((!\in1[0]~input_o\ & \in2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \saida~21_combout\);

-- Location: LCCOMB_X23_Y25_N16
\saida~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~22_combout\ = (\sel[1]~input_o\ & ((\in2[0]~input_o\ & (\in1[0]~input_o\)) # (!\in2[0]~input_o\ & ((!\in2[1]~input_o\))))) # (!\sel[1]~input_o\ & (!\in1[0]~input_o\ & (\in2[1]~input_o\ & \in2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \saida~22_combout\);

-- Location: LCCOMB_X23_Y25_N26
\saida~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~23_combout\ = (\saida~38_combout\ & (\saida~22_combout\ & ((\saida~21_combout\) # (\sel[0]~input_o\)))) # (!\saida~38_combout\ & (\sel[0]~input_o\ & (\saida~21_combout\ $ (\saida~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~38_combout\,
	datab => \saida~21_combout\,
	datac => \sel[0]~input_o\,
	datad => \saida~22_combout\,
	combout => \saida~23_combout\);

-- Location: LCCOMB_X16_Y27_N0
\saida~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~24_combout\ = (\saida~23_combout\ & ((\Equal14~3_combout\))) # (!\saida~23_combout\ & (\in2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida~23_combout\,
	datac => \in2[1]~input_o\,
	datad => \Equal14~3_combout\,
	combout => \saida~24_combout\);

-- Location: LCCOMB_X23_Y25_N22
\saida~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~26_combout\ = (\in1[0]~input_o\ & (\sel[0]~input_o\ $ (((!\sel[1]~input_o\ & \in2[0]~input_o\))))) # (!\in1[0]~input_o\ & ((\sel[0]~input_o\) # ((\sel[1]~input_o\ & \in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \saida~26_combout\);

-- Location: LCCOMB_X23_Y25_N4
\saida~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~25_combout\ = (\in1[0]~input_o\ & ((\sel[0]~input_o\) # ((\sel[1]~input_o\ & !\in2[0]~input_o\)))) # (!\in1[0]~input_o\ & ((\sel[1]~input_o\ & (\sel[0]~input_o\ & !\in2[0]~input_o\)) # (!\sel[1]~input_o\ & ((\in2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \saida~25_combout\);

-- Location: LCCOMB_X23_Y25_N24
\saida~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~27_combout\ = (\in1[0]~input_o\ & (\saida~26_combout\ & (\in1[1]~input_o\ $ (!\saida~25_combout\)))) # (!\in1[0]~input_o\ & (\in1[1]~input_o\ & (\saida~26_combout\ $ (!\saida~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~26_combout\,
	datab => \in1[1]~input_o\,
	datac => \in1[0]~input_o\,
	datad => \saida~25_combout\,
	combout => \saida~27_combout\);

-- Location: LCCOMB_X23_Y25_N18
\saida~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~28_combout\ = (\saida~26_combout\ & ((\in1[1]~input_o\ & (\in1[0]~input_o\ $ (\saida~25_combout\))) # (!\in1[1]~input_o\ & (\in1[0]~input_o\ & \saida~25_combout\)))) # (!\saida~26_combout\ & (!\in1[1]~input_o\ & (\in1[0]~input_o\ $ 
-- (\saida~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~26_combout\,
	datab => \in1[1]~input_o\,
	datac => \in1[0]~input_o\,
	datad => \saida~25_combout\,
	combout => \saida~28_combout\);

-- Location: LCCOMB_X23_Y25_N28
\saida~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~29_combout\ = (\saida~24_combout\ & (\saida~27_combout\ & (!\saida~23_combout\))) # (!\saida~24_combout\ & (((\saida~23_combout\) # (\saida~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~24_combout\,
	datab => \saida~27_combout\,
	datac => \saida~23_combout\,
	datad => \saida~28_combout\,
	combout => \saida~29_combout\);

-- Location: LCCOMB_X27_Y28_N14
\saida~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~31_combout\ = (\Equal14~2_combout\) # (!\saida~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~2_combout\,
	datac => \saida~9_combout\,
	combout => \saida~31_combout\);

-- Location: LCCOMB_X28_Y26_N8
\saida~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~30_combout\ = (\x[3]~6_combout\) # ((\x[2]~4_combout\ & ((x(1)) # (\x[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \saida~30_combout\);

-- Location: LCCOMB_X28_Y26_N18
\saida~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~32_combout\ = (\saida~4_combout\ & (((!\saida~31_combout\ & \saida~30_combout\)) # (!\x[0]~1_combout\))) # (!\saida~4_combout\ & (!\saida~31_combout\ & (\saida~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~4_combout\,
	datab => \saida~31_combout\,
	datac => \saida~30_combout\,
	datad => \x[0]~1_combout\,
	combout => \saida~32_combout\);

-- Location: LCCOMB_X16_Y27_N18
\saida~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~33_combout\ = (!\Equal14~3_combout\ & (!\saida~7_combout\ & (!\Equal14~2_combout\ & \saida~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~3_combout\,
	datab => \saida~7_combout\,
	datac => \Equal14~2_combout\,
	datad => \saida~23_combout\,
	combout => \saida~33_combout\);

-- Location: LCCOMB_X16_Y27_N28
\saida~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~34_combout\ = (\in2[0]~input_o\) # (\in1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[0]~input_o\,
	datac => \in1[0]~input_o\,
	combout => \saida~34_combout\);

-- Location: LCCOMB_X16_Y27_N14
\saida~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~35_combout\ = (\saida~33_combout\) # ((\saida~3_combout\ & (\saida~34_combout\ & !\saida~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~3_combout\,
	datab => \saida~33_combout\,
	datac => \saida~34_combout\,
	datad => \saida~23_combout\,
	combout => \saida~35_combout\);

-- Location: LCCOMB_X28_Y26_N20
\saida~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~36_combout\ = (!x(1) & (!\x[3]~6_combout\ & (\x[2]~4_combout\ $ (\x[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \x[3]~6_combout\,
	datac => \x[2]~4_combout\,
	datad => \x[0]~1_combout\,
	combout => \saida~36_combout\);

-- Location: LCCOMB_X28_Y26_N30
\saida~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~37_combout\ = (\saida~36_combout\) # ((!\saida~31_combout\ & ((\x[3]~6_combout\) # (\x[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~6_combout\,
	datab => \saida~31_combout\,
	datac => \x[2]~4_combout\,
	datad => \saida~36_combout\,
	combout => \saida~37_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;
END structure;


