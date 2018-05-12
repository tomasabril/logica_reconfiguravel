library ieee;
use IEEE.std_logic_1164.all;
--
ENTITY ex_2_logica  IS 
	PORT(
		a , b , c : IN STD_LOGIC ;
		e, ou, nao, xou, ne, nou, nxou, buff : OUT STD_LOGIC 

		);
END ENTITY;

ARCHITECTURE ex_2_logica OF ex_2_logica IS
	BEGIN
		e <= a AND b AND c;
		ou <=  a OR b OR c;
		nao <= NOT(a);
		xou <= a XOR b XOR c;
		ne <= NOT(a AND b AND c);
		nou <=  (a NOR b) NOR c;
		nxou <= NOT(a XOR b XOR c);
		buff <= NOT(NOT(a));
		
END ARCHITECTURE;
