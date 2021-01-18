-- Projete em VHDL um sistem de contolo
-- que deteta se uma porta está aberta.
-- Considerar que um sensor P está ativo
-- quando a porta está fechada

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY ex_1 IS
	PORT
	(
		sensor : IN std_logic;
		P   : OUT std_logic
	);
END ex_1;
ARCHITECTURE ex1 OF ex_1 IS
BEGIN
	ex_1 : PROCESS (sensor) begin
		IF sensor = '1' THEN
			P <= '0';
		ELSE
			P <= '1';
		END IF;
	END PROCESS ex_1;
END ARCHITECTURE ex1;