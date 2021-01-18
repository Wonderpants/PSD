LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY pokemon IS
	PORT
	(
		jogadorA                 : std_logic_vector(1 DOWNTO 0);
		jogadorB                 : std_logic_vector(1 DOWNTO 0);
		pk_winA, pk_winB, pk_tie : OUT std_logic
	);
END pokemon;
ARCHITECTURE poke OF pokemon IS BEGIN
	pokemon : PROCESS (jogadorA, jogadorB) IS BEGIN
		IF jogadorA > jogadorB THEN
			pk_winA <= '1';
			pk_winB <= '0';
			pk_tie <= '0';
		ELSIF jogadorB > jogadorA THEN
			pk_winB <= '1';
			pk_winA <= '0';
			pk_tie <= '0';
		ELSIF jogadorA = jogadorB THEN
			pk_tie <= '1';
			pk_winB <= '0';
			pk_winA <= '0';
		END IF;
	END PROCESS pokemon;
END ARCHITECTURE poke;