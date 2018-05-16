LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.math_real.all;
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
		VARIABLE random 			  : INTEGER := 1;
	   VARIABLE seed1, seed2: positive;               -- seed values for random generator
      VARIABLE rand: real;   -- random real-number value in range 0 to 1.0 
	   variable range_of_rand : real := 9.0;    -- the range of random values created will be 0 to +1000.	
		variable count_pos : INTEGER:=0;
	BEGIN
		IF rising_edge(clock_in) THEN
		
			clock_counter := (clock_counter + 1);
			
			IF (debounce_counter > 5_000_000) THEN
				-- 0, 1 segundos
				debounce_counter := 0;
			END IF;
			
			-- botão start game 
			IF (start = '1') THEN 
				-- fazer a cobra dar a volta quando chega no fim dos leds
				IF (clock_counter >= speed and count_pos>random ) THEN
					uniform(seed1, seed2, rand);   -- generate random number
					random <= integer(rand*range_of_rand);  -- rescale to 0..1000, convert integer part 
					clock_counter := 0;
					count_pos := (count_pos + 1);
					-- print number in display 
					
					
					IF (direction = 1) THEN
						led_bar <= rotate_right(led_bar, 1);
					ELSE
						led_bar <= rotate_left(led_bar, 1);
					END IF;
				 END IF;
			END IF;
		   
		END IF;
		END PROCESS;
	END ARCHITECTURE;
