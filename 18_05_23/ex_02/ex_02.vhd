 -- see https://www.altera.com/support/support-resources/design-examples/design-software/vhdl/vhd-state-machine.html
 -- for examples of state machines in vhdl


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY
	ex_02 IS
	GENERIC(n: INTEGER :=4
	);
	PORT (
		clock_in : IN STD_LOGIC;
		reset    : IN STD_LOGIC;
    -- interface do operador
		bot_raw      : IN STD_LOGIC;
    -- para mostrar qual sinal esta aberto
		leds     : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
    -- displays
		saida0   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    -- debug
    reset_ativo: out STD_LOGIC;
    botao_ativo: out STD_LOGIC
	);
END ex_02;

ARCHITECTURE ex_02 OF ex_02 IS

	SIGNAL final        : integer;
	SIGNAL saidabin     : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL saidadecbin  : STD_LOGIC_VECTOR(3 DOWNTO 0);

	-- Build an enumerated type for the state machine
	type state_type is (init, s1, s2);
	-- Register to hold the current state
	signal state : state_type;
	Signal result: std_logic;
	
BEGIN

PROCESS (clock_in, reset)
  -- button after debounce
  variable bot : boolean;
  variable bot_still_pressed : boolean;
  variable debounce_counter : integer;
  variable debounce_counter_s : integer;
  variable counter : integer;
	BEGIN
		IF reset = '1' THEN
		  debounce_counter := 0;
        state <= init;
		  bot := false;
        reset_ativo <= '0';
		ELSIF rising_edge(clock_in) then
			reset_ativo <= '1';
		if(bot_raw = '0') then
		   if(debounce_counter>100_000) then
			   result<= '0';
				debounce_counter:=0;
			else
				debounce_counter:= debounce_counter+1;
			end if;
		end if;
		
		if(bot_raw = '1') then
		   if(debounce_counter_s>100_000) then
			   result<= '1';
				debounce_counter_s:=0;
			else
				debounce_counter_s:= debounce_counter_s+1;
			end if;
		end if;
			
		counter :=  counter+1;
		if(counter>= 15_000_000) then
			counter := 0;
					case state is
					  when init =>
						 state <= s1;
					  when s1 =>
						 if (result = '0') then
							-- botao pressionado
							state <= s2;
						 end if;
					  when s2 =>
						 if (result = '0') then
							-- botao pressionado
							state <= s1;
						 end if;
					end case;
		end if;
		END IF;


	END PROCESS;

-- code bellow to display on 7 segment display
	final <=	0 WHEN state = s1 ELSE
	         1 WHEN state = s2 ELSE
				2 WHEN state = init ELSE
				3;

				 
	saidabin <= std_LOGIC_VECTOR(to_unsigned(final, 12));

	saida_GENERATE_FOR : FOR i IN 0 TO 3 GENERATE
		saidadecbin(i)  <= saidabin(i);
	END GENERATE saida_GENERATE_FOR;
	
					 
	leds <=	 "1111000000" WHEN state = s1 ELSE
	          "0000001111" WHEN state = s2 ELSE
				 "1111001111" WHEN state = init ELSE
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


END architecture;

