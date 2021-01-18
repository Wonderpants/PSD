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
-- Generated on "06/12/2020 15:35:31"
                                                             
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
SIGNAL descer : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
SIGNAL subir : STD_LOGIC;
COMPONENT ex_3
	PORT (
	clk : IN STD_LOGIC;
	descer : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	saida : OUT STD_LOGIC;
	subir : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex_3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	descer => descer,
	reset => reset,
	saida => saida,
	subir => subir
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- descer
t_prcs_descer: PROCESS
BEGIN
	descer <= '0';
	WAIT FOR 70000 ps;
	descer <= '1';
	WAIT FOR 50000 ps;
	descer <= '0';
	WAIT FOR 120000 ps;
	descer <= '1';
	WAIT FOR 80000 ps;
	descer <= '0';
	WAIT FOR 180000 ps;
	descer <= '1';
	WAIT FOR 150000 ps;
	descer <= '0';
WAIT;
END PROCESS t_prcs_descer;

-- subir
t_prcs_subir: PROCESS
BEGIN
	subir <= '0';
	WAIT FOR 10000 ps;
	subir <= '1';
	WAIT FOR 30000 ps;
	subir <= '0';
	WAIT FOR 120000 ps;
	subir <= '1';
	WAIT FOR 70000 ps;
	subir <= '0';
	WAIT FOR 100000 ps;
	subir <= '1';
	WAIT FOR 150000 ps;
	subir <= '0';
	WAIT FOR 190000 ps;
	subir <= '1';
	WAIT FOR 150000 ps;
	subir <= '0';
WAIT;
END PROCESS t_prcs_subir;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END ex_3_arch;
