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

-- DATE "06/05/2018 02:31:15"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex_02 IS
    PORT (
	clock_in : IN std_logic;
	reset : IN std_logic;
	bot_raw : IN std_logic;
	leds : OUT std_logic_vector(9 DOWNTO 0);
	saida0 : OUT std_logic_vector(6 DOWNTO 0);
	reset_ativo : OUT std_logic;
	botao_ativo : OUT std_logic
	);
END ex_02;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_ativo	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_ativo	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bot_raw	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_bot_raw : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reset_ativo : std_logic;
SIGNAL ww_botao_ativo : std_logic;
SIGNAL \clock_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \saida0[0]~output_o\ : std_logic;
SIGNAL \saida0[1]~output_o\ : std_logic;
SIGNAL \saida0[2]~output_o\ : std_logic;
SIGNAL \saida0[3]~output_o\ : std_logic;
SIGNAL \saida0[4]~output_o\ : std_logic;
SIGNAL \saida0[5]~output_o\ : std_logic;
SIGNAL \saida0[6]~output_o\ : std_logic;
SIGNAL \reset_ativo~output_o\ : std_logic;
SIGNAL \botao_ativo~output_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \bot_raw~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \bot_still_pressed~0_combout\ : std_logic;
SIGNAL \bot_still_pressed~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \bot~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \led_bar[0]~0_combout\ : std_logic;
SIGNAL \led_bar[1]~1_combout\ : std_logic;
SIGNAL \led_bar[2]~2_combout\ : std_logic;
SIGNAL \led_bar[3]~3_combout\ : std_logic;
SIGNAL \led_bar[6]~4_combout\ : std_logic;
SIGNAL \led_bar[7]~5_combout\ : std_logic;
SIGNAL \led_bar[8]~6_combout\ : std_logic;
SIGNAL \led_bar[9]~7_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \final[0]~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \saida0~0_combout\ : std_logic;
SIGNAL \saida0~1_combout\ : std_logic;
SIGNAL \reset_ativo~reg0_q\ : std_logic;
SIGNAL led_bar : std_logic_vector(9 DOWNTO 0);
SIGNAL final : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_final : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clock_in <= clock_in;
ww_reset <= reset;
ww_bot_raw <= bot_raw;
leds <= ww_leds;
saida0 <= ww_saida0;
reset_ativo <= ww_reset_ativo;
botao_ativo <= ww_botao_ativo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_in~input_o\);
ALT_INV_final(0) <= NOT final(0);
ALT_INV_final(1) <= NOT final(1);

