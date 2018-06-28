LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
    ex_02 IS
    GENERIC
    (
        n : INTEGER := 10
    );

    PORT
    (
        --input
        but_up      : IN STD_LOGIC;
        but_down    : IN STD_LOGIC;
        --process
        clk         : IN STD_LOGIC;
        rst         : IN STD_LOGIC;
        --output
        output      : OUT STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
        water_level : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );

END ex_02;
ARCHITECTURE ex_02 OF ex_02 IS

    SIGNAL queue                     : STD_LOGIC_VECTOR(100 DOWNTO 0);
    SIGNAL output_buffer             : STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
	 SIGNAL x                         : INTEGER;
    SHARED VARIABLE queue_lenght_var : INTEGER;

	 SIGNAL but_up_o, but_down_o: std_logic;
	 signal deposit_sig: integer;
	 SIGNAL saidabin    : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	debounce_up: entity work.debounce port map(but_up, clk, but_up_o);
	debounce_down: entity work.debounce port map(but_down, clk, but_down_o);

    output <= "0000000000" when output_buffer = "0000000000" elsE
				 "1000000000" when output_buffer = "0000000001" elsE
				 "1100000000" when output_buffer = "0000000010" elsE
				 "1110000000" when output_buffer = "0000000011" elsE
				 "1111000000" when output_buffer = "0000000100" elsE
				 "1111100000" when output_buffer = "0000000101" elsE
				 "1000000000" when output_buffer = "1000000000" elsE
				 "1100000000" when output_buffer = "0100000000" elsE
				 "1110000000" when output_buffer = "1100000000" elsE
				 "0000000000" when output_buffer = "0000000000" else
				"0000110000";

    --process to queue up pressed buttons
    QUEUEING : PROCESS (clk, rst) IS
        VARIABLE but_plus               : BOOLEAN;
        VARIABLE but_plus_still_pressed : BOOLEAN;
        VARIABLE but_min                : BOOLEAN;
        VARIABLE but_min_still_pressed  : BOOLEAN;

    BEGIN
        IF (rst = '1') THEN
            queue_lenght_var       := 0;
            but_plus               := false;
            but_min                := false;
            but_plus_still_pressed := false;
            but_min_still_pressed  := false;
        
        elsIF (rising_edge(clk)) THEN

--            IF (but_up = '0') THEN
--                -- button is currently pressed
--                IF (but_plus_still_pressed = false) THEN
--                    but_plus               := true;
--                    but_plus_still_pressed := true;
--                ELSE
--                    but_plus := false;
--                END IF;
--            ELSIF (but_up = '1') THEN
--                -- button is not currently pressed
--                --bot               := false;
--                but_plus_still_pressed := false;
--            END IF;
--
--            IF (but_down = '0') THEN
--                -- button is currently pressed
--                IF (but_min_still_pressed = false) THEN
--                    but_min               := true;
--                    but_min_still_pressed := true;
--                ELSE
--                    but_min := false;
--                END IF;
--            ELSIF (but_down = '1') THEN
--                -- button is not currently pressed
--                --bot               := false;
--                but_min_still_pressed := false;
--            END IF;

            --condition to lower queue
            IF (x = 1 AND queue_lenght_var > 0) THEN
                queue <= STD_LOGIC_VECTOR(SHIFT_LEFT(UNSIGNED(queue), 1));
                queue_lenght_var := queue_lenght_var - 1;
            END IF;

            --adds a 1 to the queue
            IF (but_up_o = '0') THEN
                queue_lenght_var := queue_lenght_var + 1;
                queue(queue_lenght_var - 1) <= '1';
					 --but_plus := false;
            END IF;

            --adds a 0 to the queue
            IF (but_down_o = '0') THEN
                queue_lenght_var := queue_lenght_var + 1;
                queue(queue_lenght_var - 1) <= '0';
					 --but_min := false;
            END IF;

            --queue_lenght <= queue_lenght_var;

        END IF;

    END PROCESS QUEUEING;
	 
	 
    --process to execute the queues values
    PROCESSING : PROCESS (clk, rst) IS
        VARIABLE deposit : INTEGER;

    BEGIN
        IF (rst = '1') THEN
            deposit := 0;
        elsIF (rising_edge(clk)) THEN
            x <= 0;
            --only proceeds when queue_lenght bigger than 1
            IF (queue_lenght_var >= 1) THEN
                --adds a drop in the bucket
                IF (queue(0) = '1') THEN
                    --						output_generate_add : FOR i IN 0 TO n-1 LOOP
                    --							IF (output_buffer(i) = '0') THEN
                    --								output_buffer(i) <= '1';
                    --								output <= output_buffer;
                    --								--delay here?
                    --								output_buffer(i) <= '0';
                    --								output <= output_buffer;
                    --							END IF;
                    --						END LOOP output_generate_add;
                    --						output_buffer(n-1-deposit) <= '1';
                    --						output <= output_buffer;
                    deposit := deposit + 1;
                END IF;

                --takes out a drop out of the bucket
                IF (queue(0) = '0') THEN
                    --						output_buffer(n-1-deposit) <= '0';
                    --						output <= output_buffer;
                    --						output_generate_remove : FOR i IN n-1 TO 0 LOOP
                    --							IF (output_buffer(i) = '0') THEN
                    --								output_buffer(i) <= '1';
                    --								output <= output_buffer;
                    --								--delay here?
                    --								output_buffer(i) <= '0';
                    --								output <= output_buffer;
                    --							END IF;
                    --						END LOOP output_generate_remove;
                    deposit := deposit - 1;
                END IF;

            END IF;
            output_buffer <= std_LOGIC_VECTOR(to_unsigned(deposit, 10));
				deposit_sig <= deposit;
            x             <= 1;
        END IF;


    END PROCESS PROCESSING;
	 
	     saidabin <= std_LOGIC_VECTOR(to_unsigned(deposit_sig, 12));

    saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin(i) <= saidabin(i);
    END GENERATE saida_GENERATE_FOR;

    water_level <= "0000001" WHEN saidadecbin = "0000" ELSE
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
	 
END ARCHITECTURE;
