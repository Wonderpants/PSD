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

-- DATE "06/05/2020 15:21:33"

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

ENTITY 	ex_2 IS
    PORT (
	bit1 : IN std_logic;
	bit2 : IN std_logic;
	saida : OUT std_logic
	);
END ex_2;

-- Design Ports Information
-- saida	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bit1	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bit2	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_bit1 : std_logic;
SIGNAL ww_bit2 : std_logic;
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \bit2~input_o\ : std_logic;
SIGNAL \bit1~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_bit2~input_o\ : std_logic;
SIGNAL \ALT_INV_bit1~input_o\ : std_logic;
SIGNAL \ALT_INV_saida~0_combout\ : std_logic;

BEGIN

ww_bit1 <= bit1;
ww_bit2 <= bit2;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bit2~input_o\ <= NOT \bit2~input_o\;
\ALT_INV_bit1~input_o\ <= NOT \bit1~input_o\;
\ALT_INV_saida~0_combout\ <= NOT \saida~0_combout\;

-- Location: IOOBUF_X89_Y8_N5
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X89_Y8_N38
\bit2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bit2,
	o => \bit2~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\bit1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bit1,
	o => \bit1~input_o\);

-- Location: LABCELL_X88_Y8_N0
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \bit1~input_o\ & ( !\bit2~input_o\ ) ) # ( !\bit1~input_o\ & ( \bit2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bit2~input_o\,
	datae => \ALT_INV_bit1~input_o\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X64_Y15_N3
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


