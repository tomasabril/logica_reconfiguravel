
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_2  IS 
	GENERIC (N : NATURAL := 4);
	PORT(
		ent : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		saida : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE ex_2 OF ex_2 IS
	--type parcialSum is array (N-1 downto 0) of STD_LOGIC;
	SIGNAL sum : STD_LOGIC_VECTOR (N-2 DOWNTO 0);
BEGIN

 
	sum_GENERATE_FOR: for i in 0 to N-3 generate
		sum(i) <= not(ent(i) or ent(i+1) or ent(i+2));
	end generate sum_GENERATE_FOR;
	
	saida <= '1' when unsigned(sum) > 0 ELSE
				'0';
	

	
				

END ARCHITECTURE;