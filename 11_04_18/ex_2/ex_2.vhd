
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_2  IS 

   GENERIC (NB : NATURAL := 3 ;
				NS : NATURAL := 4
				);
	PORT(
		sw  : IN STD_LOGIC_VECTOR(NS-1 DOWNTO 0);
		bt  : IN STD_LOGIC_VECTOR(NB-1 DOWNTO 0);
		saida0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_2 OF ex_2 IS
	
	type  vector_b is array(NB-1 downto  0) of INTEGER;
	type  vetor_logic is array(NB-1 downto  0) of STD_LOGIC_VECTOR(3 downto 0);
	signal SB_VECTOR : vector_b;
	signal exp : vector_b;
	signal sum_exp : vector_b;
	SIGNAL sw_int 		:	INTEGER;
	SIGNAL total 		: 	INTEGER;
	SIGNAL final 		: 	INTEGER;
	SIGNAL saidabin 	:	STD_LOGIC_VECTOR(7 downto 0);
   SIGNAL saidadecbin :	STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL saidadecbin2 :	STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL saida_vector:	vetor_logic;
		
	BEGIN
	bt_GENERATE_FOR: for i in 0 to NB-1 generate
		SB_VECTOR(i) <= 1 when (bt(i) = '0') else 0;
	end generate bt_GENERATE_FOR;	
	
	sw_int <= to_integer(unsigned(sw));
	
--   f_GENERATE_FOR: for i in 0 to NB-2 generate
--		exp(i) <= 2 when (SB_VECTOR(i) = 1) else 0;
--	end generate f_GENERATE_FOR;
	
	sum_exp(0) <=SB_VECTOR(0)+ SB_VECTOR(1);
	sum_GENERATE_FOR: for i in 1 to NB-2 generate
		sum_exp(i) <= sum_exp(i-1) + SB_VECTOR(i+1);
	end generate sum_GENERATE_FOR;

	total <= 2**sum_exp(NB-2);
	final <= total*sw_int;
	
	saidabin  <= std_LOGIC_VECTOR(to_unsigned(final, 8));
	
	saida_GENERATE_FOR: for i in 0 to 3 generate
		 saidadecbin(i)<= saidabin(i);
		 saidadecbin2(i)<= saidabin(i+4);
	end generate saida_GENERATE_FOR;

		
		saida0 <=   "0000001" WHEN saidadecbin =  "0000"  ELSE
						"1001111" WHEN saidadecbin =  "0001"  ELSE
						"0010010" WHEN saidadecbin =  "0010"  ELSE
						"0000110" WHEN saidadecbin =  "0011"  ELSE
						"1001100" WHEN saidadecbin =  "0100"  ELSE
						"0100100" WHEN saidadecbin =  "0101"  ELSE
						"0100000" WHEN saidadecbin =  "0110"  ELSE
						"0001111" WHEN saidadecbin =  "0111"  ELSE
						"0000000" WHEN saidadecbin =  "1000"  ELSE
						"0001100" WHEN saidadecbin =  "1001"  ELSE
						"0001000" WHEN saidadecbin =  "1010"  ELSE
						"1100000" WHEN saidadecbin =  "1011"  ELSE
						"0110001" WHEN saidadecbin =  "1100"  ELSE
						"1000010" WHEN saidadecbin =  "1101"  ELSE
						"0110000" WHEN saidadecbin =  "1110"  ELSE
						"0111000" WHEN saidadecbin =  "1111"  ELSE
						"1111111";
						
		saida1 <=   "0000001" WHEN saidadecbin2 =  "0000"  ELSE
						"1001111" WHEN saidadecbin2 =  "0001"  ELSE
						"0010010" WHEN saidadecbin2 =  "0010"  ELSE
						"0000110" WHEN saidadecbin2 =  "0011"  ELSE
						"1001100" WHEN saidadecbin2 =  "0100"  ELSE
						"0100100" WHEN saidadecbin2 =  "0101"  ELSE
						"0100000" WHEN saidadecbin2 =  "0110"  ELSE
						"0001111" WHEN saidadecbin2 =  "0111"  ELSE
						"0000000" WHEN saidadecbin2 =  "1000"  ELSE
						"0001100" WHEN saidadecbin2 =  "1001"  ELSE
						"0001000" WHEN saidadecbin2 =  "1010"  ELSE
						"0000011" WHEN saidadecbin2 =  "1011"  ELSE
						"0110001" WHEN saidadecbin2 =  "1100"  ELSE
						"1000010" WHEN saidadecbin2 =  "1101"  ELSE
						"0110000" WHEN saidadecbin2 =  "1110"  ELSE
						"0111000" WHEN saidadecbin2 =  "1111"  ELSE
						"1111111";

				

END ARCHITECTURE;


