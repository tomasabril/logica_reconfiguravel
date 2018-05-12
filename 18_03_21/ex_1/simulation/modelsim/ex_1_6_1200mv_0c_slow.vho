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

-- DATE "03/21/2018 16:35:47"

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

ENTITY 	ex_1 IS
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
	saida : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ex_1;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;

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

-- Location: IOOBUF_X0_Y20_N9
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~8_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

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

-- Location: LCCOMB_X1_Y24_N18
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \h~input_o\ $ (\i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h~input_o\,
	datac => \i~input_o\,
	combout => \Add6~0_combout\);

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

-- Location: LCCOMB_X1_Y24_N30
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \f~input_o\ $ (\g~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~input_o\,
	datac => \g~input_o\,
	combout => \Add4~0_combout\);

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

-- Location: LCCOMB_X1_Y23_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \c~input_o\ $ (\a~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \d~input_o\ $ (\e~input_o\ $ (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datac => \e~input_o\,
	datad => \Add1~0_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Add4~0_combout\ & (\Add3~0_combout\ $ (VCC))) # (!\Add4~0_combout\ & (\Add3~0_combout\ & VCC))
-- \Add5~1\ = CARRY((\Add4~0_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

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

-- Location: LCCOMB_X1_Y24_N8
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

-- Location: LCCOMB_X1_Y24_N10
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~0_combout\ & ((\Add5~0_combout\ & (\Add7~1_cout\ & VCC)) # (!\Add5~0_combout\ & (!\Add7~1_cout\)))) # (!\Add6~0_combout\ & ((\Add5~0_combout\ & (!\Add7~1_cout\)) # (!\Add5~0_combout\ & ((\Add7~1_cout\) # (GND)))))
-- \Add7~3\ = CARRY((\Add6~0_combout\ & (!\Add5~0_combout\ & !\Add7~1_cout\)) # (!\Add6~0_combout\ & ((!\Add7~1_cout\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X1_Y24_N24
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\h~input_o\ & \i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h~input_o\,
	datac => \i~input_o\,
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X1_Y23_N2
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\c~input_o\ & ((\a~input_o\) # (\b~input_o\))) # (!\c~input_o\ & (\a~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~input_o\,
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y24_N26
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Add1~1_combout\ $ (((\d~input_o\ & ((\e~input_o\) # (\Add1~0_combout\))) # (!\d~input_o\ & (\e~input_o\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \Add1~1_combout\,
	datac => \e~input_o\,
	datad => \Add1~0_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (\f~input_o\ & \g~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~input_o\,
	datac => \g~input_o\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X1_Y24_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add3~1_combout\ & ((\Add4~1_combout\ & (\Add5~1\ & VCC)) # (!\Add4~1_combout\ & (!\Add5~1\)))) # (!\Add3~1_combout\ & ((\Add4~1_combout\ & (!\Add5~1\)) # (!\Add4~1_combout\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Add3~1_combout\ & (!\Add4~1_combout\ & !\Add5~1\)) # (!\Add3~1_combout\ & ((!\Add5~1\) # (!\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Add4~1_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X1_Y24_N12
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add6~1_combout\ $ (\Add5~2_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add6~1_combout\ & ((\Add5~2_combout\) # (!\Add7~3\))) # (!\Add6~1_combout\ & (\Add5~2_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X1_Y24_N22
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add1~1_combout\ & ((\d~input_o\ & ((\e~input_o\) # (\Add1~0_combout\))) # (!\d~input_o\ & (\e~input_o\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \Add1~1_combout\,
	datac => \e~input_o\,
	datad => \Add1~0_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X1_Y24_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add3~2_combout\ & (\Add5~3\ $ (GND))) # (!\Add3~2_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\Add3~2_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X1_Y24_N14
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add5~4_combout\ & (!\Add7~5\)) # (!\Add5~4_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X1_Y24_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = \Add5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~5\,
	combout => \Add5~6_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = \Add7~7\ $ (!\Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add5~6_combout\,
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;
END structure;


