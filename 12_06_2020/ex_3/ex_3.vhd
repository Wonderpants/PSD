-- Apresente o código VHDL
-- para uma máquina de Moore que
-- simula um elevador de 2 pisos.
-- Para simplificar a subida ou
-- descida do elevador é controlada
-- por UP/DOWN.

library ieee;
use ieee.std_logic_1164.all; 

entity ex_3 is
	port(
		clk, reset: in std_logic;
		subir, descer: in std_logic;
		saida: out std_logic
	);
end ex_3;

ARCHITECTURE ex3 OF ex_3 IS
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
				if subir = '1' then
					saida <= '1';
					next_state <= um;
				else
					saida <= '0';
				end if;
			WHEN um =>
				if descer = '1' then
					saida <= '0';
					next_state <= zero;
				else
					saida <= '1';
				end if;
		END CASE;
	END PROCESS;
END ARCHITECTURE ex3;