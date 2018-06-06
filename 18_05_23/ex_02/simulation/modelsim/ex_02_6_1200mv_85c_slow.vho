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

-- DATE "06/06/2018 00:16:32"

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
-- saida0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_ativo	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_ativo	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bot_raw	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \bot_raw~input_o\ : std_logic;
SIGNAL \debounce_counter_s[28]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~91_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \result~q\ : std_logic;
SIGNAL \counter[31]~31_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter~30_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \counter~29_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \counter~28_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \counter~27_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counter~26_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \counter~25_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counter~24_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \counter~22_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \counter~21_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \counter~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \counter~19_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.s2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \reset_ativo~reg0feeder_combout\ : std_logic;
SIGNAL \reset_ativo~reg0_q\ : std_logic;
SIGNAL debounce_counter_s : std_logic_vector(31 DOWNTO 0);
SIGNAL debounce_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_bot_raw~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_leds~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.init~q\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;

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
\ALT_INV_bot_raw~input_o\ <= NOT \bot_raw~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_leds~1_combout\ <= NOT \leds~1_combout\;
\ALT_INV_state.init~q\ <= NOT \state.init~q\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;

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
	i => \leds~0_combout\,
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
	i => \leds~0_combout\,
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
	i => \leds~0_combout\,
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
	i => \state.init~q\,
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
	i => \state.s2~q\,
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
	i => \ALT_INV_leds~1_combout\,
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
	i => \ALT_INV_leds~1_combout\,
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

-- Location: LCCOMB_X15_Y18_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = debounce_counter_s(0) $ (GND)
-- \Add1~1\ = CARRY(!debounce_counter_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X14_Y17_N2
\Add1~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\LessThan1~11_combout\) # (!\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \LessThan1~11_combout\,
	combout => \Add1~77_combout\);

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

-- Location: LCCOMB_X12_Y20_N4
\debounce_counter_s[28]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_s[28]~0_combout\ = (!\reset~input_o\ & \bot_raw~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \bot_raw~input_o\,
	combout => \debounce_counter_s[28]~0_combout\);

-- Location: FF_X14_Y17_N3
\debounce_counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~77_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(0));

-- Location: LCCOMB_X15_Y18_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (debounce_counter_s(1) & (!\Add1~1\)) # (!debounce_counter_s(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!debounce_counter_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X14_Y17_N0
\Add1~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (!\LessThan1~11_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~2_combout\,
	combout => \Add1~76_combout\);

-- Location: FF_X14_Y17_N1
\debounce_counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~76_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(1));

-- Location: LCCOMB_X15_Y18_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (debounce_counter_s(2) & (\Add1~3\ $ (GND))) # (!debounce_counter_s(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((debounce_counter_s(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y18_N4
\Add1~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (\Add1~4_combout\ & !\LessThan1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \LessThan1~11_combout\,
	combout => \Add1~75_combout\);

-- Location: FF_X16_Y18_N5
\debounce_counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~75_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(2));

-- Location: LCCOMB_X15_Y18_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (debounce_counter_s(3) & (!\Add1~5\)) # (!debounce_counter_s(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!debounce_counter_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X16_Y18_N6
\Add1~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\Add1~6_combout\ & !\LessThan1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \LessThan1~11_combout\,
	combout => \Add1~74_combout\);

-- Location: FF_X16_Y18_N7
\debounce_counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~74_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(3));

-- Location: LCCOMB_X15_Y18_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (debounce_counter_s(4) & (\Add1~7\ $ (GND))) # (!debounce_counter_s(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((debounce_counter_s(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X16_Y18_N0
\Add1~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (\Add1~8_combout\ & !\LessThan1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => \LessThan1~11_combout\,
	combout => \Add1~73_combout\);

-- Location: FF_X16_Y18_N1
\debounce_counter_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~73_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(4));

-- Location: LCCOMB_X15_Y18_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (debounce_counter_s(5) & (!\Add1~9\)) # (!debounce_counter_s(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!debounce_counter_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X14_Y17_N26
\Add1~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (!\LessThan1~11_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~10_combout\,
	combout => \Add1~72_combout\);

-- Location: FF_X14_Y17_N27
\debounce_counter_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~72_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(5));

-- Location: LCCOMB_X15_Y18_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (debounce_counter_s(6) & (\Add1~11\ $ (GND))) # (!debounce_counter_s(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((debounce_counter_s(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X14_Y17_N12
\Add1~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (!\LessThan1~11_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~71_combout\);

-- Location: FF_X14_Y17_N13
\debounce_counter_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~71_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(6));

-- Location: LCCOMB_X15_Y18_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (debounce_counter_s(7) & (!\Add1~13\)) # (!debounce_counter_s(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!debounce_counter_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X14_Y18_N16
\Add1~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (\Add1~14_combout\ & !\LessThan1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \LessThan1~11_combout\,
	combout => \Add1~70_combout\);

-- Location: FF_X14_Y18_N17
\debounce_counter_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~70_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(7));

-- Location: LCCOMB_X15_Y18_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (debounce_counter_s(8) & (\Add1~15\ $ (GND))) # (!debounce_counter_s(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((debounce_counter_s(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X14_Y18_N6
\Add1~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (!\LessThan1~11_combout\ & \Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~16_combout\,
	combout => \Add1~69_combout\);

