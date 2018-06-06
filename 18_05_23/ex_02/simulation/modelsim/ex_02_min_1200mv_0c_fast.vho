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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/06/2018 17:26:00"

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
-- bot_raw	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \counter~19_combout\ : std_logic;
SIGNAL \counter~20_combout\ : std_logic;
SIGNAL \counter~24_combout\ : std_logic;
SIGNAL \counter~25_combout\ : std_logic;
SIGNAL \counter~26_combout\ : std_logic;
SIGNAL \counter~27_combout\ : std_logic;
SIGNAL \counter~28_combout\ : std_logic;
SIGNAL \counter~30_combout\ : std_logic;
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
SIGNAL \bot_still_pressed~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \bot_still_pressed~0_combout\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \counter~22_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counter~29_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \counter~21_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \bot~2_combout\ : std_logic;
SIGNAL \bot~q\ : std_logic;
SIGNAL \bot~0_combout\ : std_logic;
SIGNAL \state.s2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \bot~1_combout\ : std_logic;
SIGNAL \reset_ativo~reg0_q\ : std_logic;
SIGNAL \botao_ativo~reg0feeder_combout\ : std_logic;
SIGNAL \botao_ativo~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL bot_still_pressed : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_leds~1_combout\ : std_logic;
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
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_leds~1_combout\ <= NOT \leds~1_combout\;
\ALT_INV_state.init~q\ <= NOT \state.init~q\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X16_Y20_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter(0) $ (VCC)
-- \Add1~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y20_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter(2) & (\Add1~3\ $ (GND))) # (!counter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y20_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter(3) & (!\Add1~5\)) # (!counter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X16_Y20_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter(4) & (\Add1~7\ $ (GND))) # (!counter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X16_Y20_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter(5) & (!\Add1~9\)) # (!counter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X16_Y20_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter(6) & (\Add1~11\ $ (GND))) # (!counter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X16_Y20_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter(8) & (\Add1~15\ $ (GND))) # (!counter(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y20_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter(10) & (\Add1~19\ $ (GND))) # (!counter(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X16_Y20_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter(13) & (!\Add1~25\)) # (!counter(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X16_Y19_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter(18) & (\Add1~35\ $ (GND))) # (!counter(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X16_Y19_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: FF_X15_Y19_N13
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: FF_X15_Y19_N15
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: FF_X15_Y19_N27
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: FF_X15_Y19_N3
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: FF_X17_Y20_N19
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X15_Y19_N17
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: FF_X17_Y20_N7
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: FF_X17_Y20_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: FF_X15_Y20_N13
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X15_Y19_N11
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: FF_X15_Y20_N9
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X15_Y20_N3
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X15_Y20_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: FF_X15_Y20_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X15_Y19_N1
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: FF_X17_Y20_N5
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X17_Y20_N12
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\Add1~18_combout\ & (!\Add1~16_combout\ & !\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~20_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y19_N12
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add1~60_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~60_combout\,
	datac => \Add1~62_combout\,
	combout => \counter~0_combout\);

-- Location: LCCOMB_X15_Y19_N14
\counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add1~62_combout\ & \Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => \Add1~58_combout\,
	combout => \counter~1_combout\);

-- Location: LCCOMB_X15_Y19_N26
\counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add1~54_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~54_combout\,
	datac => \Add1~62_combout\,
	combout => \counter~3_combout\);

-- Location: LCCOMB_X15_Y19_N2
\counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add1~62_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => \Add1~46_combout\,
	combout => \counter~7_combout\);

-- Location: LCCOMB_X17_Y20_N18
\counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add1~38_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~38_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~11_combout\);

-- Location: LCCOMB_X15_Y19_N16
\counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (\Add1~34_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~34_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~13_combout\);

-- Location: LCCOMB_X17_Y20_N6
\counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add1~28_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~28_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~16_combout\);

-- Location: LCCOMB_X17_Y20_N30
\counter~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\Add1~24_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~18_combout\);

-- Location: LCCOMB_X15_Y20_N12
\counter~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~19_combout\ = (\Add1~22_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~22_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~19_combout\);

-- Location: LCCOMB_X15_Y19_N10
\counter~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~20_combout\ = (\Add1~20_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~20_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~20_combout\);

-- Location: LCCOMB_X15_Y20_N8
\counter~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~24_combout\ = (\Add1~12_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~12_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~24_combout\);

-- Location: LCCOMB_X15_Y20_N2
\counter~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~25_combout\ = (\Add1~10_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~10_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~25_combout\);

-- Location: LCCOMB_X15_Y20_N16
\counter~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~26_combout\ = (\Add1~8_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~8_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~26_combout\);

