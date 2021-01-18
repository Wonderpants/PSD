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

-- DATE "05/29/2020 15:42:54"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex2 IS
    PORT (
	Clk : IN std_logic;
	max : IN std_logic_vector(2 DOWNTO 0);
	outMoore : OUT std_logic_vector(2 DOWNTO 0)
	);
END ex2;

-- Design Ports Information
-- outMoore[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMoore[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMoore[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_max : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_outMoore : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \max[2]~input_o\ : std_logic;
SIGNAL \max[0]~input_o\ : std_logic;
SIGNAL \max[1]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \PresentState.c~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \PresentState.a~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PresentState.b~q\ : std_logic;
SIGNAL \ALT_INV_PresentState.b~q\ : std_logic;
SIGNAL \ALT_INV_PresentState.a~q\ : std_logic;
SIGNAL \ALT_INV_PresentState.c~q\ : std_logic;
SIGNAL \ALT_INV_max[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_max[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_max[2]~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_max <= max;
outMoore <= ww_outMoore;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_PresentState.b~q\ <= NOT \PresentState.b~q\;
\ALT_INV_PresentState.a~q\ <= NOT \PresentState.a~q\;
\ALT_INV_PresentState.c~q\ <= NOT \PresentState.c~q\;
\ALT_INV_max[1]~input_o\ <= NOT \max[1]~input_o\;
\ALT_INV_max[0]~input_o\ <= NOT \max[0]~input_o\;
\ALT_INV_max[2]~input_o\ <= NOT \max[2]~input_o\;

-- Location: IOOBUF_X84_Y81_N36
\outMoore[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_outMoore(0));

-- Location: IOOBUF_X89_Y36_N56
\outMoore[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PresentState.b~q\,
	devoe => ww_devoe,
	o => ww_outMoore(1));

-- Location: IOOBUF_X89_Y36_N5
\outMoore[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PresentState.c~q\,
	devoe => ww_devoe,
	o => ww_outMoore(2));

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y36_N21
\max[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(2),
	o => \max[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\max[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(0),
	o => \max[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\max[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max(1),
	o => \max[1]~input_o\);

-- Location: LABCELL_X88_Y36_N57
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \PresentState.c~q\ & ( \PresentState.b~q\ & ( (!\max[2]~input_o\) # ((!\max[0]~input_o\) # (!\max[1]~input_o\)) ) ) ) # ( !\PresentState.c~q\ & ( \PresentState.b~q\ & ( (!\max[2]~input_o\) # ((!\max[0]~input_o\) # 
-- (!\max[1]~input_o\)) ) ) ) # ( \PresentState.c~q\ & ( !\PresentState.b~q\ & ( (!\max[2]~input_o\ & (\max[0]~input_o\ & !\max[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max[2]~input_o\,
	datac => \ALT_INV_max[0]~input_o\,
	datad => \ALT_INV_max[1]~input_o\,
	datae => \ALT_INV_PresentState.c~q\,
	dataf => \ALT_INV_PresentState.b~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y36_N59
\PresentState.c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PresentState.c~q\);

-- Location: LABCELL_X88_Y36_N30
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \PresentState.a~q\ & ( \PresentState.c~q\ & ( (!\max[1]~input_o\ & (\max[0]~input_o\ & !\max[2]~input_o\)) ) ) ) # ( !\PresentState.a~q\ & ( \PresentState.c~q\ & ( (!\max[1]~input_o\ & (\max[0]~input_o\ & !\max[2]~input_o\)) ) ) 
-- ) # ( \PresentState.a~q\ & ( !\PresentState.c~q\ ) ) # ( !\PresentState.a~q\ & ( !\PresentState.c~q\ & ( ((!\max[0]~input_o\) # (!\max[2]~input_o\)) # (\max[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111111111111100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max[1]~input_o\,
	datab => \ALT_INV_max[0]~input_o\,
	datac => \ALT_INV_max[2]~input_o\,
	datae => \ALT_INV_PresentState.a~q\,
	dataf => \ALT_INV_PresentState.c~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y36_N31
\PresentState.a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PresentState.a~q\);

-- Location: LABCELL_X88_Y36_N45
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \PresentState.b~q\ & ( \PresentState.a~q\ & ( (\max[2]~input_o\ & (\max[0]~input_o\ & \max[1]~input_o\)) ) ) ) # ( \PresentState.b~q\ & ( !\PresentState.a~q\ & ( (!\max[2]~input_o\) # ((!\max[0]~input_o\) # (\max[1]~input_o\)) ) 
-- ) ) # ( !\PresentState.b~q\ & ( !\PresentState.a~q\ & ( (!\max[2]~input_o\) # ((!\max[0]~input_o\) # (\max[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max[2]~input_o\,
	datac => \ALT_INV_max[0]~input_o\,
	datad => \ALT_INV_max[1]~input_o\,
	datae => \ALT_INV_PresentState.b~q\,
	dataf => \ALT_INV_PresentState.a~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y36_N47
\PresentState.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PresentState.b~q\);

-- Location: LABCELL_X42_Y7_N3
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


