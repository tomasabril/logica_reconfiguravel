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

-- DATE "03/14/2018 17:10:46"

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

ENTITY 	ex_3_logica IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	o1 : OUT std_logic;
	o2 : OUT std_logic;
	o3 : OUT std_logic;
	o4 : OUT std_logic
	);
END ex_3_logica;

-- Design Ports Information
-- o1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o3	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o4	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_3_logica IS
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
SIGNAL ww_o1 : std_logic;
SIGNAL ww_o2 : std_logic;
SIGNAL ww_o3 : std_logic;
SIGNAL ww_o4 : std_logic;
SIGNAL \o1~output_o\ : std_logic;
SIGNAL \o2~output_o\ : std_logic;
SIGNAL \o3~output_o\ : std_logic;
SIGNAL \o4~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \o1~0_combout\ : std_logic;
SIGNAL \o3~0_combout\ : std_logic;
SIGNAL \o3~1_combout\ : std_logic;
SIGNAL \o3~2_combout\ : std_logic;
SIGNAL \ALT_INV_o1~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
o1 <= ww_o1;
o2 <= ww_o2;
o3 <= ww_o3;
o4 <= ww_o4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o1~0_combout\ <= NOT \o1~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\o1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o1~0_combout\,
	devoe => ww_devoe,
	o => \o1~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\o2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o3~0_combout\,
	devoe => ww_devoe,
	o => \o2~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\o3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o3~1_combout\,
	devoe => ww_devoe,
	o => \o3~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o3~2_combout\,
	devoe => ww_devoe,
	o => \o4~output_o\);

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

-- Location: LCCOMB_X2_Y21_N0
\o1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o1~0_combout\ = (\a~input_o\) # (\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \o1~0_combout\);

-- Location: LCCOMB_X2_Y21_N2
\o3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o3~0_combout\ = (\a~input_o\ & !\b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \o3~0_combout\);

-- Location: LCCOMB_X2_Y21_N28
\o3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o3~1_combout\ = (!\a~input_o\ & \b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \o3~1_combout\);

-- Location: LCCOMB_X2_Y21_N22
\o3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o3~2_combout\ = (\a~input_o\ & \b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \b~input_o\,
	combout => \o3~2_combout\);

ww_o1 <= \o1~output_o\;

ww_o2 <= \o2~output_o\;

ww_o3 <= \o3~output_o\;

ww_o4 <= \o4~output_o\;
END structure;


