
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_1  IS 
	GENERIC (N : NATURAL := 8);
	PORT(
		ent : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		sel: IN STD_LOGIC;
		saida : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE ex_1 OF ex_1 IS
	type vecOfNum is array (N-1 downto 0) of std_logic_vector(3 downto 0);
	type parcialSum is array (N-2 downto 0) of Signed(3 downto 0);
	SIGNAL s0 : vecOfNum;
	SIGNAL sum : parcialSum;
BEGIN

	g_GENERATE_FOR: for i in 0 to N-1 generate
		s0(i) <= ( '0','0','0', ent(i));
	end generate g_GENERATE_FOR;
 
	sum(0) <= signed(s0(0)) + signed(s0(1));

	sum_GENERATE_FOR: for i in 1 to N-2 generate
		sum(i) <= sum(i-1) + signed(s0(i+1));
	end generate sum_GENERATE_FOR;

	saida <= '1' when sel = '0' and sum(N-2)(0) = '0' ELSE
				'0' when sel = '0' and sum(N-2)(0) = '1' ELSE
				'1' when sel = '1' and sum(N-2)(0) = '1' ELSE
				'0' when sel = '1' and sum(N-2)(0) = '0' ELSE
				'0';
	
				

END ARCHITECTURE;
