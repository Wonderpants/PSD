-- Um alarme deve sinalizar sempre que pelo
-- menos 2 dos 3 sensores disponíveis ficarem
-- ativos. apresentar o código respetivo em VHDL.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ex_4 is 
	port(
		bits: std_logic_vector(2 downto 0);
		saida: out std_logic
	);
end ex_4;

architecture ex4 of ex_4 is begin
	saida <= (bits(0) and bits(1)) or (bits(0) and bits(2)) or (bits(1) and bits(2));
end architecture ex4;