
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_2  IS 
	GENERIC (NS : NATURAL := 6);

   GENERIC (NB : NATURAL := 3);
	
	PORT(
		sw  : OUT STD_LOGIC_VECTOR(NS-1 DOWNTO 0);
		bt  : OUT STD_LOGIC_VECTOR(NB-1 DOWNTO 0);
		saida0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_2 OF ex_2 IS
	
	SIGNAL SB_VECTOR : is array (NB-1 to 0) of INTEGER;
	SIGNAL sum : is array (NB-1 to 0) of INTEGER;
	SIGNAL sw_int :  INTEGER;
	SIGNAL total : INTEGER;
	SIGNAL final : is array (NB-1 to 0) of INTEGER;

		
	BEGIN
	bt_GENERATE_FOR: for i in 0 to NB-1 generate
		SB_VECTOR(i) <= ( '0','0','0', bt(i));
	end generate bt_GENERATE_FOR;
	
	sw_int <= to_integer(unsigned(sw));
	
	sum(0) <=SB_VECTOR(0)+ SB_VECTOR(1);
	
	sum_GENERATE_FOR: for i in 1 to NB-2 generate
		sum(i) <= sum(i-1) + sb_VECTOR(i+1);
	end generate sum_GENERATE_FOR;

	total <= sum(NB-2);

	
	saida_GENERATE_FOR: for i in 0 to NB-1 generate
		 final(i)<= sw_int*2 when i < total;
	end generate saida_GENERATE_FOR;

		
		x <= (s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9)*(2*2*2) WHEN xb = 3 ELSE
		     (s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9)*(2*2)   WHEN xb = 2 ELSE
		     (s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9)*(2)     WHEN xb = 1 ELSE
		     (s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9);
		
		--vai ate 40
		-- esse e o display das unidades
		saida0 <=   "0000001" WHEN x = 0 or x = 16 or x = 32 ELSE
						"1001111" WHEN x = 1 or x = 17 or x = 33 ELSE
						"0010010" WHEN x = 2 or x = 18 or x = 34 ELSE
						"0000110" WHEN x = 3 or x = 19 or x = 35 ELSE
						"1001100" WHEN x = 4 or x = 20 or x = 36 ELSE
						"0100100" WHEN x = 5 or x = 21 or x = 37 ELSE
						"0100000" WHEN x = 6 or x = 22 or x = 38 ELSE
						"0001111" WHEN x = 7 or x = 23 or x = 39 ELSE
						"0000000" WHEN x = 8 or x = 24 or x = 40 ELSE
						"0001100" WHEN x = 9 or x = 25 or x = 41 ELSE
						"0001000" WHEN x = 10 or x = 26 or x = 42 ELSE
						"0000011" WHEN x = 11 or x = 27 or x = 43 ELSE
						"0110001" WHEN x = 12 or x = 28 or x = 44 ELSE
						"1000010" WHEN x = 13 or x = 29 or x = 45 ELSE
						"0110000" WHEN x = 14 or x = 30 or x = 46 ELSE
						"0111000" WHEN x = 15 or x = 31 or x = 47 ELSE
						"1111111";
					
		--vai ate 40
		-- esse e o display das dezenas
		saida1 <=   "0000001" WHEN x = 00 or x = 01 or x = 02 or x = 03 or x = 04 or x = 05 or x = 06 or x = 07 or x = 08 or x = 09 or x = 10 or x = 11 or x = 12 or x = 13 or x = 14 or x =15 ELSE
						"1001111" WHEN x = 16 or x = 17 or x = 18 or x = 19 or x = 20 or x = 21 or x = 22 or x = 23 or x = 24 or x = 25 or x = 26 or x = 27 or x = 28 or x = 29 or x = 30 or x = 31 ELSE
						"0010010" WHEN x = 32 or x = 33 or x = 34 or x = 35 or x = 36 or x = 37 or x = 38 or x = 39 or x = 40 or x = 41 or x = 42 or x = 43 or x = 44 or x = 45 or x = 46 or x = 47 ELSE
						"1111111";
				
		saidabin <= std_LOGIC_VECTOR(to_unsigned(x, 10));
				

END ARCHITECTURE;


