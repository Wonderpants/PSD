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

-- DATE "06/05/2020 15:49:32"

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

ENTITY 	ex_4 IS
    PORT (
	sensores : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic
	);
END ex_4;

-- Design Ports Information
-- saida	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensores[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensores[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensores[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sensores : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sensores[2]~input_o\ : std_logic;
SIGNAL \sensores[0]~input_o\ : std_logic;
SIGNAL \sensores[1]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_sensores[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sensores[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sensores[0]~input_o\ : std_logic;

BEGIN

ww_sensores <= sensores;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sensores[1]~input_o\ <= NOT \sensores[1]~input_o\;
\ALT_INV_sensores[2]~input_o\ <= NOT \sensores[2]~input_o\;
\ALT_INV_sensores[0]~input_o\ <= NOT \sensores[0]~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X6_Y0_N35
\sensores[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensores(2),
	o => \sensores[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\sensores[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensores(0),
	o => \sensores[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\sensores[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensores(1),
	o => \sensores[1]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \sensores[1]~input_o\ & ( (\sensores[0]~input_o\) # (\sensores[2]~input_o\) ) ) # ( !\sensores[1]~input_o\ & ( (\sensores[2]~input_o\ & \sensores[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sensores[2]~input_o\,
	datac => \ALT_INV_sensores[0]~input_o\,
	dataf => \ALT_INV_sensores[1]~input_o\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X80_Y37_N0
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


