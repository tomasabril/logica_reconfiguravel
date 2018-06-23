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
        clock_in    : IN STD_LOGIC;
        reset       : IN STD_LOGIC;
        -- interface do operador
		  -- 
        btn_ext     : IN STD_LOGIC;
		  btn_int   : IN STD_LOGIC;
		  input       : IN STD_LOGIC;
        -- mostra botoes que estao apertador
        leds        : OUT STD_LOGIC_VECTOR (n - 1 DOWNTO 0);
        -- displays, mostra o andar atual do elevador
        saida0      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    );
END ex01;

ARCHITECTURE ex01 OF ex01 IS

    SIGNAL final       : INTEGER;
    SIGNAL saidabin    : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin : STD_LOGIC_VECTOR(3 DOWNTO 0);



BEGIN


    saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 12));

    saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin(i) <= saidabin(i);
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
END ARCHITECTURE;