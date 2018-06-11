LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY ex_01 IS

	GENERIC(
		n	: INTEGER := 10
	);

	PORT(
		--input
		bot_up	: IN STD_LOGIC;
		bot_down	: IN STD_LOGIC;
		--process
		clk		: IN STD_LOGIC;
		--output
		output	: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0)
	);

END ex_01;


ARCHITECTURE ex_01 OF ex_01 IS

	SIGNAL queue				: STD_LOGIC_VECTOR(100 DOWNTO 0);
	SIGNAL queue_lenght		: INTEGER := 0;
	SIGNAL deposit				: INTEGER := 0;
	SIGNAL output_buffer		: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL x						: INTEGER := 0;
	SIGNAL y						: INTEGER := 0;
	
BEGIN

	--process to queue up pressed bottoms
	QUEUEING :	PROCESS(clk) IS
	
	BEGIN
	
		--condition to lower queue
		IF (x > y) THEN
			y <= x;
			queue <= STD_LOGIC_VECTOR(SHIFT_LEFT(UNSIGNED(queue), 1));
			queue_lenght <= queue_lenght - 1;
		END IF;
	
		--adds a 1 to the queue
		IF (bot_up = '1') THEN
			queue_lenght <= queue_lenght + 1;
			queue(queue_lenght) <= '1';
			deposit <= deposit + 1;
		END IF;
		
		--adds a 0 to the queue
		IF (bot_down = '1') THEN
			queue_lenght <= queue_lenght + 1;
			queue(queue_lenght) <= '0';
			deposit <= deposit - 1;
		END IF;
		
	END PROCESS QUEUEING;
	
	
	--process to execute the queues values
	PROCESSING :	PROCESS(clk) IS
	
	BEGIN
	
		--only proceeds when queue_lenght bigger than 1
		IF (queue_lenght >= 1) THEN
			--adds a drop in the bucket
			IF (queue(1) = '1') THEN
					output_generate_add : FOR i IN 0 TO n-1 LOOP
						IF (output_buffer(i) = '0') THEN
							output_buffer(i) <= '1';
							output <= output_buffer;
							--delay here?
							output_buffer(i) <= '0';
							output <= output_buffer;
						END IF;
					END LOOP output_generate_add;
					output_buffer(n-1-deposit) <= '1';
					output <= output_buffer;
			END IF;
			
			--takes out a drop out of the bucket
			IF (queue(1) = '0') THEN
					output_buffer(n-1-deposit) <= '0';
					output <= output_buffer;
					output_generate_remove : FOR i IN n-1 TO 0 LOOP
						IF (output_buffer(i) = '0') THEN
							output_buffer(i) <= '1';
							output <= output_buffer;
							--delay here?
							output_buffer(i) <= '0';
							output <= output_buffer;
						END IF;
					END LOOP output_generate_remove;
			END IF;
			x <= x + 1;
		END IF;
		
	END PROCESS PROCESSING;
	

END ARCHITECTURE;