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

-- DATE "03/21/2018 16:58:11"

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

ENTITY 	ex_2 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	f : IN std_logic;
	g : IN std_logic;
	h : IN std_logic;
	i : IN std_logic;
	j : IN std_logic;
	saida : OUT std_logic_vector(6 DOWNTO 0)
	);
END ex_2;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \saida~19_combout\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;
SIGNAL \saida~16_combout\ : std_logic;
SIGNAL \saida~17_combout\ : std_logic;
SIGNAL \saida~18_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_f <= f;
ww_g <= g;
ww_h <= h;
ww_i <= i;
ww_j <= j;
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
	i => \saida~2_combout\,
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
	i => \saida~3_combout\,
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
	i => \saida~10_combout\,
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
	i => \saida~15_combout\,
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
	i => \saida~16_combout\,
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
	i => \saida~17_combout\,
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
	i => \saida~18_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\f~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\g~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X1_Y25_N18
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \c~input_o\ $ (\a~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \Add1~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\e~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: LCCOMB_X5_Y26_N12
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = \d~input_o\ $ (\Add1~1_combout\ $ (\e~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \Add1~1_combout\,
	datad => \e~input_o\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X5_Y26_N4
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = \f~input_o\ $ (\g~input_o\ $ (\Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~input_o\,
	datac => \g~input_o\,
	datad => \Add3~2_combout\,
	combout => \Add5~2_combout\);

-- Location: IOIBUF_X0_Y26_N1
\i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i,
	o => \i~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\h~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h,
	o => \h~input_o\);

-- Location: LCCOMB_X6_Y27_N18
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = \i~input_o\ $ (\h~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i~input_o\,
	datad => \h~input_o\,
	combout => \Add6~1_combout\);

-- Location: IOIBUF_X0_Y25_N1
\j~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

-- Location: LCCOMB_X6_Y27_N0
\Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY(\j~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X6_Y27_N2
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add5~2_combout\ & ((\Add6~1_combout\ & (\Add7~1_cout\ & VCC)) # (!\Add6~1_combout\ & (!\Add7~1_cout\)))) # (!\Add5~2_combout\ & ((\Add6~1_combout\ & (!\Add7~1_cout\)) # (!\Add6~1_combout\ & ((\Add7~1_cout\) # (GND)))))
-- \Add7~3\ = CARRY((\Add5~2_combout\ & (!\Add6~1_combout\ & !\Add7~1_cout\)) # (!\Add5~2_combout\ & ((!\Add7~1_cout\) # (!\Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add6~1_combout\,
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X1_Y25_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\c~input_o\ & ((\a~input_o\) # (\b~input_o\))) # (!\c~input_o\ & (\a~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X5_Y26_N18
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Add1~0_combout\ $ (((\d~input_o\ & ((\Add1~1_combout\) # (\e~input_o\))) # (!\d~input_o\ & (\Add1~1_combout\ & \e~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \Add1~1_combout\,
	datac => \Add1~0_combout\,
	datad => \e~input_o\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X5_Y26_N8
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = \Add3~1_combout\ $ (((\Add3~2_combout\ & ((\f~input_o\) # (\g~input_o\))) # (!\Add3~2_combout\ & (\f~input_o\ & \g~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \f~input_o\,
	datac => \g~input_o\,
	datad => \Add3~1_combout\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X5_Y26_N2
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\h~input_o\ & \i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h~input_o\,
	datad => \i~input_o\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X6_Y27_N4
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add5~1_combout\ $ (\Add6~0_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add5~1_combout\ & ((\Add6~0_combout\) # (!\Add7~3\))) # (!\Add5~1_combout\ & (\Add6~0_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X5_Y26_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add1~0_combout\ & ((\d~input_o\ & ((\Add1~1_combout\) # (\e~input_o\))) # (!\d~input_o\ & (\Add1~1_combout\ & \e~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \Add1~1_combout\,
	datac => \Add1~0_combout\,
	datad => \e~input_o\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X5_Y26_N6
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Add3~1_combout\ & ((\Add3~2_combout\ & ((\f~input_o\) # (\g~input_o\))) # (!\Add3~2_combout\ & (\f~input_o\ & \g~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \f~input_o\,
	datac => \g~input_o\,
	datad => \Add3~1_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X6_Y27_N6
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add7~5\ & (\Add3~0_combout\ $ ((!\Add5~0_combout\)))) # (!\Add7~5\ & ((\Add3~0_combout\ $ (\Add5~0_combout\)) # (GND)))
-- \Add7~7\ = CARRY((\Add3~0_combout\ $ (!\Add5~0_combout\)) # (!\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X6_Y27_N8
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = \Add7~7\ $ (((!\Add5~0_combout\) # (!\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datad => \Add5~0_combout\,
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X6_Y27_N20
\saida~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\Add7~4_combout\ & ((\Add7~2_combout\ & ((\Add7~8_combout\) # (\Add7~6_combout\))) # (!\Add7~2_combout\ & (\Add7~8_combout\ & \Add7~6_combout\)))) # (!\Add7~4_combout\ & ((\Add7~8_combout\ $ (!\Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \saida~2_combout\);

-- Location: LCCOMB_X6_Y27_N30
\saida~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\Add7~2_combout\ & ((\Add7~4_combout\) # (\Add7~8_combout\ $ (!\Add7~6_combout\)))) # (!\Add7~2_combout\ & ((\Add7~8_combout\ & ((\Add7~6_combout\))) # (!\Add7~8_combout\ & (\Add7~4_combout\ & !\Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \saida~3_combout\);

-- Location: LCCOMB_X5_Y26_N22
\saida~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = \f~input_o\ $ (\g~input_o\ $ (\j~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~input_o\,
	datac => \g~input_o\,
	datad => \j~input_o\,
	combout => \saida~4_combout\);

-- Location: LCCOMB_X5_Y26_N28
\saida~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\Add3~2_combout\ & ((\saida~4_combout\) # ((\i~input_o\ & !\Add3~0_combout\)))) # (!\Add3~2_combout\ & (\i~input_o\ & (\saida~4_combout\ $ (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \i~input_o\,
	datac => \saida~4_combout\,
	datad => \Add3~0_combout\,
	combout => \saida~7_combout\);

-- Location: LCCOMB_X5_Y26_N26
\saida~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\f~input_o\ & ((\g~input_o\) # (\j~input_o\))) # (!\f~input_o\ & (\g~input_o\ & \j~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~input_o\,
	datac => \g~input_o\,
	datad => \j~input_o\,
	combout => \saida~6_combout\);

-- Location: LCCOMB_X5_Y26_N16
\saida~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\Add3~1_combout\ & ((\saida~7_combout\ & (!\saida~6_combout\)) # (!\saida~7_combout\ & (\saida~6_combout\ & !\Add3~0_combout\)))) # (!\Add3~1_combout\ & ((\saida~6_combout\ & (\saida~7_combout\)) # (!\saida~6_combout\ & 
-- ((\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \saida~7_combout\,
	datac => \saida~6_combout\,
	datad => \Add3~0_combout\,
	combout => \saida~9_combout\);

-- Location: LCCOMB_X5_Y26_N20
\saida~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~19_combout\ = \h~input_o\ $ (((\i~input_o\ & \Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i~input_o\,
	datac => \h~input_o\,
	datad => \Add3~0_combout\,
	combout => \saida~19_combout\);

-- Location: LCCOMB_X5_Y26_N14
\saida~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\saida~7_combout\ & ((\Add3~0_combout\) # ((!\Add3~1_combout\ & !\saida~6_combout\)))) # (!\saida~7_combout\ & (!\Add3~0_combout\ & (\Add3~1_combout\ $ (\saida~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \saida~7_combout\,
	datac => \saida~6_combout\,
	datad => \Add3~0_combout\,
	combout => \saida~8_combout\);

-- Location: LCCOMB_X5_Y26_N24
\saida~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\Add3~2_combout\ & ((\i~input_o\ & ((\saida~4_combout\) # (\Add3~0_combout\))) # (!\i~input_o\ & (!\saida~4_combout\)))) # (!\Add3~2_combout\ & (\saida~4_combout\ $ (((\i~input_o\ & !\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \i~input_o\,
	datac => \saida~4_combout\,
	datad => \Add3~0_combout\,
	combout => \saida~5_combout\);

-- Location: LCCOMB_X5_Y26_N10
\saida~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (\saida~19_combout\ & (((\saida~8_combout\) # (!\saida~5_combout\)))) # (!\saida~19_combout\ & ((\saida~9_combout\ & (!\saida~8_combout\)) # (!\saida~9_combout\ & ((\saida~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~9_combout\,
	datab => \saida~19_combout\,
	datac => \saida~8_combout\,
	datad => \saida~5_combout\,
	combout => \saida~10_combout\);

-- Location: LCCOMB_X6_Y27_N24
\saida~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = \j~input_o\ $ (\i~input_o\ $ (\h~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datab => \i~input_o\,
	datad => \h~input_o\,
	combout => \saida~11_combout\);

-- Location: LCCOMB_X6_Y27_N10
\saida~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\j~input_o\ & ((\i~input_o\) # (\h~input_o\))) # (!\j~input_o\ & (\i~input_o\ & \h~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datab => \i~input_o\,
	datad => \h~input_o\,
	combout => \saida~12_combout\);

-- Location: LCCOMB_X6_Y27_N28
\saida~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\Add5~2_combout\ & (((\saida~12_combout\) # (\Add5~1_combout\)) # (!\saida~11_combout\))) # (!\Add5~2_combout\ & ((\saida~11_combout\) # ((\saida~12_combout\ & \Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \saida~11_combout\,
	datac => \saida~12_combout\,
	datad => \Add5~1_combout\,
	combout => \saida~13_combout\);

-- Location: LCCOMB_X6_Y27_N14
\saida~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = (\saida~12_combout\ & ((\Add5~2_combout\ & ((\Add5~1_combout\) # (!\saida~11_combout\))) # (!\Add5~2_combout\ & ((\saida~11_combout\) # (!\Add5~1_combout\))))) # (!\saida~12_combout\ & (\Add5~1_combout\ $ (((\Add5~2_combout\ & 
-- \saida~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \saida~11_combout\,
	datac => \saida~12_combout\,
	datad => \Add5~1_combout\,
	combout => \saida~14_combout\);

-- Location: LCCOMB_X6_Y27_N16
\saida~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = (\saida~14_combout\ & ((\Add3~0_combout\ & ((\saida~13_combout\) # (\Add5~0_combout\))) # (!\Add3~0_combout\ & (\saida~13_combout\ & \Add5~0_combout\)))) # (!\saida~14_combout\ & (\Add3~0_combout\ $ (\saida~13_combout\ $ 
-- (\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \saida~13_combout\,
	datac => \saida~14_combout\,
	datad => \Add5~0_combout\,
	combout => \saida~15_combout\);

-- Location: LCCOMB_X6_Y27_N26
\saida~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~16_combout\ = (\Add7~6_combout\ & (((\Add7~8_combout\)))) # (!\Add7~6_combout\ & (\Add7~4_combout\ & (\Add7~2_combout\ $ (!\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \saida~16_combout\);

-- Location: LCCOMB_X6_Y27_N12
\saida~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~17_combout\ = (\Add7~2_combout\ & ((\Add7~4_combout\ & (\Add7~8_combout\)) # (!\Add7~4_combout\ & ((\Add7~6_combout\))))) # (!\Add7~2_combout\ & (\Add7~6_combout\ & ((\Add7~4_combout\) # (\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \saida~17_combout\);

-- Location: LCCOMB_X6_Y27_N22
\saida~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~18_combout\ = (\Add7~2_combout\ & (\Add7~8_combout\ $ (((!\Add7~4_combout\ & !\Add7~6_combout\))))) # (!\Add7~2_combout\ & (\Add7~6_combout\ & ((\Add7~8_combout\) # (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \saida~18_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;
END structure;


