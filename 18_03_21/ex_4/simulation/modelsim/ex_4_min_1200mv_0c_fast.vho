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

-- DATE "03/21/2018 17:56:53"

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

ENTITY 	ex_4 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	s1 : OUT std_logic;
	s2 : OUT std_logic;
	s3 : OUT std_logic;
	s4 : OUT std_logic
	);
END ex_4;

-- Design Ports Information
-- s1	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_4 IS
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
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s3~0_combout\ : std_logic;
SIGNAL \s4~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y21_N16
\s1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\s2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2~0_combout\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\s3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3~0_combout\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\s4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4~0_combout\,
	devoe => ww_devoe,
	o => \s4~output_o\);

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

-- Location: LCCOMB_X1_Y21_N16
\s1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = (\a~input_o\ & (((!\b~input_o\ & !\c~input_o\)) # (!\d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \b~input_o\,
	datac => \a~input_o\,
	datad => \c~input_o\,
	combout => \s1~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (!\d~input_o\ & (\a~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \s2~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\s3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s3~0_combout\ = (!\d~input_o\ & (\c~input_o\ & (\b~input_o\ $ (!\a~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \b~input_o\,
	datac => \a~input_o\,
	datad => \c~input_o\,
	combout => \s3~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\s4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s4~0_combout\ = (\d~input_o\ & (!\b~input_o\ & !\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \b~input_o\,
	datad => \c~input_o\,
	combout => \s4~0_combout\);

ww_s1 <= \s1~output_o\;

ww_s2 <= \s2~output_o\;

ww_s3 <= \s3~output_o\;

ww_s4 <= \s4~output_o\;
END structure;


