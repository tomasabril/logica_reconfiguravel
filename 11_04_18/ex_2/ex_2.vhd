
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_2  IS 
--	GENERIC (NS : NATURAL := 6);
   GENERIC (NB : NATURAL := 3);
	PORT(
		sw  : IN STD_LOGIC_VECTOR(NB-1 DOWNTO 0);
		bt  : IN STD_LOGIC_VECTOR(NB-1 DOWNTO 0);
		saida0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_2 OF ex_2 IS
	
	type  vector_b is array(NB-1 downto  0) of INTEGER;
	signal SB_VECTOR : vector_b;
	signal exp : vector_b;
	signal sum_exp : vector_b;
	SIGNAL sw_int 		:	INTEGER;
	SIGNAL total 		: 	INTEGER;
	signal final : vector_b;
	SIGNAL saidabin 	:	STD_LOGIC_VECTOR(3 downto 0);

		
	BEGIN
	bt_GENERATE_FOR: for i in 0 to NB-1 generate
		SB_VECTOR(i) <= 1 when (bt(i) = '1') else 0;
	end generate bt_GENERATE_FOR;	
	
	sw_int <= to_integer(unsigned(sw));
	
   f_GENERATE_FOR: for i in 0 to NB-2 generate
		exp(i) <= 2 when (SB_VECTOR(i) = 1) else 0;
	end generate f_GENERATE_FOR;
	
	sum_exp(0) <=exp(0)+ exp(1);
	sum_GENERATE_FOR: for i in 1 to NB-2 generate
		sum_exp(i) <= sum_exp(i-1) + exp(i+1);
	end generate sum_GENERATE_FOR;

	total <= sum_exp(NB-2)*sw_int;
	saidabin <= std_LOGIC_VECTOR(to_unsigned(total, 4));

	
--	saida_GENERATE_FOR: for i in 0 to NB-1 generate
--		 final(i)<= sw_int*2 when i < total;
--	end generate saida_GENERATE_FOR;

		
		saida0 <=   "0000001" WHEN saidabin =  "0000"  ELSE
						"1001111" WHEN saidabin =  "0001"  ELSE
						"0010010" WHEN saidabin =  "0010"  ELSE
						"0000110" WHEN saidabin =  "0011"  ELSE
						"1001100" WHEN saidabin =  "0100"  ELSE
						"0100100" WHEN saidabin =  "0101"  ELSE
						"0100000" WHEN saidabin =  "0110"  ELSE
						"0001111" WHEN saidabin =  "0111"  ELSE
						"0000000" WHEN saidabin =  "1000"  ELSE
						"0001100" WHEN saidabin =  "1001"  ELSE
						"0001000" WHEN saidabin =  "1010"  ELSE
						"0000011" WHEN saidabin =  "1011"  ELSE
						"0110001" WHEN saidabin =  "1100"  ELSE
						"1000010" WHEN saidabin =  "1101"  ELSE
						"0110000" WHEN saidabin =  "1110"  ELSE
						"0111000" WHEN saidabin =  "1110"  ELSE
						"1111111";
						
		saida1 <=   "0000001" WHEN saidabin =  "0000"  ELSE
						"1111111";

				

END ARCHITECTURE;


