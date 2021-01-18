-- Apresente um processo que compara 2 bits
-- e sinaliza sempre que estes forem iguais.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ex_2 is 
	port (
		bit1: in std_logic;
		bit2: in std_logic;
		saida: out std_logic
	);
end ex_2;

architecture ex2 of ex_2 is begin
	saida <= bit1 xnor bit2;
end architecture ex2;