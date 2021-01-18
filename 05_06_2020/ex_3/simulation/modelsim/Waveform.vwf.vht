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
-- Generated on "06/05/2020 15:34:37"
                                                             
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
SIGNAL genoma : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL saida : STD_LOGIC;
COMPONENT ex_3
	PORT (
	genoma : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	saida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_3
	PORT MAP (
-- list connections between master ports and signals
	genoma => genoma,
	saida => saida
	);
-- genoma[9]
t_prcs_genoma_9: PROCESS
BEGIN
	genoma(9) <= '0';
	WAIT FOR 500 ps;
	genoma(9) <= '1';
	WAIT FOR 1000 ps;
	genoma(9) <= '0';
	WAIT FOR 500 ps;
	genoma(9) <= '1';
	WAIT FOR 3000 ps;
	genoma(9) <= '0';
	WAIT FOR 1500 ps;
	genoma(9) <= '1';
	WAIT FOR 1000 ps;
	genoma(9) <= '0';
	WAIT FOR 500 ps;
	genoma(9) <= '1';
WAIT;
END PROCESS t_prcs_genoma_9;
-- genoma[8]
t_prcs_genoma_8: PROCESS
BEGIN
	genoma(8) <= '1';
	WAIT FOR 1000 ps;
	genoma(8) <= '0';
	WAIT FOR 500 ps;
	genoma(8) <= '1';
	WAIT FOR 1000 ps;
	genoma(8) <= '0';
	WAIT FOR 500 ps;
	genoma(8) <= '1';
	WAIT FOR 4500 ps;
	genoma(8) <= '0';
	WAIT FOR 500 ps;
	genoma(8) <= '1';
	WAIT FOR 500 ps;
	genoma(8) <= '0';
	WAIT FOR 500 ps;
	genoma(8) <= '1';
	WAIT FOR 500 ps;
	genoma(8) <= '0';
WAIT;
END PROCESS t_prcs_genoma_8;
-- genoma[7]
t_prcs_genoma_7: PROCESS
BEGIN
	genoma(7) <= '1';
	WAIT FOR 500 ps;
	genoma(7) <= '0';
	WAIT FOR 500 ps;
	genoma(7) <= '1';
	WAIT FOR 1000 ps;
	genoma(7) <= '0';
	WAIT FOR 500 ps;
	genoma(7) <= '1';
	WAIT FOR 1500 ps;
	genoma(7) <= '0';
	WAIT FOR 1000 ps;
	genoma(7) <= '1';
	WAIT FOR 1500 ps;
	genoma(7) <= '0';
	WAIT FOR 1000 ps;
	genoma(7) <= '1';
	WAIT FOR 500 ps;
	genoma(7) <= '0';
	WAIT FOR 500 ps;
	genoma(7) <= '1';
WAIT;
END PROCESS t_prcs_genoma_7;
-- genoma[6]
t_prcs_genoma_6: PROCESS
BEGIN
	genoma(6) <= '0';
	WAIT FOR 2000 ps;
	genoma(6) <= '1';
	WAIT FOR 1000 ps;
	genoma(6) <= '0';
	WAIT FOR 500 ps;
	genoma(6) <= '1';
	WAIT FOR 1500 ps;
	genoma(6) <= '0';
	WAIT FOR 1000 ps;
	genoma(6) <= '1';
	WAIT FOR 2000 ps;
	genoma(6) <= '0';
WAIT;
END PROCESS t_prcs_genoma_6;
-- genoma[5]
t_prcs_genoma_5: PROCESS
BEGIN
	genoma(5) <= '0';
	WAIT FOR 500 ps;
	genoma(5) <= '1';
	WAIT FOR 2000 ps;
	genoma(5) <= '0';
	WAIT FOR 1000 ps;
	genoma(5) <= '1';
	WAIT FOR 1000 ps;
	genoma(5) <= '0';
	WAIT FOR 1500 ps;
	genoma(5) <= '1';
	WAIT FOR 500 ps;
	genoma(5) <= '0';
	WAIT FOR 1000 ps;
	genoma(5) <= '1';
WAIT;
END PROCESS t_prcs_genoma_5;
-- genoma[4]
t_prcs_genoma_4: PROCESS
BEGIN
	genoma(4) <= '1';
	WAIT FOR 1000 ps;
	genoma(4) <= '0';
	WAIT FOR 3500 ps;
	genoma(4) <= '1';
	WAIT FOR 500 ps;
	genoma(4) <= '0';
	WAIT FOR 1000 ps;
	genoma(4) <= '1';
	WAIT FOR 2000 ps;
	genoma(4) <= '0';
	WAIT FOR 500 ps;
	genoma(4) <= '1';
WAIT;
END PROCESS t_prcs_genoma_4;
-- genoma[3]
t_prcs_genoma_3: PROCESS
BEGIN
	genoma(3) <= '1';
	WAIT FOR 2000 ps;
	genoma(3) <= '0';
	WAIT FOR 4500 ps;
	genoma(3) <= '1';
	WAIT FOR 500 ps;
	genoma(3) <= '0';
	WAIT FOR 500 ps;
	genoma(3) <= '1';
	WAIT FOR 2000 ps;
	genoma(3) <= '0';
WAIT;
END PROCESS t_prcs_genoma_3;
-- genoma[2]
t_prcs_genoma_2: PROCESS
BEGIN
	genoma(2) <= '0';
	WAIT FOR 1000 ps;
	genoma(2) <= '1';
	WAIT FOR 500 ps;
	genoma(2) <= '0';
	WAIT FOR 500 ps;
	genoma(2) <= '1';
	WAIT FOR 500 ps;
	genoma(2) <= '0';
	WAIT FOR 500 ps;
	genoma(2) <= '1';
	WAIT FOR 1500 ps;
	genoma(2) <= '0';
	WAIT FOR 500 ps;
	genoma(2) <= '1';
	WAIT FOR 500 ps;
	genoma(2) <= '0';
	WAIT FOR 2500 ps;
	genoma(2) <= '1';
	WAIT FOR 500 ps;
	genoma(2) <= '0';
	WAIT FOR 1000 ps;
	genoma(2) <= '1';
WAIT;
END PROCESS t_prcs_genoma_2;
-- genoma[1]
t_prcs_genoma_1: PROCESS
BEGIN
	genoma(1) <= '0';
	WAIT FOR 1500 ps;
	genoma(1) <= '1';
	WAIT FOR 2000 ps;
	genoma(1) <= '0';
	WAIT FOR 500 ps;
	genoma(1) <= '1';
	WAIT FOR 500 ps;
	genoma(1) <= '0';
	WAIT FOR 1500 ps;
	genoma(1) <= '1';
	WAIT FOR 500 ps;
	genoma(1) <= '0';
	WAIT FOR 500 ps;
	genoma(1) <= '1';
	WAIT FOR 500 ps;
	genoma(1) <= '0';
	WAIT FOR 500 ps;
	genoma(1) <= '1';
	WAIT FOR 1500 ps;
	genoma(1) <= '0';
WAIT;
END PROCESS t_prcs_genoma_1;
-- genoma[0]
t_prcs_genoma_0: PROCESS
BEGIN
	genoma(0) <= '0';
	WAIT FOR 500 ps;
	genoma(0) <= '1';
	WAIT FOR 1500 ps;
	genoma(0) <= '0';
	WAIT FOR 1000 ps;
	genoma(0) <= '1';
	WAIT FOR 500 ps;
	genoma(0) <= '0';
	WAIT FOR 500 ps;
	genoma(0) <= '1';
	WAIT FOR 1000 ps;
	genoma(0) <= '0';
	WAIT FOR 2000 ps;
	genoma(0) <= '1';
	WAIT FOR 500 ps;
	genoma(0) <= '0';
	WAIT FOR 1500 ps;
	genoma(0) <= '1';
WAIT;
END PROCESS t_prcs_genoma_0;
END ex_3_arch;
