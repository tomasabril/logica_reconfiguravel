library ieee;
use IEEE.std_logic_1164.all;
--
ENTITY ex_3_logica  IS 
	PORT(
		a , b : IN STD_LOGIC ;
		o1, o2, o3, o4 : OUT STD_LOGIC

		);
END ENTITY;

ARCHITECTURE ex_3_logica OF ex_3_logica IS
	BEGIN
		o1 <= NOT(b) AND NOT(a);
		o2 <= NOT(b) AND a;
		o3 <= b AND NOT(a);
		o4 <= b AND a;
		
END ARCHITECTURE;
