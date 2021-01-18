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
-- Generated on "06/05/2020 15:49:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_4_vhd_vec_tst IS
END ex_4_vhd_vec_tst;
ARCHITECTURE ex_4_arch OF ex_4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL saida : STD_LOGIC;
SIGNAL sensores : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ex_4
	PORT (
	saida : OUT STD_LOGIC;
	sensores : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ex_4
	PORT MAP (
-- list connections between master ports and signals
	saida => saida,
	sensores => sensores
	);
-- sensores[2]
t_prcs_sensores_2: PROCESS
BEGIN
	sensores(2) <= '1';
	WAIT FOR 1500 ps;
	sensores(2) <= '0';
	WAIT FOR 1000 ps;
	sensores(2) <= '1';
	WAIT FOR 500 ps;
	sensores(2) <= '0';
	WAIT FOR 500 ps;
	sensores(2) <= '1';
	WAIT FOR 500 ps;
	sensores(2) <= '0';
	WAIT FOR 1000 ps;
	sensores(2) <= '1';
	WAIT FOR 500 ps;
	sensores(2) <= '0';
	WAIT FOR 500 ps;
	sensores(2) <= '1';
	WAIT FOR 2000 ps;
	sensores(2) <= '0';
	WAIT FOR 1000 ps;
	sensores(2) <= '1';
WAIT;
END PROCESS t_prcs_sensores_2;
-- sensores[1]
t_prcs_sensores_1: PROCESS
BEGIN
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 500 ps;
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 1000 ps;
	sensores(1) <= '0';
	WAIT FOR 1000 ps;
	sensores(1) <= '1';
	WAIT FOR 500 ps;
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 500 ps;
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 500 ps;
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 1000 ps;
	sensores(1) <= '0';
	WAIT FOR 500 ps;
	sensores(1) <= '1';
	WAIT FOR 1000 ps;
	sensores(1) <= '0';
WAIT;
END PROCESS t_prcs_sensores_1;
-- sensores[0]
t_prcs_sensores_0: PROCESS
BEGIN
	sensores(0) <= '0';
	WAIT FOR 1500 ps;
	sensores(0) <= '1';
	WAIT FOR 1000 ps;
	sensores(0) <= '0';
	WAIT FOR 1000 ps;
	sensores(0) <= '1';
	WAIT FOR 500 ps;
	sensores(0) <= '0';
	WAIT FOR 2500 ps;
	sensores(0) <= '1';
	WAIT FOR 1000 ps;
	sensores(0) <= '0';
	WAIT FOR 2000 ps;
	sensores(0) <= '1';
WAIT;
END PROCESS t_prcs_sensores_0;
END ex_4_arch;
