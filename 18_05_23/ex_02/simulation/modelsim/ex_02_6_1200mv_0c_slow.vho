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

-- DATE "06/05/2018 04:12:13"

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
	leds : BUFFER std_logic_vector(9 DOWNTO 0);
	saida0 : BUFFER std_logic_vector(6 DOWNTO 0);
	reset_ativo : BUFFER std_logic;
	botao_ativo : BUFFER std_logic
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
-- saida0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_ativo	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_ativo	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bot_raw	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \bot~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \bot~q\ : std_logic;
SIGNAL \debounce_counter[0]~2_combout\ : std_logic;
SIGNAL \debounce_counter~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \debounce_counter~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \state.s2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \saida0~0_combout\ : std_logic;
SIGNAL \saida0~1_combout\ : std_logic;
SIGNAL \final[0]~0_combout\ : std_logic;
SIGNAL \reset_ativo~reg0feeder_combout\ : std_logic;
SIGNAL \reset_ativo~reg0_q\ : std_logic;
SIGNAL debounce_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_leds~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_state.init~q\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

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
\ALT_INV_leds~0_combout\ <= NOT \leds~0_combout\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_state.init~q\ <= NOT \state.init~q\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.s1~q\,
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
	i => \ALT_INV_leds~0_combout\,
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
	i => \ALT_INV_leds~0_combout\,
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
	i => \ALT_INV_leds~0_combout\,
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
	i => \leds~1_combout\,
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
	i => \leds~1_combout\,
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
	i => \leds~1_combout\,
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
	i => \ALT_INV_state.s2~q\,
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
	i => \ALT_INV_state.s1~q\,
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
	i => \saida0~1_combout\,
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
	i => \final[0]~0_combout\,
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
	i => \ALT_INV_state.init~q\,
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
	i => \final[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X37_Y29_N2
\botao_ativo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: IOIBUF_X0_Y27_N1
\bot_raw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bot_raw,
	o => \bot_raw~input_o\);

-- Location: LCCOMB_X5_Y27_N12
\bot~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bot~feeder_combout\);

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

-- Location: FF_X5_Y27_N13
bot : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bot~q\);

-- Location: LCCOMB_X5_Y27_N30
\debounce_counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter[0]~2_combout\ = !\debounce_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_counter~0_combout\,
	combout => \debounce_counter[0]~2_combout\);

-- Location: FF_X5_Y27_N31
\debounce_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \debounce_counter[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(0));

-- Location: LCCOMB_X5_Y27_N16
\debounce_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter~0_combout\ = (debounce_counter(0) & !\process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => debounce_counter(0),
	datad => \process_0~9_combout\,
	combout => \debounce_counter~0_combout\);

