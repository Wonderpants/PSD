-- Projete em VHDL um sistem de controlo
-- que arranca um processo sempre que o 
-- CLOCK varia. Considere que no processo se
-- atribui "1" à saída out.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex_2 is
	port(
		Clk: in std_logic;
		saida: out std_logic
		);
end ex_2;

architecture ex2 of ex_2 is
begin
	clock: process(Clk) begin
		saida <= '1';
	end process clock;
end architecture ex2;