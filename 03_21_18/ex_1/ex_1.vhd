library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_1  IS 
	PORT(
		a , b , c , d , e , f , g , h , i , j : IN STD_LOGIC ;
		saida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_1 OF ex_1 IS
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
		SIGNAL sum : UNSIGNED(3 downto 0);
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
		
		sum <= s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9;
		saida <= std_LOGIC_VECTOR(sum);
		 
END ARCHITECTURE;