-- Location: FF_X14_Y18_N7
\debounce_counter_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~69_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(8));

-- Location: LCCOMB_X15_Y18_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (debounce_counter_s(9) & (!\Add1~17\)) # (!debounce_counter_s(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!debounce_counter_s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X14_Y18_N14
\Add1~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (!\LessThan1~11_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~68_combout\);

-- Location: FF_X14_Y18_N15
\debounce_counter_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(9));

-- Location: LCCOMB_X15_Y18_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (debounce_counter_s(10) & (\Add1~19\ $ (GND))) # (!debounce_counter_s(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((debounce_counter_s(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X14_Y18_N12
\Add1~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\Add1~20_combout\ & !\LessThan1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datac => \LessThan1~11_combout\,
	combout => \Add1~67_combout\);

-- Location: FF_X14_Y18_N13
\debounce_counter_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~67_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(10));

-- Location: LCCOMB_X15_Y18_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (debounce_counter_s(11) & (!\Add1~21\)) # (!debounce_counter_s(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!debounce_counter_s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X14_Y17_N18
\Add1~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (!\LessThan1~11_combout\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~22_combout\,
	combout => \Add1~81_combout\);

-- Location: FF_X14_Y17_N19
\debounce_counter_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~81_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(11));

-- Location: LCCOMB_X15_Y18_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (debounce_counter_s(12) & (\Add1~23\ $ (GND))) # (!debounce_counter_s(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((debounce_counter_s(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X14_Y18_N0
\Add1~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (!\LessThan1~11_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~24_combout\,
	combout => \Add1~80_combout\);

-- Location: FF_X14_Y18_N1
\debounce_counter_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~80_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(12));

-- Location: LCCOMB_X15_Y18_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (debounce_counter_s(13) & (!\Add1~25\)) # (!debounce_counter_s(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!debounce_counter_s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X14_Y18_N30
\Add1~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (!\LessThan1~11_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~26_combout\,
	combout => \Add1~79_combout\);

-- Location: FF_X14_Y18_N31
\debounce_counter_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~79_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(13));

-- Location: LCCOMB_X15_Y18_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (debounce_counter_s(14) & (\Add1~27\ $ (GND))) # (!debounce_counter_s(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((debounce_counter_s(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X14_Y17_N20
\Add1~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (!\LessThan1~11_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~28_combout\,
	combout => \Add1~78_combout\);

-- Location: FF_X14_Y17_N21
\debounce_counter_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~78_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(14));

-- Location: LCCOMB_X15_Y18_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (debounce_counter_s(15) & (!\Add1~29\)) # (!debounce_counter_s(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!debounce_counter_s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X14_Y17_N22
\Add1~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (!\LessThan1~11_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~30_combout\,
	combout => \Add1~66_combout\);

-- Location: FF_X14_Y17_N23
\debounce_counter_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~66_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(15));

-- Location: LCCOMB_X15_Y17_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (debounce_counter_s(16) & (\Add1~31\ $ (GND))) # (!debounce_counter_s(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((debounce_counter_s(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X16_Y17_N28
\Add1~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (!\LessThan1~11_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~32_combout\,
	combout => \Add1~65_combout\);

-- Location: FF_X16_Y17_N29
\debounce_counter_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~65_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(16));

-- Location: LCCOMB_X15_Y17_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (debounce_counter_s(17) & (!\Add1~33\)) # (!debounce_counter_s(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!debounce_counter_s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X16_Y17_N6
\Add1~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (!\LessThan1~11_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~34_combout\,
	combout => \Add1~95_combout\);

-- Location: FF_X16_Y17_N7
\debounce_counter_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~95_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(17));

-- Location: LCCOMB_X15_Y17_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (debounce_counter_s(18) & (\Add1~35\ $ (GND))) # (!debounce_counter_s(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((debounce_counter_s(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X16_Y17_N4
\Add1~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (!\LessThan1~11_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~36_combout\,
	combout => \Add1~94_combout\);

-- Location: FF_X16_Y17_N5
\debounce_counter_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~94_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(18));

-- Location: LCCOMB_X15_Y17_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (debounce_counter_s(19) & (!\Add1~37\)) # (!debounce_counter_s(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!debounce_counter_s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X16_Y17_N24
\Add1~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = (!\LessThan1~11_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~38_combout\,
	combout => \Add1~93_combout\);

-- Location: FF_X16_Y17_N25
\debounce_counter_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~93_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(19));

-- Location: LCCOMB_X15_Y17_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (debounce_counter_s(20) & (\Add1~39\ $ (GND))) # (!debounce_counter_s(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((debounce_counter_s(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X16_Y17_N22
\Add1~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (!\LessThan1~11_combout\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~40_combout\,
	combout => \Add1~92_combout\);

-- Location: FF_X16_Y17_N23
\debounce_counter_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~92_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(20));

-- Location: LCCOMB_X15_Y17_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (debounce_counter_s(21) & (!\Add1~41\)) # (!debounce_counter_s(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!debounce_counter_s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X16_Y17_N8
\Add1~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~91_combout\ = (!\LessThan1~11_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~42_combout\,
	combout => \Add1~91_combout\);

-- Location: FF_X16_Y17_N9
\debounce_counter_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~91_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(21));

