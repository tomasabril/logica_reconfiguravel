LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

ENTITY ex_1 IS
  GENERIC(
    number_leds  :  INTEGER := 5); --counter size (19 bits gives 10.5ms with 50MHz clock)
  PORT(	
    clk , rst   : IN  STD_LOGIC;  --input clock
    input1  : IN  STD_LOGIC;  --input signal to be debounced
	 letter   : IN STD_logic_vector (7 downto 0);
	 saida    : OUT STD_logic_vector (6 downto 0);
	 led		          : OUT  std_logic_vector(9 downto 0));
END ENTITY;
ARCHITECTURE ex_1 OF ex_1 IS
  TYPE state IS (I,A, B, C);
  SIGNAL pr_state, nx_state: state;
  SIGNAL tmp : INTEGER;
  SIGNAL cat : character;
BEGIN
	process (clk, rst)
	VARIABLE clock_counter : INTEGER := 0;
	begin
		if rst = '1' then
			pr_state <= I;
	ELSIF rising_edge(clk) THEN
	tmp <= to_integer(signed(letter));
	cat <= character'val(tmp);
	clock_counter := (clock_counter + 1);
	IF (clock_counter >= 50_000_000) THEN
		  clock_counter := 0;
		IF (input1 = '1') THEN
			case pr_state is
				when I =>
					if (cat = 'a') then
						pr_state <= A;
					else
						pr_state <= I;
					end if;
				when A =>
					if (cat = 'b') then
						pr_state <= B;
					elsif (cat = 'a') then
						pr_state <= A;
					end if;
				when B =>
					if (cat = 'a') then
						pr_state <= C;
					elsif (cat = 'b') then
						pr_state <= I;
					end if;
				when C =>
					if (cat = 'a') then
						pr_state <= A;
				elsif (cat = 'b') then
						pr_state <= B;
					end if;
			end case;
		END IF;
	END IF;
	END IF;
	END PROCESS;
			
		led	 <= "0000000001" WHEN pr_state = A ELSE
					 "0000000010" WHEN pr_state = B ELSE
					 "1111110000" WHEN pr_state = C ELSE
					 "0000000000" WHEN pr_state = I ELSE
					 "0000001111";
		
	
		saida	 <= "1100000" WHEN (cat = 'b')  ELSE
					 "0001000" WHEN (cat = 'a')  ELSE
					 "1111111";

END ARCHITECTURE;
