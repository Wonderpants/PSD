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
-- Generated on "06/18/2020 15:31:42"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
COMPONENT ex_3
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	saida : OUT STD_LOGIC;
	seq : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	saida => saida,
	seq => seq
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- seq
t_prcs_seq: PROCESS
BEGIN
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 40000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 40000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 30000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 50000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 30000 ps;
	seq <= '0';
	WAIT FOR 40000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 20000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 40000 ps;
	seq <= '0';
	WAIT FOR 40000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 30000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 60000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 30000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 20000 ps;
	seq <= '0';
	WAIT FOR 30000 ps;
	seq <= '1';
	WAIT FOR 90000 ps;
	seq <= '0';
	WAIT FOR 10000 ps;
	seq <= '1';
	WAIT FOR 10000 ps;
	seq <= '0';
	WAIT FOR 20000 ps;
	seq <= '1';
WAIT;
END PROCESS t_prcs_seq;
END ex_3_arch;
