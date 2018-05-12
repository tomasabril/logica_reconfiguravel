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

-- DATE "04/04/2018 17:15:01"

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
	ent : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic;
	saida : BUFFER std_logic
	);
END ex_1;

-- Design Ports Information
-- saida	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ent : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_saida : std_logic;
SIGNAL \saida~output_o\ : std_logic;
SIGNAL \ent[1]~input_o\ : std_logic;
SIGNAL \ent[0]~input_o\ : std_logic;
SIGNAL \ent[2]~input_o\ : std_logic;
SIGNAL \ent[3]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \ent[4]~input_o\ : std_logic;
SIGNAL \ent[5]~input_o\ : std_logic;
SIGNAL \ent[7]~input_o\ : std_logic;
SIGNAL \ent[6]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \ALT_INV_saida~2_combout\ : std_logic;

BEGIN

ww_ent <= ent;
ww_sel <= sel;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_saida~2_combout\ <= NOT \saida~2_combout\;

-- Location: IOOBUF_X0_Y20_N9
\saida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_saida~2_combout\,
	devoe => ww_devoe,
	o => \saida~output_o\);

-- Location: IOIBUF_X0_Y25_N15
\ent[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(1),
	o => \ent[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\ent[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(0),
	o => \ent[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\ent[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(2),
	o => \ent[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\ent[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(3),
	o => \ent[3]~input_o\);

-- Location: LCCOMB_X10_Y24_N0
\saida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = \ent[1]~input_o\ $ (\ent[0]~input_o\ $ (\ent[2]~input_o\ $ (\ent[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[1]~input_o\,
	datab => \ent[0]~input_o\,
	datac => \ent[2]~input_o\,
	datad => \ent[3]~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\sel~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\ent[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(4),
	o => \ent[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\ent[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(5),
	o => \ent[5]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\ent[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(7),
	o => \ent[7]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\ent[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(6),
	o => \ent[6]~input_o\);

-- Location: LCCOMB_X10_Y24_N2
\saida~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = \ent[4]~input_o\ $ (\ent[5]~input_o\ $ (\ent[7]~input_o\ $ (\ent[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[4]~input_o\,
	datab => \ent[5]~input_o\,
	datac => \ent[7]~input_o\,
	datad => \ent[6]~input_o\,
	combout => \saida~1_combout\);

-- Location: LCCOMB_X10_Y24_N4
\saida~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = \saida~0_combout\ $ (\sel~input_o\ $ (\saida~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida~0_combout\,
	datac => \sel~input_o\,
	datad => \saida~1_combout\,
	combout => \saida~2_combout\);

ww_saida <= \saida~output_o\;
END structure;