-- Location: LCCOMB_X15_Y20_N10
\counter~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~27_combout\ = (\Add1~6_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~6_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~27_combout\);

-- Location: LCCOMB_X15_Y19_N0
\counter~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~28_combout\ = (\Add1~4_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~28_combout\);

-- Location: LCCOMB_X17_Y20_N4
\counter~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~30_combout\ = (\Add1~0_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~30_combout\);

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
	i => \botao_ativo~reg0_q\,
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

-- Location: LCCOMB_X14_Y20_N2
\bot_still_pressed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot_still_pressed~1_combout\ = (bot_still_pressed(31) & !\bot_raw~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bot_still_pressed(31),
	datad => \bot_raw~input_o\,
	combout => \bot_still_pressed~1_combout\);

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

-- Location: FF_X14_Y20_N3
\bot_still_pressed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot_still_pressed~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bot_still_pressed(31));

-- Location: LCCOMB_X14_Y20_N8
\bot_still_pressed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot_still_pressed~0_combout\ = (!\bot_raw~input_o\ & ((bot_still_pressed(0)) # (!bot_still_pressed(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datac => bot_still_pressed(0),
	datad => bot_still_pressed(31),
	combout => \bot_still_pressed~0_combout\);

-- Location: FF_X14_Y20_N9
\bot_still_pressed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot_still_pressed~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bot_still_pressed(0));

-- Location: LCCOMB_X15_Y20_N26
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

-- Location: LCCOMB_X16_Y19_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counter(30) & (\Add1~59\ $ (GND))) # (!counter(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counter(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X16_Y19_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = counter(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X15_Y19_N28
\counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add1~52_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datac => \Add1~62_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X15_Y19_N29
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X16_Y19_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counter(27) & (!\Add1~53\)) # (!counter(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X16_Y19_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter(23) & (!\Add1~45\)) # (!counter(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X15_Y20_N14
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\Add1~48_combout\ & (!\Add1~44_combout\ & (!\Add1~50_combout\ & !\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add1~44_combout\,
	datac => \Add1~50_combout\,
	datad => \Add1~46_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y19_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counter(26) & (\Add1~51\ $ (GND))) # (!counter(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counter(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X15_Y20_N28
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!\Add1~54_combout\ & (\LessThan0~6_combout\ & !\Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~54_combout\,
	datac => \LessThan0~6_combout\,
	datad => \Add1~52_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X15_Y20_N22
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!\Add1~58_combout\ & (!\Add1~56_combout\ & (!\Add1~60_combout\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~60_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X17_Y20_N24
\counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add1~36_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X17_Y20_N25
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X17_Y20_N16
\counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Add1~26_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~17_combout\);

-- Location: FF_X17_Y20_N17
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X17_Y20_N22
\counter~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~22_combout\ = (\Add1~16_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~22_combout\);

-- Location: FF_X17_Y20_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X16_Y20_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter(1) & (!\Add1~1\)) # (!counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X15_Y19_N6
\counter~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~29_combout\ = (\Add1~2_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~2_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~29_combout\);

-- Location: FF_X15_Y19_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X16_Y20_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter(7) & (!\Add1~13\)) # (!counter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X15_Y20_N30
\counter~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = (\Add1~14_combout\ & ((\Add1~62_combout\) # ((\LessThan0~10_combout\ & \LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~14_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~5_combout\,
	combout => \counter~23_combout\);

-- Location: FF_X15_Y20_N31
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X16_Y20_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter(9) & (!\Add1~17\)) # (!counter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X17_Y20_N8
\counter~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~21_combout\ = (\Add1~18_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~18_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~21_combout\);

-- Location: FF_X17_Y20_N9
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X16_Y20_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter(11) & (!\Add1~21\)) # (!counter(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X16_Y20_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter(12) & (\Add1~23\ $ (GND))) # (!counter(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X16_Y20_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter(14) & (\Add1~27\ $ (GND))) # (!counter(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X16_Y20_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter(15) & (!\Add1~29\)) # (!counter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X17_Y20_N28
\counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add1~30_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~30_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~15_combout\);

-- Location: FF_X17_Y20_N29
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X16_Y19_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter(16) & (\Add1~31\ $ (GND))) # (!counter(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X17_Y20_N14
\counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add1~32_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~14_combout\);

