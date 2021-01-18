library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exercisio1 is
port
 (
  entrada: in std_logic;
  saida: in std_logic;
  clock, reset: in std_logic;
  lot_maxima: out std_logic
 );
end exercisio1;

architecture ex2dia_17 of exercisio1 is
 type estado is (st0, st1, st2, st3, st4);
 signal present_estado, proximo_estado : estado;

begin
 maq_moore: process(clock, reset)
	begin
	  if reset = '1' then
		present_estado <= st0;
	  elsif clock'event and clock = '1' then
		case(present_estado) is
			when st0 => 
			 if(entrada <= '1') then
			  proximo_estado <= st1;
			 elsif (saida<='1') then
			  present_estado <= st0;
			 end if;
			when st1 => 
			 if(entrada <= '1') then
			  proximo_estado <= st2;
			 elsif (saida<='1') then
			  proximo_estado <= st0;
			 end if;
			when st2 => 
			 if(entrada <= '1') then
			  proximo_estado <= st3;
			 elsif (saida<='1') then
			  proximo_estado <= st1;
			 end if;
			when st3 => 
			 if(entrada <= '1') then
			  proximo_estado <= st4;
			 elsif (saida<='1') then
			  proximo_estado <= st2;
			 end if;
			when st4 => 
			 if(entrada <= '1') then
			  lot_maxima <= '1';
			 elsif (saida<='1') then
			  proximo_estado <= st3;
			 end if;
		 end case;
	  end if;
	end process maq_moore;
end ex2dia_17;