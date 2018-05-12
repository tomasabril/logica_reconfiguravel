library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_2  IS 
	PORT(
		a , b , c , d , e , f , g , h , i , j : IN STD_LOGIC ;
		saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_2 OF ex_2 IS
		SIGNAL  s0 : UNSIGNED(3 downto 0);
		SIGNAL  s1 : UNSIGNED(3 downto 0);
		SIGNAL  s2 : UNSIGNED(3 downto 0);
		SIGNAL  s3 : UNSIGNED(3 downto 0);
		SIGNAL  s4 : UNSIGNED(3 downto 0);
		SIGNAL  s5 : UNSIGNED(3 downto 0);
		SIGNAL  s6 : UNSIGNED(3 downto 0);
		SIGNAL  s7 : UNSIGNED(3 downto 0);
		SIGNAL  s8 : UNSIGNED(3 downto 0);
		SIGNAL  s9 : UNSIGNED(3 downto 0);
		SIGNAL x : UNSIGNED(3 downto 0);
	BEGIN
		 s0 <= ('0', '0', '0', a);
		 s1 <= ('0', '0', '0', b);
		 s2 <= ('0', '0', '0', c);
		 s3 <= ('0', '0', '0', d);
		 s4 <= ('0', '0', '0', e);
		 s5 <= ('0', '0', '0', f);
		 s6 <= ('0', '0', '0', g);
		 s7 <= ('0', '0', '0', h);
		 s8 <= ('0', '0', '0', i);
		 s9 <= ('0', '0', '0', j);
		
		x <= s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9;
		saida <=  "0000001" WHEN x = "0000" ELSE
				"1001111" WHEN x = "0001" ELSE
				"0010010" WHEN x = "0010" ELSE
				"0000110" WHEN x = "0011" ELSE
				"1001100" WHEN x = "0100" ELSE
				"0100100" WHEN x = "0101" ELSE
				"0100000" WHEN x = "0110" ELSE
				"0001111" WHEN x = "0111" ELSE
				"0000000" WHEN x = "1000" ELSE
				"0001100" WHEN x = "1001" ELSE
				"0001000" WHEN x = "1010" ELSE
				"1111111";




END ARCHITECTURE;