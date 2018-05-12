
library ieee;
use IEEE.std_logic_1164.all;
--
ENTITY ex_1_logica  IS 
	PORT(
		a , b , c, d, e, f, g, h, i, j : IN STD_LOGIC ;
		lall: OUT STD_LOGIC;
		la , lb , lc, ld, le, lf, lg, lh, li, lj : OUT STD_LOGIC 

		);
END ENTITY;

ARCHITECTURE ex_1_logica OF ex_1_logica IS
	BEGIN
		 lall <= NOT (a AND b AND c AND d AND e AND f AND g AND h AND i AND j);
		 la <= a;
		 lb <= b;
		 lc <= c;
		 ld <= d;
		 le <= e;
		 lf <= f;
		 lg <= g;
		 lh <= h;
		 li <= i;
		 lj <= j;
END ARCHITECTURE;

