-- Descreva em VHDL uma máquina
-- de Moore que gera a sequencia 2-0-2.
-- A contagem só avança se o
-- sinal CONTA estiver ativo.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ex_2 IS
	PORT (
		clk, reset : IN std_logic;
		conta : IN std_logic;
		Moore_tick : OUT std_logic_vector(1 DOWNTO 0)
	);
END ENTITY ex_2;

ARCHITECTURE ex2 OF ex_2 IS
	TYPE stateMoore_type IS (dois, zero);
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
		Moore_tick <= "00";
		CASE present_state IS
			WHEN dois =>
				IF conta = '1' THEN
					Moore_tick <= "00";
					next_state <= zero;
				ELSE
					Moore_tick <= "10";
					next_state <= present_state;
				END IF;
			WHEN zero =>
				IF conta = '1' THEN
					Moore_tick <= "10";
					next_state <= dois;
				ELSE
					Moore_tick <= "00";
					next_state <= present_state;
				END IF;
		END CASE;
	END PROCESS;
END ARCHITECTURE ex2;