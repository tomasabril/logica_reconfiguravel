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

-- DATE "04/18/2018 19:42:12"

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
	entrada_padrao : IN std_logic_vector(2 DOWNTO 0);
	entrada_busca : IN std_logic_vector(6 DOWNTO 0);
	saida : OUT std_logic
	);
END ex_3;

-- Design Ports Information
-- saida	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_padrao[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_padrao[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_padrao[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_busca[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_entrada_padrao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_entrada_busca : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \saida~output_o\ : std_logic;
SIGNAL \entrada_busca[5]~input_o\ : std_logic;
SIGNAL \entrada_padrao[2]~input_o\ : std_logic;
SIGNAL \entrada_busca[4]~input_o\ : std_logic;
SIGNAL \entrada_padrao[0]~input_o\ : std_logic;
SIGNAL \entrada_busca[3]~input_o\ : std_logic;
SIGNAL \entrada_busca[2]~input_o\ : std_logic;
SIGNAL \entrada_padrao[1]~input_o\ : std_logic;
SIGNAL \WideAnd2~0_combout\ : std_logic;
SIGNAL \WideAnd2~combout\ : std_logic;
SIGNAL \WideAnd3~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \entrada_busca[6]~input_o\ : std_logic;
SIGNAL \busca[4][2]~combout\ : std_logic;
SIGNAL \entrada_busca[0]~input_o\ : std_logic;
SIGNAL \entrada_busca[1]~input_o\ : std_logic;
SIGNAL \WideAnd0~0_combout\ : std_logic;
SIGNAL \WideAnd0~combout\ : std_logic;
SIGNAL \WideAnd1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideAnd4~0_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;

BEGIN

ww_entrada_padrao <= entrada_padrao;
ww_entrada_busca <= entrada_busca;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\saida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~2_combout\,
	devoe => ww_devoe,
	o => \saida~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\entrada_busca[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(5),
	o => \entrada_busca[5]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\entrada_padrao[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_padrao(2),
	o => \entrada_padrao[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\entrada_busca[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(4),
	o => \entrada_busca[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\entrada_padrao[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_padrao(0),
	o => \entrada_padrao[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\entrada_busca[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(3),
	o => \entrada_busca[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\entrada_busca[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(2),
	o => \entrada_busca[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\entrada_padrao[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_padrao(1),
	o => \entrada_padrao[1]~input_o\);

-- Location: LCCOMB_X1_Y23_N24
\WideAnd2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd2~0_combout\ = (\entrada_padrao[0]~input_o\ & (\entrada_busca[2]~input_o\ & (\entrada_busca[3]~input_o\ $ (!\entrada_padrao[1]~input_o\)))) # (!\entrada_padrao[0]~input_o\ & (!\entrada_busca[2]~input_o\ & (\entrada_busca[3]~input_o\ $ 
-- (!\entrada_padrao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_padrao[0]~input_o\,
	datab => \entrada_busca[3]~input_o\,
	datac => \entrada_busca[2]~input_o\,
	datad => \entrada_padrao[1]~input_o\,
	combout => \WideAnd2~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
WideAnd2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd2~combout\ = (\WideAnd2~0_combout\ & (\entrada_padrao[2]~input_o\ $ (!\entrada_busca[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_padrao[2]~input_o\,
	datac => \entrada_busca[4]~input_o\,
	datad => \WideAnd2~0_combout\,
	combout => \WideAnd2~combout\);

-- Location: LCCOMB_X1_Y23_N20
\WideAnd3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd3~0_combout\ = (\entrada_padrao[0]~input_o\ & (\entrada_busca[3]~input_o\ & (\entrada_busca[4]~input_o\ $ (!\entrada_padrao[1]~input_o\)))) # (!\entrada_padrao[0]~input_o\ & (!\entrada_busca[3]~input_o\ & (\entrada_busca[4]~input_o\ $ 
-- (!\entrada_padrao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_padrao[0]~input_o\,
	datab => \entrada_busca[4]~input_o\,
	datac => \entrada_busca[3]~input_o\,
	datad => \entrada_padrao[1]~input_o\,
	combout => \WideAnd3~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\WideAnd2~combout\) # ((\WideAnd3~0_combout\ & (\entrada_busca[5]~input_o\ $ (!\entrada_padrao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_busca[5]~input_o\,
	datab => \WideAnd2~combout\,
	datac => \entrada_padrao[2]~input_o\,
	datad => \WideAnd3~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\entrada_busca[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(6),
	o => \entrada_busca[6]~input_o\);

-- Location: LCCOMB_X1_Y23_N2
\busca[4][2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \busca[4][2]~combout\ = \entrada_padrao[2]~input_o\ $ (\entrada_busca[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_padrao[2]~input_o\,
	datac => \entrada_busca[6]~input_o\,
	combout => \busca[4][2]~combout\);

-- Location: IOIBUF_X0_Y25_N15
\entrada_busca[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(0),
	o => \entrada_busca[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\entrada_busca[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_busca(1),
	o => \entrada_busca[1]~input_o\);

-- Location: LCCOMB_X1_Y23_N0
\WideAnd0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd0~0_combout\ = (\entrada_busca[0]~input_o\ & (\entrada_padrao[0]~input_o\ & (\entrada_busca[1]~input_o\ $ (!\entrada_padrao[1]~input_o\)))) # (!\entrada_busca[0]~input_o\ & (!\entrada_padrao[0]~input_o\ & (\entrada_busca[1]~input_o\ $ 
-- (!\entrada_padrao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_busca[0]~input_o\,
	datab => \entrada_busca[1]~input_o\,
	datac => \entrada_padrao[0]~input_o\,
	datad => \entrada_padrao[1]~input_o\,
	combout => \WideAnd0~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
WideAnd0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd0~combout\ = (\WideAnd0~0_combout\ & (\entrada_busca[2]~input_o\ $ (!\entrada_padrao[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_busca[2]~input_o\,
	datac => \entrada_padrao[2]~input_o\,
	datad => \WideAnd0~0_combout\,
	combout => \WideAnd0~combout\);

-- Location: LCCOMB_X1_Y23_N12
\WideAnd1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd1~0_combout\ = (\entrada_padrao[0]~input_o\ & (\entrada_busca[1]~input_o\ & (\entrada_busca[2]~input_o\ $ (!\entrada_padrao[1]~input_o\)))) # (!\entrada_padrao[0]~input_o\ & (!\entrada_busca[1]~input_o\ & (\entrada_busca[2]~input_o\ $ 
-- (!\entrada_padrao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_padrao[0]~input_o\,
	datab => \entrada_busca[1]~input_o\,
	datac => \entrada_busca[2]~input_o\,
	datad => \entrada_padrao[1]~input_o\,
	combout => \WideAnd1~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\WideAnd0~combout\) # ((\WideAnd1~0_combout\ & (\entrada_padrao[2]~input_o\ $ (!\entrada_busca[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideAnd0~combout\,
	datab => \entrada_padrao[2]~input_o\,
	datac => \entrada_busca[3]~input_o\,
	datad => \WideAnd1~0_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\WideAnd4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideAnd4~0_combout\ = (\entrada_padrao[1]~input_o\ & (\entrada_busca[5]~input_o\ & (\entrada_busca[4]~input_o\ $ (!\entrada_padrao[0]~input_o\)))) # (!\entrada_padrao[1]~input_o\ & (!\entrada_busca[5]~input_o\ & (\entrada_busca[4]~input_o\ $ 
-- (!\entrada_padrao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_padrao[1]~input_o\,
	datab => \entrada_busca[4]~input_o\,
	datac => \entrada_padrao[0]~input_o\,
	datad => \entrada_busca[5]~input_o\,
	combout => \WideAnd4~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\WideOr0~1_combout\) # ((\WideOr0~0_combout\) # ((!\busca[4][2]~combout\ & \WideAnd4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~1_combout\,
	datab => \busca[4][2]~combout\,
	datac => \WideOr0~0_combout\,
	datad => \WideAnd4~0_combout\,
	combout => \WideOr0~2_combout\);

ww_saida <= \saida~output_o\;
END structure;