-- Location: LCCOMB_X6_Y27_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\debounce_counter~0_combout\ & (\debounce_counter~1_combout\ $ (VCC))) # (!\debounce_counter~0_combout\ & (\debounce_counter~1_combout\ & VCC))
-- \Add0~1\ = CARRY((\debounce_counter~0_combout\ & \debounce_counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter~0_combout\,
	datab => \debounce_counter~1_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X6_Y27_N3
\debounce_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(1));

-- Location: LCCOMB_X6_Y27_N0
\debounce_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter~1_combout\ = (debounce_counter(1) & !\process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(1),
	datad => \process_0~9_combout\,
	combout => \debounce_counter~1_combout\);

-- Location: LCCOMB_X6_Y27_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~1\ & (((\process_0~9_combout\)) # (!debounce_counter(2)))) # (!\Add0~1\ & (((debounce_counter(2) & !\process_0~9_combout\)) # (GND)))
-- \Add0~3\ = CARRY(((\process_0~9_combout\) # (!\Add0~1\)) # (!debounce_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(2),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X6_Y27_N5
\debounce_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(2));

-- Location: LCCOMB_X6_Y27_N6
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3\ & (debounce_counter(3) & (!\process_0~9_combout\ & VCC))) # (!\Add0~3\ & ((((debounce_counter(3) & !\process_0~9_combout\)))))
-- \Add0~5\ = CARRY((debounce_counter(3) & (!\process_0~9_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(3),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X6_Y27_N7
\debounce_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(3));

-- Location: LCCOMB_X6_Y27_N8
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5\ & (((\process_0~9_combout\)) # (!debounce_counter(4)))) # (!\Add0~5\ & (((debounce_counter(4) & !\process_0~9_combout\)) # (GND)))
-- \Add0~7\ = CARRY(((\process_0~9_combout\) # (!\Add0~5\)) # (!debounce_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(4),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X6_Y27_N9
\debounce_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(4));

-- Location: LCCOMB_X6_Y27_N10
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~7\ & (debounce_counter(5) & (!\process_0~9_combout\ & VCC))) # (!\Add0~7\ & ((((debounce_counter(5) & !\process_0~9_combout\)))))
-- \Add0~9\ = CARRY((debounce_counter(5) & (!\process_0~9_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(5),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X6_Y27_N11
\debounce_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(5));

-- Location: LCCOMB_X6_Y27_N12
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & (((\process_0~9_combout\)) # (!debounce_counter(6)))) # (!\Add0~9\ & (((debounce_counter(6) & !\process_0~9_combout\)) # (GND)))
-- \Add0~11\ = CARRY(((\process_0~9_combout\) # (!\Add0~9\)) # (!debounce_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(6),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X6_Y27_N13
\debounce_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(6));

-- Location: LCCOMB_X6_Y27_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (debounce_counter(7) & (!\process_0~9_combout\ & VCC))) # (!\Add0~11\ & ((((debounce_counter(7) & !\process_0~9_combout\)))))
-- \Add0~13\ = CARRY((debounce_counter(7) & (!\process_0~9_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(7),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X6_Y27_N15
\debounce_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(7));

-- Location: LCCOMB_X6_Y27_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & ((\process_0~9_combout\) # ((!debounce_counter(8))))) # (!\Add0~13\ & (((!\process_0~9_combout\ & debounce_counter(8))) # (GND)))
-- \Add0~15\ = CARRY((\process_0~9_combout\) # ((!\Add0~13\) # (!debounce_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X6_Y27_N17
\debounce_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(8));

-- Location: LCCOMB_X6_Y27_N18
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15\ & (debounce_counter(9) & (!\process_0~9_combout\ & VCC))) # (!\Add0~15\ & ((((debounce_counter(9) & !\process_0~9_combout\)))))
-- \Add0~17\ = CARRY((debounce_counter(9) & (!\process_0~9_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(9),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X6_Y27_N19
\debounce_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(9));

-- Location: LCCOMB_X6_Y27_N20
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~17\ & ((\process_0~9_combout\) # ((!debounce_counter(10))))) # (!\Add0~17\ & (((!\process_0~9_combout\ & debounce_counter(10))) # (GND)))
-- \Add0~19\ = CARRY((\process_0~9_combout\) # ((!\Add0~17\) # (!debounce_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X6_Y27_N21
\debounce_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(10));

-- Location: LCCOMB_X6_Y27_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~19\ & (!\process_0~9_combout\ & (debounce_counter(11) & VCC))) # (!\Add0~19\ & ((((!\process_0~9_combout\ & debounce_counter(11))))))
-- \Add0~21\ = CARRY((!\process_0~9_combout\ & (debounce_counter(11) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X6_Y27_N23
\debounce_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(11));

-- Location: LCCOMB_X6_Y27_N24
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21\ & ((\process_0~9_combout\) # ((!debounce_counter(12))))) # (!\Add0~21\ & (((!\process_0~9_combout\ & debounce_counter(12))) # (GND)))
-- \Add0~23\ = CARRY((\process_0~9_combout\) # ((!\Add0~21\) # (!debounce_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X6_Y27_N25
\debounce_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(12));

-- Location: LCCOMB_X6_Y27_N26
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23\ & (!\process_0~9_combout\ & (debounce_counter(13) & VCC))) # (!\Add0~23\ & ((((!\process_0~9_combout\ & debounce_counter(13))))))
-- \Add0~25\ = CARRY((!\process_0~9_combout\ & (debounce_counter(13) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X6_Y27_N27
\debounce_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(13));

-- Location: LCCOMB_X6_Y27_N28
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~25\ & ((\process_0~9_combout\) # ((!debounce_counter(14))))) # (!\Add0~25\ & (((!\process_0~9_combout\ & debounce_counter(14))) # (GND)))
-- \Add0~27\ = CARRY((\process_0~9_combout\) # ((!\Add0~25\) # (!debounce_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X6_Y27_N29
\debounce_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(14));

-- Location: LCCOMB_X6_Y27_N30
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Add0~27\ & (!\process_0~9_combout\ & (debounce_counter(15) & VCC))) # (!\Add0~27\ & ((((!\process_0~9_combout\ & debounce_counter(15))))))
-- \Add0~29\ = CARRY((!\process_0~9_combout\ & (debounce_counter(15) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X6_Y27_N31
\debounce_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(15));

-- Location: LCCOMB_X6_Y26_N0
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~29\ & ((\process_0~9_combout\) # ((!debounce_counter(16))))) # (!\Add0~29\ & (((!\process_0~9_combout\ & debounce_counter(16))) # (GND)))
-- \Add0~31\ = CARRY((\process_0~9_combout\) # ((!\Add0~29\) # (!debounce_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X6_Y26_N1
\debounce_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(16));

-- Location: LCCOMB_X6_Y26_N2
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~31\ & (!\process_0~9_combout\ & (debounce_counter(17) & VCC))) # (!\Add0~31\ & ((((!\process_0~9_combout\ & debounce_counter(17))))))
-- \Add0~33\ = CARRY((!\process_0~9_combout\ & (debounce_counter(17) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X6_Y26_N3
\debounce_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(17));

-- Location: LCCOMB_X6_Y26_N4
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Add0~33\ & ((\process_0~9_combout\) # ((!debounce_counter(18))))) # (!\Add0~33\ & (((!\process_0~9_combout\ & debounce_counter(18))) # (GND)))
-- \Add0~35\ = CARRY((\process_0~9_combout\) # ((!\Add0~33\) # (!debounce_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X6_Y26_N5
\debounce_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(18));

-- Location: LCCOMB_X6_Y26_N6
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\Add0~35\ & (debounce_counter(19) & (!\process_0~9_combout\ & VCC))) # (!\Add0~35\ & ((((debounce_counter(19) & !\process_0~9_combout\)))))
-- \Add0~37\ = CARRY((debounce_counter(19) & (!\process_0~9_combout\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(19),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X6_Y26_N7
\debounce_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(19));

-- Location: LCCOMB_X6_Y26_N8
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~37\ & (((\process_0~9_combout\)) # (!debounce_counter(20)))) # (!\Add0~37\ & (((debounce_counter(20) & !\process_0~9_combout\)) # (GND)))
-- \Add0~39\ = CARRY(((\process_0~9_combout\) # (!\Add0~37\)) # (!debounce_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(20),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X6_Y26_N9
\debounce_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(20));

-- Location: LCCOMB_X6_Y26_N10
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Add0~39\ & (debounce_counter(21) & (!\process_0~9_combout\ & VCC))) # (!\Add0~39\ & ((((debounce_counter(21) & !\process_0~9_combout\)))))
-- \Add0~41\ = CARRY((debounce_counter(21) & (!\process_0~9_combout\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(21),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X6_Y26_N11
\debounce_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(21));

-- Location: LCCOMB_X6_Y26_N12
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~41\ & (((\process_0~9_combout\)) # (!debounce_counter(22)))) # (!\Add0~41\ & (((debounce_counter(22) & !\process_0~9_combout\)) # (GND)))
-- \Add0~43\ = CARRY(((\process_0~9_combout\) # (!\Add0~41\)) # (!debounce_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(22),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X6_Y26_N13
\debounce_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(22));

-- Location: LCCOMB_X6_Y26_N14
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~43\ & (debounce_counter(23) & (!\process_0~9_combout\ & VCC))) # (!\Add0~43\ & ((((debounce_counter(23) & !\process_0~9_combout\)))))
-- \Add0~45\ = CARRY((debounce_counter(23) & (!\process_0~9_combout\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(23),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X6_Y26_N15
\debounce_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(23));

-- Location: LCCOMB_X6_Y26_N16
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~45\ & ((\process_0~9_combout\) # ((!debounce_counter(24))))) # (!\Add0~45\ & (((!\process_0~9_combout\ & debounce_counter(24))) # (GND)))
-- \Add0~47\ = CARRY((\process_0~9_combout\) # ((!\Add0~45\) # (!debounce_counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X6_Y26_N17
\debounce_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(24));

-- Location: LCCOMB_X6_Y26_N18
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\Add0~47\ & (!\process_0~9_combout\ & (debounce_counter(25) & VCC))) # (!\Add0~47\ & ((((!\process_0~9_combout\ & debounce_counter(25))))))
-- \Add0~49\ = CARRY((!\process_0~9_combout\ & (debounce_counter(25) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X6_Y26_N19
\debounce_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(25));

-- Location: LCCOMB_X6_Y26_N20
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~49\ & ((\process_0~9_combout\) # ((!debounce_counter(26))))) # (!\Add0~49\ & (((!\process_0~9_combout\ & debounce_counter(26))) # (GND)))
-- \Add0~51\ = CARRY((\process_0~9_combout\) # ((!\Add0~49\) # (!debounce_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(26),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X6_Y26_N21
\debounce_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(26));

-- Location: LCCOMB_X6_Y26_N22
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\Add0~51\ & (debounce_counter(27) & (!\process_0~9_combout\ & VCC))) # (!\Add0~51\ & ((((debounce_counter(27) & !\process_0~9_combout\)))))
-- \Add0~53\ = CARRY((debounce_counter(27) & (!\process_0~9_combout\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(27),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X6_Y26_N23
\debounce_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(27));

-- Location: LCCOMB_X6_Y26_N24
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~53\ & ((\process_0~9_combout\) # ((!debounce_counter(28))))) # (!\Add0~53\ & (((!\process_0~9_combout\ & debounce_counter(28))) # (GND)))
-- \Add0~55\ = CARRY((\process_0~9_combout\) # ((!\Add0~53\) # (!debounce_counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(28),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X6_Y26_N25
\debounce_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(28));

-- Location: LCCOMB_X6_Y26_N26
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~55\ & (debounce_counter(29) & (!\process_0~9_combout\ & VCC))) # (!\Add0~55\ & ((((debounce_counter(29) & !\process_0~9_combout\)))))
-- \Add0~57\ = CARRY((debounce_counter(29) & (!\process_0~9_combout\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(29),
	datab => \process_0~9_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X6_Y26_N27
\debounce_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(29));

-- Location: LCCOMB_X6_Y26_N28
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\Add0~57\ & ((\process_0~9_combout\) # ((!debounce_counter(30))))) # (!\Add0~57\ & (((!\process_0~9_combout\ & debounce_counter(30))) # (GND)))
-- \Add0~59\ = CARRY((\process_0~9_combout\) # ((!\Add0~57\) # (!debounce_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => debounce_counter(30),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X6_Y26_N29
\debounce_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(30));

-- Location: LCCOMB_X6_Y26_N30
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = debounce_counter(31) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(31),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: FF_X6_Y26_N31
\debounce_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(31));

-- Location: LCCOMB_X5_Y27_N22
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\bot~q\ & !debounce_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot~q\,
	datad => debounce_counter(31),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X5_Y27_N26
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (debounce_counter(14)) # ((debounce_counter(15)) # ((debounce_counter(12) & debounce_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(14),
	datab => debounce_counter(12),
	datac => debounce_counter(13),
	datad => debounce_counter(15),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X5_Y27_N8
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (debounce_counter(11) & (debounce_counter(13) & ((debounce_counter(8)) # (debounce_counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(8),
	datab => debounce_counter(9),
	datac => debounce_counter(11),
	datad => debounce_counter(13),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X5_Y27_N28
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (debounce_counter(16) & (debounce_counter(24) & (debounce_counter(20) & debounce_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datab => debounce_counter(24),
	datac => debounce_counter(20),
	datad => debounce_counter(21),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X5_Y27_N14
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~1_combout\ & ((\process_0~2_combout\) # ((debounce_counter(10) & \process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => debounce_counter(10),
	datac => \process_0~3_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X5_Y27_N4
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (debounce_counter(28)) # ((debounce_counter(27)) # ((debounce_counter(29)) # (debounce_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(28),
	datab => debounce_counter(27),
	datac => debounce_counter(29),
	datad => debounce_counter(26),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X5_Y27_N6
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (debounce_counter(21) & ((debounce_counter(17)) # ((debounce_counter(19)) # (debounce_counter(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(21),
	datab => debounce_counter(17),
	datac => debounce_counter(19),
	datad => debounce_counter(18),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X5_Y27_N0
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (debounce_counter(23)) # ((debounce_counter(22)) # ((debounce_counter(20) & \process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(23),
	datab => debounce_counter(22),
	datac => debounce_counter(20),
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X5_Y27_N2
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (debounce_counter(30)) # ((\process_0~5_combout\) # ((debounce_counter(24) & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(30),
	datab => debounce_counter(24),
	datac => \process_0~5_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X5_Y27_N24
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~0_combout\ & ((debounce_counter(25)) # ((\process_0~4_combout\) # (\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => debounce_counter(25),
	datac => \process_0~4_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X4_Y27_N24
\state.s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.s2~0_combout\ = (\bot_raw~input_o\ & ((\process_0~9_combout\ & (\state.s1~q\)) # (!\process_0~9_combout\ & ((\state.s2~q\))))) # (!\bot_raw~input_o\ & (((\state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \bot_raw~input_o\,
	datac => \state.s2~q\,
	datad => \process_0~9_combout\,
	combout => \state.s2~0_combout\);

-- Location: FF_X4_Y27_N25
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \state.s2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X4_Y27_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\bot_raw~input_o\ & (!\state.s1~q\)) # (!\bot_raw~input_o\ & ((!\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bot_raw~input_o\,
	datac => \state.s1~q\,
	datad => \state.s2~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X4_Y27_N21
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X4_Y27_N6
\state.init~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.init~feeder_combout\);

-- Location: FF_X4_Y27_N7
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \state.init~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X4_Y27_N18
\leds~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\state.init~q\ & ((\state.s1~q\) # (!\state.s2~q\))) # (!\state.init~q\ & (!\state.s2~q\ & \state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X4_Y27_N4
\leds~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\state.init~q\ & (!\state.s2~q\ & \state.s1~q\)) # (!\state.init~q\ & ((\state.s1~q\) # (!\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X4_Y27_N10
\saida0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~0_combout\ = (\state.init~q\) # (\state.s2~q\ $ (\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \saida0~0_combout\);

-- Location: LCCOMB_X4_Y27_N12
\saida0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~1_combout\ = (!\state.s1~q\ & ((\state.init~q\) # (\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \saida0~1_combout\);

-- Location: LCCOMB_X4_Y27_N26
\final[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \final[0]~0_combout\ = (\state.init~q\ & ((\state.s2~q\) # (!\state.s1~q\))) # (!\state.init~q\ & (\state.s2~q\ & !\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \final[0]~0_combout\);

-- Location: LCCOMB_X4_Y27_N16
\reset_ativo~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_ativo~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_ativo~reg0feeder_combout\);

-- Location: FF_X4_Y27_N17
\reset_ativo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \reset_ativo~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
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


