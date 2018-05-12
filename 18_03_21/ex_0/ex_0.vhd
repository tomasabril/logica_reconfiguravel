library ieee;
use IEEE.std_logic_1164.all;

ENTITY ex_0  IS 
	PORT(
		a , b , c , d : IN STD_LOGIC ;
		S0: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		e , f , g , h : IN STD_LOGIC ;
		S1: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE ex_0 OF ex_0 IS
	BEGIN
		S0 <= "0000" WHEN (a='0' AND b ='0' AND c='0' AND d='0') ELSE
		      "0001" WHEN (a='0' AND b ='0' AND c='0' AND d='1') ELSE
	         "0011" WHEN (a='0' AND b ='0' AND c='1' AND d='0') ELSE
				"0010" WHEN (a='0' AND b ='0' AND c='1' AND d='1') ELSE
				"0110" WHEN (a='0' AND b ='1' AND c='0' AND d='0') ELSE
				"0111" WHEN (a='0' AND b ='1' AND c='0' AND d='1') ELSE
				"0101" WHEN (a='0' AND b ='1' AND c='1' AND d='0') ELSE
				"0100" WHEN (a='0' AND b ='1' AND c='1' AND d='1') ELSE
				"1100" WHEN (a='1' AND b ='0' AND c='0' AND d='0') ELSE
				"1101" WHEN (a='1' AND b ='0' AND c='0' AND d='1') ELSE
				"1111" WHEN (a='1' AND b ='0' AND c='1' AND d='0') ELSE
				"1010" WHEN (a='1' AND b ='0' AND c='1' AND d='1') ELSE
				"1001" WHEN (a='1' AND b ='1' AND c='0' AND d='0') ELSE
				"1000" ;
				
		 S1<= "0000" WHEN (a='0' AND b ='0' AND c='0' AND d='0') ELSE
		      "0001" WHEN (a='0' AND b ='0' AND c='0' AND d='1') ELSE
	         "0011" WHEN (a='0' AND b ='0' AND c='1' AND d='0') ELSE
				"0010" WHEN (a='0' AND b ='0' AND c='1' AND d='1') ELSE
				"0111" WHEN (a='0' AND b ='1' AND c='0' AND d='0') ELSE
				"0110" WHEN (a='0' AND b ='1' AND c='0' AND d='1') ELSE
				"0100" WHEN (a='0' AND b ='1' AND c='1' AND d='0') ELSE
				"0101" WHEN (a='0' AND b ='1' AND c='1' AND d='1') ELSE
				"1111" WHEN (a='1' AND b ='0' AND c='0' AND d='0') ELSE
				"1110" WHEN (a='1' AND b ='0' AND c='0' AND d='1') ELSE
				"1100" WHEN (a='1' AND b ='0' AND c='1' AND d='0') ELSE
				"1101" WHEN (a='1' AND b ='0' AND c='1' AND d='1') ELSE
				"1000" WHEN (a='1' AND b ='1' AND c='0' AND d='0') ELSE
				"1001" ;
END ARCHITECTURE;
