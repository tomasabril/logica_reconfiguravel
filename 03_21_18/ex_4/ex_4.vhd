library ieee;
use IEEE.std_logic_1164.all;
--
ENTITY ex_4  IS 
	PORT(
		a , b , c , d : IN STD_LOGIC ;
 --// a b c d
		s1 , s2 , s3 , s4 : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE ex_4 OF ex_4 IS
	BEGIN
		s1 <= (a AND NOT(d)) OR (a AND NOT(b) and NOT(c));
		s2 <= (a AND b AND NOT(d));
		s3 <= (NOT(a) AND NOT(b) AND c AND NOT(d)) OR (a AND b AND c AND NOT(d));
		s4 <= (NOT(b) AND NOT(c) AND d);

END ARCHITECTURE;