-- Location: LCCOMB_X15_Y17_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (debounce_counter_s(22) & (\Add1~43\ $ (GND))) # (!debounce_counter_s(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((debounce_counter_s(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X16_Y17_N30
\Add1~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (!\LessThan1~11_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~44_combout\,
	combout => \Add1~90_combout\);

-- Location: FF_X16_Y17_N31
\debounce_counter_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~90_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(22));

-- Location: LCCOMB_X16_Y17_N26
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (debounce_counter_s(22)) # ((debounce_counter_s(21)) # ((debounce_counter_s(20)) # (debounce_counter_s(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(22),
	datab => debounce_counter_s(21),
	datac => debounce_counter_s(20),
	datad => debounce_counter_s(19),
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X16_Y17_N20
\LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (debounce_counter_s(18)) # ((\LessThan1~9_combout\) # (debounce_counter_s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(18),
	datac => \LessThan1~9_combout\,
	datad => debounce_counter_s(17),
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X15_Y17_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (debounce_counter_s(23) & (!\Add1~45\)) # (!debounce_counter_s(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!debounce_counter_s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X14_Y17_N6
\Add1~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (!\LessThan1~11_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~46_combout\,
	combout => \Add1~89_combout\);

-- Location: FF_X14_Y17_N7
\debounce_counter_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~89_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(23));

-- Location: LCCOMB_X15_Y17_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (debounce_counter_s(24) & (\Add1~47\ $ (GND))) # (!debounce_counter_s(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((debounce_counter_s(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X14_Y17_N16
\Add1~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = (!\LessThan1~11_combout\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~48_combout\,
	combout => \Add1~88_combout\);

-- Location: FF_X14_Y17_N17
\debounce_counter_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~88_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(24));

-- Location: LCCOMB_X15_Y17_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (debounce_counter_s(25) & (!\Add1~49\)) # (!debounce_counter_s(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!debounce_counter_s(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X14_Y17_N30
\Add1~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (!\LessThan1~11_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~50_combout\,
	combout => \Add1~87_combout\);

-- Location: FF_X14_Y17_N31
\debounce_counter_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~87_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(25));

-- Location: LCCOMB_X15_Y17_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (debounce_counter_s(26) & (\Add1~51\ $ (GND))) # (!debounce_counter_s(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((debounce_counter_s(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X16_Y17_N18
\Add1~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (!\LessThan1~11_combout\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~52_combout\,
	combout => \Add1~86_combout\);

-- Location: FF_X16_Y17_N19
\debounce_counter_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~86_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(26));

-- Location: LCCOMB_X15_Y17_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (debounce_counter_s(27) & (!\Add1~53\)) # (!debounce_counter_s(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!debounce_counter_s(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X14_Y17_N28
\Add1~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~85_combout\ = (!\LessThan1~11_combout\ & \Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~54_combout\,
	combout => \Add1~85_combout\);

-- Location: FF_X14_Y17_N29
\debounce_counter_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~85_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(27));

-- Location: LCCOMB_X15_Y17_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (debounce_counter_s(28) & (\Add1~55\ $ (GND))) # (!debounce_counter_s(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((debounce_counter_s(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X16_Y17_N2
\Add1~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (!\LessThan1~11_combout\ & \Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~56_combout\,
	combout => \Add1~84_combout\);

-- Location: FF_X16_Y17_N3
\debounce_counter_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~84_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(28));

-- Location: LCCOMB_X15_Y17_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (debounce_counter_s(29) & (!\Add1~57\)) # (!debounce_counter_s(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!debounce_counter_s(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X16_Y17_N0
\Add1~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (!\LessThan1~11_combout\ & \Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datac => \Add1~58_combout\,
	combout => \Add1~83_combout\);

-- Location: FF_X16_Y17_N1
\debounce_counter_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~83_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(29));

-- Location: LCCOMB_X15_Y17_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (debounce_counter_s(30) & (\Add1~59\ $ (GND))) # (!debounce_counter_s(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((debounce_counter_s(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_s(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X16_Y17_N10
\Add1~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (!\LessThan1~11_combout\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~11_combout\,
	datad => \Add1~60_combout\,
	combout => \Add1~82_combout\);

-- Location: FF_X16_Y17_N11
\debounce_counter_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~82_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(30));

