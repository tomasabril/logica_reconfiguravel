
-- game: press the button when the correct led is on!

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.math_real.all;
ENTITY
	ex_2 IS
	PORT (
		clock_in : IN STD_LOGIC;
		botao    : IN STD_LOGIC;
		start    : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
    --ssds
		saida1   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida2   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END ex_2;

ARCHITECTURE ex_2 OF ex_2 IS
SIGNAL led_bar : UNSIGNED (9 DOWNTO 0) := "1100110011";
-- signals for ssd
SIGNAL final_score        : INTEGER;
SIGNAL final_goal         : INTEGER;
SIGNAL saidabin1          : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidabin2          : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidadecbin1       : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saidadecbin2       : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	leds <= std_LOGIC_VECTOR(led_bar);

	PROCESS (clock_in)
		-- clock é de 50_000_000 por segundo
		VARIABLE debounce_counter : INTEGER := 0;
    -- state 0=initial 1=active 2=game-over
    variable game_state       : integer := 0;
    variable current_score    : integer := 0;
    variable max_score        : integer := 9;
    variable goal_position    : integer := 0;
    variable current_pos      : integer := 0;

    variable led_speed        : integer := 0;
    variable clk_counter      : INTEGER:=0;

    variable should_click     : INTEGER:=0;
	BEGIN
		IF rising_edge(clock_in) THEN

			clk_counter := (clk_counter + 1);
      led_speed := (led_speed + 1);

			IF (debounce_counter > 5_000_000) THEN
				-- 0, 1 segundos
				debounce_counter := 0;
			END IF;

			-- botao start game
			IF (start = '1' and game_state /= 1) THEN
        game_state := 1;
        -- generate goal position
        goal_pos := clk_counter mod 9;
      end if;

      -- game
      if (game_state = 1) then
        -- when pressing button at correct time
        if(current_pos = goal_position) then
          should_click := 1;
        end if;
        if (should_click = 1 and botao = '1') then
          current_score := (current_score + 1);
          should_click := 0;
          -- force next led position
          led_speed := 51_000_000;
        end if;
        -- if button not clicked and position changed, game over
        if(should_click = 1 and current_pos /= goal_pos) then
          game_state := 2;
        end if;
        -- when pressing button at wrong time
        if(current_pos /= goal_position and botao = '1') then
          --game over
          game_state := 2;
        end if;
        -- score = max
        if(current_score >= max_score) then
          game_state := 2;
        end if;

      end if;

      -- generate next position every x seconds
      if (led_speed > (50_000_000 - (current_score * 2_000_000))) then
        current_pos := clk_counter mod 9;
        led_speed := 0;
      end if;

      -- reset cock counter every 100 secs
      if(clk_counter > 5_000_000_000) then
        clk_couner := 0;
      end if;

      -- write on leds
      if(game_state = 2) then
        -- game over
        led_bar <= "1111111111";
      elsif(game_state = 1) then
        -- write current pos to leds
        led_bar <= to_unsigned(current_pos, 9 downto 0);
      end if;

      -- write goal position on ssd
      final_score <= current_score;
      final_goal <= goal_position;

		END IF;
	END process;


	saidabin1 <= std_LOGIC_VECTOR(to_unsigned(final_score, 8));
	saidabin2 <= std_LOGIC_VECTOR(to_unsigned(final_goal, 8));

	saida_GENERATE_for : FOR i IN 0 TO 3 GENERATE
		saidadecbin1(i)  <= saidabin1(i);
		saidadecbin2(i) <= saidabin2(i);
	END GENERATE saida_GENERATE_FOR;


	saida1 <= "0000001" WHEN saidadecbin1 = "0000" ELSE
	          "1001111" WHEN saidadecbin1 = "0001" ELSE
	          "0010010" WHEN saidadecbin1 = "0010" ELSE
	          "0000110" WHEN saidadecbin1 = "0011" ELSE
	          "1001100" WHEN saidadecbin1 = "0100" ELSE
	          "0100100" WHEN saidadecbin1 = "0101" ELSE
	          "0100000" WHEN saidadecbin1 = "0110" ELSE
	          "0001111" WHEN saidadecbin1 = "0111" ELSE
	          "0000000" WHEN saidadecbin1 = "1000" ELSE
	          "0001100" WHEN saidadecbin1 = "1001" ELSE
	          "0001000" WHEN saidadecbin1 = "1010" ELSE
	          "1100000" WHEN saidadecbin1 = "1011" ELSE
	          "0110001" WHEN saidadecbin1 = "1100" ELSE
	          "1000010" WHEN saidadecbin1 = "1101" ELSE
	          "0110000" WHEN saidadecbin1 = "1110" ELSE
	          "0111000" WHEN saidadecbin1 = "1111" ELSE
	          "1111111";

	saida2 <= "0000001" WHEN saidadecbin2 = "0000" ELSE
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
