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

-- DATE "05/09/2018 20:46:38"

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

ENTITY 	ex_2 IS
    PORT (
	speed_m : IN std_logic;
	speed_f : IN std_logic;
	speed_s : IN std_logic;
	reverse : IN std_logic;
	clock_in : IN std_logic;
	tail_in : IN std_logic;
	tail_de : IN std_logic;
	leds : OUT std_logic_vector(9 DOWNTO 0)
	);
END ex_2;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tail_in	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reverse	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_s	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_m	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_f	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tail_de	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_speed_m : std_logic;
SIGNAL ww_speed_f : std_logic;
SIGNAL ww_speed_s : std_logic;
SIGNAL ww_reverse : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_tail_in : std_logic;
SIGNAL ww_tail_de : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \tail_size~30_combout\ : std_logic;
SIGNAL \led_bar[6]~23_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \tail_size~31_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \tail_size~32_combout\ : std_logic;
SIGNAL \LessThan11~9_combout\ : std_logic;
SIGNAL \tail_de~input_o\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \tail_size[4]~0_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \tail_size[5]~1_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \tail_size[6]~2_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \tail_size[7]~3_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \tail_size[8]~4_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \tail_size[9]~5_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \tail_size[10]~6_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \tail_size[11]~7_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \tail_size[12]~8_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \tail_size[13]~9_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \tail_size[14]~10_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \tail_size[15]~11_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \tail_size[16]~12_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \tail_size[17]~13_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \tail_size[18]~14_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \tail_size[19]~15_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \tail_size[20]~16_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \tail_size[21]~17_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \tail_size[22]~18_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \tail_size[23]~19_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \tail_size[24]~20_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \tail_size[25]~21_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \tail_size[26]~22_combout\ : std_logic;
SIGNAL \LessThan11~6_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \tail_size[27]~23_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \tail_size[28]~24_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \tail_size[29]~25_combout\ : std_logic;
SIGNAL \LessThan11~7_combout\ : std_logic;
SIGNAL \LessThan11~5_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \tail_size[30]~33_combout\ : std_logic;
SIGNAL \tail_size[30]~34_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan11~4_combout\ : std_logic;
SIGNAL \LessThan11~8_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \tail_size~28_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \tail_size~29_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \tail_in~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \tail_size[31]~26_combout\ : std_logic;
SIGNAL \tail_size[31]~27_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \reverse~input_o\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \clock_counter~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clock_counter~30_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \clock_counter~29_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \clock_counter~28_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \clock_counter~27_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \clock_counter~26_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \clock_counter~25_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \clock_counter~24_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \clock_counter~23_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \clock_counter~22_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \clock_counter~21_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \clock_counter~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clock_counter~19_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clock_counter~18_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clock_counter~17_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \clock_counter~16_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clock_counter~15_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clock_counter~14_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clock_counter~13_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clock_counter~12_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clock_counter~11_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clock_counter~10_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \speed_m~input_o\ : std_logic;
SIGNAL \speed_f~input_o\ : std_logic;
SIGNAL \speed_s~input_o\ : std_logic;
SIGNAL \speed~2_combout\ : std_logic;
SIGNAL \speed~3_combout\ : std_logic;
SIGNAL \clock_counter~8_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \LessThan22~22_combout\ : std_logic;
SIGNAL \speed~1_combout\ : std_logic;
SIGNAL \speed~0_combout\ : std_logic;
SIGNAL \clock_counter~6_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \clock_counter~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \LessThan22~23_combout\ : std_logic;
SIGNAL \LessThan22~2_combout\ : std_logic;
SIGNAL \LessThan22~24_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \clock_counter~5_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \clock_counter~4_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \clock_counter~3_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \clock_counter~2_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \clock_counter~1_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \clock_counter~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \LessThan22~0_combout\ : std_logic;
SIGNAL \LessThan22~1_combout\ : std_logic;
SIGNAL \speed~6_combout\ : std_logic;
SIGNAL \speed~5_combout\ : std_logic;
SIGNAL \LessThan22~16_combout\ : std_logic;
SIGNAL \LessThan22~3_combout\ : std_logic;
SIGNAL \LessThan22~4_combout\ : std_logic;
SIGNAL \LessThan22~5_combout\ : std_logic;
SIGNAL \speed~7_combout\ : std_logic;
SIGNAL \speed~8_combout\ : std_logic;
SIGNAL \speed~4_combout\ : std_logic;
SIGNAL \LessThan22~17_combout\ : std_logic;
SIGNAL \LessThan22~18_combout\ : std_logic;
SIGNAL \LessThan22~19_combout\ : std_logic;
SIGNAL \LessThan22~20_combout\ : std_logic;
SIGNAL \LessThan22~6_combout\ : std_logic;
SIGNAL \LessThan22~7_combout\ : std_logic;
SIGNAL \speed~9_combout\ : std_logic;
SIGNAL \LessThan22~8_combout\ : std_logic;
SIGNAL \LessThan22~13_combout\ : std_logic;
SIGNAL \LessThan22~9_combout\ : std_logic;
SIGNAL \LessThan22~10_combout\ : std_logic;
SIGNAL \LessThan22~11_combout\ : std_logic;
SIGNAL \LessThan22~12_combout\ : std_logic;
SIGNAL \LessThan22~14_combout\ : std_logic;
SIGNAL \LessThan22~26_combout\ : std_logic;
SIGNAL \LessThan22~27_combout\ : std_logic;
SIGNAL \LessThan22~15_combout\ : std_logic;
SIGNAL \LessThan22~21_combout\ : std_logic;
SIGNAL \LessThan22~25_combout\ : std_logic;
SIGNAL \led_bar[6]~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \LessThan15~3_combout\ : std_logic;
SIGNAL \LessThan15~4_combout\ : std_logic;
SIGNAL \LessThan15~5_combout\ : std_logic;
SIGNAL \LessThan15~6_combout\ : std_logic;
SIGNAL \LessThan15~7_combout\ : std_logic;
SIGNAL \LessThan15~8_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \LessThan21~0_combout\ : std_logic;
SIGNAL \led_bar~21_combout\ : std_logic;
SIGNAL \led_bar~22_combout\ : std_logic;
SIGNAL \led_bar[6]~3_combout\ : std_logic;
SIGNAL \led_bar[6]~4_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan20~0_combout\ : std_logic;
SIGNAL \led_bar~19_combout\ : std_logic;
SIGNAL \led_bar~20_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan19~0_combout\ : std_logic;
SIGNAL \LessThan19~1_combout\ : std_logic;
SIGNAL \led_bar~17_combout\ : std_logic;
SIGNAL \led_bar~18_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \LessThan18~1_combout\ : std_logic;
SIGNAL \led_bar~15_combout\ : std_logic;
SIGNAL \led_bar~16_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \led_bar~13_combout\ : std_logic;
SIGNAL \led_bar~14_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \led_bar~11_combout\ : std_logic;
SIGNAL \led_bar~12_combout\ : std_logic;
SIGNAL \LessThan4~11_combout\ : std_logic;
SIGNAL \LessThan15~9_combout\ : std_logic;
SIGNAL \LessThan15~10_combout\ : std_logic;
SIGNAL \led_bar~9_combout\ : std_logic;
SIGNAL \led_bar~10_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \led_bar~7_combout\ : std_logic;
SIGNAL \led_bar~8_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \led_bar~5_combout\ : std_logic;
SIGNAL \led_bar~6_combout\ : std_logic;
SIGNAL \led_bar~1_combout\ : std_logic;
SIGNAL \led_bar~2_combout\ : std_logic;
SIGNAL tail_size : std_logic_vector(31 DOWNTO 0);
SIGNAL speed : std_logic_vector(31 DOWNTO 0);
SIGNAL led_bar : std_logic_vector(9 DOWNTO 0);
SIGNAL direction : std_logic_vector(31 DOWNTO 0);
SIGNAL clock_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_led_bar : std_logic_vector(9 DOWNTO 8);
SIGNAL \ALT_INV_led_bar[6]~23_combout\ : std_logic;

BEGIN