-- Location: LCCOMB_X15_Y17_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (!debounce_counter_s(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter_s(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X14_Y17_N24
\Add1~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = (\LessThan1~11_combout\) # (!\Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~11_combout\,
	datad => \Add1~62_combout\,
	combout => \Add1~64_combout\);

-- Location: FF_X14_Y17_N25
\debounce_counter_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~64_combout\,
	ena => \debounce_counter_s[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_s(31));

-- Location: LCCOMB_X16_Y17_N16
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (debounce_counter_s(25)) # (debounce_counter_s(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => debounce_counter_s(25),
	datad => debounce_counter_s(26),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X16_Y17_N12
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (debounce_counter_s(30)) # ((debounce_counter_s(29)) # ((debounce_counter_s(27)) # (debounce_counter_s(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(30),
	datab => debounce_counter_s(29),
	datac => debounce_counter_s(27),
	datad => debounce_counter_s(28),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X14_Y17_N8
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (debounce_counter_s(23)) # ((debounce_counter_s(24)) # ((\LessThan1~7_combout\) # (\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(23),
	datab => debounce_counter_s(24),
	datac => \LessThan1~7_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X14_Y17_N4
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (debounce_counter_s(12)) # ((debounce_counter_s(14)) # ((debounce_counter_s(13)) # (debounce_counter_s(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(12),
	datab => debounce_counter_s(14),
	datac => debounce_counter_s(13),
	datad => debounce_counter_s(11),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X16_Y18_N26
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (debounce_counter_s(1)) # ((debounce_counter_s(4)) # ((debounce_counter_s(2)) # (debounce_counter_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(1),
	datab => debounce_counter_s(4),
	datac => debounce_counter_s(2),
	datad => debounce_counter_s(3),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y18_N22
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (debounce_counter_s(6)) # ((debounce_counter_s(5) & ((\LessThan1~1_combout\) # (!debounce_counter_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(6),
	datab => debounce_counter_s(5),
	datac => \LessThan1~1_combout\,
	datad => debounce_counter_s(0),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X14_Y18_N4
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (debounce_counter_s(9) & debounce_counter_s(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => debounce_counter_s(9),
	datad => debounce_counter_s(10),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\ & ((debounce_counter_s(8)) # ((\LessThan1~2_combout\ & debounce_counter_s(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => debounce_counter_s(7),
	datac => \LessThan1~0_combout\,
	datad => debounce_counter_s(8),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X14_Y17_N10
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (debounce_counter_s(15) & (debounce_counter_s(16) & ((\LessThan1~4_combout\) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_s(15),
	datab => \LessThan1~4_combout\,
	datac => \LessThan1~3_combout\,
	datad => debounce_counter_s(16),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X14_Y17_N14
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (debounce_counter_s(31) & ((\LessThan1~10_combout\) # ((\LessThan1~8_combout\) # (\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => debounce_counter_s(31),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~11_combout\);

-- Location: LCCOMB_X20_Y17_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = debounce_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(debounce_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y17_N16
\Add0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~0_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~82_combout\);

-- Location: FF_X19_Y17_N17
\debounce_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(0));

-- Location: LCCOMB_X20_Y17_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (debounce_counter(1) & (!\Add0~1\)) # (!debounce_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!debounce_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y17_N24
\Add0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~2_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X19_Y17_N25
\debounce_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(1));

-- Location: LCCOMB_X20_Y17_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (debounce_counter(2) & (\Add0~3\ $ (GND))) # (!debounce_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((debounce_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y17_N6
\Add0~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~4_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X19_Y17_N7
\debounce_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(2));

-- Location: LCCOMB_X20_Y17_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (debounce_counter(3) & (!\Add0~5\)) # (!debounce_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!debounce_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y17_N8
\Add0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~6_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X19_Y17_N9
\debounce_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(3));

-- Location: LCCOMB_X20_Y17_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (debounce_counter(4) & (\Add0~7\ $ (GND))) # (!debounce_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((debounce_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y17_N22
\Add0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~8_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X19_Y17_N23
\debounce_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(4));

-- Location: LCCOMB_X20_Y17_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (debounce_counter(5) & (!\Add0~9\)) # (!debounce_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!debounce_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y17_N18
\Add0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~10_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X19_Y17_N19
\debounce_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(5));

-- Location: LCCOMB_X20_Y17_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (debounce_counter(6) & (\Add0~11\ $ (GND))) # (!debounce_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((debounce_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y17_N12
\Add0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~12_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X19_Y17_N13
\debounce_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(6));

-- Location: LCCOMB_X20_Y17_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (debounce_counter(7) & (!\Add0~13\)) # (!debounce_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!debounce_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X19_Y17_N20
\Add0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~14_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X19_Y17_N21
\debounce_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(7));

-- Location: LCCOMB_X20_Y17_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (debounce_counter(8) & (\Add0~15\ $ (GND))) # (!debounce_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((debounce_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y17_N30
\Add0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~16_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X19_Y17_N31
\debounce_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(8));

-- Location: LCCOMB_X20_Y17_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (debounce_counter(9) & (!\Add0~17\)) # (!debounce_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!debounce_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X19_Y17_N26
\Add0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~18_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X19_Y17_N27
\debounce_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(9));

-- Location: LCCOMB_X20_Y17_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (debounce_counter(10) & (\Add0~19\ $ (GND))) # (!debounce_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((debounce_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X19_Y17_N4
\Add0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\Add0~20_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X19_Y17_N5
\debounce_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(10));

-- Location: LCCOMB_X20_Y17_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (debounce_counter(11) & (!\Add0~21\)) # (!debounce_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!debounce_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X19_Y16_N20
\Add0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (!\LessThan0~10_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~22_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X19_Y16_N21
\debounce_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(11));

-- Location: LCCOMB_X20_Y17_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (debounce_counter(12) & (\Add0~23\ $ (GND))) # (!debounce_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((debounce_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X19_Y16_N2
\Add0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (!\LessThan0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X19_Y16_N3
\debounce_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(12));

-- Location: LCCOMB_X20_Y17_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (debounce_counter(13) & (!\Add0~25\)) # (!debounce_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!debounce_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X19_Y16_N4
\Add0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~26_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datac => \LessThan0~10_combout\,
	combout => \Add0~75_combout\);

-- Location: FF_X19_Y16_N5
\debounce_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(13));

