library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_misc.all;

ENTITY ex_3 IS 
	GENERIC(P: NATURAL :=3; --padrao
	        N: NATURAL :=7--sequencia
	);

	PORT(
		entrada_padrao : IN STD_LOGIC_VECTOR (P-1 DOWNTO 0);
		entrada_busca : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		saida : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE ex_3 OF ex_3 IS
	type vecOfNum is array (N-P downto 0) of std_logic_vector(P-1 downto 0);
	SIGNAL busca: vecOfNum;

	SIGNAL total : STD_LOGIC_VECTOR(N-P downto 0) ;
BEGIN
	--
	
	busca_GENERATE_FOR: for i in 0 to N-P generate

		padrao_GENERATE_FOR: for j in 0 to P-1 generate
			busca(i)(j) <= '1' when entrada_padrao(j) = entrada_busca(i+j) ELSE
			                       '0';
		end generate padrao_GENERATE_FOR;
		
		total(i) <=  and_reduce(busca(i));

	end generate busca_GENERATE_FOR;

	saida <= or_reduce(total);

	
END ARCHITECTURE;