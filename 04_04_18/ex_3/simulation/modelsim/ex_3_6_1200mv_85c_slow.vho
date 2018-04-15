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

-- DATE "04/11/2018 19:42:08"

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

ENTITY 	ex_3 IS
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
	b0 : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	saida0 : OUT std_logic_vector(6 DOWNTO 0);
	saida1 : OUT std_logic_vector(6 DOWNTO 0);
	saidabin : OUT std_logic_vector(9 DOWNTO 0)
	);
END ex_3;

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
-- saidabin[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidabin[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_3 IS
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
SIGNAL ww_b0 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_saida0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saidabin : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \saidabin[0]~output_o\ : std_logic;
SIGNAL \saidabin[1]~output_o\ : std_logic;
SIGNAL \saidabin[2]~output_o\ : std_logic;
SIGNAL \saidabin[3]~output_o\ : std_logic;
SIGNAL \saidabin[4]~output_o\ : std_logic;
SIGNAL \saidabin[5]~output_o\ : std_logic;
SIGNAL \saidabin[6]~output_o\ : std_logic;
SIGNAL \saidabin[7]~output_o\ : std_logic;
SIGNAL \saidabin[8]~output_o\ : std_logic;
SIGNAL \saidabin[9]~output_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \Add7~3_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \saida0~12_combout\ : std_logic;
SIGNAL \saida0~11_combout\ : std_logic;
SIGNAL \Add10~3_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \saida0~13_combout\ : std_logic;
SIGNAL \saida0~10_combout\ : std_logic;
SIGNAL \saida0~14_combout\ : std_logic;
SIGNAL \saida0~15_combout\ : std_logic;
SIGNAL \saida0~16_combout\ : std_logic;
SIGNAL \saida0~88_combout\ : std_logic;
SIGNAL \saida0~18_combout\ : std_logic;
SIGNAL \saida0~20_combout\ : std_logic;
SIGNAL \saida0~21_combout\ : std_logic;
SIGNAL \saida0~17_combout\ : std_logic;
SIGNAL \saida0~22_combout\ : std_logic;
SIGNAL \Add10~5_combout\ : std_logic;
SIGNAL \saida0~23_combout\ : std_logic;
SIGNAL \saida0~24_combout\ : std_logic;
SIGNAL \x~4_combout\ : std_logic;
SIGNAL \x~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \x~8_combout\ : std_logic;
SIGNAL \x~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \x~5_combout\ : std_logic;
SIGNAL \x~6_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \x~11_combout\ : std_logic;
SIGNAL \x~12_combout\ : std_logic;
SIGNAL \x~13_combout\ : std_logic;
SIGNAL \x~10_combout\ : std_logic;
SIGNAL \x~14_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \saida0~26_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \saida0~27_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \saida0~25_combout\ : std_logic;
SIGNAL \saida0~28_combout\ : std_logic;
SIGNAL \saida0~29_combout\ : std_logic;
SIGNAL \saida0~30_combout\ : std_logic;
SIGNAL \saida0~33_combout\ : std_logic;
SIGNAL \saida0~31_combout\ : std_logic;
SIGNAL \saida0~32_combout\ : std_logic;
SIGNAL \saida0~34_combout\ : std_logic;
SIGNAL \saida0~35_combout\ : std_logic;
SIGNAL \saida0~89_combout\ : std_logic;
SIGNAL \saida0~36_combout\ : std_logic;
SIGNAL \saida0~37_combout\ : std_logic;
SIGNAL \saida0~38_combout\ : std_logic;
SIGNAL \saida0~39_combout\ : std_logic;
SIGNAL \saida0~19_combout\ : std_logic;
SIGNAL \saida0~48_combout\ : std_logic;
SIGNAL \saida0~47_combout\ : std_logic;
SIGNAL \saida0~49_combout\ : std_logic;
SIGNAL \saida0~43_combout\ : std_logic;
SIGNAL \saida0~44_combout\ : std_logic;
SIGNAL \saida0~45_combout\ : std_logic;
SIGNAL \saida0~40_combout\ : std_logic;
SIGNAL \saida0~41_combout\ : std_logic;
SIGNAL \saida0~42_combout\ : std_logic;
SIGNAL \saida0~46_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \saida0~50_combout\ : std_logic;
SIGNAL \saida0~51_combout\ : std_logic;
SIGNAL \saida0~52_combout\ : std_logic;
SIGNAL \saida0~90_combout\ : std_logic;
SIGNAL \saida0~53_combout\ : std_logic;
SIGNAL \saida0~54_combout\ : std_logic;
SIGNAL \saida0~55_combout\ : std_logic;
SIGNAL \saida0~56_combout\ : std_logic;
SIGNAL \saida0~59_combout\ : std_logic;
SIGNAL \saida0~57_combout\ : std_logic;
SIGNAL \saida0~58_combout\ : std_logic;
SIGNAL \saida0~60_combout\ : std_logic;
SIGNAL \saida0~63_combout\ : std_logic;
SIGNAL \saida0~64_combout\ : std_logic;
SIGNAL \saida0~61_combout\ : std_logic;
SIGNAL \saida0~62_combout\ : std_logic;
SIGNAL \saida0~65_combout\ : std_logic;
SIGNAL \saida0~66_combout\ : std_logic;
SIGNAL \saida0~71_combout\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \Equal39~2_combout\ : std_logic;
SIGNAL \saida1~0_combout\ : std_logic;
SIGNAL \saida1~1_combout\ : std_logic;
SIGNAL \saida0~68_combout\ : std_logic;
SIGNAL \saida0~69_combout\ : std_logic;
SIGNAL \saida0~70_combout\ : std_logic;
SIGNAL \saida0~72_combout\ : std_logic;
SIGNAL \Equal45~0_combout\ : std_logic;
SIGNAL \saida0~73_combout\ : std_logic;
SIGNAL \Equal44~0_combout\ : std_logic;
SIGNAL \saida0~67_combout\ : std_logic;
SIGNAL \saida0~92_combout\ : std_logic;
SIGNAL \saida0~74_combout\ : std_logic;
SIGNAL \saida0~75_combout\ : std_logic;
SIGNAL \saida0~76_combout\ : std_logic;
SIGNAL \saida0~77_combout\ : std_logic;
SIGNAL \saida0~93_combout\ : std_logic;
SIGNAL \saida0~91_combout\ : std_logic;
SIGNAL \saida0~78_combout\ : std_logic;
SIGNAL \saida0~81_combout\ : std_logic;
SIGNAL \saida0~82_combout\ : std_logic;
SIGNAL \saida0~79_combout\ : std_logic;
SIGNAL \saida0~80_combout\ : std_logic;
SIGNAL \saida0~83_combout\ : std_logic;
SIGNAL \saida0~84_combout\ : std_logic;
SIGNAL \saida0~85_combout\ : std_logic;
SIGNAL \saida0~86_combout\ : std_logic;
SIGNAL \saida0~87_combout\ : std_logic;
SIGNAL \saida1~3_combout\ : std_logic;
SIGNAL \saida1~2_combout\ : std_logic;
SIGNAL \saida1~4_combout\ : std_logic;
SIGNAL \saida1~5_combout\ : std_logic;
SIGNAL \saida1~6_combout\ : std_logic;
SIGNAL \saida1~7_combout\ : std_logic;
SIGNAL \saida1~8_combout\ : std_logic;
SIGNAL \saida1~9_combout\ : std_logic;
SIGNAL \ALT_INV_saida1~8_combout\ : std_logic;
SIGNAL \ALT_INV_saida1~5_combout\ : std_logic;
SIGNAL \ALT_INV_x~11_combout\ : std_logic;

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
ww_b0 <= b0;
ww_b1 <= b1;
ww_b2 <= b2;
saida0 <= ww_saida0;
saida1 <= ww_saida1;
saidabin <= ww_saidabin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_saida1~8_combout\ <= NOT \saida1~8_combout\;
\ALT_INV_saida1~5_combout\ <= NOT \saida1~5_combout\;
\ALT_INV_x~11_combout\ <= NOT \x~11_combout\;

-- Location: IOOBUF_X26_Y29_N16
\saida0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~23_combout\,
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
	i => \saida0~39_combout\,
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
	i => \saida0~56_combout\,
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
	i => \saida0~66_combout\,
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
	i => \saida0~93_combout\,
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
	i => \saida0~91_combout\,
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
	i => \saida0~87_combout\,
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
	i => \saida1~6_combout\,
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
	i => \ALT_INV_saida1~5_combout\,
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
	i => \saida1~7_combout\,
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
	i => \saida1~7_combout\,
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
	i => \ALT_INV_saida1~8_combout\,
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
	i => \saida1~9_combout\,
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
	i => \saida1~7_combout\,
	devoe => ww_devoe,
	o => \saida1[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\saidabin[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~13_combout\,
	devoe => ww_devoe,
	o => \saidabin[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\saidabin[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~7_combout\,
	devoe => ww_devoe,
	o => \saidabin[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\saidabin[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~9_combout\,
	devoe => ww_devoe,
	o => \saidabin[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\saidabin[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~6_combout\,
	devoe => ww_devoe,
	o => \saidabin[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\saidabin[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~14_combout\,
	devoe => ww_devoe,
	o => \saidabin[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\saidabin[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~12_combout\,
	devoe => ww_devoe,
	o => \saidabin[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\saidabin[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_x~11_combout\,
	devoe => ww_devoe,
	o => \saidabin[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\saidabin[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidabin[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\saidabin[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidabin[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\saidabin[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidabin[9]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\b2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

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

-- Location: LCCOMB_X12_Y24_N26
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\b~input_o\ & ((\a~input_o\) # (\c~input_o\))) # (!\b~input_o\ & (\a~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \a~input_o\,
	datac => \c~input_o\,
	combout => \Add3~0_combout\);

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

-- Location: LCCOMB_X12_Y24_N24
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (\d~input_o\ & ((\f~input_o\) # (\e~input_o\))) # (!\d~input_o\ & (\f~input_o\ & \e~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datac => \f~input_o\,
	datad => \e~input_o\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X12_Y24_N16
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \d~input_o\ $ (\f~input_o\ $ (\e~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datac => \f~input_o\,
	datad => \e~input_o\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X12_Y24_N22
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\Add4~0_combout\ & (\b~input_o\ $ (\a~input_o\ $ (\c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \a~input_o\,
	datac => \c~input_o\,
	datad => \Add4~0_combout\,
	combout => \Add6~1_combout\);

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

-- Location: LCCOMB_X12_Y24_N10
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \b~input_o\ $ (\a~input_o\ $ (\c~input_o\ $ (\Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \a~input_o\,
	datac => \c~input_o\,
	datad => \Add4~0_combout\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X12_Y24_N20
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\g~input_o\ & \Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g~input_o\,
	datad => \Add6~0_combout\,
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X12_Y24_N12
\Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = (\Add3~0_combout\ & (\Add4~1_combout\ & (\Add6~1_combout\ & \Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add4~1_combout\,
	datac => \Add6~1_combout\,
	datad => \Add7~0_combout\,
	combout => \Add7~1_combout\);

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

-- Location: LCCOMB_X12_Y24_N0
\Add7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~3_combout\ = \g~input_o\ $ (\Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g~input_o\,
	datad => \Add6~0_combout\,
	combout => \Add7~3_combout\);

-- Location: LCCOMB_X24_Y14_N10
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (\Add7~3_combout\ & (\j~input_o\ $ (\h~input_o\ $ (\i~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datab => \h~input_o\,
	datac => \i~input_o\,
	datad => \Add7~3_combout\,
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X12_Y24_N6
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add3~0_combout\ & ((\Add4~1_combout\ & ((!\Add7~0_combout\) # (!\Add6~1_combout\))) # (!\Add4~1_combout\ & ((\Add6~1_combout\) # (\Add7~0_combout\))))) # (!\Add3~0_combout\ & ((\Add4~1_combout\ & ((\Add6~1_combout\) # 
-- (\Add7~0_combout\))) # (!\Add4~1_combout\ & (\Add6~1_combout\ & \Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add4~1_combout\,
	datac => \Add6~1_combout\,
	datad => \Add7~0_combout\,
	combout => \Add7~2_combout\);

-- Location: LCCOMB_X12_Y24_N2
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = \Add3~0_combout\ $ (\Add4~1_combout\ $ (\Add6~1_combout\ $ (\Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add4~1_combout\,
	datac => \Add6~1_combout\,
	datad => \Add7~0_combout\,
	combout => \Add7~4_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\j~input_o\ & ((\h~input_o\) # (\i~input_o\))) # (!\j~input_o\ & (\h~input_o\ & \i~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datab => \h~input_o\,
	datac => \i~input_o\,
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = (\Add7~2_combout\ & ((\Add10~0_combout\ & ((\Add7~4_combout\) # (\Add8~0_combout\))) # (!\Add10~0_combout\ & (\Add7~4_combout\ & \Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add7~2_combout\,
	datac => \Add7~4_combout\,
	datad => \Add8~0_combout\,
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = \Add7~1_combout\ $ (\Add10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datac => \Add10~1_combout\,
	combout => \Add10~2_combout\);

-- Location: IOIBUF_X0_Y21_N8
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X17_Y24_N12
\saida0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~12_combout\ = (\b2~input_o\ & (((\Add10~2_combout\) # (!\b0~input_o\)) # (!\b1~input_o\))) # (!\b2~input_o\ & ((\b1~input_o\) # ((\b0~input_o\) # (!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \b0~input_o\,
	combout => \saida0~12_combout\);

-- Location: LCCOMB_X17_Y24_N10
\saida0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~11_combout\ = (\Add10~2_combout\ & ((\b2~input_o\ & (!\b1~input_o\ & !\b0~input_o\)) # (!\b2~input_o\ & ((!\b0~input_o\) # (!\b1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \b0~input_o\,
	combout => \saida0~11_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Add10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~3_combout\ = \Add10~0_combout\ $ (\Add7~4_combout\ $ (\Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datac => \Add7~4_combout\,
	datad => \Add8~0_combout\,
	combout => \Add10~3_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = \Add7~2_combout\ $ (((\Add10~0_combout\ & ((\Add7~4_combout\) # (\Add8~0_combout\))) # (!\Add10~0_combout\ & (\Add7~4_combout\ & \Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add7~2_combout\,
	datac => \Add7~4_combout\,
	datad => \Add8~0_combout\,
	combout => \Add10~4_combout\);

-- Location: LCCOMB_X17_Y24_N14
\saida0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~13_combout\ = (\Add10~3_combout\ & (((\Add10~4_combout\)))) # (!\Add10~3_combout\ & ((\Add10~4_combout\ & ((\saida0~11_combout\))) # (!\Add10~4_combout\ & (!\saida0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~12_combout\,
	datab => \saida0~11_combout\,
	datac => \Add10~3_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~13_combout\);

-- Location: LCCOMB_X17_Y24_N0
\saida0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~10_combout\ = (\b2~input_o\ & ((\b1~input_o\ & ((!\b0~input_o\) # (!\Add10~2_combout\))) # (!\b1~input_o\ & ((\b0~input_o\))))) # (!\b2~input_o\ & ((\b1~input_o\ & ((\b0~input_o\))) # (!\b1~input_o\ & (!\Add10~2_combout\ & !\b0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \b0~input_o\,
	combout => \saida0~10_combout\);

-- Location: LCCOMB_X14_Y22_N16
\saida0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~14_combout\ = (\b2~input_o\ & (\b1~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \saida0~14_combout\);

-- Location: LCCOMB_X22_Y22_N24
\saida0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~15_combout\ = (\saida0~14_combout\ & (\Add7~1_combout\ $ (\Add10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \saida0~14_combout\,
	datad => \Add10~1_combout\,
	combout => \saida0~15_combout\);

-- Location: LCCOMB_X17_Y24_N8
\saida0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~16_combout\ = (\saida0~13_combout\ & (((!\saida0~15_combout\) # (!\Add10~3_combout\)))) # (!\saida0~13_combout\ & (!\saida0~10_combout\ & (\Add10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~13_combout\,
	datab => \saida0~10_combout\,
	datac => \Add10~3_combout\,
	datad => \saida0~15_combout\,
	combout => \saida0~16_combout\);

-- Location: LCCOMB_X10_Y24_N12
\saida0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~88_combout\ = (\Add10~4_combout\ & (\b0~input_o\ & \b1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \b0~input_o\,
	datad => \b1~input_o\,
	combout => \saida0~88_combout\);

-- Location: LCCOMB_X17_Y24_N28
\saida0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~18_combout\ = (\Add10~4_combout\ & (!\Add10~2_combout\ & (\b0~input_o\ $ (\b1~input_o\)))) # (!\Add10~4_combout\ & ((\b0~input_o\) # ((\b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~18_combout\);

-- Location: LCCOMB_X17_Y24_N6
\saida0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~20_combout\ = (\b2~input_o\ & (((\Add10~3_combout\)))) # (!\b2~input_o\ & ((\Add10~3_combout\ & ((!\saida0~18_combout\))) # (!\Add10~3_combout\ & (!\saida0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \saida0~88_combout\,
	datac => \Add10~3_combout\,
	datad => \saida0~18_combout\,
	combout => \saida0~20_combout\);

-- Location: LCCOMB_X17_Y24_N16
\saida0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~21_combout\ = (\Add10~4_combout\ & ((\Add10~2_combout\) # (\b0~input_o\ $ (\b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~21_combout\);

-- Location: LCCOMB_X17_Y24_N2
\saida0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~17_combout\ = (\b0~input_o\ & (\Add10~4_combout\ $ (((\b1~input_o\ & \Add10~2_combout\))))) # (!\b0~input_o\ & (\b1~input_o\ & ((\Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~17_combout\);

-- Location: LCCOMB_X17_Y24_N26
\saida0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~22_combout\ = (\saida0~20_combout\ & ((\saida0~21_combout\) # ((!\b2~input_o\)))) # (!\saida0~20_combout\ & (((\b2~input_o\ & !\saida0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~20_combout\,
	datab => \saida0~21_combout\,
	datac => \b2~input_o\,
	datad => \saida0~17_combout\,
	combout => \saida0~22_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Add10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~5_combout\ = \j~input_o\ $ (\h~input_o\ $ (\i~input_o\ $ (\Add7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j~input_o\,
	datab => \h~input_o\,
	datac => \i~input_o\,
	datad => \Add7~3_combout\,
	combout => \Add10~5_combout\);

-- Location: LCCOMB_X17_Y24_N20
\saida0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~23_combout\ = (\Add10~5_combout\ & (\saida0~16_combout\)) # (!\Add10~5_combout\ & ((\saida0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida0~16_combout\,
	datac => \saida0~22_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~23_combout\);

-- Location: LCCOMB_X24_Y14_N12
\saida0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~24_combout\ = (\Add10~5_combout\ & (\Add10~0_combout\ $ (\Add8~0_combout\ $ (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add8~0_combout\,
	datac => \Add7~4_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~24_combout\);

-- Location: LCCOMB_X14_Y22_N18
\x~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~4_combout\ = (\b2~input_o\ & (\b1~input_o\ $ (\b0~input_o\))) # (!\b2~input_o\ & (\b1~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \x~4_combout\);

-- Location: LCCOMB_X22_Y22_N6
\x~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~7_combout\ = (\Add10~5_combout\ & ((\x~4_combout\) # ((\Add10~3_combout\ & \saida0~14_combout\)))) # (!\Add10~5_combout\ & (\Add10~3_combout\ & ((\saida0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \Add10~3_combout\,
	datac => \x~4_combout\,
	datad => \saida0~14_combout\,
	combout => \x~7_combout\);

-- Location: LCCOMB_X14_Y22_N14
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\b2~input_o\ & (!\b1~input_o\ & !\b0~input_o\)) # (!\b2~input_o\ & (\b1~input_o\ $ (\b0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\x~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~8_combout\ = (\Add10~5_combout\ & ((\Equal1~0_combout\) # ((\Add10~4_combout\ & \saida0~14_combout\)))) # (!\Add10~5_combout\ & (\Add10~4_combout\ & ((\saida0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \Add10~4_combout\,
	datac => \Equal1~0_combout\,
	datad => \saida0~14_combout\,
	combout => \x~8_combout\);

-- Location: LCCOMB_X22_Y22_N26
\x~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~9_combout\ = (\x~8_combout\) # ((\x~4_combout\ & \Add10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~8_combout\,
	datac => \x~4_combout\,
	datad => \Add10~3_combout\,
	combout => \x~9_combout\);

-- Location: LCCOMB_X14_Y22_N4
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\b2~input_o\) # ((\b1~input_o\) # (\b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y22_N18
\x~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~5_combout\ = (\x~4_combout\ & ((\Add10~4_combout\) # ((!\Equal2~0_combout\ & \Add10~5_combout\)))) # (!\x~4_combout\ & (((!\Equal2~0_combout\ & \Add10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~4_combout\,
	datab => \Add10~4_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add10~5_combout\,
	combout => \x~5_combout\);

-- Location: LCCOMB_X22_Y22_N28
\x~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~6_combout\ = (\x~5_combout\) # ((\saida0~15_combout\) # ((\Equal1~0_combout\ & \Add10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \x~5_combout\,
	datac => \saida0~15_combout\,
	datad => \Add10~3_combout\,
	combout => \x~6_combout\);

-- Location: LCCOMB_X12_Y22_N10
\Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!\x~7_combout\ & (\x~9_combout\ & \x~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \x~9_combout\,
	datac => \x~6_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X22_Y22_N30
\x~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~11_combout\ = (\Equal2~0_combout\) # (\Add7~1_combout\ $ (!\Add10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \Equal2~0_combout\,
	datad => \Add10~1_combout\,
	combout => \x~11_combout\);

-- Location: LCCOMB_X22_Y22_N0
\x~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~12_combout\ = (\Equal2~0_combout\ & (\Equal1~0_combout\ & ((\Add10~2_combout\)))) # (!\Equal2~0_combout\ & (((\Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add10~4_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add10~2_combout\,
	combout => \x~12_combout\);

-- Location: LCCOMB_X14_Y22_N6
\x~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~13_combout\ = (\b0~input_o\ & (\b1~input_o\ & (\Add10~5_combout\ & \b2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~5_combout\,
	datad => \b2~input_o\,
	combout => \x~13_combout\);

-- Location: LCCOMB_X22_Y22_N20
\x~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~10_combout\ = (\Equal1~0_combout\ & ((\Add10~4_combout\) # ((!\Equal2~0_combout\ & \Add10~3_combout\)))) # (!\Equal1~0_combout\ & (((!\Equal2~0_combout\ & \Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add10~4_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add10~3_combout\,
	combout => \x~10_combout\);

-- Location: LCCOMB_X22_Y22_N2
\x~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x~14_combout\ = (\x~10_combout\) # ((\x~4_combout\ & (\Add7~1_combout\ $ (\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \x~10_combout\,
	datac => \x~4_combout\,
	datad => \Add10~1_combout\,
	combout => \x~14_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\x~11_combout\ & (!\x~12_combout\ & (!\x~13_combout\ & !\x~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~11_combout\,
	datab => \x~12_combout\,
	datac => \x~13_combout\,
	datad => \x~14_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X22_Y22_N22
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\x~11_combout\ & (\x~12_combout\ & (!\x~13_combout\ & !\x~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~11_combout\,
	datab => \x~12_combout\,
	datac => \x~13_combout\,
	datad => \x~14_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\x~11_combout\ & (!\x~12_combout\ & (!\x~13_combout\ & \x~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~11_combout\,
	datab => \x~12_combout\,
	datac => \x~13_combout\,
	datad => \x~14_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X12_Y22_N20
\saida0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~26_combout\ = ((!\Equal6~0_combout\ & (!\Equal8~0_combout\ & !\Equal7~0_combout\))) # (!\Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \saida0~26_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\x~9_combout\ & (\x~6_combout\ & (\Equal7~0_combout\ & \x~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~9_combout\,
	datab => \x~6_combout\,
	datac => \Equal7~0_combout\,
	datad => \x~7_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X22_Y19_N26
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\x~9_combout\ & (\x~6_combout\ & (\Equal6~0_combout\ & \x~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~9_combout\,
	datab => \x~6_combout\,
	datac => \Equal6~0_combout\,
	datad => \x~7_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X22_Y19_N20
\Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\x~7_combout\ & (\Equal8~0_combout\ & (\x~9_combout\ & \x~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \Equal8~0_combout\,
	datac => \x~9_combout\,
	datad => \x~6_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X24_Y14_N0
\saida0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~27_combout\ = ((\Equal7~1_combout\) # ((\Equal6~1_combout\) # (\Equal8~1_combout\))) # (!\saida0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~26_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal8~1_combout\,
	combout => \saida0~27_combout\);

-- Location: LCCOMB_X12_Y22_N8
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (((!\x~9_combout\) # (!\x~6_combout\)) # (!\x~13_combout\)) # (!\x~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \x~13_combout\,
	datac => \x~6_combout\,
	datad => \x~9_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\saida0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~25_combout\ = (\Add10~3_combout\ & (\Add10~4_combout\ & ((\Equal3~0_combout\) # (!\Add10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~3_combout\,
	datab => \Add10~4_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~25_combout\);

-- Location: LCCOMB_X24_Y14_N26
\saida0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~28_combout\ = (\saida0~24_combout\ & (((!\saida0~27_combout\ & \saida0~25_combout\)) # (!\Add10~4_combout\))) # (!\saida0~24_combout\ & (!\saida0~27_combout\ & (\saida0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~24_combout\,
	datab => \saida0~27_combout\,
	datac => \saida0~25_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~28_combout\);

-- Location: LCCOMB_X24_Y14_N28
\saida0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~29_combout\ = (!\Equal7~1_combout\ & (!\Equal6~1_combout\ & !\Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal8~1_combout\,
	combout => \saida0~29_combout\);

-- Location: LCCOMB_X24_Y14_N22
\saida0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~30_combout\ = (\saida0~26_combout\ & (\Equal3~0_combout\ & \saida0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~26_combout\,
	datac => \Equal3~0_combout\,
	datad => \saida0~29_combout\,
	combout => \saida0~30_combout\);

-- Location: LCCOMB_X24_Y27_N22
\saida0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~33_combout\ = (\saida0~30_combout\ & ((\Add10~2_combout\) # ((\Add10~4_combout\ & \Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~3_combout\,
	datad => \Add10~2_combout\,
	combout => \saida0~33_combout\);

-- Location: LCCOMB_X24_Y27_N18
\saida0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~31_combout\ = (\Add10~4_combout\ & (\Add7~1_combout\ $ (\Add10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datac => \Add10~1_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~31_combout\);

-- Location: LCCOMB_X24_Y27_N4
\saida0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~32_combout\ = (\saida0~30_combout\ & ((\saida0~31_combout\) # ((\Add10~5_combout\ & \Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~3_combout\,
	datad => \saida0~31_combout\,
	combout => \saida0~32_combout\);

-- Location: LCCOMB_X24_Y27_N8
\saida0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~34_combout\ = (\b1~input_o\ & (((\saida0~32_combout\) # (\b0~input_o\)))) # (!\b1~input_o\ & (\saida0~33_combout\ & ((!\b0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~33_combout\,
	datab => \b1~input_o\,
	datac => \saida0~32_combout\,
	datad => \b0~input_o\,
	combout => \saida0~34_combout\);

-- Location: LCCOMB_X24_Y27_N26
\saida0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~35_combout\ = (\saida0~31_combout\ & (\saida0~30_combout\ & (\Add10~5_combout\ $ (!\Add10~3_combout\)))) # (!\saida0~31_combout\ & (\Add10~5_combout\ & ((\Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~3_combout\,
	datad => \saida0~31_combout\,
	combout => \saida0~35_combout\);

-- Location: LCCOMB_X10_Y24_N14
\saida0~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~89_combout\ = (\Add10~4_combout\ & (\saida0~30_combout\ & (\Add7~1_combout\ $ (\Add10~1_combout\)))) # (!\Add10~4_combout\ & (\Add7~1_combout\ $ ((!\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add7~1_combout\,
	datac => \Add10~1_combout\,
	datad => \saida0~30_combout\,
	combout => \saida0~89_combout\);

-- Location: LCCOMB_X24_Y27_N28
\saida0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~36_combout\ = (\saida0~35_combout\) # ((\saida0~89_combout\ & (\Add10~5_combout\ $ (\Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \Add10~3_combout\,
	datac => \saida0~35_combout\,
	datad => \saida0~89_combout\,
	combout => \saida0~36_combout\);

-- Location: LCCOMB_X24_Y27_N6
\saida0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~37_combout\ = (\b0~input_o\ & ((\saida0~34_combout\ & ((\saida0~36_combout\))) # (!\saida0~34_combout\ & (\saida0~28_combout\)))) # (!\b0~input_o\ & (((\saida0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~28_combout\,
	datab => \b0~input_o\,
	datac => \saida0~34_combout\,
	datad => \saida0~36_combout\,
	combout => \saida0~37_combout\);

-- Location: LCCOMB_X24_Y27_N16
\saida0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~38_combout\ = (\b1~input_o\ & (\saida0~28_combout\)) # (!\b1~input_o\ & ((\saida0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~28_combout\,
	datab => \saida0~32_combout\,
	datac => \b1~input_o\,
	combout => \saida0~38_combout\);

-- Location: LCCOMB_X24_Y27_N2
\saida0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~39_combout\ = (\saida0~37_combout\ & ((\saida0~38_combout\) # (\b0~input_o\ $ (!\b2~input_o\)))) # (!\saida0~37_combout\ & (\saida0~38_combout\ & (\b0~input_o\ $ (\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~37_combout\,
	datab => \b0~input_o\,
	datac => \b2~input_o\,
	datad => \saida0~38_combout\,
	combout => \saida0~39_combout\);

-- Location: LCCOMB_X10_Y24_N8
\saida0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~19_combout\ = (\b0~input_o\ & \b1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~input_o\,
	datad => \b1~input_o\,
	combout => \saida0~19_combout\);

-- Location: LCCOMB_X10_Y24_N30
\saida0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~48_combout\ = (\Add10~5_combout\ & (\saida0~19_combout\ & ((\Add10~4_combout\) # (\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \b2~input_o\,
	datac => \Add10~5_combout\,
	datad => \saida0~19_combout\,
	combout => \saida0~48_combout\);

-- Location: LCCOMB_X10_Y24_N4
\saida0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~47_combout\ = (!\Add10~4_combout\ & (\x~4_combout\ & !\Add10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \x~4_combout\,
	datac => \Add10~5_combout\,
	combout => \saida0~47_combout\);

-- Location: LCCOMB_X10_Y24_N24
\saida0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~49_combout\ = (\Add10~3_combout\ & ((\saida0~48_combout\) # (\saida0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~48_combout\,
	datab => \saida0~47_combout\,
	datad => \Add10~3_combout\,
	combout => \saida0~49_combout\);

-- Location: LCCOMB_X14_Y22_N22
\saida0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~43_combout\ = (\b0~input_o\ & (\Add10~5_combout\ $ (((!\b2~input_o\))))) # (!\b0~input_o\ & ((\Add10~5_combout\ & ((!\b2~input_o\))) # (!\Add10~5_combout\ & (\Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \Add10~5_combout\,
	datac => \Add10~3_combout\,
	datad => \b2~input_o\,
	combout => \saida0~43_combout\);

-- Location: LCCOMB_X14_Y22_N8
\saida0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~44_combout\ = (\b0~input_o\ & ((\b2~input_o\ & ((\Add10~3_combout\))) # (!\b2~input_o\ & (\Add10~5_combout\)))) # (!\b0~input_o\ & (\Add10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \Add10~5_combout\,
	datac => \Add10~3_combout\,
	datad => \b2~input_o\,
	combout => \saida0~44_combout\);

-- Location: LCCOMB_X14_Y22_N10
\saida0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~45_combout\ = (\b1~input_o\ & (\saida0~43_combout\)) # (!\b1~input_o\ & ((\saida0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~43_combout\,
	datab => \b1~input_o\,
	datac => \saida0~44_combout\,
	combout => \saida0~45_combout\);

-- Location: LCCOMB_X14_Y22_N0
\saida0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~40_combout\ = (\b1~input_o\ & (((\Add10~5_combout\)))) # (!\b1~input_o\ & (((!\b2~input_o\)) # (!\b0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~5_combout\,
	datad => \b2~input_o\,
	combout => \saida0~40_combout\);

-- Location: LCCOMB_X14_Y22_N26
\saida0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~41_combout\ = (\b0~input_o\ & (((\Add10~3_combout\)))) # (!\b0~input_o\ & ((\saida0~40_combout\ & (\Add10~3_combout\)) # (!\saida0~40_combout\ & ((\b2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \saida0~40_combout\,
	datac => \Add10~3_combout\,
	datad => \b2~input_o\,
	combout => \saida0~41_combout\);

-- Location: LCCOMB_X14_Y22_N20
\saida0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~42_combout\ = (\saida0~40_combout\ & (!\saida0~41_combout\)) # (!\saida0~40_combout\ & ((\b1~input_o\ & (\saida0~41_combout\)) # (!\b1~input_o\ & ((!\Add10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~41_combout\,
	datab => \b1~input_o\,
	datac => \Add10~5_combout\,
	datad => \saida0~40_combout\,
	combout => \saida0~42_combout\);

-- Location: LCCOMB_X10_Y24_N18
\saida0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~46_combout\ = (!\Add10~4_combout\ & (\saida0~45_combout\ & (\saida0~42_combout\ & \Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \saida0~45_combout\,
	datac => \saida0~42_combout\,
	datad => \Add10~2_combout\,
	combout => \saida0~46_combout\);

-- Location: LCCOMB_X10_Y24_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \b2~input_o\ $ (\b0~input_o\ $ (\b1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => \b0~input_o\,
	datad => \b1~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X10_Y24_N28
\saida0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~50_combout\ = (!\Add10~3_combout\ & (\Add1~0_combout\ & ((\Add10~5_combout\) # (\saida0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~3_combout\,
	datab => \Add1~0_combout\,
	datac => \Add10~5_combout\,
	datad => \saida0~88_combout\,
	combout => \saida0~50_combout\);

-- Location: LCCOMB_X10_Y24_N6
\saida0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~51_combout\ = (\saida0~46_combout\) # ((!\Add10~2_combout\ & ((\saida0~49_combout\) # (\saida0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \saida0~49_combout\,
	datac => \saida0~46_combout\,
	datad => \saida0~50_combout\,
	combout => \saida0~51_combout\);

-- Location: LCCOMB_X17_Y24_N22
\saida0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~52_combout\ = (\Add10~4_combout\ & (\b0~input_o\ $ (\b1~input_o\ $ (\b2~input_o\)))) # (!\Add10~4_combout\ & ((\b0~input_o\) # ((\b1~input_o\) # (\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \b1~input_o\,
	datac => \b2~input_o\,
	datad => \Add10~4_combout\,
	combout => \saida0~52_combout\);

-- Location: LCCOMB_X22_Y22_N12
\saida0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~90_combout\ = (\Add10~5_combout\ & (\Add10~1_combout\ $ ((!\Add7~1_combout\)))) # (!\Add10~5_combout\ & (\x~4_combout\ & (\Add10~1_combout\ $ (\Add7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => \Add7~1_combout\,
	datac => \x~4_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~90_combout\);

-- Location: LCCOMB_X17_Y24_N24
\saida0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~53_combout\ = (\b0~input_o\ & ((\b2~input_o\) # (\b1~input_o\))) # (!\b0~input_o\ & (\b2~input_o\ & \b1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datac => \b2~input_o\,
	datad => \b1~input_o\,
	combout => \saida0~53_combout\);

-- Location: LCCOMB_X17_Y24_N18
\saida0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~54_combout\ = (\Add10~3_combout\ & ((\saida0~90_combout\) # ((!\Add10~2_combout\ & !\saida0~53_combout\)))) # (!\Add10~3_combout\ & (((\Add10~2_combout\ & \saida0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~90_combout\,
	datab => \Add10~3_combout\,
	datac => \Add10~2_combout\,
	datad => \saida0~53_combout\,
	combout => \saida0~54_combout\);

-- Location: LCCOMB_X17_Y24_N4
\saida0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~55_combout\ = (\saida0~52_combout\ & (!\saida0~54_combout\ & (\Add10~2_combout\ & \Add10~4_combout\))) # (!\saida0~52_combout\ & (\Add10~2_combout\ $ (((\saida0~54_combout\ & \Add10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~52_combout\,
	datab => \saida0~54_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \saida0~55_combout\);

-- Location: LCCOMB_X24_Y14_N8
\saida0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~56_combout\ = (\saida0~55_combout\ & (((\Equal3~0_combout\ & \saida0~29_combout\)))) # (!\saida0~55_combout\ & (\saida0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~51_combout\,
	datab => \Equal3~0_combout\,
	datac => \saida0~55_combout\,
	datad => \saida0~29_combout\,
	combout => \saida0~56_combout\);

-- Location: LCCOMB_X10_Y24_N20
\saida0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~59_combout\ = (\Add10~4_combout\ & (\Add10~5_combout\ $ (((\b2~input_o\ & !\Add10~3_combout\))))) # (!\Add10~4_combout\ & (\b2~input_o\ & (\Add10~5_combout\ & !\Add10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \b2~input_o\,
	datac => \Add10~5_combout\,
	datad => \Add10~3_combout\,
	combout => \saida0~59_combout\);

-- Location: LCCOMB_X10_Y24_N16
\saida0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~57_combout\ = (\b0~input_o\ & (!\b1~input_o\ & ((\Add10~4_combout\) # (!\b2~input_o\)))) # (!\b0~input_o\ & ((\b2~input_o\ & ((\Add10~4_combout\) # (!\b1~input_o\))) # (!\b2~input_o\ & ((\b1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \b0~input_o\,
	datac => \b2~input_o\,
	datad => \b1~input_o\,
	combout => \saida0~57_combout\);

-- Location: LCCOMB_X10_Y24_N2
\saida0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~58_combout\ = (\Add10~3_combout\ & ((\saida0~47_combout\) # ((\saida0~57_combout\ & \saida0~24_combout\)))) # (!\Add10~3_combout\ & (\saida0~57_combout\ & ((\saida0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~3_combout\,
	datab => \saida0~57_combout\,
	datac => \saida0~47_combout\,
	datad => \saida0~24_combout\,
	combout => \saida0~58_combout\);

-- Location: LCCOMB_X10_Y24_N22
\saida0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~60_combout\ = (!\Add10~2_combout\ & ((\saida0~58_combout\) # ((\saida0~59_combout\ & \saida0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \saida0~59_combout\,
	datac => \saida0~19_combout\,
	datad => \saida0~58_combout\,
	combout => \saida0~60_combout\);

-- Location: LCCOMB_X14_Y22_N24
\saida0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~63_combout\ = (\b2~input_o\ & ((\b1~input_o\ & ((\Add10~3_combout\) # (\b0~input_o\))) # (!\b1~input_o\ & (\Add10~3_combout\ & \b0~input_o\)))) # (!\b2~input_o\ & (\b1~input_o\ & (\Add10~3_combout\ $ (!\b0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datac => \Add10~3_combout\,
	datad => \b0~input_o\,
	combout => \saida0~63_combout\);

-- Location: LCCOMB_X14_Y22_N2
\saida0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~64_combout\ = (\saida0~63_combout\ & ((\Add10~3_combout\ & (!\Add10~5_combout\)) # (!\Add10~3_combout\ & ((\saida0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~63_combout\,
	datab => \Add10~3_combout\,
	datac => \Add10~5_combout\,
	datad => \saida0~40_combout\,
	combout => \saida0~64_combout\);

-- Location: LCCOMB_X14_Y22_N28
\saida0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~61_combout\ = (!\b1~input_o\ & ((!\b0~input_o\) # (!\b2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \saida0~61_combout\);

-- Location: LCCOMB_X14_Y22_N30
\saida0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~62_combout\ = (\saida0~24_combout\ & ((\saida0~61_combout\) # ((!\saida0~14_combout\ & \Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~24_combout\,
	datab => \saida0~14_combout\,
	datac => \Add10~4_combout\,
	datad => \saida0~61_combout\,
	combout => \saida0~62_combout\);

-- Location: LCCOMB_X14_Y22_N12
\saida0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~65_combout\ = (\Add10~2_combout\ & ((\saida0~62_combout\) # ((!\Add10~4_combout\ & \saida0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \saida0~64_combout\,
	datac => \saida0~62_combout\,
	datad => \Add10~2_combout\,
	combout => \saida0~65_combout\);

-- Location: LCCOMB_X24_Y14_N18
\saida0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~66_combout\ = (\saida0~55_combout\ & (((\saida0~29_combout\)))) # (!\saida0~55_combout\ & ((\saida0~60_combout\) # ((\saida0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~55_combout\,
	datab => \saida0~60_combout\,
	datac => \saida0~65_combout\,
	datad => \saida0~29_combout\,
	combout => \saida0~66_combout\);

-- Location: LCCOMB_X12_Y22_N12
\saida0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~71_combout\ = (\x~7_combout\ & ((\Equal8~0_combout\) # ((\Equal6~0_combout\)))) # (!\x~7_combout\ & (((\x~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \x~13_combout\,
	datad => \x~7_combout\,
	combout => \saida0~71_combout\);

-- Location: LCCOMB_X12_Y22_N0
\Equal31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (\x~7_combout\ & (\x~9_combout\ & !\x~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \x~9_combout\,
	datac => \x~6_combout\,
	combout => \Equal31~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Equal39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal39~2_combout\ = (!\x~6_combout\ & (!\x~8_combout\ & ((!\Add10~3_combout\) # (!\x~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~4_combout\,
	datab => \x~6_combout\,
	datac => \x~8_combout\,
	datad => \Add10~3_combout\,
	combout => \Equal39~2_combout\);

-- Location: LCCOMB_X22_Y19_N24
\saida1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~0_combout\ = (\x~6_combout\) # ((\x~9_combout\ $ (!\x~7_combout\)) # (!\Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~9_combout\,
	datab => \x~6_combout\,
	datac => \Equal6~0_combout\,
	datad => \x~7_combout\,
	combout => \saida1~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\saida1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~1_combout\ = (\saida1~0_combout\ & ((!\Equal39~2_combout\) # (!\x~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~13_combout\,
	datac => \Equal39~2_combout\,
	datad => \saida1~0_combout\,
	combout => \saida1~1_combout\);

-- Location: LCCOMB_X22_Y19_N28
\saida0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~68_combout\ = (!\x~6_combout\ & (\x~7_combout\ $ (\x~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datac => \x~9_combout\,
	datad => \x~6_combout\,
	combout => \saida0~68_combout\);

-- Location: LCCOMB_X22_Y19_N22
\saida0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~69_combout\ = (\saida1~1_combout\ & (((!\Equal7~0_combout\ & !\Equal8~0_combout\)) # (!\saida0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida1~1_combout\,
	datab => \saida0~68_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \saida0~69_combout\);

-- Location: LCCOMB_X12_Y22_N18
\saida0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~70_combout\ = (\saida0~69_combout\ & ((!\Equal7~0_combout\) # (!\Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal31~0_combout\,
	datac => \saida0~69_combout\,
	datad => \Equal7~0_combout\,
	combout => \saida0~70_combout\);

-- Location: LCCOMB_X12_Y22_N22
\saida0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~72_combout\ = ((\saida0~71_combout\ & (!\x~6_combout\ & \x~9_combout\))) # (!\saida0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~71_combout\,
	datab => \saida0~70_combout\,
	datac => \x~6_combout\,
	datad => \x~9_combout\,
	combout => \saida0~72_combout\);

-- Location: LCCOMB_X12_Y22_N24
\Equal45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal45~0_combout\ = (!\x~7_combout\ & (!\x~9_combout\ & !\x~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \x~9_combout\,
	datac => \x~6_combout\,
	combout => \Equal45~0_combout\);

-- Location: LCCOMB_X12_Y22_N2
\saida0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~73_combout\ = ((!\Equal8~0_combout\ & (!\Equal6~0_combout\ & !\Equal7~0_combout\))) # (!\Equal45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal45~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \saida0~73_combout\);

-- Location: LCCOMB_X12_Y22_N30
\Equal44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal44~0_combout\ = (\Equal8~0_combout\ & (!\x~9_combout\ & (!\x~6_combout\ & \x~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \x~9_combout\,
	datac => \x~6_combout\,
	datad => \x~7_combout\,
	combout => \Equal44~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\saida0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~67_combout\ = (((!\Equal6~0_combout\ & !\Equal7~0_combout\)) # (!\x~7_combout\)) # (!\Equal39~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal39~2_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \x~7_combout\,
	combout => \saida0~67_combout\);

-- Location: LCCOMB_X12_Y22_N28
\saida0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~92_combout\ = (\saida0~73_combout\ & ((\Equal44~0_combout\) # (!\saida0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida0~73_combout\,
	datac => \Equal44~0_combout\,
	datad => \saida0~67_combout\,
	combout => \saida0~92_combout\);

-- Location: LCCOMB_X22_Y22_N16
\saida0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~74_combout\ = (!\x~12_combout\ & (\x~11_combout\ & !\x~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~12_combout\,
	datac => \x~11_combout\,
	datad => \x~14_combout\,
	combout => \saida0~74_combout\);

-- Location: LCCOMB_X22_Y19_N0
\saida0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~75_combout\ = (\saida0~74_combout\) # ((\Equal7~0_combout\) # (\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida0~74_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \saida0~75_combout\);

-- Location: LCCOMB_X12_Y22_N4
\saida0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~76_combout\ = (\x~6_combout\ & (((!\x~7_combout\ & \x~13_combout\)) # (!\x~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \x~13_combout\,
	datac => \x~6_combout\,
	datad => \x~9_combout\,
	combout => \saida0~76_combout\);

-- Location: LCCOMB_X12_Y22_N14
\saida0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~77_combout\ = (\x~13_combout\ & (((\saida0~76_combout\) # (\Equal31~0_combout\)))) # (!\x~13_combout\ & (\saida0~75_combout\ & (\saida0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~75_combout\,
	datab => \x~13_combout\,
	datac => \saida0~76_combout\,
	datad => \Equal31~0_combout\,
	combout => \saida0~77_combout\);

-- Location: LCCOMB_X12_Y22_N6
\saida0~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~93_combout\ = (\saida0~73_combout\ & ((\saida0~72_combout\ & (\saida0~92_combout\)) # (!\saida0~72_combout\ & ((!\saida0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~72_combout\,
	datab => \saida0~92_combout\,
	datac => \saida0~77_combout\,
	datad => \saida0~73_combout\,
	combout => \saida0~93_combout\);

-- Location: LCCOMB_X12_Y22_N26
\saida0~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~91_combout\ = (\saida0~73_combout\ & ((\saida0~72_combout\ & (\saida0~69_combout\)) # (!\saida0~72_combout\ & ((!\saida0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~69_combout\,
	datab => \saida0~77_combout\,
	datac => \saida0~72_combout\,
	datad => \saida0~73_combout\,
	combout => \saida0~91_combout\);

-- Location: LCCOMB_X24_Y27_N12
\saida0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~78_combout\ = (\Add10~3_combout\ & ((\Add10~4_combout\ & (\saida0~30_combout\)) # (!\Add10~4_combout\ & ((!\Add10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~3_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~78_combout\);

-- Location: LCCOMB_X10_Y24_N0
\saida0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~81_combout\ = (\Add10~3_combout\ & (\saida0~30_combout\ & ((\Add10~2_combout\)))) # (!\Add10~3_combout\ & (!\Add10~5_combout\ & ((\saida0~30_combout\) # (!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~3_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~5_combout\,
	datad => \Add10~2_combout\,
	combout => \saida0~81_combout\);

-- Location: LCCOMB_X10_Y24_N26
\saida0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~82_combout\ = (\Add10~4_combout\ & ((\saida0~81_combout\) # ((\saida0~89_combout\ & \saida0~24_combout\)))) # (!\Add10~4_combout\ & (((\saida0~89_combout\ & \saida0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \saida0~81_combout\,
	datac => \saida0~89_combout\,
	datad => \saida0~24_combout\,
	combout => \saida0~82_combout\);

-- Location: LCCOMB_X24_Y27_N14
\saida0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~79_combout\ = (\saida0~31_combout\ & (((\saida0~30_combout\)))) # (!\saida0~31_combout\ & (\Add10~5_combout\ & ((\saida0~30_combout\) # (!\Add10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~5_combout\,
	datab => \saida0~30_combout\,
	datac => \Add10~3_combout\,
	datad => \saida0~31_combout\,
	combout => \saida0~79_combout\);

-- Location: LCCOMB_X24_Y27_N24
\saida0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~80_combout\ = (\b1~input_o\ & (((\saida0~79_combout\) # (\b0~input_o\)))) # (!\b1~input_o\ & (\saida0~33_combout\ & ((!\b0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~33_combout\,
	datab => \b1~input_o\,
	datac => \saida0~79_combout\,
	datad => \b0~input_o\,
	combout => \saida0~80_combout\);

-- Location: LCCOMB_X24_Y27_N10
\saida0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~83_combout\ = (\b0~input_o\ & ((\saida0~80_combout\ & ((\saida0~82_combout\))) # (!\saida0~80_combout\ & (\saida0~78_combout\)))) # (!\b0~input_o\ & (((\saida0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~78_combout\,
	datab => \b0~input_o\,
	datac => \saida0~82_combout\,
	datad => \saida0~80_combout\,
	combout => \saida0~83_combout\);

-- Location: LCCOMB_X12_Y22_N16
\saida0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~84_combout\ = (\Equal12~0_combout\ & ((\x~13_combout\) # ((\Equal3~0_combout\ & \saida0~29_combout\)))) # (!\Equal12~0_combout\ & (\Equal3~0_combout\ & ((\saida0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \x~13_combout\,
	datad => \saida0~29_combout\,
	combout => \saida0~84_combout\);

-- Location: LCCOMB_X24_Y14_N4
\saida0~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~85_combout\ = (\Add10~4_combout\ & (\saida0~26_combout\ & (\saida0~84_combout\))) # (!\Add10~4_combout\ & (((!\Add10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~26_combout\,
	datab => \Add10~4_combout\,
	datac => \saida0~84_combout\,
	datad => \Add10~5_combout\,
	combout => \saida0~85_combout\);

-- Location: LCCOMB_X24_Y27_N20
\saida0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~86_combout\ = (\b1~input_o\ & (((\Add10~3_combout\ & \saida0~85_combout\)))) # (!\b1~input_o\ & (\saida0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~79_combout\,
	datab => \Add10~3_combout\,
	datac => \b1~input_o\,
	datad => \saida0~85_combout\,
	combout => \saida0~86_combout\);

-- Location: LCCOMB_X24_Y27_N30
\saida0~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~87_combout\ = (\saida0~83_combout\ & ((\saida0~86_combout\) # (\b0~input_o\ $ (!\b2~input_o\)))) # (!\saida0~83_combout\ & (\saida0~86_combout\ & (\b0~input_o\ $ (\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida0~83_combout\,
	datab => \b0~input_o\,
	datac => \b2~input_o\,
	datad => \saida0~86_combout\,
	combout => \saida0~87_combout\);

-- Location: LCCOMB_X22_Y19_N12
\saida1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~3_combout\ = (\saida0~74_combout\ & ((\x~9_combout\ & (\x~7_combout\ & !\x~6_combout\)) # (!\x~9_combout\ & ((\x~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~7_combout\,
	datab => \saida0~74_combout\,
	datac => \x~9_combout\,
	datad => \x~6_combout\,
	combout => \saida1~3_combout\);

-- Location: LCCOMB_X22_Y19_N2
\saida1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~2_combout\ = (\Equal6~0_combout\ & ((\x~9_combout\ & (\x~6_combout\)) # (!\x~9_combout\ & (!\x~6_combout\ & !\x~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~9_combout\,
	datab => \x~6_combout\,
	datac => \Equal6~0_combout\,
	datad => \x~7_combout\,
	combout => \saida1~2_combout\);

-- Location: LCCOMB_X22_Y19_N14
\saida1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~4_combout\ = (\x~13_combout\ & ((\x~9_combout\) # (\x~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~13_combout\,
	datac => \x~9_combout\,
	datad => \x~6_combout\,
	combout => \saida1~4_combout\);

-- Location: LCCOMB_X22_Y19_N16
\saida1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~5_combout\ = (\saida1~3_combout\) # ((\saida1~2_combout\) # ((\saida1~4_combout\) # (!\saida1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida1~3_combout\,
	datab => \saida1~2_combout\,
	datac => \saida1~4_combout\,
	datad => \saida1~1_combout\,
	combout => \saida1~5_combout\);

-- Location: LCCOMB_X22_Y19_N18
\saida1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~6_combout\ = (\saida1~5_combout\) # ((\Equal7~0_combout\) # (!\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida1~5_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \saida1~6_combout\);

-- Location: LCCOMB_X22_Y19_N4
\saida1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~7_combout\ = (!\saida1~5_combout\ & ((\Equal7~0_combout\) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida1~5_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \saida1~7_combout\);

-- Location: LCCOMB_X23_Y22_N0
\saida1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~8_combout\ = (\saida1~5_combout\) # (\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \saida1~5_combout\,
	datad => \Equal7~0_combout\,
	combout => \saida1~8_combout\);

-- Location: LCCOMB_X22_Y19_N6
\saida1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida1~9_combout\ = (!\saida1~5_combout\ & (!\Equal7~0_combout\ & !\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida1~5_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \saida1~9_combout\);

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

ww_saidabin(0) <= \saidabin[0]~output_o\;

ww_saidabin(1) <= \saidabin[1]~output_o\;

ww_saidabin(2) <= \saidabin[2]~output_o\;

ww_saidabin(3) <= \saidabin[3]~output_o\;

ww_saidabin(4) <= \saidabin[4]~output_o\;

ww_saidabin(5) <= \saidabin[5]~output_o\;

ww_saidabin(6) <= \saidabin[6]~output_o\;

ww_saidabin(7) <= \saidabin[7]~output_o\;

ww_saidabin(8) <= \saidabin[8]~output_o\;

ww_saidabin(9) <= \saidabin[9]~output_o\;
END structure;


