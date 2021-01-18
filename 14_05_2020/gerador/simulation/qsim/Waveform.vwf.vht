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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/14/2020 15:41:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gerador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gerador_vhd_vec_tst IS
END gerador_vhd_vec_tst;
ARCHITECTURE gerador_arch OF gerador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL GERA : STD_LOGIC;
SIGNAL Moore_ot : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT gerador
	PORT (
	clk : IN STD_LOGIC;
	GERA : IN STD_LOGIC;
	Moore_ot : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gerador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	GERA => GERA,
	Moore_ot => Moore_ot,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- GERA
t_prcs_GERA: PROCESS
BEGIN
	GERA <= '1';
WAIT;
END PROCESS t_prcs_GERA;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END gerador_arch;