-- Location: IOOBUF_X0_Y20_N9
\leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\leds[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\leds[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\leds[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\leds[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\leds[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\leds[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(6),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\leds[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(7),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\leds[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(8),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\leds[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(9),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\saida0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_final(1),
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
	i => \Equal15~0_combout\,
	devoe => ww_devoe,
	o => \saida0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\saida0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_final(0),
	devoe => ww_devoe,
	o => \saida0[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\saida0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~0_combout\,
	devoe => ww_devoe,
	o => \saida0[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\saida0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida0~1_combout\,
	devoe => ww_devoe,
	o => \saida0[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\saida0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \saida0~0_combout\,
	devoe => ww_devoe,
	o => \saida0[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\reset_ativo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset_ativo~reg0_q\,
	devoe => ww_devoe,
	o => \reset_ativo~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\botao_ativo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \botao_ativo~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clock_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

-- Location: CLKCTRL_G9
\clock_in~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\bot_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bot_raw,
	o => \bot_raw~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\bot_still_pressed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot_still_pressed~0_combout\ = !\bot_raw~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bot_raw~input_o\,
	combout => \bot_still_pressed~0_combout\);

-- Location: FF_X1_Y24_N9
bot_still_pressed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot_still_pressed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bot_still_pressed~q\);

-- Location: LCCOMB_X1_Y24_N14
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\bot_raw~input_o\ & (!\reset~input_o\ & (\state.s2~q\ & !\bot_still_pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datab => \reset~input_o\,
	datac => \state.s2~q\,
	datad => \bot_still_pressed~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y24_N6
\bot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot~0_combout\ = (!\bot_raw~input_o\ & ((\reset~input_o\) # (!\bot_still_pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datac => \reset~input_o\,
	datad => \bot_still_pressed~q\,
	combout => \bot~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state.s1~q\ & !\bot~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datac => \Selector2~0_combout\,
	datad => \bot~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y24_N23
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X1_Y24_N28
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\bot~0_combout\ & (!\state.s2~q\ & ((!\state.s1~q\) # (!\reset~input_o\)))) # (!\bot~0_combout\ & (((!\state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \reset~input_o\,
	datac => \state.s1~q\,
	datad => \bot~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y24_N29
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X1_Y24_N30
\led_bar[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[0]~0_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s1~q\,
	combout => \led_bar[0]~0_combout\);

-- Location: FF_X1_Y24_N31
\led_bar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(0));

-- Location: LCCOMB_X1_Y24_N24
\led_bar[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[1]~1_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s1~q\,
	combout => \led_bar[1]~1_combout\);

-- Location: FF_X1_Y24_N25
\led_bar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(1));

-- Location: LCCOMB_X1_Y24_N4
\led_bar[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[2]~2_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s1~q\,
	combout => \led_bar[2]~2_combout\);

-- Location: FF_X1_Y24_N5
\led_bar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(2));

-- Location: LCCOMB_X1_Y24_N20
\led_bar[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[3]~3_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s1~q\,
	combout => \led_bar[3]~3_combout\);

-- Location: FF_X1_Y24_N21
\led_bar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(3));

-- Location: LCCOMB_X1_Y24_N18
\led_bar[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[6]~4_combout\ = !\state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s2~q\,
	combout => \led_bar[6]~4_combout\);

-- Location: FF_X1_Y24_N19
\led_bar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(6));

-- Location: LCCOMB_X1_Y24_N2
\led_bar[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[7]~5_combout\ = !\state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s2~q\,
	combout => \led_bar[7]~5_combout\);

-- Location: FF_X1_Y24_N3
\led_bar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(7));

-- Location: LCCOMB_X1_Y24_N0
\led_bar[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[8]~6_combout\ = !\state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s2~q\,
	combout => \led_bar[8]~6_combout\);

-- Location: FF_X1_Y24_N1
\led_bar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(8));

-- Location: LCCOMB_X1_Y24_N10
\led_bar[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[9]~7_combout\ = !\state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s2~q\,
	combout => \led_bar[9]~7_combout\);

-- Location: FF_X1_Y24_N11
\led_bar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(9));

-- Location: LCCOMB_X1_Y24_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\bot_raw~input_o\) # ((!\reset~input_o\) # (!\state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datac => \state.init~q\,
	datad => \reset~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y24_N13
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X1_Y24_N26
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\bot_raw~input_o\) # (((!\reset~input_o\ & \bot_still_pressed~q\)) # (!\state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datab => \reset~input_o\,
	datac => \bot_still_pressed~q\,
	datad => \state.init~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y24_N15
\final[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \state.s2~q\,
	sload => VCC,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(1));

-- Location: LCCOMB_X1_Y24_N16
\final[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \final[0]~0_combout\ = !\state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s1~q\,
	combout => \final[0]~0_combout\);

-- Location: FF_X1_Y24_N17
\final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \final[0]~0_combout\,
	ena => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => final(0));

-- Location: LCCOMB_X27_Y28_N0
\Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (final(1)) # (!final(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => final(1),
	datad => final(0),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\saida0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~0_combout\ = (!final(1) & !final(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => final(1),
	datad => final(0),
	combout => \saida0~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\saida0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~1_combout\ = (final(1) & final(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => final(1),
	datad => final(0),
	combout => \saida0~1_combout\);

-- Location: FF_X1_Y24_N7
\reset_ativo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_ativo~reg0_q\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_saida0(0) <= \saida0[0]~output_o\;

ww_saida0(1) <= \saida0[1]~output_o\;

ww_saida0(2) <= \saida0[2]~output_o\;

ww_saida0(3) <= \saida0[3]~output_o\;

ww_saida0(4) <= \saida0[4]~output_o\;

ww_saida0(5) <= \saida0[5]~output_o\;

ww_saida0(6) <= \saida0[6]~output_o\;

ww_reset_ativo <= \reset_ativo~output_o\;

ww_botao_ativo <= \botao_ativo~output_o\;
END structure;


