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

-- DATE "07/03/2018 20:42:02"

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
	clock_in : IN std_logic;
	reset : IN std_logic;
	bot_raw_1 : IN std_logic;
	bot_raw_2 : IN std_logic;
	input : IN std_logic;
	leds : OUT std_logic_vector(9 DOWNTO 0);
	saida0 : OUT std_logic_vector(6 DOWNTO 0);
	reset_ativo : OUT std_logic;
	botao_ativo : OUT std_logic
	);
END ex_2;

-- Design Ports Information
-- input	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- bot_raw_1	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bot_raw_2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_bot_raw_1 : std_logic;
SIGNAL ww_bot_raw_2 : std_logic;
SIGNAL ww_input : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reset_ativo : std_logic;
SIGNAL ww_botao_ativo : std_logic;
SIGNAL \clock_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \counter[31]~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \counter[31]~1_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \counter[31]~3_combout\ : std_logic;
SIGNAL \counter[31]~4_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \bot_raw_1~input_o\ : std_logic;
SIGNAL \lado_esq[0]~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bot_raw_2~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \state.G~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \state.Y~q\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.R~q\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \counter[31]~0_combout\ : std_logic;
SIGNAL \leds~3_combout\ : std_logic;
SIGNAL \leds~4_combout\ : std_logic;
SIGNAL \leds~5_combout\ : std_logic;
SIGNAL \current[0]~0_combout\ : std_logic;
SIGNAL \leds~6_combout\ : std_logic;
SIGNAL \leds~7_combout\ : std_logic;
SIGNAL \leds~8_combout\ : std_logic;
SIGNAL \leds~9_combout\ : std_logic;
SIGNAL \leds~12_combout\ : std_logic;
SIGNAL \leds~10_combout\ : std_logic;
SIGNAL \leds~11_combout\ : std_logic;
SIGNAL \saida0~0_combout\ : std_logic;
SIGNAL \saida0~1_combout\ : std_logic;
SIGNAL \saida0~2_combout\ : std_logic;
SIGNAL lado_esq : std_logic_vector(31 DOWNTO 0);
SIGNAL lado_dire : std_logic_vector(31 DOWNTO 0);
SIGNAL current : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_saida0~2_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_counter[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.G~q\ : std_logic;

BEGIN

ww_clock_in <= clock_in;
ww_reset <= reset;
ww_bot_raw_1 <= bot_raw_1;
ww_bot_raw_2 <= bot_raw_2;
ww_input <= input;
leds <= ww_leds;
saida0 <= ww_saida0;
reset_ativo <= ww_reset_ativo;
botao_ativo <= ww_botao_ativo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_in~input_o\);
\ALT_INV_saida0~2_combout\ <= NOT \saida0~2_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_counter[31]~0_combout\ <= NOT \counter[31]~0_combout\;
\ALT_INV_state.G~q\ <= NOT \state.G~q\;

-- Location: LCCOMB_X8_Y26_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y26_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X8_Y26_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X8_Y26_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X8_Y26_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X8_Y26_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X8_Y26_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X8_Y25_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X8_Y25_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X6_Y25_N27
\lado_dire[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \process_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lado_dire(0));

-- Location: FF_X9_Y25_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: FF_X7_Y25_N13
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: FF_X9_Y25_N31
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: FF_X6_Y26_N25
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X7_Y26_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X7_Y26_N9
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: FF_X7_Y26_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: FF_X7_Y26_N27
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: FF_X7_Y26_N15
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X9_Y25_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: FF_X7_Y26_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: FF_X9_Y25_N1
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X9_Y25_N3
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: FF_X9_Y25_N7
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: FF_X6_Y25_N11
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: FF_X6_Y25_N17
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X6_Y25_N12
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~0_combout\) # ((\Selector2~1_combout\) # (!\Selector2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Selector2~3_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X6_Y25_N26
\counter[31]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~2_combout\ = (\state.R~q\ & (!\state.G~q\ & (lado_dire(0) & !\bot_raw_2~input_o\))) # (!\state.R~q\ & (\state.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R~q\,
	datab => \state.G~q\,
	datac => lado_dire(0),
	datad => \bot_raw_2~input_o\,
	combout => \counter[31]~2_combout\);