ww_speed_m <= speed_m;
ww_speed_f <= speed_f;
ww_speed_s <= speed_s;
ww_reverse <= reverse;
ww_clock_in <= clock_in;
ww_tail_in <= tail_in;
ww_tail_de <= tail_de;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_in~input_o\);
ALT_INV_led_bar(9) <= NOT led_bar(9);
ALT_INV_led_bar(8) <= NOT led_bar(8);
\ALT_INV_led_bar[6]~23_combout\ <= NOT \led_bar[6]~23_combout\;

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X0_Y24_N16
\leds[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(4),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\leds[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_bar(5),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X0_Y20_N2
\leds[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_bar(8),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\leds[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_bar(9),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

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

-- Location: LCCOMB_X22_Y18_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = tail_size(0) $ (GND)
-- \Add3~1\ = CARRY(!tail_size(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X22_Y18_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (tail_size(1) & (\Add3~1\ & VCC)) # (!tail_size(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!tail_size(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X19_Y18_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = tail_size(0) $ (GND)
-- \Add2~1\ = CARRY(!tail_size(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y18_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (tail_size(1) & (!\Add2~1\)) # (!tail_size(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!tail_size(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X17_Y18_N24
\tail_size~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size~30_combout\ = (\process_0~0_combout\ & ((\Add2~2_combout\))) # (!\process_0~0_combout\ & (\Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add2~2_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size~30_combout\);

-- Location: LCCOMB_X23_Y18_N12
\led_bar[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[6]~23_combout\ = (!\process_0~0_combout\ & \process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \led_bar[6]~23_combout\);

-- Location: FF_X17_Y18_N25
\tail_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size~30_combout\,
	ena => \ALT_INV_led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(1));

-- Location: LCCOMB_X22_Y18_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (tail_size(2) & ((GND) # (!\Add3~3\))) # (!tail_size(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((tail_size(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X19_Y18_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (tail_size(2) & (\Add2~3\ $ (GND))) # (!tail_size(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((tail_size(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X17_Y18_N22
\tail_size~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size~31_combout\ = (\process_0~0_combout\ & ((\Add2~4_combout\))) # (!\process_0~0_combout\ & (\Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add2~4_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size~31_combout\);

-- Location: FF_X17_Y18_N23
\tail_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size~31_combout\,
	ena => \ALT_INV_led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(2));

-- Location: LCCOMB_X19_Y18_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (tail_size(3) & (!\Add2~5\)) # (!tail_size(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!tail_size(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X22_Y18_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (tail_size(3) & (\Add3~5\ & VCC)) # (!tail_size(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!tail_size(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X17_Y18_N20
\tail_size~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size~32_combout\ = (\process_0~0_combout\ & (\Add2~6_combout\)) # (!\process_0~0_combout\ & ((\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Add3~6_combout\,
	combout => \tail_size~32_combout\);

-- Location: FF_X17_Y18_N21
\tail_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size~32_combout\,
	ena => \ALT_INV_led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(3));

-- Location: LCCOMB_X17_Y18_N10
\LessThan11~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~9_combout\ = (!tail_size(1) & (!tail_size(2) & !tail_size(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tail_size(1),
	datac => tail_size(2),
	datad => tail_size(3),
	combout => \LessThan11~9_combout\);

-- Location: IOIBUF_X0_Y27_N22
\tail_de~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tail_de,
	o => \tail_de~input_o\);

-- Location: LCCOMB_X19_Y18_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (tail_size(4) & (\Add2~7\ $ (GND))) # (!tail_size(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((tail_size(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X22_Y18_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (tail_size(4) & ((GND) # (!\Add3~7\))) # (!tail_size(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((tail_size(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X23_Y18_N8
\tail_size[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[4]~0_combout\ = (\process_0~0_combout\ & (\Add2~8_combout\)) # (!\process_0~0_combout\ & ((\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \process_0~0_combout\,
	datad => \Add3~8_combout\,
	combout => \tail_size[4]~0_combout\);

-- Location: FF_X23_Y18_N9
\tail_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[4]~0_combout\,
	asdata => tail_size(4),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(4));

-- Location: LCCOMB_X22_Y18_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (tail_size(5) & (\Add3~9\ & VCC)) # (!tail_size(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!tail_size(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y18_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (tail_size(5) & (!\Add2~9\)) # (!tail_size(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!tail_size(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X23_Y18_N22
\tail_size[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[5]~1_combout\ = (\process_0~0_combout\ & ((\Add2~10_combout\))) # (!\process_0~0_combout\ & (\Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \process_0~0_combout\,
	datad => \Add2~10_combout\,
	combout => \tail_size[5]~1_combout\);

-- Location: FF_X23_Y18_N23
\tail_size[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[5]~1_combout\,
	asdata => tail_size(5),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(5));

-- Location: LCCOMB_X22_Y18_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (tail_size(6) & ((GND) # (!\Add3~11\))) # (!tail_size(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((tail_size(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X19_Y18_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (tail_size(6) & (\Add2~11\ $ (GND))) # (!tail_size(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((tail_size(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y18_N24
\tail_size[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[6]~2_combout\ = (\process_0~0_combout\ & ((\Add2~12_combout\))) # (!\process_0~0_combout\ & (\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \process_0~0_combout\,
	datad => \Add2~12_combout\,
	combout => \tail_size[6]~2_combout\);

-- Location: FF_X23_Y18_N25
\tail_size[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[6]~2_combout\,
	asdata => tail_size(6),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(6));

-- Location: LCCOMB_X22_Y18_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (tail_size(7) & (\Add3~13\ & VCC)) # (!tail_size(7) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!tail_size(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X19_Y18_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (tail_size(7) & (!\Add2~13\)) # (!tail_size(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!tail_size(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X23_Y18_N6
\tail_size[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[7]~3_combout\ = (\process_0~0_combout\ & ((\Add2~14_combout\))) # (!\process_0~0_combout\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \process_0~0_combout\,
	datad => \Add2~14_combout\,
	combout => \tail_size[7]~3_combout\);

-- Location: FF_X23_Y18_N7
\tail_size[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[7]~3_combout\,
	asdata => tail_size(7),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(7));

-- Location: LCCOMB_X22_Y18_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (tail_size(8) & ((GND) # (!\Add3~15\))) # (!tail_size(8) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((tail_size(8)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X19_Y18_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (tail_size(8) & (\Add2~15\ $ (GND))) # (!tail_size(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((tail_size(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X23_Y18_N0
\tail_size[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[8]~4_combout\ = (\process_0~0_combout\ & ((\Add2~16_combout\))) # (!\process_0~0_combout\ & (\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \process_0~0_combout\,
	datad => \Add2~16_combout\,
	combout => \tail_size[8]~4_combout\);

-- Location: FF_X23_Y18_N1
\tail_size[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[8]~4_combout\,
	asdata => tail_size(8),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(8));

-- Location: LCCOMB_X19_Y18_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (tail_size(9) & (!\Add2~17\)) # (!tail_size(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!tail_size(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X22_Y18_N18
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (tail_size(9) & (\Add3~17\ & VCC)) # (!tail_size(9) & (!\Add3~17\))
-- \Add3~19\ = CARRY((!tail_size(9) & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X23_Y18_N2
\tail_size[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[9]~5_combout\ = (\process_0~0_combout\ & (\Add2~18_combout\)) # (!\process_0~0_combout\ & ((\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \process_0~0_combout\,
	datad => \Add3~18_combout\,
	combout => \tail_size[9]~5_combout\);

-- Location: FF_X23_Y18_N3
\tail_size[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[9]~5_combout\,
	asdata => tail_size(9),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(9));

-- Location: LCCOMB_X19_Y18_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (tail_size(10) & (\Add2~19\ $ (GND))) # (!tail_size(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((tail_size(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X22_Y18_N20
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (tail_size(10) & ((GND) # (!\Add3~19\))) # (!tail_size(10) & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((tail_size(10)) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X23_Y18_N16
\tail_size[10]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[10]~6_combout\ = (\process_0~0_combout\ & (\Add2~20_combout\)) # (!\process_0~0_combout\ & ((\Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \process_0~0_combout\,
	datad => \Add3~20_combout\,
	combout => \tail_size[10]~6_combout\);

-- Location: FF_X23_Y18_N17
\tail_size[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[10]~6_combout\,
	asdata => tail_size(10),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(10));

-- Location: LCCOMB_X19_Y18_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (tail_size(11) & (!\Add2~21\)) # (!tail_size(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!tail_size(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X22_Y18_N22
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (tail_size(11) & (\Add3~21\ & VCC)) # (!tail_size(11) & (!\Add3~21\))
-- \Add3~23\ = CARRY((!tail_size(11) & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X23_Y18_N30
\tail_size[11]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[11]~7_combout\ = (\process_0~0_combout\ & (\Add2~22_combout\)) # (!\process_0~0_combout\ & ((\Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \process_0~0_combout\,
	datad => \Add3~22_combout\,
	combout => \tail_size[11]~7_combout\);

-- Location: FF_X23_Y18_N31
\tail_size[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[11]~7_combout\,
	asdata => tail_size(11),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(11));

-- Location: LCCOMB_X22_Y18_N24
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (tail_size(12) & ((GND) # (!\Add3~23\))) # (!tail_size(12) & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((tail_size(12)) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X19_Y18_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (tail_size(12) & (\Add2~23\ $ (GND))) # (!tail_size(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((tail_size(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X24_Y18_N8
\tail_size[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[12]~8_combout\ = (\process_0~0_combout\ & ((\Add2~24_combout\))) # (!\process_0~0_combout\ & (\Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Add2~24_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size[12]~8_combout\);

-- Location: FF_X24_Y18_N9
\tail_size[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[12]~8_combout\,
	asdata => tail_size(12),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(12));

-- Location: LCCOMB_X22_Y18_N26
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (tail_size(13) & (\Add3~25\ & VCC)) # (!tail_size(13) & (!\Add3~25\))
-- \Add3~27\ = CARRY((!tail_size(13) & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X19_Y18_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (tail_size(13) & (!\Add2~25\)) # (!tail_size(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!tail_size(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X23_Y17_N0
\tail_size[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[13]~9_combout\ = (\process_0~0_combout\ & ((\Add2~26_combout\))) # (!\process_0~0_combout\ & (\Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~26_combout\,
	datad => \Add2~26_combout\,
	combout => \tail_size[13]~9_combout\);

-- Location: FF_X23_Y17_N1
\tail_size[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[13]~9_combout\,
	asdata => tail_size(13),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(13));

-- Location: LCCOMB_X22_Y18_N28
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (tail_size(14) & ((GND) # (!\Add3~27\))) # (!tail_size(14) & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((tail_size(14)) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X19_Y18_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (tail_size(14) & (\Add2~27\ $ (GND))) # (!tail_size(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((tail_size(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X23_Y17_N18
\tail_size[14]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[14]~10_combout\ = (\process_0~0_combout\ & ((\Add2~28_combout\))) # (!\process_0~0_combout\ & (\Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~28_combout\,
	datad => \Add2~28_combout\,
	combout => \tail_size[14]~10_combout\);

-- Location: FF_X23_Y17_N19
\tail_size[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[14]~10_combout\,
	asdata => tail_size(14),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(14));

-- Location: LCCOMB_X19_Y18_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (tail_size(15) & (!\Add2~29\)) # (!tail_size(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!tail_size(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X22_Y18_N30
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (tail_size(15) & (\Add3~29\ & VCC)) # (!tail_size(15) & (!\Add3~29\))
-- \Add3~31\ = CARRY((!tail_size(15) & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X23_Y17_N8
\tail_size[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[15]~11_combout\ = (\process_0~0_combout\ & (\Add2~30_combout\)) # (!\process_0~0_combout\ & ((\Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add2~30_combout\,
	datad => \Add3~30_combout\,
	combout => \tail_size[15]~11_combout\);

-- Location: FF_X23_Y17_N9
\tail_size[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[15]~11_combout\,
	asdata => tail_size(15),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(15));

-- Location: LCCOMB_X22_Y17_N0
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (tail_size(16) & ((GND) # (!\Add3~31\))) # (!tail_size(16) & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((tail_size(16)) # (!\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X19_Y17_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (tail_size(16) & (\Add2~31\ $ (GND))) # (!tail_size(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((tail_size(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X23_Y17_N30
\tail_size[16]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[16]~12_combout\ = (\process_0~0_combout\ & ((\Add2~32_combout\))) # (!\process_0~0_combout\ & (\Add3~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~32_combout\,
	datad => \Add2~32_combout\,
	combout => \tail_size[16]~12_combout\);

-- Location: FF_X23_Y17_N31
\tail_size[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[16]~12_combout\,
	asdata => tail_size(16),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(16));

-- Location: LCCOMB_X22_Y17_N2
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (tail_size(17) & (\Add3~33\ & VCC)) # (!tail_size(17) & (!\Add3~33\))
-- \Add3~35\ = CARRY((!tail_size(17) & !\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X19_Y17_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (tail_size(17) & (!\Add2~33\)) # (!tail_size(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!tail_size(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X23_Y17_N4
\tail_size[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[17]~13_combout\ = (\process_0~0_combout\ & ((\Add2~34_combout\))) # (!\process_0~0_combout\ & (\Add3~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~34_combout\,
	datad => \Add2~34_combout\,
	combout => \tail_size[17]~13_combout\);

-- Location: FF_X23_Y17_N5
\tail_size[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[17]~13_combout\,
	asdata => tail_size(17),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(17));

-- Location: LCCOMB_X19_Y17_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (tail_size(18) & (\Add2~35\ $ (GND))) # (!tail_size(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((tail_size(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X22_Y17_N4
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (tail_size(18) & ((GND) # (!\Add3~35\))) # (!tail_size(18) & (\Add3~35\ $ (GND)))
-- \Add3~37\ = CARRY((tail_size(18)) # (!\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X23_Y17_N22
\tail_size[18]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[18]~14_combout\ = (\process_0~0_combout\ & (\Add2~36_combout\)) # (!\process_0~0_combout\ & ((\Add3~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add2~36_combout\,
	datad => \Add3~36_combout\,
	combout => \tail_size[18]~14_combout\);

-- Location: FF_X23_Y17_N23
\tail_size[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[18]~14_combout\,
	asdata => tail_size(18),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(18));

-- Location: LCCOMB_X22_Y17_N6
\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (tail_size(19) & (\Add3~37\ & VCC)) # (!tail_size(19) & (!\Add3~37\))
-- \Add3~39\ = CARRY((!tail_size(19) & !\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X19_Y17_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (tail_size(19) & (!\Add2~37\)) # (!tail_size(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!tail_size(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X23_Y17_N20
\tail_size[19]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[19]~15_combout\ = (\process_0~0_combout\ & ((\Add2~38_combout\))) # (!\process_0~0_combout\ & (\Add3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~38_combout\,
	datad => \Add2~38_combout\,
	combout => \tail_size[19]~15_combout\);

-- Location: FF_X23_Y17_N21
\tail_size[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[19]~15_combout\,
	asdata => tail_size(19),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(19));

-- Location: LCCOMB_X22_Y17_N8
\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (tail_size(20) & ((GND) # (!\Add3~39\))) # (!tail_size(20) & (\Add3~39\ $ (GND)))
-- \Add3~41\ = CARRY((tail_size(20)) # (!\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X19_Y17_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (tail_size(20) & (\Add2~39\ $ (GND))) # (!tail_size(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((tail_size(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X23_Y17_N26
\tail_size[20]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[20]~16_combout\ = (\process_0~0_combout\ & ((\Add2~40_combout\))) # (!\process_0~0_combout\ & (\Add3~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~40_combout\,
	datad => \Add2~40_combout\,
	combout => \tail_size[20]~16_combout\);

-- Location: FF_X23_Y17_N27
\tail_size[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[20]~16_combout\,
	asdata => tail_size(20),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(20));

-- Location: LCCOMB_X19_Y17_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (tail_size(21) & (!\Add2~41\)) # (!tail_size(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!tail_size(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X22_Y17_N10
\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (tail_size(21) & (\Add3~41\ & VCC)) # (!tail_size(21) & (!\Add3~41\))
-- \Add3~43\ = CARRY((!tail_size(21) & !\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X23_Y17_N24
\tail_size[21]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[21]~17_combout\ = (\process_0~0_combout\ & (\Add2~42_combout\)) # (!\process_0~0_combout\ & ((\Add3~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add2~42_combout\,
	datad => \Add3~42_combout\,
	combout => \tail_size[21]~17_combout\);

-- Location: FF_X23_Y17_N25
\tail_size[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[21]~17_combout\,
	asdata => tail_size(21),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(21));

-- Location: LCCOMB_X19_Y17_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (tail_size(22) & (\Add2~43\ $ (GND))) # (!tail_size(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((tail_size(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X22_Y17_N12
\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (tail_size(22) & ((GND) # (!\Add3~43\))) # (!tail_size(22) & (\Add3~43\ $ (GND)))
-- \Add3~45\ = CARRY((tail_size(22)) # (!\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X23_Y18_N4
\tail_size[22]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[22]~18_combout\ = (\process_0~0_combout\ & (\Add2~44_combout\)) # (!\process_0~0_combout\ & ((\Add3~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \process_0~0_combout\,
	datad => \Add3~44_combout\,
	combout => \tail_size[22]~18_combout\);

-- Location: FF_X23_Y18_N5
\tail_size[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[22]~18_combout\,
	asdata => tail_size(22),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(22));

-- Location: LCCOMB_X22_Y17_N14
\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (tail_size(23) & (\Add3~45\ & VCC)) # (!tail_size(23) & (!\Add3~45\))
-- \Add3~47\ = CARRY((!tail_size(23) & !\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X19_Y17_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (tail_size(23) & (!\Add2~45\)) # (!tail_size(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!tail_size(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X24_Y17_N0
\tail_size[23]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[23]~19_combout\ = (\process_0~0_combout\ & ((\Add2~46_combout\))) # (!\process_0~0_combout\ & (\Add3~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~46_combout\,
	datad => \Add2~46_combout\,
	combout => \tail_size[23]~19_combout\);

-- Location: FF_X24_Y17_N1
\tail_size[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[23]~19_combout\,
	asdata => tail_size(23),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(23));

-- Location: LCCOMB_X22_Y17_N16
\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (tail_size(24) & ((GND) # (!\Add3~47\))) # (!tail_size(24) & (\Add3~47\ $ (GND)))
-- \Add3~49\ = CARRY((tail_size(24)) # (!\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X19_Y17_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (tail_size(24) & (\Add2~47\ $ (GND))) # (!tail_size(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((tail_size(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X24_Y17_N26
\tail_size[24]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[24]~20_combout\ = (\process_0~0_combout\ & ((\Add2~48_combout\))) # (!\process_0~0_combout\ & (\Add3~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~48_combout\,
	datad => \Add2~48_combout\,
	combout => \tail_size[24]~20_combout\);

-- Location: FF_X24_Y17_N27
\tail_size[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[24]~20_combout\,
	asdata => tail_size(24),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(24));

-- Location: LCCOMB_X22_Y17_N18
\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (tail_size(25) & (\Add3~49\ & VCC)) # (!tail_size(25) & (!\Add3~49\))
-- \Add3~51\ = CARRY((!tail_size(25) & !\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X19_Y17_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (tail_size(25) & (!\Add2~49\)) # (!tail_size(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!tail_size(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X23_Y17_N6
\tail_size[25]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[25]~21_combout\ = (\process_0~0_combout\ & ((\Add2~50_combout\))) # (!\process_0~0_combout\ & (\Add3~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~50_combout\,
	datad => \Add2~50_combout\,
	combout => \tail_size[25]~21_combout\);

-- Location: FF_X23_Y17_N7
\tail_size[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[25]~21_combout\,
	asdata => tail_size(25),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(25));

-- Location: LCCOMB_X22_Y17_N20
\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (tail_size(26) & ((GND) # (!\Add3~51\))) # (!tail_size(26) & (\Add3~51\ $ (GND)))
-- \Add3~53\ = CARRY((tail_size(26)) # (!\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X19_Y17_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (tail_size(26) & (\Add2~51\ $ (GND))) # (!tail_size(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((tail_size(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X24_Y17_N24
\tail_size[26]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[26]~22_combout\ = (\process_0~0_combout\ & ((\Add2~52_combout\))) # (!\process_0~0_combout\ & (\Add3~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add3~52_combout\,
	datad => \Add2~52_combout\,
	combout => \tail_size[26]~22_combout\);

-- Location: FF_X24_Y17_N25
\tail_size[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[26]~22_combout\,
	asdata => tail_size(26),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(26));

-- Location: LCCOMB_X24_Y17_N10
\LessThan11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~6_combout\ = (!tail_size(24) & (!tail_size(26) & (!tail_size(25) & !tail_size(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(24),
	datab => tail_size(26),
	datac => tail_size(25),
	datad => tail_size(23),
	combout => \LessThan11~6_combout\);

-- Location: LCCOMB_X19_Y17_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (tail_size(27) & (!\Add2~53\)) # (!tail_size(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!tail_size(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X22_Y17_N22
\Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (tail_size(27) & (\Add3~53\ & VCC)) # (!tail_size(27) & (!\Add3~53\))
-- \Add3~55\ = CARRY((!tail_size(27) & !\Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X24_Y17_N14
\tail_size[27]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[27]~23_combout\ = (\process_0~0_combout\ & (\Add2~54_combout\)) # (!\process_0~0_combout\ & ((\Add3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~54_combout\,
	datab => \Add3~54_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size[27]~23_combout\);

-- Location: FF_X24_Y17_N15
\tail_size[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[27]~23_combout\,
	asdata => tail_size(27),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(27));

-- Location: LCCOMB_X22_Y17_N24
\Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (tail_size(28) & ((GND) # (!\Add3~55\))) # (!tail_size(28) & (\Add3~55\ $ (GND)))
-- \Add3~57\ = CARRY((tail_size(28)) # (!\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X19_Y17_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (tail_size(28) & (\Add2~55\ $ (GND))) # (!tail_size(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((tail_size(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X24_Y17_N20
\tail_size[28]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[28]~24_combout\ = (\process_0~0_combout\ & ((\Add2~56_combout\))) # (!\process_0~0_combout\ & (\Add3~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~56_combout\,
	datab => \Add2~56_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size[28]~24_combout\);

-- Location: FF_X24_Y17_N21
\tail_size[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[28]~24_combout\,
	asdata => tail_size(28),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(28));

-- Location: LCCOMB_X22_Y17_N26
\Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (tail_size(29) & (\Add3~57\ & VCC)) # (!tail_size(29) & (!\Add3~57\))
-- \Add3~59\ = CARRY((!tail_size(29) & !\Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X19_Y17_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (tail_size(29) & (!\Add2~57\)) # (!tail_size(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!tail_size(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X24_Y17_N18
\tail_size[29]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[29]~25_combout\ = (\process_0~0_combout\ & ((\Add2~58_combout\))) # (!\process_0~0_combout\ & (\Add3~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \Add2~58_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size[29]~25_combout\);

-- Location: FF_X24_Y17_N19
\tail_size[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[29]~25_combout\,
	asdata => tail_size(29),
	sload => \led_bar[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(29));

-- Location: LCCOMB_X24_Y17_N16
\LessThan11~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~7_combout\ = (!tail_size(28) & (!tail_size(27) & !tail_size(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tail_size(28),
	datac => tail_size(27),
	datad => tail_size(29),
	combout => \LessThan11~7_combout\);

-- Location: LCCOMB_X23_Y17_N16
\LessThan11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~5_combout\ = (!tail_size(20) & (!tail_size(21) & (!tail_size(22) & !tail_size(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(20),
	datab => tail_size(21),
	datac => tail_size(22),
	datad => tail_size(19),
	combout => \LessThan11~5_combout\);

-- Location: LCCOMB_X23_Y17_N10
\LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (!tail_size(18) & (!tail_size(17) & (!tail_size(16) & !tail_size(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(18),
	datab => tail_size(17),
	datac => tail_size(16),
	datad => tail_size(15),
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X19_Y17_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (tail_size(30) & (\Add2~59\ $ (GND))) # (!tail_size(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((tail_size(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X22_Y17_N28
\Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (tail_size(30) & ((GND) # (!\Add3~59\))) # (!tail_size(30) & (\Add3~59\ $ (GND)))
-- \Add3~61\ = CARRY((tail_size(30)) # (!\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X23_Y18_N10
\tail_size[30]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[30]~33_combout\ = (!\process_0~0_combout\ & ((\process_0~1_combout\ & ((tail_size(30)))) # (!\process_0~1_combout\ & (\Add3~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \Add3~60_combout\,
	datad => tail_size(30),
	combout => \tail_size[30]~33_combout\);

-- Location: LCCOMB_X23_Y18_N18
\tail_size[30]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[30]~34_combout\ = (\tail_size[30]~33_combout\) # ((\Add2~60_combout\ & \process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~60_combout\,
	datac => \process_0~0_combout\,
	datad => \tail_size[30]~33_combout\,
	combout => \tail_size[30]~34_combout\);

-- Location: FF_X23_Y18_N19
\tail_size[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[30]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(30));

-- Location: LCCOMB_X23_Y18_N20
\LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!tail_size(5) & (!tail_size(6) & (!tail_size(4) & !tail_size(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(5),
	datab => tail_size(6),
	datac => tail_size(4),
	datad => tail_size(30),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (!tail_size(7) & (!tail_size(8) & (!tail_size(9) & !tail_size(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(7),
	datab => tail_size(8),
	datac => tail_size(9),
	datad => tail_size(10),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (!tail_size(11) & (!tail_size(14) & (!tail_size(12) & !tail_size(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(11),
	datab => tail_size(14),
	datac => tail_size(12),
	datad => tail_size(13),
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\LessThan11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~4_combout\ = (\LessThan11~3_combout\ & (\LessThan11~0_combout\ & (\LessThan11~1_combout\ & \LessThan11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~3_combout\,
	datab => \LessThan11~0_combout\,
	datac => \LessThan11~1_combout\,
	datad => \LessThan11~2_combout\,
	combout => \LessThan11~4_combout\);

-- Location: LCCOMB_X24_Y17_N22
\LessThan11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~8_combout\ = (\LessThan11~6_combout\ & (\LessThan11~7_combout\ & (\LessThan11~5_combout\ & \LessThan11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~6_combout\,
	datab => \LessThan11~7_combout\,
	datac => \LessThan11~5_combout\,
	datad => \LessThan11~4_combout\,
	combout => \LessThan11~8_combout\);

-- Location: LCCOMB_X17_Y18_N4
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (tail_size(31)) # (((\LessThan11~9_combout\ & \LessThan11~8_combout\)) # (!\tail_de~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~9_combout\,
	datab => tail_size(31),
	datac => \tail_de~input_o\,
	datad => \LessThan11~8_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X17_Y18_N12
\tail_size~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size~28_combout\ = (!\process_0~0_combout\ & ((\process_0~1_combout\ & (!tail_size(0))) # (!\process_0~1_combout\ & ((\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(0),
	datab => \Add3~0_combout\,
	datac => \process_0~1_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size~28_combout\);

-- Location: LCCOMB_X17_Y18_N6
\tail_size~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size~29_combout\ = (!\tail_size~28_combout\ & ((!\process_0~0_combout\) # (!\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tail_size~28_combout\,
	datac => \Add2~0_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size~29_combout\);

-- Location: FF_X17_Y18_N7
\tail_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(0));

-- Location: LCCOMB_X17_Y18_N26
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((tail_size(0) & (!tail_size(1) & !tail_size(2)))) # (!tail_size(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(0),
	datab => tail_size(1),
	datac => tail_size(2),
	datad => tail_size(3),
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\tail_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tail_in,
	o => \tail_in~input_o\);

-- Location: LCCOMB_X17_Y18_N16
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\tail_in~input_o\ & ((tail_size(31)) # ((\LessThan0~0_combout\ & \LessThan11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => tail_size(31),
	datac => \tail_in~input_o\,
	datad => \LessThan11~8_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (!tail_size(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tail_size(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X17_Y18_N2
\tail_size[31]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[31]~26_combout\ = (!\process_0~0_combout\ & ((tail_size(31)) # ((!\process_0~1_combout\ & \Add3~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tail_size(31),
	datab => \process_0~1_combout\,
	datac => \Add3~62_combout\,
	datad => \process_0~0_combout\,
	combout => \tail_size[31]~26_combout\);

-- Location: LCCOMB_X17_Y18_N28
\tail_size[31]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tail_size[31]~27_combout\ = (\tail_size[31]~26_combout\) # ((\process_0~0_combout\ & \Add2~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => \Add2~62_combout\,
	datad => \tail_size[31]~26_combout\,
	combout => \tail_size[31]~27_combout\);

-- Location: FF_X17_Y18_N29
\tail_size[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \tail_size[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tail_size(31));

-- Location: LCCOMB_X19_Y17_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = tail_size(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tail_size(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reverse~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reverse,
	o => \reverse~input_o\);

-- Location: LCCOMB_X23_Y19_N30
\direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = direction(10) $ (\reverse~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => direction(10),
	datad => \reverse~input_o\,
	combout => \direction~0_combout\);

-- Location: FF_X23_Y19_N31
\direction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \direction~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direction(10));

-- Location: LCCOMB_X21_Y18_N20
\clock_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~9_combout\ = (\Add0~42_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~9_combout\);

-- Location: FF_X21_Y18_N21
\clock_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(21));

-- Location: LCCOMB_X20_Y19_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clock_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(clock_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y19_N16
\clock_counter~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~30_combout\ = (\Add0~0_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~30_combout\);

-- Location: FF_X19_Y19_N17
\clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(0));

-- Location: LCCOMB_X20_Y19_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clock_counter(1) & (!\Add0~1\)) # (!clock_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clock_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y19_N6
\clock_counter~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~29_combout\ = (\Add0~2_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~29_combout\);

-- Location: FF_X19_Y19_N7
\clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(1));

-- Location: LCCOMB_X20_Y19_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clock_counter(2) & (\Add0~3\ $ (GND))) # (!clock_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clock_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y19_N12
\clock_counter~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~28_combout\ = (\Add0~4_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~28_combout\);

-- Location: FF_X19_Y19_N13
\clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(2));

-- Location: LCCOMB_X20_Y19_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clock_counter(3) & (!\Add0~5\)) # (!clock_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clock_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y19_N14
\clock_counter~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~27_combout\ = (\Add0~6_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~27_combout\);

-- Location: FF_X19_Y19_N15
\clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(3));

-- Location: LCCOMB_X20_Y19_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clock_counter(4) & (\Add0~7\ $ (GND))) # (!clock_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clock_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X21_Y19_N18
\clock_counter~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~26_combout\ = (\Add0~8_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~26_combout\);

-- Location: FF_X21_Y19_N19
\clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(4));

-- Location: LCCOMB_X20_Y19_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clock_counter(5) & (!\Add0~9\)) # (!clock_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clock_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y19_N20
\clock_counter~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~25_combout\ = (\Add0~10_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~25_combout\);

-- Location: FF_X19_Y19_N21
\clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(5));

-- Location: LCCOMB_X20_Y19_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clock_counter(6) & (\Add0~11\ $ (GND))) # (!clock_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clock_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X21_Y19_N16
\clock_counter~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~24_combout\ = (\Add0~12_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~24_combout\);

-- Location: FF_X21_Y19_N17
\clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(6));

-- Location: LCCOMB_X20_Y19_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clock_counter(7) & (!\Add0~13\)) # (!clock_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clock_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X21_Y19_N2
\clock_counter~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~23_combout\ = (\Add0~14_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~23_combout\);

-- Location: FF_X21_Y19_N3
\clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(7));

-- Location: LCCOMB_X20_Y19_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clock_counter(8) & (\Add0~15\ $ (GND))) # (!clock_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clock_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y19_N2
\clock_counter~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~22_combout\ = (\Add0~16_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~22_combout\);

-- Location: FF_X19_Y19_N3
\clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(8));

-- Location: LCCOMB_X20_Y19_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clock_counter(9) & (!\Add0~17\)) # (!clock_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clock_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X21_Y19_N28
\clock_counter~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~21_combout\ = (\Add0~18_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~21_combout\);

-- Location: FF_X21_Y19_N29
\clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(9));

-- Location: LCCOMB_X20_Y19_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clock_counter(10) & (\Add0~19\ $ (GND))) # (!clock_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clock_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X22_Y19_N30
\clock_counter~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~20_combout\ = (\LessThan22~25_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan22~25_combout\,
	datad => \Add0~20_combout\,
	combout => \clock_counter~20_combout\);

-- Location: FF_X22_Y19_N31
\clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(10));

-- Location: LCCOMB_X20_Y19_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clock_counter(11) & (!\Add0~21\)) # (!clock_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clock_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X22_Y19_N8
\clock_counter~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~19_combout\ = (\Add0~22_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~19_combout\);

-- Location: FF_X22_Y19_N9
\clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(11));

-- Location: LCCOMB_X20_Y19_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clock_counter(12) & (\Add0~23\ $ (GND))) # (!clock_counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clock_counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X21_Y19_N14
\clock_counter~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~18_combout\ = (\Add0~24_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~18_combout\);

-- Location: FF_X21_Y19_N15
\clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(12));

-- Location: LCCOMB_X20_Y19_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clock_counter(13) & (!\Add0~25\)) # (!clock_counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clock_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X21_Y19_N12
\clock_counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~17_combout\ = (\Add0~26_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~17_combout\);

-- Location: FF_X21_Y19_N13
\clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(13));

-- Location: LCCOMB_X20_Y19_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clock_counter(14) & (\Add0~27\ $ (GND))) # (!clock_counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clock_counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X21_Y19_N6
\clock_counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~16_combout\ = (\Add0~28_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~16_combout\);

-- Location: FF_X21_Y19_N7
\clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(14));

-- Location: LCCOMB_X20_Y19_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clock_counter(15) & (!\Add0~29\)) # (!clock_counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clock_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X19_Y19_N4
\clock_counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~15_combout\ = (\Add0~30_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~15_combout\);

-- Location: FF_X19_Y19_N5
\clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(15));

-- Location: LCCOMB_X20_Y18_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clock_counter(16) & (\Add0~31\ $ (GND))) # (!clock_counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clock_counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X21_Y18_N28
\clock_counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~14_combout\ = (\Add0~32_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~14_combout\);

-- Location: FF_X21_Y18_N29
\clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(16));

-- Location: LCCOMB_X20_Y18_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clock_counter(17) & (!\Add0~33\)) # (!clock_counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clock_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X21_Y18_N22
\clock_counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~13_combout\ = (\Add0~34_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~13_combout\);

-- Location: FF_X21_Y18_N23
\clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(17));

-- Location: LCCOMB_X20_Y18_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clock_counter(18) & (\Add0~35\ $ (GND))) # (!clock_counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clock_counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X21_Y18_N0
\clock_counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~12_combout\ = (\Add0~36_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~12_combout\);

-- Location: FF_X21_Y18_N1
\clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(18));

-- Location: LCCOMB_X20_Y18_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clock_counter(19) & (!\Add0~37\)) # (!clock_counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clock_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X21_Y18_N10
\clock_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~11_combout\ = (\Add0~38_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~11_combout\);

-- Location: FF_X21_Y18_N11
\clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(19));

-- Location: LCCOMB_X20_Y18_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clock_counter(20) & (\Add0~39\ $ (GND))) # (!clock_counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clock_counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X21_Y20_N24
\clock_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~10_combout\ = (\Add0~40_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~10_combout\);

-- Location: FF_X21_Y20_N25
\clock_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(20));

-- Location: LCCOMB_X20_Y18_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clock_counter(21) & (!\Add0~41\)) # (!clock_counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clock_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: IOIBUF_X0_Y25_N22
\speed_m~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_m,
	o => \speed_m~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\speed_f~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_f,
	o => \speed_f~input_o\);

-- Location: FF_X21_Y20_N9
\speed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(22));

-- Location: IOIBUF_X0_Y23_N8
\speed_s~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_s,
	o => \speed_s~input_o\);

-- Location: LCCOMB_X21_Y20_N8
\speed~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~2_combout\ = (\speed_m~input_o\) # ((\speed_f~input_o\) # ((speed(22)) # (\speed_s~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_m~input_o\,
	datab => \speed_f~input_o\,
	datac => speed(22),
	datad => \speed_s~input_o\,
	combout => \speed~2_combout\);

-- Location: FF_X21_Y19_N31
\speed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(13));

-- Location: LCCOMB_X21_Y19_N30
\speed~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~3_combout\ = (!\speed_s~input_o\ & ((\speed_m~input_o\) # ((speed(13)) # (\speed_f~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_s~input_o\,
	datab => \speed_m~input_o\,
	datac => speed(13),
	datad => \speed_f~input_o\,
	combout => \speed~3_combout\);

-- Location: LCCOMB_X21_Y18_N14
\clock_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~8_combout\ = (\Add0~44_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~8_combout\);

-- Location: FF_X21_Y18_N15
\clock_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(22));

-- Location: LCCOMB_X20_Y18_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clock_counter(22) & (\Add0~43\ $ (GND))) # (!clock_counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clock_counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X21_Y18_N30
\LessThan22~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~22_combout\ = (\speed~2_combout\ & (!\Add0~42_combout\ & (!\speed~3_combout\ & !\Add0~44_combout\))) # (!\speed~2_combout\ & (((!\Add0~42_combout\ & !\speed~3_combout\)) # (!\Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \speed~2_combout\,
	datac => \speed~3_combout\,
	datad => \Add0~44_combout\,
	combout => \LessThan22~22_combout\);

-- Location: FF_X21_Y19_N25
\speed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(15));

-- Location: LCCOMB_X21_Y19_N24
\speed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~1_combout\ = (\speed_s~input_o\) # ((!\speed_m~input_o\ & ((speed(15)) # (\speed_f~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_s~input_o\,
	datab => \speed_m~input_o\,
	datac => speed(15),
	datad => \speed_f~input_o\,
	combout => \speed~1_combout\);

-- Location: FF_X21_Y20_N31
\speed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(11));

-- Location: LCCOMB_X21_Y20_N30
\speed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~0_combout\ = (\speed_s~input_o\) # ((!\speed_m~input_o\ & (!\speed_f~input_o\ & speed(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_m~input_o\,
	datab => \speed_f~input_o\,
	datac => speed(11),
	datad => \speed_s~input_o\,
	combout => \speed~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\clock_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~6_combout\ = (\Add0~48_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~6_combout\);

-- Location: FF_X21_Y18_N3
\clock_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(24));

-- Location: LCCOMB_X20_Y18_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clock_counter(23) & (!\Add0~45\)) # (!clock_counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clock_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X21_Y18_N16
\clock_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~7_combout\ = (\Add0~46_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~7_combout\);

-- Location: FF_X21_Y18_N17
\clock_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(23));

-- Location: LCCOMB_X20_Y18_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clock_counter(24) & (\Add0~47\ $ (GND))) # (!clock_counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clock_counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X21_Y18_N8
\LessThan22~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~23_combout\ = (\speed~0_combout\ & (((!\speed~1_combout\ & !\Add0~46_combout\)) # (!\Add0~48_combout\))) # (!\speed~0_combout\ & (!\speed~1_combout\ & (!\Add0~48_combout\ & !\Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~1_combout\,
	datab => \speed~0_combout\,
	datac => \Add0~48_combout\,
	datad => \Add0~46_combout\,
	combout => \LessThan22~23_combout\);

-- Location: LCCOMB_X21_Y18_N6
\LessThan22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~2_combout\ = (\speed~1_combout\ & (!\Add0~46_combout\ & (\speed~0_combout\ $ (!\Add0~48_combout\)))) # (!\speed~1_combout\ & (\Add0~46_combout\ & (\speed~0_combout\ $ (!\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~1_combout\,
	datab => \speed~0_combout\,
	datac => \Add0~48_combout\,
	datad => \Add0~46_combout\,
	combout => \LessThan22~2_combout\);

-- Location: LCCOMB_X21_Y18_N26
\LessThan22~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~24_combout\ = (\LessThan22~23_combout\) # ((\LessThan22~22_combout\ & \LessThan22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~22_combout\,
	datac => \LessThan22~23_combout\,
	datad => \LessThan22~2_combout\,
	combout => \LessThan22~24_combout\);

-- Location: FF_X20_Y18_N31
\clock_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(31));

-- Location: LCCOMB_X20_Y18_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clock_counter(25) & (!\Add0~49\)) # (!clock_counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clock_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X21_Y18_N12
\clock_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~5_combout\ = (\Add0~50_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datac => \LessThan22~25_combout\,
	combout => \clock_counter~5_combout\);

-- Location: FF_X21_Y18_N13
\clock_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(25));

-- Location: LCCOMB_X20_Y18_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (clock_counter(26) & (\Add0~51\ $ (GND))) # (!clock_counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((clock_counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X19_Y19_N30
\clock_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~4_combout\ = (\Add0~52_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~4_combout\);

-- Location: FF_X19_Y19_N31
\clock_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(26));

-- Location: LCCOMB_X20_Y18_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (clock_counter(27) & (!\Add0~53\)) # (!clock_counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!clock_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X21_Y19_N0
\clock_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~3_combout\ = (\Add0~54_combout\ & \LessThan22~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => \LessThan22~25_combout\,
	combout => \clock_counter~3_combout\);

-- Location: FF_X21_Y19_N1
\clock_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(27));

-- Location: LCCOMB_X20_Y18_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (clock_counter(28) & (\Add0~55\ $ (GND))) # (!clock_counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((clock_counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X19_Y19_N28
\clock_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~2_combout\ = (\Add0~56_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datac => \Add0~62_combout\,
	combout => \clock_counter~2_combout\);

-- Location: FF_X19_Y19_N29
\clock_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(28));

-- Location: LCCOMB_X20_Y18_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (clock_counter(29) & (!\Add0~57\)) # (!clock_counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!clock_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X19_Y19_N26
\clock_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~1_combout\ = (\Add0~58_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~58_combout\,
	datac => \Add0~62_combout\,
	combout => \clock_counter~1_combout\);

-- Location: FF_X19_Y19_N27
\clock_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(29));

-- Location: LCCOMB_X20_Y18_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (clock_counter(30) & (\Add0~59\ $ (GND))) # (!clock_counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((clock_counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X19_Y19_N8
\clock_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_counter~0_combout\ = (\Add0~62_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~60_combout\,
	combout => \clock_counter~0_combout\);

-- Location: FF_X19_Y19_N9
\clock_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(30));

-- Location: LCCOMB_X20_Y18_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = clock_counter(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X19_Y19_N18
\LessThan22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~0_combout\ = (!\Add0~50_combout\ & (!\Add0~54_combout\ & (!\Add0~56_combout\ & !\Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~52_combout\,
	combout => \LessThan22~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~1_combout\ = (!\Add0~60_combout\ & (!\Add0~58_combout\ & \LessThan22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~60_combout\,
	datac => \Add0~58_combout\,
	datad => \LessThan22~0_combout\,
	combout => \LessThan22~1_combout\);

-- Location: FF_X21_Y19_N5
\speed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(19));

-- Location: LCCOMB_X21_Y19_N4
\speed~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~6_combout\ = (!\speed_s~input_o\ & ((\speed_m~input_o\) # ((speed(19)) # (\speed_f~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_s~input_o\,
	datab => \speed_m~input_o\,
	datac => speed(19),
	datad => \speed_f~input_o\,
	combout => \speed~6_combout\);

-- Location: FF_X21_Y20_N21
\speed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(10));

-- Location: LCCOMB_X21_Y20_N20
\speed~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~5_combout\ = (\speed_m~input_o\) # ((\speed_s~input_o\) # ((!\speed_f~input_o\ & speed(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_m~input_o\,
	datab => \speed_f~input_o\,
	datac => speed(10),
	datad => \speed_s~input_o\,
	combout => \speed~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\LessThan22~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~16_combout\ = (\speed~5_combout\ & (((\speed~6_combout\ & !\Add0~38_combout\)) # (!\Add0~40_combout\))) # (!\speed~5_combout\ & (\speed~6_combout\ & (!\Add0~38_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~6_combout\,
	datab => \speed~5_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~40_combout\,
	combout => \LessThan22~16_combout\);

-- Location: LCCOMB_X21_Y18_N4
\LessThan22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~3_combout\ = \speed~3_combout\ $ (!\Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed~3_combout\,
	datad => \Add0~42_combout\,
	combout => \LessThan22~3_combout\);

-- Location: LCCOMB_X21_Y18_N18
\LessThan22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~4_combout\ = (!\LessThan22~3_combout\ & (\LessThan22~2_combout\ & (\Add0~44_combout\ $ (\speed~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \speed~2_combout\,
	datac => \LessThan22~3_combout\,
	datad => \LessThan22~2_combout\,
	combout => \LessThan22~4_combout\);

-- Location: LCCOMB_X21_Y20_N6
\LessThan22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~5_combout\ = (\speed~6_combout\ & (\Add0~38_combout\ & (\speed~5_combout\ $ (!\Add0~40_combout\)))) # (!\speed~6_combout\ & (!\Add0~38_combout\ & (\speed~5_combout\ $ (!\Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~6_combout\,
	datab => \speed~5_combout\,
	datac => \Add0~40_combout\,
	datad => \Add0~38_combout\,
	combout => \LessThan22~5_combout\);

-- Location: FF_X21_Y19_N23
\speed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(14));

-- Location: LCCOMB_X21_Y19_N22
\speed~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~7_combout\ = (\speed_s~input_o\) # ((\speed_m~input_o\) # ((speed(14) & !\speed_f~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_s~input_o\,
	datab => \speed_m~input_o\,
	datac => speed(14),
	datad => \speed_f~input_o\,
	combout => \speed~7_combout\);

-- Location: FF_X21_Y20_N5
\speed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(17));

-- Location: LCCOMB_X21_Y20_N4
\speed~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~8_combout\ = (!\speed_m~input_o\ & (!\speed_s~input_o\ & ((\speed_f~input_o\) # (speed(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_m~input_o\,
	datab => \speed_f~input_o\,
	datac => speed(17),
	datad => \speed_s~input_o\,
	combout => \speed~8_combout\);

-- Location: FF_X21_Y20_N3
\speed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(16));

-- Location: LCCOMB_X21_Y20_N2
\speed~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~4_combout\ = (\speed_s~input_o\) # ((!\speed_m~input_o\ & ((\speed_f~input_o\) # (speed(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_m~input_o\,
	datab => \speed_f~input_o\,
	datac => speed(16),
	datad => \speed_s~input_o\,
	combout => \speed~4_combout\);

-- Location: LCCOMB_X21_Y20_N10
\LessThan22~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~17_combout\ = (\Add0~28_combout\) # (\speed~4_combout\ $ (\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed~4_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~32_combout\,
	combout => \LessThan22~17_combout\);

-- Location: LCCOMB_X21_Y20_N0
\LessThan22~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~18_combout\ = (\LessThan22~17_combout\) # (\speed~1_combout\ $ (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed~1_combout\,
	datac => \Add0~30_combout\,
	datad => \LessThan22~17_combout\,
	combout => \LessThan22~18_combout\);

-- Location: LCCOMB_X21_Y20_N18
\LessThan22~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~19_combout\ = (\Add0~34_combout\ & (\Add0~36_combout\ & ((\LessThan22~18_combout\) # (!\speed~8_combout\)))) # (!\Add0~34_combout\ & ((\speed~8_combout\ & (!\Add0~36_combout\)) # (!\speed~8_combout\ & (\Add0~36_combout\ & 
-- \LessThan22~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \speed~8_combout\,
	datac => \Add0~36_combout\,
	datad => \LessThan22~18_combout\,
	combout => \LessThan22~19_combout\);

-- Location: LCCOMB_X21_Y20_N12
\LessThan22~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~20_combout\ = (\LessThan22~5_combout\ & ((\LessThan22~19_combout\ & ((!\Add0~36_combout\))) # (!\LessThan22~19_combout\ & (!\speed~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~5_combout\,
	datab => \speed~7_combout\,
	datac => \Add0~36_combout\,
	datad => \LessThan22~19_combout\,
	combout => \LessThan22~20_combout\);

-- Location: LCCOMB_X21_Y20_N14
\LessThan22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~6_combout\ = \speed~8_combout\ $ (\Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed~8_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan22~6_combout\);

-- Location: LCCOMB_X21_Y20_N28
\LessThan22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~7_combout\ = (!\LessThan22~6_combout\ & (\LessThan22~5_combout\ & (\speed~7_combout\ $ (\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~7_combout\,
	datab => \Add0~36_combout\,
	datac => \LessThan22~6_combout\,
	datad => \LessThan22~5_combout\,
	combout => \LessThan22~7_combout\);

-- Location: FF_X21_Y19_N21
\speed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \speed~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(12));

-- Location: LCCOMB_X21_Y19_N20
\speed~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~9_combout\ = (!\speed_s~input_o\ & ((\speed_m~input_o\) # ((speed(12) & !\speed_f~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_s~input_o\,
	datab => \speed_m~input_o\,
	datac => speed(12),
	datad => \speed_f~input_o\,
	combout => \speed~9_combout\);

-- Location: LCCOMB_X21_Y19_N10
\LessThan22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~8_combout\ = (\speed~3_combout\ & (\speed~9_combout\ & (!\Add0~26_combout\ & !\Add0~24_combout\))) # (!\speed~3_combout\ & (((\speed~9_combout\ & !\Add0~24_combout\)) # (!\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~3_combout\,
	datab => \speed~9_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~24_combout\,
	combout => \LessThan22~8_combout\);

-- Location: LCCOMB_X21_Y19_N26
\LessThan22~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~13_combout\ = (\speed~3_combout\ & ((\Add0~26_combout\) # (\speed~9_combout\ $ (\Add0~24_combout\)))) # (!\speed~3_combout\ & ((\speed~9_combout\ $ (\Add0~24_combout\)) # (!\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~3_combout\,
	datab => \speed~9_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~24_combout\,
	combout => \LessThan22~13_combout\);

-- Location: LCCOMB_X21_Y19_N8
\LessThan22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~9_combout\ = (\speed~1_combout\ & (!\Add0~12_combout\ & (!\speed~7_combout\ & !\Add0~14_combout\))) # (!\speed~1_combout\ & (((!\Add0~12_combout\ & !\speed~7_combout\)) # (!\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \speed~1_combout\,
	datac => \speed~7_combout\,
	datad => \Add0~14_combout\,
	combout => \LessThan22~9_combout\);

-- Location: LCCOMB_X22_Y19_N16
\LessThan22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~10_combout\ = (\speed~3_combout\ & (!\Add0~16_combout\ & \LessThan22~9_combout\)) # (!\speed~3_combout\ & ((\LessThan22~9_combout\) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed~3_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan22~9_combout\,
	combout => \LessThan22~10_combout\);

-- Location: LCCOMB_X22_Y19_N18
\LessThan22~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~11_combout\ = (\speed~6_combout\ & ((\LessThan22~10_combout\) # (!\Add0~18_combout\))) # (!\speed~6_combout\ & (!\Add0~18_combout\ & \LessThan22~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed~6_combout\,
	datac => \Add0~18_combout\,
	datad => \LessThan22~10_combout\,
	combout => \LessThan22~11_combout\);

-- Location: LCCOMB_X22_Y19_N12
\LessThan22~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~12_combout\ = (\speed~5_combout\ & ((\LessThan22~11_combout\) # (!\Add0~20_combout\))) # (!\speed~5_combout\ & (!\Add0~20_combout\ & \LessThan22~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~5_combout\,
	datab => \Add0~20_combout\,
	datad => \LessThan22~11_combout\,
	combout => \LessThan22~12_combout\);

-- Location: LCCOMB_X22_Y19_N10
\LessThan22~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~14_combout\ = (!\LessThan22~13_combout\ & ((\speed~0_combout\ & ((\LessThan22~12_combout\) # (!\Add0~22_combout\))) # (!\speed~0_combout\ & (!\Add0~22_combout\ & \LessThan22~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~0_combout\,
	datab => \Add0~22_combout\,
	datac => \LessThan22~13_combout\,
	datad => \LessThan22~12_combout\,
	combout => \LessThan22~14_combout\);

-- Location: LCCOMB_X22_Y19_N20
\LessThan22~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~26_combout\ = (\LessThan22~8_combout\ & (\Add0~28_combout\ $ ((\speed~7_combout\)))) # (!\LessThan22~8_combout\ & (\LessThan22~14_combout\ & (\Add0~28_combout\ $ (\speed~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~8_combout\,
	datab => \Add0~28_combout\,
	datac => \speed~7_combout\,
	datad => \LessThan22~14_combout\,
	combout => \LessThan22~26_combout\);

-- Location: LCCOMB_X22_Y19_N2
\LessThan22~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~27_combout\ = (\speed~1_combout\ & (!\Add0~30_combout\ & \LessThan22~26_combout\)) # (!\speed~1_combout\ & ((\LessThan22~26_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed~1_combout\,
	datac => \Add0~30_combout\,
	datad => \LessThan22~26_combout\,
	combout => \LessThan22~27_combout\);

-- Location: LCCOMB_X22_Y19_N0
\LessThan22~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~15_combout\ = (\LessThan22~7_combout\ & ((\speed~4_combout\ & ((\LessThan22~27_combout\) # (!\Add0~32_combout\))) # (!\speed~4_combout\ & (!\Add0~32_combout\ & \LessThan22~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed~4_combout\,
	datab => \Add0~32_combout\,
	datac => \LessThan22~7_combout\,
	datad => \LessThan22~27_combout\,
	combout => \LessThan22~15_combout\);

-- Location: LCCOMB_X22_Y19_N6
\LessThan22~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~21_combout\ = (\LessThan22~4_combout\ & ((\LessThan22~16_combout\) # ((\LessThan22~20_combout\) # (\LessThan22~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~16_combout\,
	datab => \LessThan22~4_combout\,
	datac => \LessThan22~20_combout\,
	datad => \LessThan22~15_combout\,
	combout => \LessThan22~21_combout\);

-- Location: LCCOMB_X22_Y19_N28
\LessThan22~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan22~25_combout\ = (\Add0~62_combout\) # ((\LessThan22~1_combout\ & ((\LessThan22~24_combout\) # (\LessThan22~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~24_combout\,
	datab => \Add0~62_combout\,
	datac => \LessThan22~1_combout\,
	datad => \LessThan22~21_combout\,
	combout => \LessThan22~25_combout\);

-- Location: LCCOMB_X22_Y19_N22
\led_bar[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[6]~0_combout\ = (\LessThan22~25_combout\ & (((\process_0~0_combout\)))) # (!\LessThan22~25_combout\ & (direction(10) $ ((!\reverse~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direction(10),
	datab => \reverse~input_o\,
	datac => \process_0~0_combout\,
	datad => \LessThan22~25_combout\,
	combout => \led_bar[6]~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add2~2_combout\ & !\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \Add2~0_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = (!\Add2~42_combout\ & (!\Add2~44_combout\ & (!\Add2~40_combout\ & !\Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \Add2~44_combout\,
	datac => \Add2~40_combout\,
	datad => \Add2~46_combout\,
	combout => \LessThan4~5_combout\);

-- Location: LCCOMB_X20_Y17_N8
\LessThan4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = (!\Add2~48_combout\ & (!\Add2~52_combout\ & (!\Add2~50_combout\ & !\Add2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Add2~52_combout\,
	datac => \Add2~50_combout\,
	datad => \Add2~54_combout\,
	combout => \LessThan4~6_combout\);

-- Location: LCCOMB_X20_Y17_N30
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_combout\ = (!\Add2~56_combout\ & (!\Add2~58_combout\ & !\Add2~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~56_combout\,
	datac => \Add2~58_combout\,
	datad => \Add2~60_combout\,
	combout => \LessThan4~7_combout\);

-- Location: LCCOMB_X20_Y17_N26
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (!\Add2~34_combout\ & (!\Add2~36_combout\ & (!\Add2~38_combout\ & !\Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Add2~36_combout\,
	datac => \Add2~38_combout\,
	datad => \Add2~32_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LCCOMB_X20_Y17_N24
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add2~12_combout\ & (!\Add2~8_combout\ & (!\Add2~14_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~10_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X20_Y17_N14
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!\Add2~18_combout\ & (!\Add2~16_combout\ & (!\Add2~20_combout\ & !\Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~16_combout\,
	datac => \Add2~20_combout\,
	datad => \Add2~22_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X20_Y17_N16
\LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (!\Add2~28_combout\ & (!\Add2~30_combout\ & (!\Add2~24_combout\ & !\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \Add2~30_combout\,
	datac => \Add2~24_combout\,
	datad => \Add2~26_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X20_Y17_N28
\LessThan4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = (\LessThan4~3_combout\ & (\LessThan4~0_combout\ & (\LessThan4~1_combout\ & \LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~3_combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~2_combout\,
	combout => \LessThan4~4_combout\);

-- Location: LCCOMB_X20_Y17_N20
\LessThan4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~8_combout\ = (\LessThan4~5_combout\ & (\LessThan4~6_combout\ & (\LessThan4~7_combout\ & \LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~5_combout\,
	datab => \LessThan4~6_combout\,
	datac => \LessThan4~7_combout\,
	datad => \LessThan4~4_combout\,
	combout => \LessThan4~8_combout\);

-- Location: LCCOMB_X24_Y19_N24
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = (!\Add2~6_combout\ & \LessThan4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \LessThan4~8_combout\,
	combout => \LessThan4~9_combout\);

-- Location: LCCOMB_X24_Y19_N22
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Add2~62_combout\) # ((\LessThan4~9_combout\ & ((\LessThan2~0_combout\) # (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~62_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\Add2~2_combout\ & (!\Add2~0_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y20_N2
\LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (\Add2~62_combout\) # ((\LessThan4~8_combout\ & ((\LessThan2~2_combout\) # (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~62_combout\,
	datad => \LessThan4~8_combout\,
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (!\Add3~16_combout\ & (!\Add3~22_combout\ & (!\Add3~18_combout\ & !\Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add3~22_combout\,
	datac => \Add3~18_combout\,
	datad => \Add3~20_combout\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X23_Y18_N28
\LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (!\Add3~12_combout\ & (!\Add3~14_combout\ & (!\Add3~10_combout\ & !\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~14_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\LessThan15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (!\Add3~26_combout\ & (!\Add3~28_combout\ & (!\Add3~24_combout\ & !\Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add3~28_combout\,
	datac => \Add3~24_combout\,
	datad => \Add3~30_combout\,
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X23_Y20_N16
\LessThan15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~3_combout\ = (!\Add3~36_combout\ & (!\Add3~38_combout\ & (!\Add3~34_combout\ & !\Add3~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => \Add3~38_combout\,
	datac => \Add3~34_combout\,
	datad => \Add3~32_combout\,
	combout => \LessThan15~3_combout\);

-- Location: LCCOMB_X23_Y20_N2
\LessThan15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~4_combout\ = (\LessThan15~1_combout\ & (\LessThan15~0_combout\ & (\LessThan15~2_combout\ & \LessThan15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \LessThan15~0_combout\,
	datac => \LessThan15~2_combout\,
	datad => \LessThan15~3_combout\,
	combout => \LessThan15~4_combout\);

-- Location: LCCOMB_X23_Y20_N12
\LessThan15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~5_combout\ = (!\Add3~40_combout\ & (!\Add3~44_combout\ & (!\Add3~42_combout\ & \LessThan15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~40_combout\,
	datab => \Add3~44_combout\,
	datac => \Add3~42_combout\,
	datad => \LessThan15~4_combout\,
	combout => \LessThan15~5_combout\);

-- Location: LCCOMB_X23_Y20_N18
\LessThan15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~6_combout\ = (!\Add3~46_combout\ & (!\Add3~50_combout\ & (!\Add3~48_combout\ & \LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datab => \Add3~50_combout\,
	datac => \Add3~48_combout\,
	datad => \LessThan15~5_combout\,
	combout => \LessThan15~6_combout\);

-- Location: LCCOMB_X23_Y20_N24
\LessThan15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~7_combout\ = (!\Add3~54_combout\ & (!\Add3~52_combout\ & \LessThan15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \Add3~52_combout\,
	datad => \LessThan15~6_combout\,
	combout => \LessThan15~7_combout\);

-- Location: LCCOMB_X23_Y20_N30
\LessThan15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~8_combout\ = (!\Add3~58_combout\ & (!\Add3~60_combout\ & (!\Add3~56_combout\ & \LessThan15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \Add3~60_combout\,
	datac => \Add3~56_combout\,
	datad => \LessThan15~7_combout\,
	combout => \LessThan15~8_combout\);

-- Location: LCCOMB_X22_Y20_N22
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (!\Add3~4_combout\ & (!\Add3~2_combout\ & !\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X23_Y20_N4
\LessThan21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan21~0_combout\ = (\Add3~62_combout\) # ((\LessThan15~8_combout\ & ((\LessThan13~1_combout\) # (!\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~8_combout\,
	datab => \LessThan13~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~62_combout\,
	combout => \LessThan21~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\led_bar~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~21_combout\ = (\led_bar[6]~0_combout\ & (((\LessThan22~25_combout\)))) # (!\led_bar[6]~0_combout\ & ((\LessThan22~25_combout\ & ((!\LessThan21~0_combout\))) # (!\LessThan22~25_combout\ & (!led_bar(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(8),
	datab => \LessThan21~0_combout\,
	datac => \led_bar[6]~0_combout\,
	datad => \LessThan22~25_combout\,
	combout => \led_bar~21_combout\);

-- Location: LCCOMB_X23_Y20_N20
\led_bar~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~22_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~21_combout\ & (\LessThan10~0_combout\)) # (!\led_bar~21_combout\ & ((!led_bar(0)))))) # (!\led_bar[6]~0_combout\ & (((!\led_bar~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => led_bar(0),
	datac => \led_bar[6]~0_combout\,
	datad => \led_bar~21_combout\,
	combout => \led_bar~22_combout\);

-- Location: LCCOMB_X22_Y19_N26
\led_bar[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[6]~3_combout\ = (\LessThan22~1_combout\ & ((\LessThan22~24_combout\) # (\LessThan22~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~24_combout\,
	datac => \LessThan22~1_combout\,
	datad => \LessThan22~21_combout\,
	combout => \led_bar[6]~3_combout\);

-- Location: LCCOMB_X22_Y19_N4
\led_bar[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar[6]~4_combout\ = ((\process_0~0_combout\) # ((!\led_bar[6]~3_combout\ & !\Add0~62_combout\))) # (!\process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \led_bar[6]~3_combout\,
	datad => \Add0~62_combout\,
	combout => \led_bar[6]~4_combout\);

-- Location: FF_X23_Y20_N21
\led_bar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~22_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(9));

-- Location: LCCOMB_X23_Y19_N22
\LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (\Add2~62_combout\) # ((!\Add2~6_combout\ & \LessThan4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \LessThan4~8_combout\,
	datad => \Add2~62_combout\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X23_Y20_N26
\LessThan20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan20~0_combout\ = (\Add3~62_combout\) # ((!\Add3~6_combout\ & \LessThan15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~62_combout\,
	datac => \LessThan15~8_combout\,
	combout => \LessThan20~0_combout\);

-- Location: LCCOMB_X22_Y19_N14
\led_bar~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~19_combout\ = (\LessThan22~25_combout\ & (((\led_bar[6]~0_combout\) # (!\LessThan20~0_combout\)))) # (!\LessThan22~25_combout\ & (led_bar(7) & (!\led_bar[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(7),
	datab => \LessThan22~25_combout\,
	datac => \led_bar[6]~0_combout\,
	datad => \LessThan20~0_combout\,
	combout => \led_bar~19_combout\);

-- Location: LCCOMB_X23_Y19_N0
\led_bar~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~20_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~19_combout\ & ((\LessThan9~0_combout\))) # (!\led_bar~19_combout\ & (led_bar(9))))) # (!\led_bar[6]~0_combout\ & (((!\led_bar~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(9),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan9~0_combout\,
	datad => \led_bar~19_combout\,
	combout => \led_bar~20_combout\);

-- Location: FF_X23_Y19_N1
\led_bar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~20_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(8));

-- Location: LCCOMB_X24_Y19_N10
\LessThan4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~10_combout\ = (!\Add2~2_combout\) # (!\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \LessThan4~10_combout\);

-- Location: LCCOMB_X24_Y19_N14
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\Add2~62_combout\) # ((\LessThan4~9_combout\ & ((\LessThan4~10_combout\) # (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~10_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~62_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\LessThan19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan19~0_combout\ = ((!\Add3~2_combout\) # (!\Add3~0_combout\)) # (!\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan19~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\LessThan19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan19~1_combout\ = (\Add3~62_combout\) # ((!\Add3~6_combout\ & (\LessThan19~0_combout\ & \LessThan15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~62_combout\,
	datac => \LessThan19~0_combout\,
	datad => \LessThan15~8_combout\,
	combout => \LessThan19~1_combout\);

-- Location: LCCOMB_X24_Y19_N12
\led_bar~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~17_combout\ = (\LessThan22~25_combout\ & (((\led_bar[6]~0_combout\) # (!\LessThan19~1_combout\)))) # (!\LessThan22~25_combout\ & (led_bar(6) & ((!\led_bar[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~25_combout\,
	datab => led_bar(6),
	datac => \LessThan19~1_combout\,
	datad => \led_bar[6]~0_combout\,
	combout => \led_bar~17_combout\);

-- Location: LCCOMB_X24_Y19_N2
\led_bar~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~18_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~17_combout\ & ((!\LessThan8~0_combout\))) # (!\led_bar~17_combout\ & (!led_bar(8))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(8),
	datab => \LessThan8~0_combout\,
	datac => \led_bar[6]~0_combout\,
	datad => \led_bar~17_combout\,
	combout => \led_bar~18_combout\);

-- Location: FF_X24_Y19_N3
\led_bar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~18_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(7));

-- Location: LCCOMB_X24_Y19_N4
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Add2~62_combout\) # ((\LessThan4~9_combout\ & ((!\Add2~4_combout\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~62_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X19_Y19_N10
\LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (!\Add3~2_combout\) # (!\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\LessThan18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan18~1_combout\ = (\Add3~62_combout\) # ((\LessThan18~0_combout\ & (!\Add3~6_combout\ & \LessThan15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => \Add3~6_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan15~8_combout\,
	combout => \LessThan18~1_combout\);

-- Location: LCCOMB_X24_Y19_N6
\led_bar~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~15_combout\ = (\LessThan22~25_combout\ & (((\led_bar[6]~0_combout\) # (!\LessThan18~1_combout\)))) # (!\LessThan22~25_combout\ & (led_bar(5) & ((!\led_bar[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~25_combout\,
	datab => led_bar(5),
	datac => \LessThan18~1_combout\,
	datad => \led_bar[6]~0_combout\,
	combout => \led_bar~15_combout\);

-- Location: LCCOMB_X24_Y19_N28
\led_bar~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~16_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~15_combout\ & ((!\LessThan7~0_combout\))) # (!\led_bar~15_combout\ & (led_bar(7))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(7),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan7~0_combout\,
	datad => \led_bar~15_combout\,
	combout => \led_bar~16_combout\);

-- Location: FF_X24_Y19_N29
\led_bar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~16_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(6));

-- Location: LCCOMB_X22_Y20_N4
\LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = ((!\Add3~0_combout\ & !\Add3~2_combout\)) # (!\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~0_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (\Add3~62_combout\) # ((!\Add3~6_combout\ & (\LessThan15~8_combout\ & \LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~62_combout\,
	datac => \LessThan15~8_combout\,
	datad => \LessThan17~0_combout\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X24_Y19_N20
\led_bar~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~13_combout\ = (\LessThan22~25_combout\ & (((\led_bar[6]~0_combout\) # (!\LessThan17~1_combout\)))) # (!\LessThan22~25_combout\ & (led_bar(4) & ((!\led_bar[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~25_combout\,
	datab => led_bar(4),
	datac => \LessThan17~1_combout\,
	datad => \led_bar[6]~0_combout\,
	combout => \led_bar~13_combout\);

-- Location: LCCOMB_X24_Y19_N30
\led_bar~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~14_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~13_combout\ & (!\LessThan6~0_combout\)) # (!\led_bar~13_combout\ & ((led_bar(6)))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => led_bar(6),
	datac => \led_bar[6]~0_combout\,
	datad => \led_bar~13_combout\,
	combout => \led_bar~14_combout\);

-- Location: FF_X24_Y19_N31
\led_bar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~14_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(5));

-- Location: LCCOMB_X24_Y19_N18
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add2~62_combout\) # ((!\Add2~6_combout\ & (!\Add2~4_combout\ & \LessThan4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~62_combout\,
	datad => \LessThan4~8_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (\Add3~62_combout\) # ((!\Add3~4_combout\ & (!\Add3~6_combout\ & \LessThan15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~6_combout\,
	datac => \LessThan15~8_combout\,
	datad => \Add3~62_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\led_bar~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~11_combout\ = (\LessThan22~25_combout\ & (((\led_bar[6]~0_combout\) # (!\LessThan16~0_combout\)))) # (!\LessThan22~25_combout\ & (led_bar(3) & ((!\led_bar[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~25_combout\,
	datab => led_bar(3),
	datac => \LessThan16~0_combout\,
	datad => \led_bar[6]~0_combout\,
	combout => \led_bar~11_combout\);

-- Location: LCCOMB_X24_Y19_N0
\led_bar~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~12_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~11_combout\ & ((!\LessThan5~0_combout\))) # (!\led_bar~11_combout\ & (led_bar(5))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(5),
	datab => \LessThan5~0_combout\,
	datac => \led_bar[6]~0_combout\,
	datad => \led_bar~11_combout\,
	combout => \led_bar~12_combout\);

-- Location: FF_X24_Y19_N1
\led_bar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~12_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(4));

-- Location: LCCOMB_X23_Y19_N8
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_combout\ = (\Add2~62_combout\) # ((\LessThan4~10_combout\ & (!\Add2~4_combout\ & \LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \LessThan4~10_combout\,
	datac => \Add2~4_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan4~11_combout\);

-- Location: LCCOMB_X23_Y20_N0
\LessThan15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~9_combout\ = (!\Add3~6_combout\ & (!\Add3~4_combout\ & \LessThan15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \LessThan15~8_combout\,
	combout => \LessThan15~9_combout\);

-- Location: LCCOMB_X23_Y19_N12
\LessThan15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan15~10_combout\ = (\Add3~62_combout\) # ((\LessThan15~9_combout\ & ((!\Add3~2_combout\) # (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~2_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan15~9_combout\,
	combout => \LessThan15~10_combout\);

-- Location: LCCOMB_X23_Y19_N10
\led_bar~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~9_combout\ = (\led_bar[6]~0_combout\ & (((\LessThan22~25_combout\)))) # (!\led_bar[6]~0_combout\ & ((\LessThan22~25_combout\ & ((!\LessThan15~10_combout\))) # (!\LessThan22~25_combout\ & (led_bar(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(2),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan22~25_combout\,
	datad => \LessThan15~10_combout\,
	combout => \led_bar~9_combout\);

-- Location: LCCOMB_X23_Y19_N18
\led_bar~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~10_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~9_combout\ & ((!\LessThan4~11_combout\))) # (!\led_bar~9_combout\ & (led_bar(4))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(4),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan4~11_combout\,
	datad => \led_bar~9_combout\,
	combout => \led_bar~10_combout\);

-- Location: FF_X23_Y19_N19
\led_bar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~10_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(3));

-- Location: LCCOMB_X23_Y19_N26
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\Add2~62_combout\) # ((!\Add2~4_combout\ & (!\Add2~2_combout\ & \LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~2_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (\Add3~62_combout\) # ((!\Add3~2_combout\ & \LessThan15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan15~9_combout\,
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\led_bar~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~7_combout\ = (\led_bar[6]~0_combout\ & (((\LessThan22~25_combout\)))) # (!\led_bar[6]~0_combout\ & ((\LessThan22~25_combout\ & ((!\LessThan14~0_combout\))) # (!\LessThan22~25_combout\ & (led_bar(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(1),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan22~25_combout\,
	datad => \LessThan14~0_combout\,
	combout => \led_bar~7_combout\);

-- Location: LCCOMB_X23_Y19_N24
\led_bar~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~8_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~7_combout\ & ((!\LessThan3~0_combout\))) # (!\led_bar~7_combout\ & (led_bar(3))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(3),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \led_bar~7_combout\,
	combout => \led_bar~8_combout\);

-- Location: FF_X23_Y19_N25
\led_bar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~8_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(2));

-- Location: LCCOMB_X23_Y19_N4
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Add2~62_combout\) # ((!\Add2~4_combout\ & (\LessThan2~0_combout\ & \LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~4_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan4~9_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (\Add3~62_combout\) # ((!\Add3~0_combout\ & (!\Add3~2_combout\ & \LessThan15~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~2_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan15~9_combout\,
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\led_bar~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~5_combout\ = (\led_bar[6]~0_combout\ & (((\LessThan22~25_combout\)))) # (!\led_bar[6]~0_combout\ & ((\LessThan22~25_combout\ & ((!\LessThan13~0_combout\))) # (!\LessThan22~25_combout\ & (led_bar(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(0),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan22~25_combout\,
	datad => \LessThan13~0_combout\,
	combout => \led_bar~5_combout\);

-- Location: LCCOMB_X23_Y19_N14
\led_bar~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~6_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~5_combout\ & ((!\LessThan2~1_combout\))) # (!\led_bar~5_combout\ & (led_bar(2))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_bar(2),
	datab => \led_bar[6]~0_combout\,
	datac => \LessThan2~1_combout\,
	datad => \led_bar~5_combout\,
	combout => \led_bar~6_combout\);

-- Location: FF_X23_Y19_N15
\led_bar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~6_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(1));

-- Location: LCCOMB_X22_Y19_N24
\led_bar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~1_combout\ = (\led_bar[6]~0_combout\ & (((\LessThan22~25_combout\)))) # (!\led_bar[6]~0_combout\ & ((\LessThan22~25_combout\ & (!\Add3~62_combout\)) # (!\LessThan22~25_combout\ & ((!led_bar(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => led_bar(9),
	datac => \led_bar[6]~0_combout\,
	datad => \LessThan22~25_combout\,
	combout => \led_bar~1_combout\);

-- Location: LCCOMB_X23_Y19_N16
\led_bar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_bar~2_combout\ = (\led_bar[6]~0_combout\ & ((\led_bar~1_combout\ & (!\Add2~62_combout\)) # (!\led_bar~1_combout\ & ((led_bar(1)))))) # (!\led_bar[6]~0_combout\ & (((\led_bar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \led_bar[6]~0_combout\,
	datac => led_bar(1),
	datad => \led_bar~1_combout\,
	combout => \led_bar~2_combout\);

-- Location: FF_X23_Y19_N17
\led_bar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \led_bar~2_combout\,
	ena => \led_bar[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_bar(0));

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
END structure;


