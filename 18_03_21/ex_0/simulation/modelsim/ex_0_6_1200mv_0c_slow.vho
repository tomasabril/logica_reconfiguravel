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

-- DATE "03/21/2018 19:00:51"

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

ENTITY 	ex_0 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	S0 : BUFFER std_logic_vector(3 DOWNTO 0);
	e : IN std_logic;
	f : IN std_logic;
	g : IN std_logic;
	h : IN std_logic;
	S1 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ex_0;

-- Design Ports Information
-- S0[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_0 IS
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
SIGNAL ww_S0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \e~input_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \S0[0]~output_o\ : std_logic;
SIGNAL \S0[1]~output_o\ : std_logic;
SIGNAL \S0[2]~output_o\ : std_logic;
SIGNAL \S0[3]~output_o\ : std_logic;
SIGNAL \S1[0]~output_o\ : std_logic;
SIGNAL \S1[1]~output_o\ : std_logic;
SIGNAL \S1[2]~output_o\ : std_logic;
SIGNAL \S1[3]~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \S0~0_combout\ : std_logic;
SIGNAL \S0~1_combout\ : std_logic;
SIGNAL \S0~2_combout\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S1~1_combout\ : std_logic;
SIGNAL \S1~2_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
S0 <= ww_S0;
ww_e <= e;
ww_f <= f;
ww_g <= g;
ww_h <= h;
S1 <= ww_S1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\S0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0~0_combout\,
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0~1_combout\,
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0~2_combout\,
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\S1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~0_combout\,
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~1_combout\,
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\S1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~2_combout\,
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\S1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y24_N1
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
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\S0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0~0_combout\ = (\d~input_o\ & (!\c~input_o\ & ((!\b~input_o\) # (!\a~input_o\)))) # (!\d~input_o\ & (\c~input_o\ $ (((\a~input_o\ & \b~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \S0~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\S0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0~1_combout\ = (\b~input_o\ & (!\a~input_o\ & !\c~input_o\)) # (!\b~input_o\ & ((\c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \S0~1_combout\);

-- Location: LCCOMB_X1_Y24_N12
\S0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0~2_combout\ = (\a~input_o\ & (!\b~input_o\ & ((!\c~input_o\) # (!\d~input_o\)))) # (!\a~input_o\ & (((\b~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \S0~2_combout\);

-- Location: LCCOMB_X1_Y24_N14
\S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\a~input_o\ & ((\d~input_o\ & ((\b~input_o\) # (\c~input_o\))) # (!\d~input_o\ & (\b~input_o\ $ (!\c~input_o\))))) # (!\a~input_o\ & (\d~input_o\ $ (\b~input_o\ $ (\c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \S1~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\S1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1~1_combout\ = (\a~input_o\ & ((\b~input_o\ & ((\d~input_o\) # (\c~input_o\))) # (!\b~input_o\ & ((!\c~input_o\))))) # (!\a~input_o\ & ((\b~input_o\ $ (\c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \d~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \S1~1_combout\);

-- Location: LCCOMB_X1_Y24_N2
\S1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1~2_combout\ = \a~input_o\ $ (\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	combout => \S1~2_combout\);

-- Location: IOIBUF_X0_Y25_N1
\e~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\f~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\g~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\h~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h,
	o => \h~input_o\);

ww_S0(0) <= \S0[0]~output_o\;

ww_S0(1) <= \S0[1]~output_o\;

ww_S0(2) <= \S0[2]~output_o\;

ww_S0(3) <= \S0[3]~output_o\;

ww_S1(0) <= \S1[0]~output_o\;

ww_S1(1) <= \S1[1]~output_o\;

ww_S1(2) <= \S1[2]~output_o\;

ww_S1(3) <= \S1[3]~output_o\;
END structure;


