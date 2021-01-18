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
-- Generated on "06/05/2020 15:21:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex_2_vhd_vec_tst IS
END ex_2_vhd_vec_tst;
ARCHITECTURE ex_2_arch OF ex_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bit1 : STD_LOGIC;
SIGNAL bit2 : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
COMPONENT ex_2
	PORT (
	bit1 : IN STD_LOGIC;
	bit2 : IN STD_LOGIC;
	saida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_2
	PORT MAP (
-- list connections between master ports and signals
	bit1 => bit1,
	bit2 => bit2,
	saida => saida
	);

-- bit1
t_prcs_bit1: PROCESS
BEGIN
	bit1 <= '0';
	WAIT FOR 984 ps;
	bit1 <= '1';
	WAIT FOR 880 ps;
	bit1 <= '0';
	WAIT FOR 154 ps;
	bit1 <= '1';
	WAIT FOR 180 ps;
	bit1 <= '0';
	WAIT FOR 320 ps;
	bit1 <= '1';
	WAIT FOR 180 ps;
	bit1 <= '0';
	WAIT FOR 302 ps;
	bit1 <= '1';
	WAIT FOR 127 ps;
	FOR i IN 1 TO 2
	LOOP
		bit1 <= '0';
		WAIT FOR 150 ps;
		bit1 <= '1';
		WAIT FOR 183 ps;
	END LOOP;
	bit1 <= '0';
	WAIT FOR 150 ps;
	bit1 <= '1';
	WAIT FOR 127 ps;
	bit1 <= '0';
	WAIT FOR 330 ps;
	bit1 <= '1';
	WAIT FOR 170 ps;
	bit1 <= '0';
	WAIT FOR 330 ps;
	bit1 <= '1';
	WAIT FOR 100 ps;
	bit1 <= '0';
	WAIT FOR 89 ps;
	bit1 <= '1';
	WAIT FOR 185 ps;
	bit1 <= '0';
	WAIT FOR 315 ps;
	bit1 <= '1';
	WAIT FOR 185 ps;
	bit1 <= '0';
	WAIT FOR 483 ps;
	bit1 <= '1';
	WAIT FOR 225 ps;
	bit1 <= '0';
	WAIT FOR 275 ps;
	bit1 <= '1';
	WAIT FOR 225 ps;
	bit1 <= '0';
	WAIT FOR 395 ps;
	bit1 <= '1';
	WAIT FOR 380 ps;
	bit1 <= '0';
	WAIT FOR 764 ps;
	bit1 <= '1';
	WAIT FOR 450 ps;
	bit1 <= '0';
	WAIT FOR 535 ps;
	bit1 <= '1';
	WAIT FOR 350 ps;
	bit1 <= '0';
WAIT;
END PROCESS t_prcs_bit1;

-- bit2
t_prcs_bit2: PROCESS
BEGIN
	bit2 <= '0';
	WAIT FOR 275 ps;
	bit2 <= '1';
	WAIT FOR 306 ps;
	FOR i IN 1 TO 2
	LOOP
		bit2 <= '0';
		WAIT FOR 360 ps;
		bit2 <= '1';
		WAIT FOR 306 ps;
	END LOOP;
	bit2 <= '0';
	WAIT FOR 87 ps;
	bit2 <= '1';
	WAIT FOR 307 ps;
	FOR i IN 1 TO 2
	LOOP
		bit2 <= '0';
		WAIT FOR 333 ps;
		bit2 <= '1';
		WAIT FOR 333 ps;
	END LOOP;
	bit2 <= '0';
	WAIT FOR 333 ps;
	bit2 <= '1';
	WAIT FOR 257 ps;
	bit2 <= '0';
	WAIT FOR 690 ps;
	bit2 <= '1';
	WAIT FOR 81 ps;
	bit2 <= '0';
	WAIT FOR 61 ps;
	bit2 <= '1';
	WAIT FOR 390 ps;
	bit2 <= '0';
	WAIT FOR 549 ps;
	bit2 <= '1';
	WAIT FOR 271 ps;
	bit2 <= '0';
	WAIT FOR 640 ps;
	bit2 <= '1';
	WAIT FOR 89 ps;
	bit2 <= '0';
	WAIT FOR 76 ps;
	bit2 <= '1';
	WAIT FOR 165 ps;
	bit2 <= '0';
	WAIT FOR 335 ps;
	bit2 <= '1';
	WAIT FOR 165 ps;
	bit2 <= '0';
	WAIT FOR 724 ps;
	bit2 <= '1';
	WAIT FOR 310 ps;
	bit2 <= '0';
	WAIT FOR 225 ps;
	bit2 <= '1';
	WAIT FOR 157 ps;
	FOR i IN 1 TO 2
	LOOP
		bit2 <= '0';
		WAIT FOR 170 ps;
		bit2 <= '1';
		WAIT FOR 163 ps;
	END LOOP;
	bit2 <= '0';
	WAIT FOR 170 ps;
	bit2 <= '1';
WAIT;
END PROCESS t_prcs_bit2;
END ex_2_arch;
