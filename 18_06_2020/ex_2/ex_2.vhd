-- Apresentar em código VHDL uma 
-- máquina que sinalize sempre que
-- encontra a sequencia 1-0 ou 0-0.
-- Recorra a uma única estrutura de
-- máquina de Mealy.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ex_2 IS
	PORT (
		clk, reset : IN std_logic;
		x : IN std_logic;
		Mealy_tick : OUT std_logic
	);
END ex_2;

ARCHITECTURE arch OF ex_2 IS
	TYPE stateMealy_type IS (a, b);
	SIGNAL stateMealy_reg, stateMealy_next : stateMealy_type;
BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
			stateMealy_reg <= a;
		ELSIF (clk'event AND clk = '1') THEN
			stateMealy_reg <= stateMealy_next;
		ELSE
			NULL;
		END IF;
	END PROCESS;

	-- Mealy Design
	PROCESS (stateMealy_reg)
	BEGIN
		--store current state as next
		stateMealy_next <= stateMealy_reg;

		Mealy_tick <= '0';
		CASE stateMealy_reg IS
			WHEN a =>
				IF x = '0' THEN
					stateMealy_next <= b;
					Mealy_tick <= '0';
				ELSE
					stateMealy_next <= a;
					Mealy_tick <= '0';
				END IF;
			WHEN b =>
				IF x = '0' or x='1' THEN
					stateMealy_next <= a;
					Mealy_tick <= '1';
				ELSE
					stateMealy_next <= b;
					Mealy_tick <= '1';
				END IF;
		END CASE;
	END PROCESS;
END arch;