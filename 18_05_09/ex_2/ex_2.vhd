
-- game: press the button when the correct led is on!

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;
ENTITY
	ex_2 IS
	PORT
	(
		reset    : IN STD_LOGIC;
		clock_in : IN STD_LOGIC;
		botao    : IN STD_LOGIC;
		start    : IN STD_LOGIC;
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
		--ssds
		saida1   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida2   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		--debugs--
		--debug game state
		debug_gs : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		--debug led_speed
		debug_ls : OUT STD_LOGIC
	);
END ex_2;

ARCHITECTURE ex_2 OF ex_2 IS
	SIGNAL led_bar      : UNSIGNED (9 DOWNTO 0) := "1100110011";
	-- signals for ssd
	SIGNAL final_score  : INTEGER;
	SIGNAL final_goal   : INTEGER;
	SIGNAL saidabin1    : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL saidabin2    : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL saidadecbin1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL saidadecbin2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	--debug
	SIGNAL debug_gs_s   : Unsigned(2 DOWNTO 0);
	SIGNAL debug_ls_s   : STD_LOGIC;
BEGIN

	debug_gs <= "000" WHEN debug_gs_s = "011" ELSE
		"100" WHEN debug_gs_s = "010" ELSE
		"110" WHEN debug_gs_s = "001" ELSE
		"111";
	debug_ls <= debug_ls_s;

	PROCESS (clock_in, reset)
		-- clock é de 50_000_000 por segundo
		--		VARIABLE debounce_counter : INTEGER := 0;
		-- state 0=initial 1=active 2=game-over 3=+1score
		VARIABLE game_state     : INTEGER;
		VARIABLE current_score  : INTEGER;
		VARIABLE max_score      : INTEGER;
		VARIABLE goal_position  : INTEGER;
		VARIABLE current_pos    : INTEGER;

		VARIABLE led_speed      : INTEGER;
		VARIABLE clk_counter    : INTEGER;
		VARIABLE clk_counter2   : INTEGER;
		VARIABLE clk_counter3   : INTEGER;

		VARIABLE should_click   : INTEGER;
		VARIABLE inc_score_wait : INTEGER;
	BEGIN

		IF rising_edge(clock_in) THEN
			IF reset = '1' THEN
				game_state     := 0;
				current_score  := 1;
				max_score      := 9;
				goal_position  := 2;
				led_speed      := 0;
				clk_counter    := 0;
				clk_counter2   := 0;
				clk_counter3   := 0;
				should_click   := 0;
				inc_score_wait := 0;
			END IF;
			--debug game state
			debug_gs_s <= to_unsigned(game_state, 3);
			--debug led_speed
			IF (clk_counter > 25_000_000) THEN
				debug_ls_s <= '1';
			ELSE
				debug_ls_s <= '0';
			END IF;
			clk_counter := (clk_counter + 1);
			led_speed   := (led_speed + 1);

			--			IF (debounce_counter > 5_000_000) THEN
			--				-- 0, 1 segundos
			--				debounce_counter := 0;
			--			END IF;

			-- botao start game
			IF (start = '0' AND game_state /= 1) THEN
				game_state    := 1;
				-- generate goal position
				clk_counter   := (clk_counter + 107);
				goal_position := clk_counter MOD 7;
				goal_position := goal_position + 1;
			END IF;

			-- game
			IF (game_state = 1) THEN
				-- when pressing button at correct time
				IF (current_pos = goal_position) THEN
					should_click := 1;
				END IF;
				IF (should_click = 1 AND botao = '0') THEN
					current_score := (current_score + 1);
					should_click  := 0;
					game_state    := 3;
				END IF;
				-- if button not clicked and position changed, game over
				IF (should_click = 1 AND current_pos /= goal_position) THEN
					game_state := 2;
				END IF;
				-- when pressing button at wrong time
				IF (current_pos /= goal_position AND botao = '0') THEN
					--game over
					game_state := 2;
				END IF;
				-- score = max
				IF (current_score >= max_score) THEN
					game_state := 2;
				END IF;

			END IF;

			-- + 1 score state, duration 1 sec
			IF (game_state = 3) THEN
				inc_score_wait := (inc_score_wait + 1);
				led_bar <= "0000000000";
				IF (inc_score_wait >= 50_000_000) THEN
					-- continue game
					game_state     := 1;
					inc_score_wait := 0;
					-- force next led position
					led_speed      := 51_000_000;
				END IF;
			END IF;

			-- generate next position every x seconds
			-- - (current_score * 2_000_000))
			IF (led_speed > (50_000_227 - (current_score * 2_000_000))) THEN
				current_pos  := clk_counter MOD 9;
				current_pos  := current_pos + clk_counter2 + clk_counter3;
				clk_counter2 := clk_counter2 + 1;
				IF (clk_counter3 = 0) THEN
					clk_counter3 := 1;
				ELSE
					clk_counter3 := 0;
				END IF;
				led_speed := 0;
			END IF;
			IF (clk_counter2 > 2) THEN
				clk_counter2 := 0;
			END IF;

			-- reset cock counter every 100 secs
			IF (clk_counter > 55_000_193) THEN
				clk_counter := 0;
			END IF;

			-- write on leds
			IF (game_state = 2) THEN
				-- game over
				led_bar <= "1111111111";
				current_score := 0;
			END IF;
			IF (game_state = 1) THEN
				-- write current pos to leds
				led_bar <= to_unsigned(current_pos, 10);
			END IF;

			-- write goal position on ssd
			final_score <= current_score;
			final_goal  <= goal_position;

		END IF;
	END PROCESS;

	--led bar
	leds <= 
	   "0000000000" WHEN led_bar = "0000000000" ELSE
		"0000000001" WHEN led_bar = "0000001010" ELSE
		"0000000010" WHEN led_bar = "0000001001" ELSE
		"0000000100" WHEN led_bar = "0000001000" ELSE
		"0000001000" WHEN led_bar = "0000000111" ELSE
		"0000010000" WHEN led_bar = "0000000110" ELSE
		"0000100000" WHEN led_bar = "0000000101" ELSE
		"0001000000" WHEN led_bar = "0000000100" ELSE
		"0010000000" WHEN led_bar = "0000000011" ELSE
		"0100000000" WHEN led_bar = "0000000010" ELSE
		"1000000000" WHEN led_bar = "0000000001" ELSE
		"1111111111" WHEN led_bar = "1111111111" ELSE
		"0000000000";
	--std_LOGIC_VECTOR(led_bar);

	-- ssds

	saidabin1 <= std_LOGIC_VECTOR(to_unsigned(final_score, 8));
	saidabin2 <= std_LOGIC_VECTOR(to_unsigned(final_goal, 8));

	saida_GENERATE_for : FOR i IN 0 TO 3 GENERATE
		saidadecbin1(i) <= saidabin1(i);
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

