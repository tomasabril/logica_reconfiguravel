LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_2 IS
	PORT (
		clock_in : IN STD_LOGIC;
		botao  : IN STD_LOGIC;
		start  : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END ex_2;

ARCHITECTURE ex_2 OF ex_2 IS
SIGNAL led_bar : UNSIGNED (9 DOWNTO 0) := "1000000000";
BEGIN
	leds <= std_LOGIC_VECTOR(led_bar);

	PROCESS (clock_in)
		-- clock é de 50_000_000 por segundo?
		VARIABLE debounce_counter : INTEGER := 0;
	BEGIN
		IF rising_edge(clock_in) THEN
			IF (debounce_counter > 5_000_000) THEN
				-- 0, 1 segundos
				debounce_counter := 0;
			END IF;

			

		END IF;
		END PROCESS;
	END ARCHITECTURE;
