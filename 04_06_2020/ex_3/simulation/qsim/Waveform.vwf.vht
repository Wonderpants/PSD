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
-- Generated on "06/04/2020 15:48:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_3_vhd_vec_tst IS
END ex_3_vhd_vec_tst;
ARCHITECTURE ex_3_arch OF ex_3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL luzes : STD_LOGIC;
SIGNAL portas : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ex_3
	PORT (
	luzes : OUT STD_LOGIC;
	portas : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ex_3
	PORT MAP (
-- list connections between master ports and signals
	luzes => luzes,
	portas => portas
	);
-- portas[2]
t_prcs_portas_2: PROCESS
BEGIN
	portas(2) <= '0';
	WAIT FOR 3000 ps;
	portas(2) <= '1';
	WAIT FOR 2000 ps;
	portas(2) <= '0';
	WAIT FOR 5000 ps;
	portas(2) <= '1';
	WAIT FOR 4000 ps;
	portas(2) <= '0';
	WAIT FOR 1000 ps;
	portas(2) <= '1';
	WAIT FOR 1000 ps;
	portas(2) <= '0';
	WAIT FOR 2000 ps;
	portas(2) <= '1';
WAIT;
END PROCESS t_prcs_portas_2;
-- portas[1]
t_prcs_portas_1: PROCESS
BEGIN
	portas(1) <= '0';
	WAIT FOR 5000 ps;
	portas(1) <= '1';
	WAIT FOR 1000 ps;
	portas(1) <= '0';
	WAIT FOR 4000 ps;
	portas(1) <= '1';
	WAIT FOR 1000 ps;
	portas(1) <= '0';
	WAIT FOR 3000 ps;
	portas(1) <= '1';
	WAIT FOR 5000 ps;
	portas(1) <= '0';
WAIT;
END PROCESS t_prcs_portas_1;
-- portas[0]
t_prcs_portas_0: PROCESS
BEGIN
	portas(0) <= '1';
	WAIT FOR 1000 ps;
	portas(0) <= '0';
	WAIT FOR 2000 ps;
	portas(0) <= '1';
	WAIT FOR 3000 ps;
	portas(0) <= '0';
	WAIT FOR 3000 ps;
	portas(0) <= '1';
	WAIT FOR 1000 ps;
	portas(0) <= '0';
	WAIT FOR 1000 ps;
	portas(0) <= '1';
	WAIT FOR 1000 ps;
	portas(0) <= '0';
	WAIT FOR 1000 ps;
	portas(0) <= '1';
	WAIT FOR 1000 ps;
	portas(0) <= '0';
	WAIT FOR 2000 ps;
	portas(0) <= '1';
	WAIT FOR 2000 ps;
	portas(0) <= '0';
	WAIT FOR 1000 ps;
	portas(0) <= '1';
WAIT;
END PROCESS t_prcs_portas_0;
END ex_3_arch;