-- Location: LCCOMB_X9_Y25_N4
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add0~36_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X7_Y25_N12
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Add0~34_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datac => \counter[31]~4_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X9_Y25_N30
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add0~32_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X6_Y26_N24
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~30_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X7_Y26_N2
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add0~26_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X7_Y26_N8
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add0~24_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X7_Y26_N0
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Add0~20_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X7_Y26_N26
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Add0~14_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X7_Y26_N14
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Add0~10_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X9_Y25_N20
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add0~8_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X7_Y26_N12
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Add0~4_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X9_Y25_N0
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Add0~2_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X9_Y25_N2
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\Add0~0_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X9_Y25_N6
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add0~40_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X6_Y25_N10
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\counter[31]~4_combout\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[31]~4_combout\,
	datad => \Add0~56_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X6_Y25_N16
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\counter[31]~4_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[31]~4_combout\,
	datad => \Add0~60_combout\,
	combout => \Selector5~0_combout\);

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

-- Location: IOOBUF_X0_Y20_N9
\leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~3_combout\,
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
	i => \leds~5_combout\,
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
	i => GND,
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
	i => \leds~6_combout\,
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
	i => \leds~7_combout\,
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
	i => \leds~8_combout\,
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
	i => \leds~4_combout\,
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
	i => \leds~4_combout\,
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
	i => \leds~12_combout\,
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
	i => \leds~11_combout\,
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
	i => \ALT_INV_counter[31]~0_combout\,
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
	i => \ALT_INV_state.G~q\,
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
	i => \saida0~0_combout\,
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
	i => \saida0~1_combout\,
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
	i => \ALT_INV_saida0~2_combout\,
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
	i => \saida0~1_combout\,
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
	i => GND,
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

-- Location: LCCOMB_X8_Y26_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X5_Y25_N12
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

