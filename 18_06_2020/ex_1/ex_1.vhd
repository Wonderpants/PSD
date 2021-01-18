-- Desenvolver uma solução que
-- permita detetar a sequencia 1-0-1.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ex_1 IS
	PORT (
		clk, reset : IN std_logic;
		x: in std_logic;
		Mealy_tick : OUT std_logic
	);
END ex_1;

ARCHITECTURE arch OF ex_1 IS
	TYPE stateMealy_type IS (a, b, c);
	SIGNAL stateMealy_reg, stateMealy_next : stateMealy_type;

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN -- go to state zero if reset
			stateMealy_reg <= a;
		ELSIF (clk'event AND clk = '1') THEN -- otherwise update the states
			stateMealy_reg <= stateMealy_next;
		ELSE
			NULL;
		END IF;
	END PROCESS;

	-- Mealy Design
	PROCESS (stateMealy_reg)
	BEGIN
		-- store current state as next
		stateMealy_next <= stateMealy_reg; --required: when no case statement is satisfied

		Mealy_tick <= '0'; -- set tick to zero (so that 'tick = 1' is available for 1 cycle only)
		CASE stateMealy_reg IS
			WHEN a =>
				IF x = '1' THEN
					stateMealy_next <= b;
					Mealy_tick <= '0';
				ELSE
					stateMealy_next <= a;
					Mealy_tick <= '0';
				END IF;
			when b =>
				if x = '0' then
					stateMealy_next <= c;
					Mealy_tick <= '0';
				ELSE
					stateMealy_next <= b;
					Mealy_tick <= '0';
				END IF;
			when c =>
				if x = '1' then
					stateMealy_next <= a;
					Mealy_tick <= '1';
				ELSE
					stateMealy_next <= c;
					Mealy_tick <= '1';
				END IF;					
		END CASE;
	END PROCESS;
END arch;