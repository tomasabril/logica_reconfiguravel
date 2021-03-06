LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
    ex_2 IS
    GENERIC
    (
        n : INTEGER := 10
    );
    PORT
    (
        clock_in    : IN STD_LOGIC;
        reset       : IN STD_LOGIC;
        -- interface do operador
        bot_raw_1     : IN STD_LOGIC;
		  bot_raw_2   : IN STD_LOGIC;
		  input       : IN STD_LOGIC;
        -- para mostrar qual sinal esta aberto
        leds        : OUT STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
        -- displays
        saida0      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        -- debug
        reset_ativo : OUT STD_LOGIC;
        botao_ativo : OUT STD_LOGIC
    );
END ex_2;

ARCHITECTURE ex_2 OF ex_2 IS

    SIGNAL final       : INTEGER;
    SIGNAL saidabin    : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Build an enumerated type for the state machine
    TYPE state_type IS (init, G, Y, R);
    -- Register to hold the current state
    SIGNAL state  : state_type;
    SIGNAL result : std_logic;
	 SIGNAL current : INTEGER;

BEGIN

    PROCESS (clock_in, reset)
        -- button after debounce
        VARIABLE bot               : BOOLEAN;
        VARIABLE bot_still_pressed : INTEGER;
        VARIABLE counter           : INTEGER;
		  VARIABLE lado_dire         : INTEGER;
		  VARIABLE lado_esq          : INTEGER;
    BEGIN
        IF reset = '1' THEN
            counter := 0;
            state <= init;
            bot     := false;
				current <= 1;
            bot_still_pressed := 0;
				lado_dire :=  0;
				lado_esq  :=  1;
        ELSIF rising_edge(clock_in) THEN
            counter := counter + 1;
                CASE state IS
                    WHEN init =>
                        state <= G;
                    WHEN G =>
                        IF (counter >= 150_000_000 ) THEN
									 counter := 0;
                            state <= Y;
                        END IF;
                    WHEN Y =>
                        IF (counter >= 100_000_000 ) THEN
									 counter := 0;
                            state <= R;
                        END IF;
						  WHEN R =>
						       IF (bot_raw_1='0' and lado_esq = 1) THEN
										 state <= G;
										 lado_dire :=  1;
										 lado_esq  :=  0;
										 current <= 1- current;
										 counter := 0;
								 ELSIF (bot_raw_2='0' and lado_dire = 1) THEN
										 state <= G;
										 lado_dire :=  0;
										 lado_esq  :=  1;
										 counter := 0;
										 current <= 1- current;
								 END IF;
                END CASE;	
        END IF;
    END PROCESS;

    -- code bellow to display on 7 segment display
    final <=  0 WHEN state = G ELSE
				  1 WHEN state = R ELSE
				  2 WHEN state = Y ELSE
				  3;
    saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 12));

    saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin(i) <= saidabin(i);
    END GENERATE saida_GENERATE_FOR;

    leds <= "1100010000" WHEN state = G and current = 0 ELSE
            "0000100011" WHEN state = R and current = 0 ELSE
            "0011010000" WHEN state = Y and current = 0 ELSE
				"0000100011" WHEN state = G and current = 1 ELSE
            "1100010000" WHEN state = R and current = 1 ELSE
            "0000111000" WHEN state = Y and current = 1 ELSE
				"0100000010" WHEN state = init ELSE
            "1000000001";

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
END ARCHITECTURE;