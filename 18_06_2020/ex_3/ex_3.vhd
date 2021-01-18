-- Descreva em VHDL uma solução 
-- que permita numa trama IP fazer a 
-- deteção de uma sequencia 1-0,
-- corrica ou interpolada.

library ieee;
use ieee.std_logic_1164.all;

entity ex_3 is
port (
	clk, reset : in std_logic;
	seq: in std_logic;
	saida: out std_logic
	);
end ex_3;

architecture arch of ex_3 is
	type stateMealy is (zero, um);
	signal ps, ns : stateMealy;
begin
	process(clk, reset)
	begin
		if rising_edge(clk) then
			if (reset ='1') then
				ps <= zero;
			else 
				ps <= ns;
			end if;
		end if;
	end process;

	process(ps, seq, reset)
	begin
		ns <= ps;
		saida <= '0';
		case ps is 
			when zero =>
				ns <= um;
			when um =>
				if (seq='0') then
					ns <= zero;
					saida <='1';
				else 
					ns <= zero;
				end if;
		end case;
	end process;
end architecture arch;