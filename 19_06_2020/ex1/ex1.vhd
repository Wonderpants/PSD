-- Apresentar o código VHDL para:
-- - Parque de estacionamento (entrada e saída distintas);
-- Semáforo verde = livre, vermelho = cheio.
-- Lotação: 5 carros.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ex1 IS
	PORT (
		clk, reset : IN std_logic;
		entrada, saida : IN std_logic;
		verde, vermelho : OUT std_logic
	);
END ENTITY ex1;

ARCHITECTURE arch OF ex1 IS
	TYPE stateMoore IS (um, dois, tres, quatro, cinco);
	SIGNAL ps, ns : stateMoore;

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN ps <= um;
		ELSE ps <= ns;
		END IF;
	END PROCESS;

	PROCESS (ps, clk, entrada, saida)
	BEGIN
		ns <= ps;
		case ps is
			when um =>
				if entrada = '1' then
					verde <= '1';
					vermelho <='0';
					ps <= dois;
				else 
					vermelho <= '1';
					ns <= ps;
				end if;
			when dois =>
				if entrada = '1' then
					verde <='1';
					vermelho <='0';
					ns <= tres;
				elsif saida = '1' then
					vermelho<='1';
					ns<=um;
				end if;
			when tres =>
				if entrada = '1' then
					verde <= '1';
					vermelho <='0';
					ps<=quatro;
				elsif saida ='1' then
					vermelho<='1';
					ns<=dois;
				end if;
			when quatro =>
				if entrada = '1' then
					verde <= '1';
					vermelho <='0';
					ps<=cinco;
				elsif saida ='1' then
					vermelho<='1';
					ns<=tres;
				end if;
			when cinco =>
				if entrada = '1' then
					verde <= '1';
					vermelho <='1';
				elsif saida ='1' then
					ns<=tres;
				end if;
		end case;
	END PROCESS;
END ARCHITECTURE arch;