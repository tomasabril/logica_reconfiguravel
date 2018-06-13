LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity debounce is

    generic(d_time:	integer	:= 5            -- tempo de debounce
            );

    port(	bttn_i:	in  std_logic;
            clk:	in  std_logic;		
            bttn_o:	out std_logic
        );

end entity;

architecture debounce of debounce is

signal flag            :	std_logic_vector(1 downto 0);
signal changing        : 	std_logic;
signal debounce_counter:	integer := 0;

begin

	changing <= ff(0) xor ff(1);
	process(clk, bttn_i)
	begin
		if (rising_edge(clk)) then
			flag(0) <= bttn_i;
			flag(1) <= flag(0);
			if(changing = '1') then     -- se (flag(0) <> flag(1)), zera contador
				debounce_counter <= 0;
			elsif (debounce_counter < d_time) then -- se (flag(0) == flag(1)) e nao estourou o tempo,
				debounce_counter <= debounce_counter+ 1; -- incrementa contador
			else
				bttn_o <= flag(1);    --se (flag(0) == flag(1)) e o tempo estourou... saida recebe flag(1)
			end if;
		end if;
	end process;

end architecture;