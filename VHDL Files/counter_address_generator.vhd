--Counter Address Generator

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_std.all;
use IEEE.Std_logic_unsigned.all;

-------------------------------------------
entity counter_address_generator is
  	port (
		clock				:	in	std_logic;
		reset				:	in  std_logic;
		need_to_reset		:	in	std_logic;
        enable				:	in	std_logic;
		read_enable			:	in	std_logic;
		address				:	out	std_logic_vector (7 downto 0)
   	);
end entity counter_address_generator;

------------------------------------------
architecture counter_address_generator of counter_address_generator is  
signal address_1: std_logic_vector (7 downto 0);
begin
	process(clock, reset)
  	begin
  	
  		
    	if rising_edge(clock) then
            if reset = '1' then
                address_1 <= "00000000";
    		elsif (enable = '1' or read_enable= '1') then
				if need_to_reset = '1' then
					address_1 <= "00000000";
				else
					address_1 <= address_1 + "00000001";
				end if;
            else 
                 address_1 <= address_1;
			end if;
		end if;
  	end process;
  	
  	address <= address_1;
end architecture counter_address_generator;
