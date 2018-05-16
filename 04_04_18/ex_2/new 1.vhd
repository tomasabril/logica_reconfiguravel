3) Crie um detector de padrões simples, utilizando M chaves 
para o padrão a ser procurado e N chaves para o vetor de busca. 
A saída do circuito deve indicar se o padrão foi encontrado no 
vetor ou não.
Por exemplo, com M = 3 e se o padrão for “101” e o vetor de busca
“1101000” (N = 7), o padrão foi encontrado e o LED deve estar acesso.


library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--
ENTITY ex_1  IS 
	GENERIC (M : NATURAL := 2);
	GENERIC (N : NATURAL := 4);
	PORT(
		entrada_padrao : IN STD_LOGIC_VECTOR (M-1 DOWNTO 0);
		entrada_busca : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		saida : OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE ex_1 OF ex_1 IS
	SIGNAL padrao : STD_LOGIC_VECTOR (M-1 DOWNTO 0);
	SIGNAL total : INTEGER;
BEGIN
	--put a '1' if it was equal
	padrao_GENERATE_FOR: for i in 0 to M-1 generate
		padrao(i) <= '1' when entada_padrao(i) = entada_busca(i) else
		'0';
	end generate sum_GENERATE_FOR;
	
	--sum the content of M, if it has the same size as the length of M it self, saida <= '1'
	final_GENERATE_FOR: for i in 0 to M-1 generate
		total <= .............
	end generate sum_GENERATE_FOR;
	
	
	saida <= '1' when unsigned(total) = M else
			'0';
	

END ARCHITECTURE;