-- Location: LCCOMB_X20_Y17_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (debounce_counter(14) & (\Add0~27\ $ (GND))) # (!debounce_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((debounce_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X19_Y16_N30
\Add0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\LessThan0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X19_Y16_N31
\debounce_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(14));

-- Location: LCCOMB_X20_Y17_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (debounce_counter(15) & (!\Add0~29\)) # (!debounce_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!debounce_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X21_Y16_N0
\Add0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~30_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X21_Y16_N1
\debounce_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(15));

-- Location: LCCOMB_X20_Y16_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (debounce_counter(16) & (\Add0~31\ $ (GND))) # (!debounce_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((debounce_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X21_Y16_N30
\Add0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~32_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X21_Y16_N31
\debounce_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(16));

-- Location: LCCOMB_X20_Y16_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (debounce_counter(17) & (!\Add0~33\)) # (!debounce_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!debounce_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X21_Y16_N6
\Add0~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~34_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X21_Y16_N7
\debounce_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(17));

-- Location: LCCOMB_X20_Y16_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (debounce_counter(18) & (\Add0~35\ $ (GND))) # (!debounce_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((debounce_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X21_Y16_N20
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~36_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~38_combout\);

-- Location: FF_X21_Y16_N21
\debounce_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(18));

-- Location: LCCOMB_X20_Y16_N6
\Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (debounce_counter(19) & (!\Add0~37\)) # (!debounce_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~37\) # (!debounce_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X19_Y16_N26
\Add0~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (!\LessThan0~10_combout\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X19_Y16_N27
\debounce_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(19));

