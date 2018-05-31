-- see https://www.altera.com/support/support-resources/design-examples/design-software/vhdl/vhd-state-machine.html
-- for examples of state machines in vhdl
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
    ex_1 IS
    GENERIC
    (
        n : INTEGER := 4;
    );
    PORT
    (
        clock_in : IN STD_LOGIC;
        reset    : IN STD_LOGIC;
        -- interface do operador
        bot_raw  : IN STD_LOGIC;
        -- para mostrar qual sinal esta aberto
        leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
        -- displays
        -- saida0   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    );
END ex_1;

ARCHITECTURE ex_1 OF ex_1 IS
    SIGNAL led_bar : UNSIGNED (9 DOWNTO 0) := "0000000000";

    -- SIGNAL saidabin     : STD_LOGIC_VECTOR(11 DOWNTO 0);
    -- SIGNAL saidadecbin  : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Build an enumerated type for the state machine
    TYPE state_type IS (init, s1, s2);
    -- Register to hold the current state
    SIGNAL state : state_type;
BEGIN
    leds <= std_LOGIC_VECTOR(led_bar);

    PROCESS (clock_in, reset)
        -- button after debounce
        VARIABLE bot               : BOOLEAN;
        VARIABLE bot_still_pressed : BOOLEAN;
        VARIABLE debounce_counter  : INTEGER;

    BEGIN

        IF rising_edge(clock_in) THEN

            IF reset = '1' THEN
                bot               := false;
                bot_still_pressed := false;
                debounce_counter  := 0;
                state <= init;
            END IF;

            IF (bot_raw = '0') THEN
                debounce_counter := debounce_counter + 1;
                -- count press only after a few miliseconds, 10ms
                IF (debounce_counter > 500_000) THEN
                    -- button is currently pressed
                    IF (bot_still_pressed = false) THEN
                        bot               := true;
                        bot_still_pressed := true;
                    ELSIF (bot_still_pressed = true) THEN
                        bot := false;
                    END IF;
                END IF;
            ELSIF (bot_raw = '1') THEN
                -- button is not currently pressed
                bot               := false;
                bot_still_pressed := false;
            END if;
            if (debounce_counter > 5_000_000 and bot_raw = '1') then
              debounce_counter  := 0;
            end if;

            CASE state IS
                WHEN init =>
                    led_bar <= "1111001111";
                    state   <= s1;
                WHEN s1 =>
                    led_bar <= "1111000000";
                    IF (bot = '0') THEN
                        -- botao pressionado
                        state <= s2;
                    END IF;
                WHEN s2 =>
                    led_bar <= "0000001111";
                    IF (bot = '0') THEN
                        -- botao pressionado
                        state <= s1;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

    -- code bellow to display on 7 segment display
    -- saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 12));

    -- saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
    -- 	saidadecbin(i)  <= saidabin(i);
    -- END GENERATE saida_GENERATE_FOR;
    -- saida0 <= "0000001" WHEN saidadecbin = "0000" ELSE
    --           "1001111" WHEN saidadecbin = "0001" ELSE
    --           "0010010" WHEN saidadecbin = "0010" ELSE
    --           "0000110" WHEN saidadecbin = "0011" ELSE
    --           "1001100" WHEN saidadecbin = "0100" ELSE
    --           "0100100" WHEN saidadecbin = "0101" ELSE
    --           "0100000" WHEN saidadecbin = "0110" ELSE
    --           "0001111" WHEN saidadecbin = "0111" ELSE
    --           "0000000" WHEN saidadecbin = "1000" ELSE
    --           "0001100" WHEN saidadecbin = "1001" ELSE
    --           "0001000" WHEN saidadecbin = "1010" ELSE
    --           "1100000" WHEN saidadecbin = "1011" ELSE
    --           "0110001" WHEN saidadecbin = "1100" ELSE
    --           "1000010" WHEN saidadecbin = "1101" ELSE
    --           "0110000" WHEN saidadecbin = "1110" ELSE
    --           "0111000" WHEN saidadecbin = "1111" ELSE
    --           "1111111";
END architecture;


