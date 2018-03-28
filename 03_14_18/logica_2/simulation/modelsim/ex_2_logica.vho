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

-- DATE "03/14/2018 16:59:10"

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

ENTITY 	ex_2_logica IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	e : OUT std_logic;
	ou : OUT std_logic;
	nao : OUT std_logic;
	xou : OUT std_logic;
	ne : OUT std_logic;
	nou : OUT std_logic;
	nxou : OUT std_logic;
	buff : OUT std_logic
	);
END ex_2_logica;

-- Design Ports Information
-- e	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ou	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nao	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xou	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ne	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nou	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nxou	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buff	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_2_logica IS
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
SIGNAL ww_e : std_logic;
SIGNAL ww_ou : std_logic;
SIGNAL ww_nao : std_logic;
SIGNAL ww_xou : std_logic;
SIGNAL ww_ne : std_logic;
SIGNAL ww_nou : std_logic;
SIGNAL ww_nxou : std_logic;
SIGNAL ww_buff : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \ou~output_o\ : std_logic;
SIGNAL \nao~output_o\ : std_logic;
SIGNAL \xou~output_o\ : std_logic;
SIGNAL \ne~output_o\ : std_logic;
SIGNAL \nou~output_o\ : std_logic;
SIGNAL \nxou~output_o\ : std_logic;
SIGNAL \buff~output_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \e~0_combout\ : std_logic;
SIGNAL \ou~0_combout\ : std_logic;
SIGNAL \xou~0_combout\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_xou~0_combout\ : std_logic;
SIGNAL \ALT_INV_ou~0_combout\ : std_logic;
SIGNAL \ALT_INV_e~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
e <= ww_e;
ou <= ww_ou;
nao <= ww_nao;
xou <= ww_xou;
ne <= ww_ne;
nou <= ww_nou;
nxou <= ww_nxou;
buff <= ww_buff;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_xou~0_combout\ <= NOT \xou~0_combout\;
\ALT_INV_ou~0_combout\ <= NOT \ou~0_combout\;
\ALT_INV_e~0_combout\ <= NOT \e~0_combout\;

-- Location: IOOBUF_X0_Y20_N2
\e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\ou~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ou~0_combout\,
	devoe => ww_devoe,
	o => \ou~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\nao~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a~input_o\,
	devoe => ww_devoe,
	o => \nao~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\xou~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xou~0_combout\,
	devoe => ww_devoe,
	o => \xou~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\ne~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e~0_combout\,
	devoe => ww_devoe,
	o => \ne~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\nou~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ou~0_combout\,
	devoe => ww_devoe,
	o => \nou~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\nxou~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_xou~0_combout\,
	devoe => ww_devoe,
	o => \nxou~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\buff~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \buff~output_o\);

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

-- Location: LCCOMB_X1_Y22_N24
\e~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \e~0_combout\ = (\c~input_o\ & (\a~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \e~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\ou~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ou~0_combout\ = (\c~input_o\) # ((\a~input_o\) # (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \ou~0_combout\);

-- Location: LCCOMB_X1_Y22_N12
\xou~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \xou~0_combout\ = \c~input_o\ $ (\a~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \a~input_o\,
	datac => \b~input_o\,
	combout => \xou~0_combout\);

ww_e <= \e~output_o\;

ww_ou <= \ou~output_o\;

ww_nao <= \nao~output_o\;

ww_xou <= \xou~output_o\;

ww_ne <= \ne~output_o\;

ww_nou <= \nou~output_o\;

ww_nxou <= \nxou~output_o\;

ww_buff <= \buff~output_o\;
END structure;