-- Location: LCCOMB_X20_Y16_N8
\Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (debounce_counter(20) & (\Add0~40\ $ (GND))) # (!debounce_counter(20) & (!\Add0~40\ & VCC))
-- \Add0~42\ = CARRY((debounce_counter(20) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(20),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X19_Y16_N8
\Add0~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~41_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~41_combout\,
	datac => \LessThan0~10_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X19_Y16_N9
\debounce_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~94_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(20));

-- Location: LCCOMB_X20_Y16_N10
\Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (debounce_counter(21) & (!\Add0~42\)) # (!debounce_counter(21) & ((\Add0~42\) # (GND)))
-- \Add0~44\ = CARRY((!\Add0~42\) # (!debounce_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(21),
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X21_Y16_N16
\Add0~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~43_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X21_Y16_N17
\debounce_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(21));

-- Location: LCCOMB_X20_Y16_N12
\Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (debounce_counter(22) & (\Add0~44\ $ (GND))) # (!debounce_counter(22) & (!\Add0~44\ & VCC))
-- \Add0~46\ = CARRY((debounce_counter(22) & !\Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(22),
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X19_Y16_N6
\Add0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~45_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~45_combout\,
	datac => \LessThan0~10_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X19_Y16_N7
\debounce_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(22));

-- Location: LCCOMB_X20_Y16_N14
\Add0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (debounce_counter(23) & (!\Add0~46\)) # (!debounce_counter(23) & ((\Add0~46\) # (GND)))
-- \Add0~48\ = CARRY((!\Add0~46\) # (!debounce_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(23),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X19_Y16_N18
\Add0~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~47_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~47_combout\,
	datac => \LessThan0~10_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X19_Y16_N19
\debounce_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(23));

-- Location: LCCOMB_X20_Y16_N16
\Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (debounce_counter(24) & (\Add0~48\ $ (GND))) # (!debounce_counter(24) & (!\Add0~48\ & VCC))
-- \Add0~50\ = CARRY((debounce_counter(24) & !\Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(24),
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X19_Y16_N12
\Add0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (!\LessThan0~10_combout\ & \Add0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~49_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X19_Y16_N13
\debounce_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(24));

-- Location: LCCOMB_X20_Y16_N18
\Add0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (debounce_counter(25) & (!\Add0~50\)) # (!debounce_counter(25) & ((\Add0~50\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~50\) # (!debounce_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(25),
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X19_Y16_N14
\Add0~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (!\LessThan0~10_combout\ & \Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add0~51_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X19_Y16_N15
\debounce_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(25));

-- Location: LCCOMB_X20_Y16_N20
\Add0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (debounce_counter(26) & (\Add0~52\ $ (GND))) # (!debounce_counter(26) & (!\Add0~52\ & VCC))
-- \Add0~54\ = CARRY((debounce_counter(26) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(26),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X19_Y16_N16
\Add0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~53_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datac => \LessThan0~10_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X19_Y16_N17
\debounce_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(26));

-- Location: LCCOMB_X20_Y16_N22
\Add0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (debounce_counter(27) & (!\Add0~54\)) # (!debounce_counter(27) & ((\Add0~54\) # (GND)))
-- \Add0~56\ = CARRY((!\Add0~54\) # (!debounce_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(27),
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X21_Y16_N12
\Add0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\LessThan0~10_combout\ & \Add0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datad => \Add0~55_combout\,
	combout => \Add0~66_combout\);

-- Location: FF_X21_Y16_N13
\debounce_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~66_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(27));

-- Location: LCCOMB_X20_Y16_N24
\Add0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (debounce_counter(28) & (\Add0~56\ $ (GND))) # (!debounce_counter(28) & (!\Add0~56\ & VCC))
-- \Add0~58\ = CARRY((debounce_counter(28) & !\Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(28),
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X21_Y16_N14
\Add0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\LessThan0~10_combout\ & \Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datad => \Add0~57_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X21_Y16_N15
\debounce_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(28));

-- Location: LCCOMB_X20_Y16_N26
\Add0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (debounce_counter(29) & (!\Add0~58\)) # (!debounce_counter(29) & ((\Add0~58\) # (GND)))
-- \Add0~60\ = CARRY((!\Add0~58\) # (!debounce_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(29),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X21_Y16_N28
\Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~59_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~59_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Add0~64_combout\);

-- Location: FF_X21_Y16_N29
\debounce_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~64_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(29));

-- Location: LCCOMB_X20_Y16_N28
\Add0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (debounce_counter(30) & (\Add0~60\ $ (GND))) # (!debounce_counter(30) & (!\Add0~60\ & VCC))
-- \Add0~62\ = CARRY((debounce_counter(30) & !\Add0~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(30),
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X21_Y16_N2
\Add0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (!\LessThan0~10_combout\ & \Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datad => \Add0~61_combout\,
	combout => \Add0~63_combout\);

-- Location: FF_X21_Y16_N3
\debounce_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(30));

-- Location: LCCOMB_X21_Y16_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (debounce_counter(27)) # ((debounce_counter(30)) # ((debounce_counter(28)) # (debounce_counter(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(27),
	datab => debounce_counter(30),
	datac => debounce_counter(28),
	datad => debounce_counter(29),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y16_N30
\Add0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = \Add0~62\ $ (debounce_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter(31),
	cin => \Add0~62\,
	combout => \Add0~67_combout\);

-- Location: LCCOMB_X21_Y16_N24
\Add0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\LessThan0~10_combout\ & \Add0~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datad => \Add0~67_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X21_Y16_N25
\debounce_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \ALT_INV_bot_raw~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(31));

-- Location: LCCOMB_X19_Y16_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (debounce_counter(14)) # ((debounce_counter(12)) # ((debounce_counter(13)) # (debounce_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(14),
	datab => debounce_counter(12),
	datac => debounce_counter(13),
	datad => debounce_counter(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y17_N14
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (debounce_counter(2)) # ((debounce_counter(3)) # ((debounce_counter(4)) # (debounce_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(2),
	datab => debounce_counter(3),
	datac => debounce_counter(4),
	datad => debounce_counter(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y17_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (debounce_counter(5) & ((\LessThan0~2_combout\) # (debounce_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(5),
	datac => \LessThan0~2_combout\,
	datad => debounce_counter(0),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y17_N10
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (debounce_counter(8)) # ((debounce_counter(7) & ((debounce_counter(6)) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(6),
	datab => debounce_counter(7),
	datac => debounce_counter(8),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y17_N28
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\) # ((debounce_counter(9) & (debounce_counter(10) & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(9),
	datab => debounce_counter(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y16_N28
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (debounce_counter(22)) # ((debounce_counter(20)) # ((debounce_counter(19)) # (debounce_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(22),
	datab => debounce_counter(20),
	datac => debounce_counter(19),
	datad => debounce_counter(21),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y16_N24
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (debounce_counter(24)) # ((debounce_counter(23)) # ((debounce_counter(25)) # (debounce_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(24),
	datab => debounce_counter(23),
	datac => debounce_counter(25),
	datad => debounce_counter(26),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y16_N18
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~6_combout\) # (debounce_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => debounce_counter(17),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X21_Y16_N4
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~8_combout\) # ((debounce_counter(16) & (debounce_counter(15) & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datab => debounce_counter(15),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y16_N10
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!debounce_counter(31) & ((\LessThan0~0_combout\) # ((\LessThan0~9_combout\) # (debounce_counter(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => debounce_counter(31),
	datac => \LessThan0~9_combout\,
	datad => debounce_counter(18),
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X19_Y16_N10
\result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\result~q\ & ((\bot_raw~input_o\) # ((\reset~input_o\) # (!\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datab => \result~q\,
	datac => \LessThan0~10_combout\,
	datad => \reset~input_o\,
	combout => \result~0_combout\);

-- Location: LCCOMB_X19_Y16_N0
\result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\result~0_combout\) # ((!\reset~input_o\ & (\LessThan1~11_combout\ & \bot_raw~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \LessThan1~11_combout\,
	datac => \bot_raw~input_o\,
	datad => \result~0_combout\,
	combout => \result~1_combout\);

-- Location: FF_X19_Y16_N1
result : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \result~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result~q\);

-- Location: LCCOMB_X19_Y20_N20
\counter[31]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~31_combout\ = !\Add2~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	combout => \counter[31]~31_combout\);

-- Location: FF_X19_Y20_N21
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter[31]~31_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X20_Y21_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counter(0) $ (GND)
-- \Add2~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y21_N16
\counter~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~30_combout\ = (\state~14_combout\) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \state~14_combout\,
	combout => \counter~30_combout\);

-- Location: FF_X21_Y21_N17
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X20_Y21_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counter(1) & (!\Add2~1\)) # (!counter(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X21_Y21_N2
\counter~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~29_combout\ = (\Add2~2_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \state~14_combout\,
	combout => \counter~29_combout\);

-- Location: FF_X21_Y21_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~29_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X20_Y21_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counter(2) & (\Add2~3\ $ (GND))) # (!counter(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counter(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X21_Y21_N28
\counter~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~28_combout\ = (\Add2~4_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \state~14_combout\,
	combout => \counter~28_combout\);

