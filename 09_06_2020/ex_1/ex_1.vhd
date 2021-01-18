-- Apresentar uma máquina de
-- Moore que apresenta a contagem
-- perpétua: 2-4-6-2-…

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ex_1 IS
	PORT (
		clk, reset : IN std_logic;
		Moore_tick : OUT std_logic_vector(2 downto 0)
	);
END ENTITY ex_1;

ARCHITECTURE ex1 OF ex_1 IS
	TYPE stateMoore_type IS (dois, quatro, seis);
	SIGNAL present_state, next_state : stateMoore_type;

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
			present_state <= dois;
		ELSIF (clk'event AND clk = '1') THEN
			present_state <= next_state;
		ELSE
			NULL;
		END IF;
	END PROCESS;

	PROCESS (present_state) BEGIN
		next_state <= present_state;
		Moore_tick <= "001";
		CASE present_state IS
			WHEN dois =>
				Moore_tick <= "011";
				next_state <= quatro;
			WHEN quatro =>
				Moore_tick <= "101";
				next_state <= seis;
			WHEN seis =>
				Moore_tick <= "001";
				next_state <= dois;
		END CASE;
	END PROCESS;
END ARCHITECTURE ex1;