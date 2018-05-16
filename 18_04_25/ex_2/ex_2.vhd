LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_2 IS
	PORT (
		speed_m  : IN STD_LOGIC;
		speed_f  : IN STD_LOGIC;
		speed_s  : IN STD_LOGIC;
		reverse  : IN STD_LOGIC;
		clock_in : IN STD_LOGIC;
		tail_in  : IN STD_LOGIC;
		tail_de  : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END ex_2;

ARCHITECTURE ex_2 OF ex_2 IS
	SIGNAL led_bar : UNSIGNED (9 DOWNTO 0) := "1100000000";
BEGIN
	leds <= std_LOGIC_VECTOR(led_bar);

	PROCESS (clock_in)
	--clock é de 50_000_000 por segundo?
	VARIABLE speed            : INTEGER := 15_000_000;
	VARIABLE direction        : INTEGER := 1;
	VARIABLE tail_size        : INTEGER := 1;
	VARIABLE clock_counter    : INTEGER := 0;
	VARIABLE debounce_counter : INTEGER := 0;
	BEGIN
		IF rising_edge(clock_in) THEN
			clock_counter := (clock_counter + 1);

			-- debouncing
			IF (debounce_counter > 10_000_000) THEN
				-- 0, 2 segundos
				debounce_counter := 0;
			END IF;
 
			-- botão inverter direcao
			IF (reverse = '1') THEN
				direction := direction * ( - 1);
			END IF;

			-- controle de velocidade
			IF (speed_s = '1') THEN
				speed := 20_000_000;
			ELSIF (speed_m = '1') THEN
				speed := 10_000_000;
			ELSIF (speed_f = '1') THEN
				speed := 1_000_000;
			END IF;

			-- aumentar tail
			IF (tail_in = '1' AND tail_size < 8) THEN
				-- debouncing
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
			-- diminuir tail
			ELSIF (tail_de = '1' AND tail_size > 1) THEN
				-- debouncing
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

			-- fazer a cobra dar a volta quando chega no fim dos leds
			IF (clock_counter >= speed) THEN
				clock_counter := 0;
				IF (direction = 1) THEN
					led_bar <= rotate_right(led_bar, 1);
				ELSE
					led_bar <= rotate_left(led_bar, 1);
				END IF;
			END IF;

		END IF;
	END PROCESS;
END ARCHITECTURE;
