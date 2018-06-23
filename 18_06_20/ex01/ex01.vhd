LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
    ex01 IS
    GENERIC
    (
        -- predio de n andares
        n : INTEGER := 3
    );
    PORT
    (
        clk           : IN STD_LOGIC;
        rst           : IN STD_LOGIC;
        -- -- -- interface do operador
        -- botoes para chamar elevador
        -- os 3 primeiros são os botoes internos,
        -- os 3 ultimos sao os botoes externos ao elevador
        btn           : IN STD_LOGIC_vector((n - 1) + n DOWNTO 0);
        -- mostra botoes que estao apertados
        output_led    : OUT STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
        -- displays, mostra o andar atual do elevador
        floor_display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ex01;

ARCHITECTURE ex01 OF ex01 IS
    --enumerated type for the state machine
    TYPE state_type IS (and1, and2, and3);
    -- Register to hold the current state
    SIGNAL andar       : state_type;
	 
	 signal output_led_sig: integer;
	 
    SIGNAL final       : INTEGER;
    SIGNAL saidabin    : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS (clk, rst)
        VARIABLE prox_andar : state_type;
        VARIABLE btn_vec    : std_logic_vector(n - 1 DOWNTO 0);	  
	
    BEGIN
        IF (rst = '1') THEN

        END IF;

        IF (rising_edge(clk)) THEN

            --read buttons
            IF (btn(0) = '0') THEN
                btn_vec(0) := '1';
					 
            END IF;
            IF (btn(1) = '0') THEN
				    btn_vec(1) := '1';
					 
            END IF;
            IF (btn(2) = '0') THEN
                btn_vec(2) := '1';
  					 
				END IF;
            IF (btn(3) = '0') THEN
                btn_vec(0) := '1';

				END IF;
            IF (btn(4) = '0') THEN
                btn_vec(1) := '1';

            END IF;
            IF (btn(5) = '0') THEN
                btn_vec(2) := '1';

            END IF;
				
            --define next andar
            ----go over list to find where the elevator has to go
            IF (btn_vec(0) = '1') THEN
                prox_andar := and1;
                btn_vec(0) := '0';
            ELSIF (btn_vec(1) = '1') THEN
                prox_andar := and2;
                btn_vec(1) := '0';
            ELSIF (btn_vec(2) = '1') THEN
                prox_andar := and3;
                btn_vec(2) := '0';
            END IF;
            -- state machine
            CASE andar IS
                WHEN and1 =>
                    -- show output
                    final <= 1;
                    --go to next state
                    IF (prox_andar = and2) THEN
                        andar <= and2;
                    ELSIF (prox_andar = and3) THEN
                        andar <= and3;
                    END IF;

                WHEN and2 =>
                    -- show output
                    final <= 2;
                    --go to next state
                    IF (prox_andar = and1) THEN
                        andar <= and1;
                    ELSIF (prox_andar = and3) THEN
                        andar <= and3;
                    END IF;

                WHEN and3 =>
                    -- show output
                    final <= 3;
                    --go to next state
                    IF (prox_andar = and1) THEN
                        andar <= and1;
                    ELSIF (prox_andar = and2) THEN
                        andar <= and2;
                    END IF;
            END CASE;
        END IF;

    END PROCESS;
--	 
--	 output_led <= "100" when output_led_sig = 1 elsE
--	 "010" when output_led_sig = 1 elsE
--	 "100" when output_led_sig = 1 elsE
--	 "000"
--	 ;
	 
    saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 12));

    saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin(i) <= saidabin(i);
    END GENERATE saida_GENERATE_FOR;

    floor_display <= "0000001" WHEN saidadecbin = "0000" ELSE
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
END architecture;


