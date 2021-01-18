LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY dado IS
	PORT
	(
		clk, reset : IN std_logic;
		GERA       : IN std_logic;
		Moore_ot   : OUT std_logic
	);
END dado;
ARCHITECTURE arch OF dado IS
	TYPE stateMoore_type IS (zero, um);
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
	PROCESS (stateMoore_reg, GERA)
	BEGIN
		stateMoore_next <= stateMoore_reg;
		CASE stateMoore_reg IS
			WHEN zero =>
				IF GERA = '1' THEN
					stateMoore_next <= um;
				ELSE
					stateMoore_next <= zero;
					Moore_ot        <= '0';
				END IF;
			WHEN um =>
				IF GERA = '1' THEN
					stateMoore_next <= zero;
				ELSE
					stateMoore_next <= um;
					Moore_ot        <= '1';
				END IF;
		END CASE;
	END PROCESS;
END arch;