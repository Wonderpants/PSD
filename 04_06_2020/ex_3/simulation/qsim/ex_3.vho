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

-- DATE "06/04/2020 15:48:39"

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

ENTITY 	ex_3 IS
    PORT (
	portas : IN std_logic_vector(2 DOWNTO 0);
	luzes : OUT std_logic
	);
END ex_3;

-- Design Ports Information
-- luzes	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portas[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portas[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portas[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_portas : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_luzes : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \portas[1]~input_o\ : std_logic;
SIGNAL \portas[0]~input_o\ : std_logic;
SIGNAL \portas[2]~input_o\ : std_logic;
SIGNAL \luzes~0_combout\ : std_logic;
SIGNAL \ALT_INV_portas[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_portas[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_portas[0]~input_o\ : std_logic;

BEGIN

ww_portas <= portas;
luzes <= ww_luzes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_portas[2]~input_o\ <= NOT \portas[2]~input_o\;
\ALT_INV_portas[1]~input_o\ <= NOT \portas[1]~input_o\;
\ALT_INV_portas[0]~input_o\ <= NOT \portas[0]~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\luzes~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \luzes~0_combout\,
	devoe => ww_devoe,
	o => ww_luzes);

-- Location: IOIBUF_X6_Y0_N35
\portas[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_portas(1),
	o => \portas[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\portas[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_portas(0),
	o => \portas[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\portas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_portas(2),
	o => \portas[2]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\luzes~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \luzes~0_combout\ = ( \portas[2]~input_o\ ) # ( !\portas[2]~input_o\ & ( (\portas[0]~input_o\) # (\portas[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_portas[1]~input_o\,
	datac => \ALT_INV_portas[0]~input_o\,
	dataf => \ALT_INV_portas[2]~input_o\,
	combout => \luzes~0_combout\);

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


