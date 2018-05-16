LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_1 IS
	PORT (
		clock_in : IN STD_LOGIC;
		tail_in  : IN STD_LOGIC;
		bot_dec  : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
		saida0   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida1   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		neg      : OUT STD_LOGIC
	);
END ex_1;

ARCHITECTURE ex_1 OF ex_1 IS
	SIGNAL led_bar      : UNSIGNED (9 DOWNTO 0) := "0000000000";

	SIGNAL final        : INTEGER;
	SIGNAL is_neg       : BIT;
 
	SIGNAL saidabin     : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL saidadecbin  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL saidadecbin2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	--leds <= std_LOGIC_VECTOR(led_bar);

	PROCESS (clock_in)
	-- clock é de 50_000_000 por segundo?
	VARIABLE debounce_counter : INTEGER := 0;
	VARIABLE tail_size        : INTEGER := 0;

	BEGIN
		IF rising_edge(clock_in) THEN
			IF (debounce_counter > 8_000_000) THEN
				-- 0, 4 segundos
				debounce_counter := 0;
			END IF;

			-- aumentar tail
			IF (tail_in = '0') THEN
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
			ELSIF (bot_dec = '0') THEN
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
		END IF;
 
		IF (tail_size > 0) THEN
			final  <= tail_size;
			is_neg <= '0';
		ELSE
			final  <= tail_size * ( - 1);
			is_neg <= '1';
		END IF;
 
 
	END PROCESS;
 
	neg <= '1' WHEN is_neg = '1' ELSE
	       '0';
 
 
	saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 8));
 
	saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
		saidadecbin(i)  <= saidabin(i);
		saidadecbin2(i) <= saidabin(i + 4);
	END GENERATE saida_GENERATE_FOR;

 
	saida0 <= "0000001" WHEN saidadecbin = "0000" ELSE
	          "1001111" WHEN saidadecbin = "0001" ELSE
	          "0010010" WHEN saidadecbin = "0010" ELSE
	          "0000110" WHEN saidadecbin = "0011" ELSE
	          "1001100" WHEN saidadecbin = "0100" ELSE
	          "0100100" WHEN saidadecbin = "0101" ELSE
	          "0100000" WHEN saidadecbin = "0110" ELSE
	          "0001111" WHEN saidadecbin = "0111" ELSE
	          "0000000" WHEN saidadecbin = "1000" ELSE
	          "0001100" WHEN saidadecbin = "1001" ELSE
	          "0001000" WHEN saidadecbin = "1010" ELSE
	          "1100000" WHEN saidadecbin = "1011" ELSE
	          "0110001" WHEN saidadecbin = "1100" ELSE
	          "1000010" WHEN saidadecbin = "1101" ELSE
	          "0110000" WHEN saidadecbin = "1110" ELSE
	          "0111000" WHEN saidadecbin = "1111" ELSE
	          "1111111";
 
	saida1 <= "0000001" WHEN saidadecbin2 = "0000" ELSE
	          "1001111" WHEN saidadecbin2 = "0001" ELSE
	          "0010010" WHEN saidadecbin2 = "0010" ELSE
	          "0000110" WHEN saidadecbin2 = "0011" ELSE
	          "1001100" WHEN saidadecbin2 = "0100" ELSE
	          "0100100" WHEN saidadecbin2 = "0101" ELSE
	          "0100000" WHEN saidadecbin2 = "0110" ELSE
	          "0001111" WHEN saidadecbin2 = "0111" ELSE
	          "0000000" WHEN saidadecbin2 = "1000" ELSE
	          "0001100" WHEN saidadecbin2 = "1001" ELSE
	          "0001000" WHEN saidadecbin2 = "1010" ELSE
	          "1100000" WHEN saidadecbin2 = "1011" ELSE
	          "0110001" WHEN saidadecbin2 = "1100" ELSE
	          "1000010" WHEN saidadecbin2 = "1101" ELSE
	          "0110000" WHEN saidadecbin2 = "1110" ELSE
	          "0111000" WHEN saidadecbin2 = "1111" ELSE
	          "1111111";

END ARCHITECTURE;