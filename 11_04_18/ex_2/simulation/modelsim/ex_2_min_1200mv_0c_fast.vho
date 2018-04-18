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

-- DATE "04/18/2018 19:35:55"

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
	sw : IN std_logic_vector(3 DOWNTO 0);
	bt : IN std_logic_vector(2 DOWNTO 0);
	saida0 : OUT std_logic_vector(6 DOWNTO 0);
	saida1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ex_2;

-- Design Ports Information
-- saida0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bt : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \saida0[0]~output_o\ : std_logic;
SIGNAL \saida0[1]~output_o\ : std_logic;
SIGNAL \saida0[2]~output_o\ : std_logic;
SIGNAL \saida0[3]~output_o\ : std_logic;
SIGNAL \saida0[4]~output_o\ : std_logic;
SIGNAL \saida0[5]~output_o\ : std_logic;
SIGNAL \saida0[6]~output_o\ : std_logic;
SIGNAL \saida1[0]~output_o\ : std_logic;
SIGNAL \saida1[1]~output_o\ : std_logic;
SIGNAL \saida1[2]~output_o\ : std_logic;
SIGNAL \saida1[3]~output_o\ : std_logic;
SIGNAL \saida1[4]~output_o\ : std_logic;
SIGNAL \saida1[5]~output_o\ : std_logic;
SIGNAL \saida1[6]~output_o\ : std_logic;
SIGNAL \bt[0]~input_o\ : std_logic;
SIGNAL \bt[2]~input_o\ : std_logic;
SIGNAL \bt[1]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \saida0~0_combout\ : std_logic;
SIGNAL \saida0~1_combout\ : std_logic;
SIGNAL \saida0~2_combout\ : std_logic;
SIGNAL \saida0~3_combout\ : std_logic;
SIGNAL \saida0~4_combout\ : std_logic;
SIGNAL \saida0~5_combout\ : std_logic;
SIGNAL \saida0~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \saida1~9_combout\ : std_logic;
SIGNAL \saida1~10_combout\ : std_logic;
SIGNAL \saida1~11_combout\ : std_logic;
SIGNAL \saida1~12_combout\ : std_logic;
SIGNAL \saida1~14_combout\ : std_logic;
SIGNAL \saida1~15_combout\ : std_logic;
SIGNAL \saida1~13_combout\ : std_logic;

BEGIN

ww_sw <= sw;
ww_bt <= bt;
saida0 <= ww_saida0;
saida1 <= ww_saida1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~7\ & \Mult0|auto_generated|mac_mult1~6\ & \Mult0|auto_generated|mac_mult1~5\ & \Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & 
\Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \ShiftLeft0~3_combout\ & \ShiftLeft0~2_combout\ & \ShiftLeft0~1_combout\ & \ShiftLeft0~0_combout\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \sw[3]~input_o\ & \sw[2]~input_o\ & \sw[1]~input_o\ & \sw[0]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

