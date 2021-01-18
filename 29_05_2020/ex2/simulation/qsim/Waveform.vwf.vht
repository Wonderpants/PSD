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
-- Generated on "05/29/2020 15:42:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex2_vhd_vec_tst IS
END ex2_vhd_vec_tst;
ARCHITECTURE ex2_arch OF ex2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL max : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL outMoore : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ex2
	PORT (
	Clk : IN STD_LOGIC;
	max : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	outMoore : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ex2
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	max => max,
	outMoore => outMoore
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 500 ps;
	Clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- max[2]
t_prcs_max_2: PROCESS
BEGIN
	max(2) <= '1';
	WAIT FOR 1000 ps;
	max(2) <= '0';
	WAIT FOR 1000 ps;
	max(2) <= '1';
	WAIT FOR 2000 ps;
	max(2) <= '0';
	WAIT FOR 1000 ps;
	max(2) <= '1';
	WAIT FOR 3000 ps;
	max(2) <= '0';
WAIT;
END PROCESS t_prcs_max_2;
-- max[1]
t_prcs_max_1: PROCESS
BEGIN
	max(1) <= '1';
	WAIT FOR 2000 ps;
	max(1) <= '0';
	WAIT FOR 1000 ps;
	max(1) <= '1';
	WAIT FOR 1000 ps;
	max(1) <= '0';
	WAIT FOR 4000 ps;
	max(1) <= '1';
WAIT;
END PROCESS t_prcs_max_1;
-- max[0]
t_prcs_max_0: PROCESS
BEGIN
	max(0) <= '0';
	WAIT FOR 8000 ps;
	max(0) <= '1';
WAIT;
END PROCESS t_prcs_max_0;
END ex2_arch;
