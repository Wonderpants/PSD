LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY infetado IS
	PORT (
		clk : IN std_logic;
		in1 : IN std_logic;
		Mealy_tick : OUT std_logic
	);
END infetado;

ARCHITECTURE arch OF infetado IS
	TYPE stateMealy_type IS (t, f, bd);
	SIGNAL present_state, next_state : stateMealy_type;

BEGIN
	PROCESS (clk)
	BEGIN
		IF (clk'EVENT AND clk = '1') THEN
			present_state <= next_state;
		ELSE
			NULL;
		END IF;
	END PROCESS;

	-- Mealy
	PROCESS (present_state, in1)
		BEGIN
			next_state <= present_state;

			Mealy_tick <= '0';
			CASE present_state IS
				WHEN t => 
					IF in1 = '1' THEN
						next_state <= f;
						Mealy_tick <= '0';
					END IF;

				WHEN f => 
					IF in1 = '1' THEN
						next_state <= bd;
					ELSE
						next_state <= t;
					END IF;
					Mealy_tick <= '0';

				WHEN bd => 
					IF in1 = '1' THEN
						next_state <= t;
						Mealy_tick <= '1';
					ELSE
						next_state <= t;
						Mealy_tick <= '0';
					END IF;
			END CASE;
		END PROCESS;
END arch;