-- Location: IOOBUF_X26_Y29_N16
\saida0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~0_combout\,
	devoe => ww_devoe,
	o => \saida0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\saida0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~1_combout\,
	devoe => ww_devoe,
	o => \saida0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\saida0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~2_combout\,
	devoe => ww_devoe,
	o => \saida0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\saida0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~3_combout\,
	devoe => ww_devoe,
	o => \saida0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\saida0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~4_combout\,
	devoe => ww_devoe,
	o => \saida0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\saida0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~5_combout\,
	devoe => ww_devoe,
	o => \saida0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\saida0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~6_combout\,
	devoe => ww_devoe,
	o => \saida0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\saida1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~9_combout\,
	devoe => ww_devoe,
	o => \saida1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\saida1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~10_combout\,
	devoe => ww_devoe,
	o => \saida1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\saida1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~11_combout\,
	devoe => ww_devoe,
	o => \saida1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\saida1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~12_combout\,
	devoe => ww_devoe,
	o => \saida1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\saida1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~14_combout\,
	devoe => ww_devoe,
	o => \saida1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\saida1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~15_combout\,
	devoe => ww_devoe,
	o => \saida1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\saida1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida1~13_combout\,
	devoe => ww_devoe,
	o => \saida1[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\bt[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt(0),
	o => \bt[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\bt[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt(2),
	o => \bt[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\bt[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt(1),
	o => \bt[1]~input_o\);

-- Location: LCCOMB_X10_Y11_N0
\ShiftLeft0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\bt[0]~input_o\ & (\bt[2]~input_o\ & \bt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~input_o\,
	datac => \bt[2]~input_o\,
	datad => \bt[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X10_Y11_N2
\ShiftLeft0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\bt[0]~input_o\ & (\bt[2]~input_o\ $ (\bt[1]~input_o\))) # (!\bt[0]~input_o\ & (\bt[2]~input_o\ & \bt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~input_o\,
	datac => \bt[2]~input_o\,
	datad => \bt[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X10_Y11_N4
\ShiftLeft0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\bt[0]~input_o\ & (!\bt[2]~input_o\ & !\bt[1]~input_o\)) # (!\bt[0]~input_o\ & (\bt[2]~input_o\ $ (\bt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~input_o\,
	datac => \bt[2]~input_o\,
	datad => \bt[1]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X10_Y11_N6
\ShiftLeft0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\bt[0]~input_o\ & (!\bt[2]~input_o\ & !\bt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bt[0]~input_o\,
	datac => \bt[2]~input_o\,
	datad => \bt[1]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: DSPMULT_X18_Y25_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y25_N2
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y25_N24
\saida0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~0_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\Mult0|auto_generated|mac_out2~dataout\ & 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~0_combout\);

-- Location: LCCOMB_X23_Y25_N10
\saida0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~1_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ $ (((\Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\Mult0|auto_generated|mac_out2~DATAOUT2\))))) # (!\Mult0|auto_generated|mac_out2~dataout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & !\Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~1_combout\);

-- Location: LCCOMB_X23_Y25_N4
\saida0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Mult0|auto_generated|mac_out2~dataout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\ & 
-- ((!\Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~2_combout\);

-- Location: LCCOMB_X23_Y25_N6
\saida0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~3_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\ $ (((!\Mult0|auto_generated|mac_out2~DATAOUT2\))))) # (!\Mult0|auto_generated|mac_out2~dataout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT3\ & !\Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & \Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~3_combout\);

-- Location: LCCOMB_X23_Y25_N0
\saida0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~4_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\Mult0|auto_generated|mac_out2~dataout\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\ & !\Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~4_combout\);

-- Location: LCCOMB_X23_Y25_N26
\saida0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~5_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\Mult0|auto_generated|mac_out2~dataout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\))))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~dataout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~5_combout\);

-- Location: LCCOMB_X23_Y25_N28
\saida0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\ $ (\Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Mult0|auto_generated|mac_out2~dataout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \saida0~6_combout\);

-- Location: LCCOMB_X22_Y11_N8
\saida1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~9_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT5\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\ $ (\Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & \Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\Mult0|auto_generated|mac_out2~DATAOUT6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~9_combout\);

-- Location: LCCOMB_X22_Y11_N10
\saida1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\ $ (\Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\))))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- !\Mult0|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~10_combout\);

-- Location: LCCOMB_X22_Y11_N4
\saida1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~11_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT5\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- ((!\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~11_combout\);

-- Location: LCCOMB_X22_Y11_N6
\saida1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~12_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & \Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~12_combout\);

-- Location: LCCOMB_X22_Y11_N18
\saida1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT7\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\Mult0|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~14_combout\);

-- Location: LCCOMB_X22_Y11_N12
\saida1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~15_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT7\) # (\Mult0|auto_generated|mac_out2~DATAOUT5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~15_combout\);

-- Location: LCCOMB_X22_Y11_N24
\saida1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~13_combout\ = (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & \Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \saida1~13_combout\);

ww_saida0(0) <= \saida0[0]~output_o\;

ww_saida0(1) <= \saida0[1]~output_o\;

ww_saida0(2) <= \saida0[2]~output_o\;

ww_saida0(3) <= \saida0[3]~output_o\;

ww_saida0(4) <= \saida0[4]~output_o\;

ww_saida0(5) <= \saida0[5]~output_o\;

ww_saida0(6) <= \saida0[6]~output_o\;

ww_saida1(0) <= \saida1[0]~output_o\;

ww_saida1(1) <= \saida1[1]~output_o\;

ww_saida1(2) <= \saida1[2]~output_o\;

ww_saida1(3) <= \saida1[3]~output_o\;

ww_saida1(4) <= \saida1[4]~output_o\;

ww_saida1(5) <= \saida1[5]~output_o\;

ww_saida1(6) <= \saida1[6]~output_o\;
END structure;