-- Location: FF_X17_Y20_N15
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X16_Y19_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter(17) & (!\Add1~33\)) # (!counter(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X16_Y19_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter(19) & (!\Add1~37\)) # (!counter(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X16_Y19_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter(20) & (\Add1~39\ $ (GND))) # (!counter(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X15_Y19_N30
\counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add1~40_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Add1~40_combout\,
	datac => \Add1~62_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X15_Y19_N31
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X16_Y19_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter(21) & (!\Add1~41\)) # (!counter(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X17_Y20_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add1~26_combout\ & (!\Add1~30_combout\ & (!\Add1~24_combout\ & !\Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~30_combout\,
	datac => \Add1~24_combout\,
	datad => \Add1~28_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y20_N26
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\Add1~34_combout\ & (\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~34_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y20_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!\Add1~32_combout\ & !\Add1~34_combout\)) # (!\Add1~38_combout\)) # (!\Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add1~32_combout\,
	datac => \Add1~34_combout\,
	datad => \Add1~38_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y20_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~3_combout\) # (\LessThan0~4_combout\)) # (!\Add1~42_combout\)) # (!\Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~42_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y20_N0
\counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add1~42_combout\ & ((\Add1~62_combout\) # ((\LessThan0~5_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Add1~42_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X17_Y20_N1
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X16_Y19_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter(22) & (\Add1~43\ $ (GND))) # (!counter(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X15_Y19_N24
\counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add1~62_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \Add1~44_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X15_Y19_N25
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X16_Y19_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter(24) & (\Add1~47\ $ (GND))) # (!counter(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X15_Y19_N20
\counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add1~62_combout\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datac => \Add1~48_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X15_Y19_N21
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X16_Y19_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counter(25) & (!\Add1~49\)) # (!counter(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X15_Y19_N18
\counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add1~50_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~50_combout\,
	datac => \Add1~62_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X15_Y19_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X16_Y19_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counter(28) & (\Add1~55\ $ (GND))) # (!counter(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counter(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X15_Y19_N4
\counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add1~56_combout\ & \Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Add1~62_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X15_Y19_N5
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X16_Y19_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counter(29) & (!\Add1~57\)) # (!counter(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X15_Y20_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Add1~54_combout\ & (!\Add1~56_combout\ & (!\Add1~52_combout\ & !\Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~52_combout\,
	datad => \Add1~58_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y20_N24
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\LessThan0~5_combout\) # (!\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X15_Y20_N6
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\Add1~62_combout\ & ((\Add1~60_combout\) # ((\LessThan0~7_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~60_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X15_Y20_N27
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
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X15_Y20_N18
\bot~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot~2_combout\ = (\bot~0_combout\ & ((!\LessThan0~8_combout\) # (!\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bot~0_combout\,
	datac => \state.init~q\,
	datad => \LessThan0~8_combout\,
	combout => \bot~2_combout\);

-- Location: FF_X15_Y20_N19
bot : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bot~q\);

-- Location: LCCOMB_X14_Y20_N20
\bot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot~0_combout\ = (\bot_raw~input_o\ & (((\bot~q\)))) # (!\bot_raw~input_o\ & (!bot_still_pressed(0) & ((!bot_still_pressed(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datab => bot_still_pressed(0),
	datac => \bot~q\,
	datad => bot_still_pressed(31),
	combout => \bot~0_combout\);

-- Location: LCCOMB_X15_Y20_N20
\state.s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.s2~0_combout\ = (\bot~0_combout\ & ((\LessThan0~8_combout\ & (\state.s1~q\)) # (!\LessThan0~8_combout\ & ((\state.s2~q\))))) # (!\bot~0_combout\ & (((\state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \bot~0_combout\,
	datac => \state.s2~q\,
	datad => \LessThan0~8_combout\,
	combout => \state.s2~0_combout\);

-- Location: FF_X15_Y20_N21
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

-- Location: LCCOMB_X15_Y20_N0
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\bot~0_combout\ & (!\state.s1~q\)) # (!\bot~0_combout\ & ((!\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bot~0_combout\,
	datac => \state.s1~q\,
	datad => \state.s2~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X15_Y20_N1
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X12_Y26_N12
\leds~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (!\state.init~q\) # (!\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~q\,
	datad => \state.init~q\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X12_Y26_N6
\leds~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\state.s1~q\) # (!\state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~q\,
	datad => \state.init~q\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X14_Y20_N0
\bot~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bot~1_combout\ = (!\bot_raw~input_o\ & !bot_still_pressed(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw~input_o\,
	datad => bot_still_pressed(31),
	combout => \bot~1_combout\);

-- Location: FF_X14_Y20_N1
\reset_ativo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \bot~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_ativo~reg0_q\);

-- Location: LCCOMB_X14_Y20_N18
\botao_ativo~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botao_ativo~reg0feeder_combout\ = \bot~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bot~2_combout\,
	combout => \botao_ativo~reg0feeder_combout\);

-- Location: FF_X14_Y20_N19
\botao_ativo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \botao_ativo~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botao_ativo~reg0_q\);

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


