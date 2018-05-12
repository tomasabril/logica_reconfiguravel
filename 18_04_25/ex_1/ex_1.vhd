LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_1 IS
	PORT (
		clock_in : IN STD_LOGIC;
		botao    : IN STD_LOGIC;
		led      : OUT STD_LOGIC
	);
END ex_1;

ARCHITECTURE ex_1 OF ex_1 IS
BEGIN

	PROCESS (clock_in)
		-- clock é de 50_000_000 por segundo?
		VARIABLE debounce_counter : INTEGER := 0;
		VARIABLE led_state    : STD_LOGIC := '0';
	BEGIN
		IF rising_edge(clock_in) THEN
			IF (debounce_counter > 5_000_000) THEN
				-- 0, 1 segundos
				debounce_counter := 0;
			END IF;

			IF (botao = '1') THEN
				IF (debounce_counter > 0) THEN
					debounce_counter := (debounce_counter + 1);
				END IF;
				IF (debounce_counter = 0) THEN
					debounce_counter := (debounce_counter + 1);
					IF (led_state = '1') THEN
						led_state := '0';
					ELSIF (led_state = '0') THEN
						led_state := '1';
					END IF;
				END IF;
			END IF;
		END IF;
		led <= led_state;
		END PROCESS;
	END ARCHITECTURE;