-- Location: FF_X21_Y21_N29
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~28_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X20_Y21_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counter(3) & (!\Add2~5\)) # (!counter(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X21_Y21_N18
\counter~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~27_combout\ = (\Add2~6_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \state~14_combout\,
	combout => \counter~27_combout\);

-- Location: FF_X21_Y21_N19
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~27_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X20_Y21_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counter(4) & (\Add2~7\ $ (GND))) # (!counter(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counter(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X21_Y21_N12
\counter~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~26_combout\ = (\Add2~8_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \state~14_combout\,
	combout => \counter~26_combout\);

-- Location: FF_X21_Y21_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~26_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X20_Y21_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counter(5) & (!\Add2~9\)) # (!counter(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y21_N6
\counter~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~25_combout\ = (\Add2~10_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => \state~14_combout\,
	combout => \counter~25_combout\);

-- Location: FF_X21_Y21_N7
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~25_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X20_Y21_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counter(6) & (\Add2~11\ $ (GND))) # (!counter(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counter(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X19_Y21_N30
\counter~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~24_combout\ = (\Add2~12_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~12_combout\,
	datad => \state~14_combout\,
	combout => \counter~24_combout\);

-- Location: FF_X19_Y21_N31
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~24_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X20_Y21_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counter(7) & (!\Add2~13\)) # (!counter(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y21_N24
\counter~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = (\Add2~14_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datad => \state~14_combout\,
	combout => \counter~23_combout\);

-- Location: FF_X21_Y21_N25
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~23_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X20_Y21_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counter(8) & (\Add2~15\ $ (GND))) # (!counter(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counter(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X21_Y21_N10
\counter~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~22_combout\ = (\Add2~16_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	datad => \state~14_combout\,
	combout => \counter~22_combout\);

-- Location: FF_X21_Y21_N11
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~22_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X20_Y21_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counter(9) & (!\Add2~17\)) # (!counter(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X21_Y21_N20
\counter~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~21_combout\ = (\Add2~18_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datad => \state~14_combout\,
	combout => \counter~21_combout\);

-- Location: FF_X21_Y21_N21
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~21_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X20_Y21_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counter(10) & (\Add2~19\ $ (GND))) # (!counter(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counter(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X19_Y21_N8
\counter~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~20_combout\ = (\Add2~20_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datad => \state~14_combout\,
	combout => \counter~20_combout\);

-- Location: FF_X19_Y21_N9
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~20_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X20_Y21_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counter(11) & (!\Add2~21\)) # (!counter(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X19_Y21_N22
\counter~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~19_combout\ = (\Add2~22_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~22_combout\,
	datad => \state~14_combout\,
	combout => \counter~19_combout\);

-- Location: FF_X19_Y21_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~19_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X20_Y21_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counter(12) & (\Add2~23\ $ (GND))) # (!counter(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counter(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X19_Y21_N4
\counter~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\Add2~24_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datad => \state~14_combout\,
	combout => \counter~18_combout\);

-- Location: FF_X19_Y21_N5
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~18_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X20_Y21_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counter(13) & (!\Add2~25\)) # (!counter(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X19_Y21_N14
\counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Add2~26_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	datad => \state~14_combout\,
	combout => \counter~17_combout\);

-- Location: FF_X19_Y21_N15
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~17_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X20_Y21_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counter(14) & (\Add2~27\ $ (GND))) # (!counter(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counter(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X19_Y21_N16
\counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add2~28_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~28_combout\,
	datad => \state~14_combout\,
	combout => \counter~16_combout\);

-- Location: FF_X19_Y21_N17
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~16_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X20_Y21_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counter(15) & (!\Add2~29\)) # (!counter(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X21_Y21_N14
\counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add2~30_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~30_combout\,
	datad => \state~14_combout\,
	combout => \counter~15_combout\);

-- Location: FF_X21_Y21_N15
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~15_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X20_Y20_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counter(16) & (\Add2~31\ $ (GND))) # (!counter(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counter(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X19_Y21_N26
\counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add2~32_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	datad => \state~14_combout\,
	combout => \counter~14_combout\);

-- Location: FF_X19_Y21_N27
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~14_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X20_Y20_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counter(17) & (!\Add2~33\)) # (!counter(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X19_Y20_N6
\counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (!\state~14_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~14_combout\,
	datad => \Add2~34_combout\,
	combout => \counter~13_combout\);

-- Location: FF_X19_Y20_N7
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~13_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X20_Y20_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counter(18) & (\Add2~35\ $ (GND))) # (!counter(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counter(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X21_Y21_N4
\counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add2~36_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~36_combout\,
	datad => \state~14_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X21_Y21_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~12_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X20_Y20_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counter(19) & (!\Add2~37\)) # (!counter(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X19_Y20_N16
\counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (!\state~14_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~14_combout\,
	datad => \Add2~38_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X19_Y20_N17
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~11_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X20_Y20_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counter(20) & (\Add2~39\ $ (GND))) # (!counter(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counter(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X19_Y20_N14
\counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (!\state~14_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~14_combout\,
	datad => \Add2~40_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X19_Y20_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X20_Y20_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counter(21) & (!\Add2~41\)) # (!counter(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X21_Y21_N30
\counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add2~42_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~42_combout\,
	datad => \state~14_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X21_Y21_N31
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~9_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X20_Y20_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counter(22) & (\Add2~43\ $ (GND))) # (!counter(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counter(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X19_Y20_N24
\counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add2~44_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~44_combout\,
	datad => \state~14_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X19_Y20_N25
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X20_Y20_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counter(23) & (!\Add2~45\)) # (!counter(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X21_Y21_N8
\counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add2~46_combout\ & !\state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datad => \state~14_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X21_Y21_N9
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X20_Y20_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (counter(24) & (\Add2~47\ $ (GND))) # (!counter(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((counter(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X19_Y20_N18
\counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add2~62_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~48_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X19_Y20_N19
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X20_Y20_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (counter(25) & (!\Add2~49\)) # (!counter(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X19_Y20_N4
\counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add2~62_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~50_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X19_Y20_N5
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X20_Y20_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (counter(26) & (\Add2~51\ $ (GND))) # (!counter(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((counter(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X19_Y20_N22
\counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add2~52_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datac => \Add2~62_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X19_Y20_N23
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X20_Y20_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (counter(27) & (!\Add2~53\)) # (!counter(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X19_Y20_N8
\counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add2~62_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~54_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X19_Y20_N9
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X20_Y20_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (counter(28) & (\Add2~55\ $ (GND))) # (!counter(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((counter(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X19_Y20_N26
\counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add2~62_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~56_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X19_Y20_N27
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X20_Y20_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (counter(29) & (!\Add2~57\)) # (!counter(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X19_Y20_N12
\counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add2~62_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~58_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X19_Y20_N13
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X20_Y20_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (counter(30) & (\Add2~59\ $ (GND))) # (!counter(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((counter(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X19_Y20_N10
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add2~62_combout\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \Add2~60_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X19_Y20_N11
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X20_Y20_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (!counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X19_Y21_N24
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add2~18_combout\ & (((!\Add2~14_combout\) # (!\Add2~12_combout\)) # (!\Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~18_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y21_N18
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\Add2~20_combout\ & (!\Add2~22_combout\ & (!\Add2~24_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~22_combout\,
	datac => \Add2~24_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X19_Y21_N12
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((\LessThan2~1_combout\) # (!\Add2~30_combout\)) # (!\Add2~28_combout\)) # (!\Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add2~28_combout\,
	datac => \Add2~30_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X19_Y21_N0
\state~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\Add2~32_combout\ & (!\Add2~34_combout\ & \LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add2~34_combout\,
	datad => \LessThan2~2_combout\,
	combout => \state~9_combout\);

-- Location: LCCOMB_X19_Y21_N6
\state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\Add2~40_combout\) # ((\Add2~38_combout\) # ((\Add2~36_combout\ & !\state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Add2~38_combout\,
	datac => \Add2~36_combout\,
	datad => \state~9_combout\,
	combout => \state~10_combout\);

-- Location: LCCOMB_X19_Y21_N28
\state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\Add2~46_combout\ & (\Add2~44_combout\ & (\Add2~42_combout\ & \state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Add2~44_combout\,
	datac => \Add2~42_combout\,
	datad => \state~10_combout\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X19_Y21_N2
\state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\Add2~52_combout\) # ((\Add2~50_combout\) # ((\Add2~48_combout\) # (\state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datab => \Add2~50_combout\,
	datac => \Add2~48_combout\,
	datad => \state~11_combout\,
	combout => \state~12_combout\);

-- Location: LCCOMB_X19_Y21_N20
\state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\Add2~54_combout\) # ((\Add2~56_combout\) # (\state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~54_combout\,
	datac => \Add2~56_combout\,
	datad => \state~12_combout\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X19_Y21_N10
\state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (!\Add2~62_combout\ & ((\Add2~60_combout\) # ((\Add2~58_combout\) # (\state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~60_combout\,
	datac => \Add2~58_combout\,
	datad => \state~13_combout\,
	combout => \state~14_combout\);

-- Location: LCCOMB_X17_Y21_N24
\state.s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.s2~0_combout\ = (\result~q\ & (((\state.s2~q\)))) # (!\result~q\ & ((\state~14_combout\ & (\state.s1~q\)) # (!\state~14_combout\ & ((\state.s2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~q\,
	datab => \state.s1~q\,
	datac => \state.s2~q\,
	datad => \state~14_combout\,
	combout => \state.s2~0_combout\);

-- Location: FF_X17_Y21_N25
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

-- Location: LCCOMB_X17_Y21_N8
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\result~q\ & (!\state.s2~q\)) # (!\result~q\ & ((!\state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s2~q\,
	datac => \state.s1~q\,
	datad => \result~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X19_Y21_N1
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X17_Y21_N28
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

-- Location: FF_X17_Y21_N29
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
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X17_Y21_N22
\leds~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (!\state.init~q\) # (!\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datad => \state.init~q\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X26_Y22_N0
\leds~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\state.s1~q\) # (!\state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.init~q\,
	datad => \state.s1~q\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X17_Y21_N26
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

-- Location: FF_X17_Y21_N27
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