-- Location: FF_X5_Y25_N13
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X9_Y25_N28
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add0~50_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X9_Y25_N29
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X9_Y25_N16
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add0~46_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X9_Y25_N17
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X9_Y25_N14
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add0~44_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X9_Y25_N15
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X9_Y25_N12
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add0~42_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X9_Y25_N13
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X8_Y25_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X8_Y25_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X8_Y25_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X9_Y25_N8
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Add0~38_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X9_Y25_N9
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X8_Y25_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X8_Y25_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X8_Y25_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X8_Y25_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X9_Y25_N10
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add0~48_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X9_Y25_N11
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X8_Y25_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X9_Y25_N18
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add0~52_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X9_Y25_N19
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X8_Y25_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X5_Y25_N10
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~58_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~58_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X5_Y25_N11
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X8_Y25_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X9_Y25_N24
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~54_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X9_Y25_N25
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X8_Y25_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X8_Y25_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X8_Y25_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X7_Y25_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\Add0~48_combout\ & (!\Add0~58_combout\ & (!\Add0~56_combout\ & !\Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~60_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X7_Y25_N10
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\Add0~50_combout\ & (!\Add0~52_combout\ & \LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datac => \Add0~52_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X7_Y25_N26
\counter[31]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~1_combout\ = (\Selector2~2_combout\) # ((\LessThan0~4_combout\ & \LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \Selector2~2_combout\,
	datad => \LessThan0~6_combout\,
	combout => \counter[31]~1_combout\);

-- Location: LCCOMB_X7_Y25_N24
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!\Add0~56_combout\ & (!\Add0~54_combout\ & (!\Add0~60_combout\ & !\Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~60_combout\,
	datad => \Add0~58_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X7_Y25_N14
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!\Add0~52_combout\ & (!\Add0~56_combout\ & !\Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~54_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X7_Y25_N4
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\Add0~62_combout\) # ((!\Add0~58_combout\ & (\LessThan1~7_combout\ & !\Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add0~58_combout\,
	datac => \LessThan1~7_combout\,
	datad => \Add0~60_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X7_Y26_N4
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!\Add0~20_combout\ & (!\Add0~18_combout\ & !\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~22_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X8_Y26_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X7_Y26_N10
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!\Add0~32_combout\) # (!\Add0~26_combout\)) # (!\Add0~28_combout\)) # (!\Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~32_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y26_N30
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\) # ((!\Add0~24_combout\ & (!\Add0~16_combout\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X7_Y25_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~40_combout\ & (\Add0~42_combout\ & (\Add0~46_combout\ & \Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~46_combout\,
	datad => \Add0~44_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y25_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\Add0~36_combout\ & !\Add0~38_combout\)) # (!\LessThan0~0_combout\)) # (!\Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~38_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X7_Y25_N2
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~0_combout\) # ((!\Add0~34_combout\ & (!\Add0~38_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~38_combout\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X7_Y25_N28
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~8_combout\) # ((!\Add0~50_combout\ & (\LessThan1~5_combout\ & \LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \LessThan1~5_combout\,
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X7_Y25_N20
\counter[31]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~3_combout\ = (\counter[31]~1_combout\ & ((\counter[31]~2_combout\ & (!\state.R~q\)) # (!\counter[31]~2_combout\ & ((\state.R~q\) # (\LessThan1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[31]~2_combout\,
	datab => \state.R~q\,
	datac => \counter[31]~1_combout\,
	datad => \LessThan1~9_combout\,
	combout => \counter[31]~3_combout\);

-- Location: LCCOMB_X7_Y25_N30
\counter[31]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~4_combout\ = (\process_0~0_combout\ & ((\state.R~q\) # ((\state.init~q\ & !\counter[31]~3_combout\)))) # (!\process_0~0_combout\ & (\state.init~q\ & ((!\counter[31]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \state.init~q\,
	datac => \state.R~q\,
	datad => \counter[31]~3_combout\,
	combout => \counter[31]~4_combout\);

-- Location: LCCOMB_X9_Y25_N26
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Add0~6_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X9_Y25_N27
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X8_Y26_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X7_Y26_N24
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Add0~12_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X7_Y26_N25
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X8_Y26_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X8_Y26_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X7_Y26_N28
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Add0~16_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X7_Y26_N29
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X8_Y26_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X7_Y26_N22
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Add0~18_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X7_Y26_N23
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X8_Y26_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X7_Y26_N18
\Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Add0~22_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X7_Y26_N19
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X8_Y26_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X7_Y26_N20
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add0~28_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X7_Y26_N21
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X8_Y26_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X7_Y25_N8
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add0~36_combout\ & (!\Add0~32_combout\ & (!\Add0~38_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y26_N16
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\Add0~26_combout\ & (\LessThan1~2_combout\ & ((!\Add0~14_combout\) # (!\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~26_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y26_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!\Add0~24_combout\ & !\Add0~26_combout\)) # (!\Add0~30_combout\)) # (!\Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~26_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X7_Y25_N22
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X6_Y25_N28
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector2~1_combout\ & ((\Selector2~2_combout\) # ((\LessThan0~6_combout\ & \LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~4_combout\,
	datac => \Selector2~2_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\bot_raw_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bot_raw_1,
	o => \bot_raw_1~input_o\);

-- Location: LCCOMB_X6_Y25_N2
\lado_esq[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lado_esq[0]~2_combout\ = (lado_esq(0) & ((!\Selector2~0_combout\))) # (!lado_esq(0) & (!\bot_raw_1~input_o\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bot_raw_1~input_o\,
	datac => lado_esq(0),
	datad => \Selector2~0_combout\,
	combout => \lado_esq[0]~2_combout\);

-- Location: FF_X6_Y25_N3
\lado_esq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \lado_esq[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lado_esq(0));

-- Location: LCCOMB_X6_Y25_N8
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\bot_raw_1~input_o\ & !lado_esq(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bot_raw_1~input_o\,
	datad => lado_esq(0),
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\bot_raw_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bot_raw_2,
	o => \bot_raw_2~input_o\);

-- Location: LCCOMB_X6_Y25_N20
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.R~q\ & ((\process_0~0_combout\) # ((lado_dire(0) & !\bot_raw_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lado_dire(0),
	datab => \process_0~0_combout\,
	datac => \state.R~q\,
	datad => \bot_raw_2~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X6_Y25_N22
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\state.init~q\ & ((\Selector2~2_combout\) # ((\LessThan0~6_combout\ & \LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \Selector2~2_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X6_Y25_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector2~0_combout\) # ((\Selector2~3_combout\ & ((\LessThan1~9_combout\) # (!\state.Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Y~q\,
	datab => \Selector2~0_combout\,
	datac => \Selector2~3_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X6_Y25_N24
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector2~4_combout\ & ((\Selector1~1_combout\) # ((\Selector1~0_combout\)))) # (!\Selector2~4_combout\ & (\state.G~q\ & ((\Selector1~1_combout\) # (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~4_combout\,
	datab => \Selector1~1_combout\,
	datac => \state.G~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X6_Y25_N25
\state.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.G~q\);

-- Location: LCCOMB_X9_Y25_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add0~62_combout\ & !\counter[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \counter[31]~4_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X9_Y25_N23
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X8_Y25_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X7_Y25_N18
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ((\Add0~62_combout\) # (\LessThan1~5_combout\)) # (!\state.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.G~q\,
	datac => \Add0~62_combout\,
	datad => \LessThan1~5_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X6_Y25_N18
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~2_combout\) # ((\LessThan0~6_combout\ & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~2_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X6_Y25_N4
\Selector2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\Selector2~4_combout\ & (!\Selector2~5_combout\ & ((!\Selector1~0_combout\)))) # (!\Selector2~4_combout\ & ((\state.Y~q\) # ((!\Selector2~5_combout\ & !\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~4_combout\,
	datab => \Selector2~5_combout\,
	datac => \state.Y~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector2~6_combout\);

-- Location: FF_X6_Y25_N5
\state.Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector2~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Y~q\);

-- Location: LCCOMB_X6_Y25_N14
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!\Add0~50_combout\ & \LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X6_Y25_N0
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\LessThan1~8_combout\ & (\state.Y~q\ & ((!\LessThan1~4_combout\) # (!\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \state.Y~q\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~4_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X6_Y25_N30
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector2~4_combout\ & (\Selector2~1_combout\ & ((!\Selector1~0_combout\)))) # (!\Selector2~4_combout\ & ((\state.R~q\) # ((\Selector2~1_combout\ & !\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~4_combout\,
	datab => \Selector2~1_combout\,
	datac => \state.R~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X6_Y25_N31
\state.R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.R~q\);

-- Location: LCCOMB_X4_Y25_N26
\leds~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = (current(0) & (\state.R~q\ & !\state.G~q\)) # (!current(0) & ((\state.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datac => \state.R~q\,
	datad => \state.G~q\,
	combout => \leds~2_combout\);

-- Location: LCCOMB_X4_Y25_N4
\counter[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~0_combout\ = (!\state.R~q\ & !\state.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.R~q\,
	datad => \state.G~q\,
	combout => \counter[31]~0_combout\);

-- Location: LCCOMB_X4_Y25_N20
\leds~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~3_combout\ = (\leds~2_combout\) # ((\counter[31]~0_combout\ & (\state.init~q\ & !\state.Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~2_combout\,
	datab => \counter[31]~0_combout\,
	datac => \state.init~q\,
	datad => \state.Y~q\,
	combout => \leds~3_combout\);

-- Location: LCCOMB_X4_Y25_N6
\leds~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~4_combout\ = (current(0) & \state.Y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datad => \state.Y~q\,
	combout => \leds~4_combout\);

-- Location: LCCOMB_X4_Y25_N0
\leds~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~5_combout\ = (\leds~2_combout\) # ((\counter[31]~0_combout\ & (!\state.init~q\ & !\leds~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds~2_combout\,
	datab => \counter[31]~0_combout\,
	datac => \state.init~q\,
	datad => \leds~4_combout\,
	combout => \leds~5_combout\);

-- Location: LCCOMB_X5_Y25_N6
\current[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current[0]~0_combout\ = \Selector2~0_combout\ $ (current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datac => current(0),
	combout => \current[0]~0_combout\);

-- Location: FF_X5_Y25_N7
\current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \current[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(0));

-- Location: LCCOMB_X5_Y25_N16
\leds~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~6_combout\ = (!current(0) & \state.Y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datad => \state.Y~q\,
	combout => \leds~6_combout\);

-- Location: LCCOMB_X4_Y25_N30
\leds~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~7_combout\ = (\state.G~q\ & (current(0))) # (!\state.G~q\ & ((\state.R~q\ & (!current(0))) # (!\state.R~q\ & ((\state.Y~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \state.G~q\,
	datac => \state.R~q\,
	datad => \state.Y~q\,
	combout => \leds~7_combout\);

-- Location: LCCOMB_X4_Y25_N28
\leds~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~8_combout\ = (current(0) & (!\state.G~q\ & (\state.R~q\ & !\state.Y~q\))) # (!current(0) & ((\state.G~q\) # ((\state.Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \state.G~q\,
	datac => \state.R~q\,
	datad => \state.Y~q\,
	combout => \leds~8_combout\);

-- Location: LCCOMB_X4_Y25_N18
\leds~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~9_combout\ = (current(0) & (!\state.init~q\)) # (!current(0) & (!\state.G~q\ & ((\state.R~q\) # (!\state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \state.init~q\,
	datac => \state.R~q\,
	datad => \state.G~q\,
	combout => \leds~9_combout\);

-- Location: LCCOMB_X5_Y25_N24
\leds~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~12_combout\ = (current(0) & ((\state.G~q\) # ((\leds~9_combout\ & !\state.Y~q\)))) # (!current(0) & (\leds~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \leds~9_combout\,
	datac => \state.G~q\,
	datad => \state.Y~q\,
	combout => \leds~12_combout\);

-- Location: LCCOMB_X4_Y25_N8
\leds~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~10_combout\ = (\state.init~q\ & ((!\state.R~q\) # (!current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \state.init~q\,
	datac => \state.R~q\,
	combout => \leds~10_combout\);

-- Location: LCCOMB_X4_Y25_N22
\leds~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds~11_combout\ = (\state.G~q\ & (current(0))) # (!\state.G~q\ & (((\leds~10_combout\ & !\state.Y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \state.G~q\,
	datac => \leds~10_combout\,
	datad => \state.Y~q\,
	combout => \leds~11_combout\);

-- Location: LCCOMB_X4_Y25_N12
\saida0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~0_combout\ = (!\state.G~q\ & ((\state.R~q\) # (!\state.Y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.G~q\,
	datac => \state.R~q\,
	datad => \state.Y~q\,
	combout => \saida0~0_combout\);

-- Location: LCCOMB_X4_Y25_N10
\saida0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~1_combout\ = (!\state.G~q\ & (\state.R~q\ & !\state.Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.G~q\,
	datac => \state.R~q\,
	datad => \state.Y~q\,
	combout => \saida0~1_combout\);

-- Location: LCCOMB_X4_Y25_N24
\saida0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida0~2_combout\ = (\state.G~q\) # ((\state.R~q\) # (!\state.Y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.G~q\,
	datac => \state.R~q\,
	datad => \state.Y~q\,
	combout => \saida0~2_combout\);

-- Location: IOIBUF_X0_Y27_N1
\input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

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


