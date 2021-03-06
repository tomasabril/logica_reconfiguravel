LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
    ex_01 IS
    GENERIC
    (
        n : INTEGER := 9
    );
    PORT
    (
        clock_in    : IN STD_LOGIC;
        reset       : IN STD_LOGIC;
        -- interface do operador
        btn_add     : IN STD_LOGIC;
		  btn_rm      : IN STD_LOGIC;
        -- para mostrar qual sinal esta aberto
        output_led  : OUT STD_LOGIC_VECTOR (n  DOWNTO 0);
        -- displays
        output_seg  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		  output_seg_pos  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		  output_seg_count  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ex_01;

ARCHITECTURE ex_01 OF ex_01 IS

    SIGNAL final       : INTEGER;
    SIGNAL saidabin    : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 signal botao_inc_db : std_logic;
	 signal botao_dec_db : std_logic;
	 
	 SIGNAL saidabin_count  : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL saidadecbin_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
	 
	 SIGNAL saidabin_water   : STD_LOGIC_VECTOR(11 DOWNTO 0);
	 SIGNAL saidadecbin_water : STD_LOGIC_VECTOR(n DOWNTO 0);
	 
	 SIGNAL saidabin_pos   : STD_LOGIC_VECTOR(11 DOWNTO 0);
	 SIGNAL saidadecbin_pos : STD_LOGIC_VECTOR(3 DOWNTO 0);
    -- Build an enumerated type for the state machine
    TYPE state_type IS (INIT, SHOW, ANI);
    -- Register to hold the current state
    SIGNAL state  		: state_type;
    SIGNAL water_level 	: INTEGER;
	 SIGNAL show_count 	: INTEGER;
	 SIGNAL vector_out   : STD_LOGIC_VECTOR(n DOWNTO 0);  
	 SIGNAL bot 	      : INTEGER;
	 


BEGIN

	Inc_Buttondb: entity work.debounce port map
	(
		clock => clock_in,
		input => not(btn_add),
		output => botao_inc_db
	);
-- Debounce do botao de incremento do rabo
	Dec_Buttondb: entity work.debounce port map
	(
		clock => clock_in,
		input => not(btn_rm), 
		output => botao_dec_db
	);
	

    PROCESS (clock_in, reset)
        -- button after debounce
        VARIABLE queue_pos         : INTEGER;
        VARIABLE counter           : INTEGER;
		  VARIABLE counter_level     : INTEGER;
		  VARIABLE up_down           : INTEGER;
		  VARIABLE up_down_pos       : INTEGER;
		  VARIABLE aux_level         : INTEGER;
		  VARIABLE count_level       : INTEGER;
		  VARIABLE enchimento        : INTEGER;
		  VARIABLE trigger           : INTEGER;
		  VARIABLE vector_level      : STD_LOGIC_VECTOR(n DOWNTO 0);
		  VARIABLE queue        	  : STD_LOGIC_VECTOR(n DOWNTO 0); 
		  
    BEGIN
        IF reset = '1' THEN
            counter := 0;
            state <= init;
				queue_pos := 0;
				up_down_pos:=0;
				enchimento:=0;
				counter_level:=0;
				aux_level:=0;
				count_level:=0;
				queue := (others => '0');
				vector_level:= (others => '0');
				water_level <=0;
				trigger:=0;
			ELSIF rising_edge(clock_in) THEN
				IF (counter > 20_000_000) THEN
					counter := 0;
					IF (btn_add = '0') THEN
					    queue(queue_pos) := '1';
						 queue_pos := queue_pos + 1;
				   ELSIF(btn_rm = '0') THEN
					    queue(queue_pos) := '0';
						 queue_pos := queue_pos + 1;
				   END IF;
				END IF;
				counter := counter + 1;
            CASE state IS
                    WHEN INIT =>
                        state <= SHOW;
                    WHEN SHOW =>
						    IF (queue_pos > 0) THEN
                        IF (queue(0) = '1') THEN
									 queue_pos := queue_pos - 1;
									 IF (aux_level <= n) THEN
										aux_level := (aux_level + 1);
										up_down := 1;
									   trigger:=1;
									   state <= ANI;
									 END IF;
									 queue := STD_LOGIC_VECTOR(SHIFT_RIGHT(UNSIGNED(queue), 1));
								END IF;
							   IF (queue(0) = '0' and queue_pos > 0) THEN
									 queue_pos := queue_pos - 1;
									 queue := STD_LOGIC_VECTOR(SHIFT_RIGHT(UNSIGNED(queue), 1));
									 IF (aux_level > 0) THEN
										vector_level(aux_level):='0';
										aux_level := (aux_level - 1);
										up_down := 0;
										state <= ANI;
									 END IF;
                        END IF;
							 END IF;
						  WHEN ANI =>
								  counter_level := counter_level + 1;
						       IF (counter_level > 20_000_000) THEN
										counter_level :=0;
									IF (up_down_pos <= n - aux_level) THEN
										 up_down_pos := (up_down_pos + 1);
										 IF(up_down = 1) THEN
											 vector_level(n - up_down_pos ):= '1';
											 vector_level(n - up_down_pos + 1):= '0';
										 ELSIF (up_down = 0) THEN
											 vector_level(up_down_pos + aux_level):= '1';
											 vector_level(up_down_pos + aux_level-1):= '0';
										 END IF;
									ELSIF (up_down_pos > n - aux_level) THEN
											 up_down_pos := 0;
											 state <= SHOW;
									END IF;
								 END IF;
                END CASE;
				water_level <= aux_level; 
				vector_out <= vector_level;
				show_count <= up_down_pos;
				bot <= queue_pos;
        END IF;
    END PROCESS;
	 
	     -- code bellow to display on 7 segment display
    final <=  0 WHEN state = INIT ELSE
				  1 WHEN state = SHOW ELSE
				  2 WHEN state = ANI ELSE
				  3;
    saidabin <= std_LOGIC_VECTOR(to_unsigned(bot, 12));
	 saidabin_count <= std_LOGIC_VECTOR(to_unsigned(water_level, 12));
	 saidabin_water <= std_LOGIC_VECTOR(to_unsigned(water_level, 12));
	 saidabin_pos <= std_LOGIC_VECTOR(to_unsigned(show_count, 12));
	 
    saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin(i) <= saidabin(i);
    END GENERATE saida_GENERATE_FOR;
	 
	 out_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin_count(i) <= saidabin_count(i);
    END GENERATE out_GENERATE_FOR;
	 
	 water_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin_water(i) <= saidabin_water(i);
    END GENERATE water_GENERATE_FOR;
	 
	 pos_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
        saidadecbin_pos(i) <= saidabin_pos(i);
    END GENERATE pos_GENERATE_FOR;
	 
	 output_led <= vector_out;
	 
						  
output_seg_count <= "0000001" WHEN saidadecbin_count = "0000" ELSE
						  "1001111" WHEN saidadecbin_count = "0001" ELSE
						  "0010010" WHEN saidadecbin_count = "0010" ELSE
						  "0000110" WHEN saidadecbin_count = "0011" ELSE
						  "1001100" WHEN saidadecbin_count = "0100" ELSE
						  "0100100" WHEN saidadecbin_count = "0101" ELSE
						  "0100000" WHEN saidadecbin_count = "0110" ELSE
						  "0001111" WHEN saidadecbin_count = "0111" ELSE
						  "0000000" WHEN saidadecbin_count = "1000" ELSE
						  "0001100" WHEN saidadecbin_count = "1001" ELSE
						  "0001000" WHEN saidadecbin_count = "1010" ELSE
						  "1100000" WHEN saidadecbin_count = "1011" ELSE
						  "0110001" WHEN saidadecbin_count = "1100" ELSE
						  "1000010" WHEN saidadecbin_count = "1101" ELSE
						  "0110000" WHEN saidadecbin_count = "1110" ELSE
						  "0111000" WHEN saidadecbin_count = "1111" ELSE
						  "1111111";
	 
	 
    output_seg <="0000001" WHEN saidadecbin = "0000" ELSE
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

output_seg_pos <="0000001" WHEN saidadecbin_pos = "0000" ELSE
					  "1001111" WHEN saidadecbin_pos = "0001" ELSE
					  "0010010" WHEN saidadecbin_pos = "0010" ELSE
					  "0000110" WHEN saidadecbin_pos = "0011" ELSE
					  "1001100" WHEN saidadecbin_pos = "0100" ELSE
					  "0100100" WHEN saidadecbin_pos = "0101" ELSE
					  "0100000" WHEN saidadecbin_pos = "0110" ELSE
					  "0001111" WHEN saidadecbin_pos = "0111" ELSE
					  "0000000" WHEN saidadecbin_pos = "1000" ELSE
					  "0001100" WHEN saidadecbin_pos = "1001" ELSE
					  "0001000" WHEN saidadecbin_pos = "1010" ELSE
					  "1100000" WHEN saidadecbin_pos = "1011" ELSE
					  "0110001" WHEN saidadecbin_pos = "1100" ELSE
					  "1000010" WHEN saidadecbin_pos = "1101" ELSE
					  "0110000" WHEN saidadecbin_pos = "1110" ELSE
					  "0111000" WHEN saidadecbin_pos = "1111" ELSE
					  "1111111";

	
END ARCHITECTURE;