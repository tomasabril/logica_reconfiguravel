
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY logica1  IS 
	PORT(

		in1, in2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE logica1 OF logica1 IS
	SIGNAL soma : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL subtracao: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL multiplicacao: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL divisao: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL x: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
		soma <= std_LOGIC_VECTOR(signed("00"&in1) + signed("00"&in2));
		subtracao <= std_LOGIC_VECTOR(signed("00"&in1) - signed("00"&in2));
		multiplicacao <= std_LOGIC_VECTOR(UNsigned(in1) * UNsigned(in2));
		divisao <= std_LOGIC_VECTOR(signed("00"&in1) / signed("00"&in2));

		x <= soma WHEN sel = "00" ELSE
			subtracao WHEN sel = "01" ELSE
			multiplicacao WHEN sel = "10" ELSE
			divisao WHEN sel = "11" ELSE
			"0000";

		saida <="0000001" WHEN x = "0000" ELSE
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