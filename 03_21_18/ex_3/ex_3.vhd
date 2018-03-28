library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_3  IS 
	PORT(
		a , b , c , d : IN STD_LOGIC ;
		led : OUT STD_LOGIC 
		);
END ENTITY;

ARCHITECTURE ex_3 OF ex_3 IS
		SIGNAL  s0 : UNSIGNED(3 downto 0);
		SIGNAL  s1 : UNSIGNED(3 downto 0);
		SIGNAL  s2 : UNSIGNED(3 downto 0);
		SIGNAL  s3 : UNSIGNED(3 downto 0);
		SIGNAL sum : UNSIGNED(3 downto 0);
	BEGIN
		 s0 <= ('0', '0', '0', a);
		 s1 <= ('0', '0', '0', b);
		 s2 <= ('0', '0', '0', c);
		 s3 <= ('0', '0', '0', d);
		 sum <= s0 + s1 + s2 + s3;
		 
		 led <=  '1' WHEN sum="0010" ELSE
					'1' WHEN sum="0011" ELSE
					'0';

END ARCHITECTURE;

