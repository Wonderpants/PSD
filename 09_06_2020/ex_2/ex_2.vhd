-- Descreva em VHDL uma máquina
-- de Moore que gera um número
-- pseudoaleatório entre 0 e 1.

library ieee;
use ieee.std_logic_1164.all; 

entity ex_2 is
	port(
		clk, reset: in std_logic;
		entrada: in std_logic;
		saida: out std_logic
	);
end ex_2;

ARCHITECTURE ex2 OF ex_2 IS
	TYPE stateMoore_type IS (zero, um);
	SIGNAL present_state, next_state : stateMoore_type;

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
			present_state <= zero;
		ELSIF (clk'event AND clk = '1') THEN
			present_state <= next_state;
		ELSE
			NULL;
		END IF;
	END PROCESS;

	PROCESS (present_state) BEGIN
		next_state <= present_state;
		saida <= '0';
		CASE present_state IS
			WHEN zero =>
				if entrada = '1' then
					saida <= '1';
					next_state <= um;
				else
					saida <= '0';
				end if;
			WHEN um =>
				if entrada = '1' then
					saida <= '0';
					next_state <= zero;
				else
					saida <= '1';
				end if;
		END CASE;
	END PROCESS;
END ARCHITECTURE ex2;