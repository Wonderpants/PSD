-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/22/2020 15:03:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pokemon IS
    PORT (
	jogadorA : IN std_logic_vector(1 DOWNTO 0);
	jogadorB : IN std_logic_vector(1 DOWNTO 0);
	pk_winA : OUT std_logic;
	pk_winB : OUT std_logic;
	pk_tie : OUT std_logic
	);
END pokemon;

-- Design Ports Information
-- pk_winA	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pk_winB	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pk_tie	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadorA[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadorB[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadorA[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogadorB[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pokemon IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_jogadorA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_jogadorB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pk_winA : std_logic;
SIGNAL ww_pk_winB : std_logic;
SIGNAL ww_pk_tie : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \jogadorA[0]~input_o\ : std_logic;
SIGNAL \jogadorA[1]~input_o\ : std_logic;
SIGNAL \jogadorB[0]~input_o\ : std_logic;
SIGNAL \jogadorB[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \pk_winA$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \pk_winB$latch~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_jogadorB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_pk_winB$latch~combout\ : std_logic;
SIGNAL \ALT_INV_pk_winA$latch~combout\ : std_logic;
SIGNAL \ALT_INV_jogadorA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_jogadorB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_jogadorA[0]~input_o\ : std_logic;

BEGIN

ww_jogadorA <= jogadorA;
ww_jogadorB <= jogadorB;
pk_winA <= ww_pk_winA;
pk_winB <= ww_pk_winB;
pk_tie <= ww_pk_tie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_jogadorB[0]~input_o\ <= NOT \jogadorB[0]~input_o\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_pk_winB$latch~combout\ <= NOT \pk_winB$latch~combout\;
\ALT_INV_pk_winA$latch~combout\ <= NOT \pk_winA$latch~combout\;
\ALT_INV_jogadorA[1]~input_o\ <= NOT \jogadorA[1]~input_o\;
\ALT_INV_jogadorB[1]~input_o\ <= NOT \jogadorB[1]~input_o\;
\ALT_INV_jogadorA[0]~input_o\ <= NOT \jogadorA[0]~input_o\;

-- Location: IOOBUF_X89_Y36_N5
\pk_winA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pk_winA$latch~combout\,
	devoe => ww_devoe,
	o => ww_pk_winA);

-- Location: IOOBUF_X89_Y37_N22
\pk_winB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pk_winB$latch~combout\,
	devoe => ww_devoe,
	o => ww_pk_winB);

-- Location: IOOBUF_X89_Y37_N56
\pk_tie~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_comb~0_combout\,
	devoe => ww_devoe,
	o => ww_pk_tie);

-- Location: IOIBUF_X89_Y35_N44
\jogadorA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogadorA(0),
	o => \jogadorA[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\jogadorA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogadorA(1),
	o => \jogadorA[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\jogadorB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogadorB(0),
	o => \jogadorB[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\jogadorB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogadorB(1),
	o => \jogadorB[1]~input_o\);

-- Location: LABCELL_X88_Y35_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \jogadorB[1]~input_o\ & ( (\jogadorA[0]~input_o\ & (\jogadorA[1]~input_o\ & !\jogadorB[0]~input_o\)) ) ) # ( !\jogadorB[1]~input_o\ & ( ((\jogadorA[0]~input_o\ & !\jogadorB[0]~input_o\)) # (\jogadorA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111000001010000000001011111000011110000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogadorA[0]~input_o\,
	datac => \ALT_INV_jogadorA[1]~input_o\,
	datad => \ALT_INV_jogadorB[0]~input_o\,
	datae => \ALT_INV_jogadorB[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X88_Y35_N36
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \jogadorB[1]~input_o\ & ( ((!\jogadorA[1]~input_o\) # (!\jogadorA[0]~input_o\)) # (\jogadorB[0]~input_o\) ) ) # ( !\jogadorB[1]~input_o\ & ( (!\jogadorA[1]~input_o\ & ((!\jogadorA[0]~input_o\) # (\jogadorB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100111111011111110111000100110001001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogadorB[0]~input_o\,
	datab => \ALT_INV_jogadorA[1]~input_o\,
	datac => \ALT_INV_jogadorA[0]~input_o\,
	datae => \ALT_INV_jogadorB[1]~input_o\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X88_Y35_N30
\pk_winA$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \pk_winA$latch~combout\ = ( !\comb~1_combout\ & ( \pk_winA$latch~combout\ ) ) # ( !\comb~1_combout\ & ( !\pk_winA$latch~combout\ & ( \LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_pk_winA$latch~combout\,
	combout => \pk_winA$latch~combout\);

-- Location: LABCELL_X88_Y35_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \jogadorB[1]~input_o\ & ( (\jogadorA[1]~input_o\ & ((!\jogadorB[0]~input_o\) # (\jogadorA[0]~input_o\))) ) ) # ( !\jogadorB[1]~input_o\ & ( (!\jogadorB[0]~input_o\) # ((\jogadorA[0]~input_o\) # (\jogadorA[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111001000110010001110111111101111110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogadorB[0]~input_o\,
	datab => \ALT_INV_jogadorA[1]~input_o\,
	datac => \ALT_INV_jogadorA[0]~input_o\,
	datae => \ALT_INV_jogadorB[1]~input_o\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X88_Y35_N27
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \jogadorB[1]~input_o\ & ( (!\jogadorA[1]~input_o\) # ((!\jogadorA[0]~input_o\ & \jogadorB[0]~input_o\)) ) ) # ( !\jogadorB[1]~input_o\ & ( (!\jogadorA[0]~input_o\ & (!\jogadorA[1]~input_o\ & \jogadorB[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000111100001111101000000000101000001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogadorA[0]~input_o\,
	datac => \ALT_INV_jogadorA[1]~input_o\,
	datad => \ALT_INV_jogadorB[0]~input_o\,
	datae => \ALT_INV_jogadorB[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X88_Y35_N6
\pk_winB$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \pk_winB$latch~combout\ = ( \LessThan1~0_combout\ & ( \pk_winB$latch~combout\ & ( !\comb~2_combout\ ) ) ) # ( !\LessThan1~0_combout\ & ( \pk_winB$latch~combout\ & ( !\comb~2_combout\ ) ) ) # ( \LessThan1~0_combout\ & ( !\pk_winB$latch~combout\ & ( 
-- !\comb~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~2_combout\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_pk_winB$latch~combout\,
	combout => \pk_winB$latch~combout\);

-- Location: LABCELL_X88_Y35_N3
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \jogadorB[1]~input_o\ & ( (!\jogadorA[1]~input_o\) # (!\jogadorA[0]~input_o\ $ (!\jogadorB[0]~input_o\)) ) ) # ( !\jogadorB[1]~input_o\ & ( (!\jogadorA[0]~input_o\ $ (!\jogadorB[0]~input_o\)) # (\jogadorA[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110101111111101011111101001011111101011111111010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogadorA[0]~input_o\,
	datac => \ALT_INV_jogadorA[1]~input_o\,
	datad => \ALT_INV_jogadorB[0]~input_o\,
	datae => \ALT_INV_jogadorB[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X79_Y56_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


