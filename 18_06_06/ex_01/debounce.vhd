--
library ieee;
use ieee.std_logic_1164.all;
--
entity debounce is
	generic
	(
		-- 100ms
		DEBOUNCE_CYCLES: natural := 5_000_000
	);
	port
	(
		clock : in std_logic;
		input : in std_logic;
		output: out std_logic
	);
end entity;
--
architecture arch of debounce is
	signal debounced : std_logic;
	signal counter   : natural range 0 to DEBOUNCE_CYCLES;
begin

	output <= debounced;

	process(clock)
	begin
		if rising_edge(clock) then
			-- 1a) Detect if input is different than current value
			if input /= debounced then
				-- 2) Start counting
				counter <= counter + 1;
				-- 3) If count reaches Td while input is still different than current value, toggle
				if counter = DEBOUNCE_CYCLES then
					debounced <= not debounced;
					counter <= 0;
				end if;
			else
				-- 1b) If input is the same as current value, reset count - we did not reach Td
				counter <= 0;
			end if;
		end if;
	end process;

end architecture;
--
