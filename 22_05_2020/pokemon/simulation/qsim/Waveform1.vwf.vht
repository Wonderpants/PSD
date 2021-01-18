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
-- Generated on "05/22/2020 15:03:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pokemon
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pokemon_vhd_vec_tst IS
END pokemon_vhd_vec_tst;
ARCHITECTURE pokemon_arch OF pokemon_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL jogadorA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL jogadorB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL pk_tie : STD_LOGIC;
SIGNAL pk_winA : STD_LOGIC;
SIGNAL pk_winB : STD_LOGIC;
COMPONENT pokemon
	PORT (
	jogadorA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	jogadorB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	pk_tie : OUT STD_LOGIC;
	pk_winA : OUT STD_LOGIC;
	pk_winB : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pokemon
	PORT MAP (
-- list connections between master ports and signals
	jogadorA => jogadorA,
	jogadorB => jogadorB,
	pk_tie => pk_tie,
	pk_winA => pk_winA,
	pk_winB => pk_winB
	);
-- jogadorA[1]
t_prcs_jogadorA_1: PROCESS
BEGIN
	jogadorA(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		jogadorA(1) <= '0';
		WAIT FOR 10000 ps;
		jogadorA(1) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	jogadorA(1) <= '0';
WAIT;
END PROCESS t_prcs_jogadorA_1;
-- jogadorA[0]
t_prcs_jogadorA_0: PROCESS
BEGIN
	jogadorA(0) <= '0';
WAIT;
END PROCESS t_prcs_jogadorA_0;
-- jogadorB[1]
t_prcs_jogadorB_1: PROCESS
BEGIN
	jogadorB(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		jogadorB(1) <= '0';
		WAIT FOR 10000 ps;
		jogadorB(1) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	jogadorB(1) <= '0';
WAIT;
END PROCESS t_prcs_jogadorB_1;
-- jogadorB[0]
t_prcs_jogadorB_0: PROCESS
BEGIN
	jogadorB(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		jogadorB(0) <= '0';
		WAIT FOR 10000 ps;
		jogadorB(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	jogadorB(0) <= '0';
WAIT;
END PROCESS t_prcs_jogadorB_0;
END pokemon_arch;
