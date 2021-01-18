-- Apresentar o projeto de um leitor de 
-- bit_vetor de 6 elementos e que deteta se
-- este é um número par.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ex_1 IS
	PORT
	(
		entrada : IN std_logic_vector(0 to 5);
		saida   : OUT std_logic
	);
END ex_1;

architecture ex1 of ex_1 is begin
	saida <= not entrada(0);
end architecture ex1;