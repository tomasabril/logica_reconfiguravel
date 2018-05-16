LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_1 IS
	PORT (
		clock_in : IN STD_LOGIC;
		tail_in  : IN STD_LOGIC;
		bot_dec  : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END ex_1;

ARCHITECTURE ex_1 OF ex_1 IS
SIGNAL led_bar : UNSIGNED (9 DOWNTO 0) := "1000000000";
BEGIN
	leds <= std_LOGIC_VECTOR(led_bar);

	PROCESS (clock_in)
		// clock é de 50_000_000 por segundo?
		VARIABLE debounce_counter : INTEGER := 0;
        VARIABLE tail_size        : INTEGER := 1;
	BEGIN
		IF rising_edge(clock_in) THEN
			IF (debounce_counter > 5_000_000) THEN
				// 0, 1 segundos
				debounce_counter := 0;
			END IF;

			// aumentar tail
			IF (tail_in = '1') THEN
				// debouncing
				IF (debounce_counter > 0) THEN
					debounce_counter := (debounce_counter + 1);
				END IF;
				IF (debounce_counter = 0) THEN
					debounce_counter := (debounce_counter + 1);
					tail_size        := tail_size + 1;
					FOR i IN 0 TO 9 LOOP
						IF (i      <= tail_size) THEN
							led_bar(i) <= '1';
						ELSE
							led_bar(i) <= '0';
						END IF;
					END LOOP;
				END IF;
				// diminuir tail
			ELSIF (tail_de = '1' AND ) THEN
				// debouncing
				IF (debounce_counter > 0) THEN
					debounce_counter := (debounce_counter + 1);
				END IF;
				IF (debounce_counter = 0) THEN
					debounce_counter := (debounce_counter + 1);
					tail_size        := tail_size - 1;
					FOR i IN 0 TO 9 LOOP
						IF (i      <= tail_size) THEN
							led_bar(i) <= '1';
						ELSE
							led_bar(i) <= '0';
						END IF;
					END LOOP;
				END IF;
			END IF;


		END PROCESS;
	END ARCHITECTURE;
