LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ex1 IS
	PORT
	(
		clk, reset : IN std_logic;
		Moore_ot   : OUT std_logic
	);
END ex1;
ARCHITECTURE arch OF ex1 IS
	TYPE stateMoore_type IS (zero, um, dois);
	SIGNAL stateMoore_reg, stateMoore_next : stateMoore_type;
BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
			stateMoore_reg <= zero;
		ELSIF (clk'event AND clk = '1') THEN
			stateMoore_reg <= stateMoore_next;
		ELSE
			NULL;
		END IF;
	END PROCESS;
	PROCESS (stateMoore_reg)
	BEGIN
		stateMoore_next <= stateMoore_reg;
		CASE stateMoore_reg IS
			WHEN zero =>
				stateMoore_next <= um;
			WHEN um =>
				stateMoore_next <= dois;
			WHEN dois =>
				Moore_ot <= '1';
		END CASE;
	END PROCESS;
END arch;