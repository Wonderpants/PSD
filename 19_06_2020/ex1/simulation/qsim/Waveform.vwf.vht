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
-- Generated on "06/19/2020 14:55:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex1_vhd_vec_tst IS
END ex1_vhd_vec_tst;
ARCHITECTURE ex1_arch OF ex1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL entrada : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
SIGNAL verde : STD_LOGIC;
SIGNAL vermelho : STD_LOGIC;
COMPONENT ex1
	PORT (
	clk : IN STD_LOGIC;
	entrada : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	saida : IN STD_LOGIC;
	verde : OUT STD_LOGIC;
	vermelho : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	entrada => entrada,
	reset => reset,
	saida => saida,
	verde => verde,
	vermelho => vermelho
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- entrada
t_prcs_entrada: PROCESS
BEGIN
	entrada <= '1';
WAIT;
END PROCESS t_prcs_entrada;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- saida
t_prcs_saida: PROCESS
BEGIN
	saida <= '0';
WAIT;
END PROCESS t_prcs_saida;
END ex1_arch;
