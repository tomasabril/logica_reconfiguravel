
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_3  IS 
	GENERIC (N : NATURAL := 8);
	PORT(
		a , b , c , d , e , f , g , h , i , j, b0, b1, b2 : IN STD_LOGIC ;
		saida0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saida1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		saidabin: OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_3 OF ex_3 IS
	
		SIGNAL  s0 : INTEGER;
		SIGNAL  s1 : INTEGER;
		SIGNAL  s2 : INTEGER;
		SIGNAL  s3 : INTEGER;
		SIGNAL  s4 : INTEGER;
		SIGNAL  s5 : INTEGER;
		SIGNAL  s6 : INTEGER;
		SIGNAL  s7 : INTEGER;
		SIGNAL  s8 : INTEGER;
		SIGNAL  s9 : INTEGER;
		SIGNAL sb0 : INTEGER;
		SIGNAL sb1 : INTEGER;
		SIGNAL sb2 : INTEGER;
		
		SIGNAL xb: INTEGER;
		SIGNAL x : INTEGER;
		
	BEGIN
		 s0 <= to_integer(('0', '0', '0', a));
		 s1 <= to_integer(('0', '0', '0', b));
		 s2 <= to_integer(('0', '0', '0', c));
		 s3 <= to_integer(('0', '0', '0', d));
		 s4 <= to_integer(('0', '0', '0', e));
		 s5 <= to_integer(('0', '0', '0', f));
		 s6 <= to_integer(('0', '0', '0', g));
		 s7 <= to_integer(('0', '0', '0', h));
		 s8 <= to_integer(('0', '0', '0', i));
		 s9 <= to_integer(('0', '0', '0', j));
		 sb0 <= to_integer(('0', '0', '0', not (b0)));
		 sb1 <= to_integer(('0', '0', '0', not (b1)));
		 sb2 <= to_integer(('0', '0', '0', not (b2)));

		 xb <= sb0 + sb1 + sb2;
		
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


