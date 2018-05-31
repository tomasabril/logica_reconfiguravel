LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

ENTITY ex_1 IS
  GENERIC(
    counter_size  :  INTEGER := 19); --counter size (19 bits gives 10.5ms with 50MHz clock)
  PORT(	
    clk , rst   : IN  STD_LOGIC;  --input clock
    input1, input2 , input3 : IN  STD_LOGIC;  --input signal to be debounced
	 led		          : OUT  std_logic_vector(3 downto 0));
END ENTITY;
ARCHITECTURE ex_1 OF ex_1 IS
  TYPE state IS (A, B, C);
  SIGNAL pr_state, nx_state: state;
 
BEGIN
	process (clk, rst)
	begin
		if rst = '1' then
			pr_state <= A;
		elsif (clk'event and clk='1') then
		    pr_state <= nx_state;
	   end if;
	end process;
	
	process (pr_state, input1)
	 VARIABLE clock_counter : INTEGER := 0;
	 VARIABLE clock_counter : INTEGER := 0;
	begin
	clock_counter := (clock_counter + 1);
	IF (clock_counter >= 20_000_000) THEN
				clock_counter := 0;
			   input1<=0;
		case pr_state is
			when A =>
				if input1 = '1' then
					nx_state <= B;
				else
					nx_state <= A;
				end if;
			when B =>
				if input1 = '1' then
					nx_state <= C;
				else
					nx_state <= A;
				end if;
			when C =>
				if input1 = '1' then
					nx_state <= A;
				else
					nx_state <= B;
				end if;
		end case;
	END IF;
	END PROCESS;
	
	led <= "0001" when (pr_state = A) else
			 "0010" when (pr_state = B) else
			 "0100" when (pr_state = C) else
			 "1000";
END ARCHITECTURE;
