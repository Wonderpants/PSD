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
-- Generated on "04/30/2020 15:08:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercisio1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercisio1_vhd_vec_tst IS
END exercisio1_vhd_vec_tst;
ARCHITECTURE exercisio1_arch OF exercisio1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC;
COMPONENT exercisio1
	PORT (
	entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SAIDA : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercisio1
	PORT MAP (
-- list connections between master ports and signals
	entrada => entrada,
	SAIDA => SAIDA
	);
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_0;
END exercisio1_arch;