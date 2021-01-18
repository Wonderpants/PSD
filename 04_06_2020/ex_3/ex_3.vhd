-- Apresentar um circuito que liga as luzes do
-- interior de um automóvel quando pelo
-- menos uma das portas está aberta.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex_3 is
	port(
		portas: in std_logic_vector(2 DOWNTO 0) ;
		luzes: out std_logic
	);
end ex_3;

architecture ex3 of ex_3 is begin
	luzes <= (portas(0) or portas(1) or portas(2));
end ex3;