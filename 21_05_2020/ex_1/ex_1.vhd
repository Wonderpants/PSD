LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ex_1 is
	port (
		entrada: in std_logic_vector(2 downto 0);
		saida: out std_logic
	);
end ex_1;

architecture esquema of ex_1 is 
	begin
		saida <= entrada(0) and entrada(1) and entrada(2);
end architecture esquema;