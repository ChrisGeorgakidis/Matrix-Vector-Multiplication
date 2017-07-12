--RAM for the result vector R

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;
use IEEE.Std_logic_unsigned.all;

-----------------------------------------
entity ramR is
	port(
		clock			:	in	std_logic;
		write_enable	:	in	std_logic;
		read_enable		:	in	std_logic;
		address 		:	in	std_logic_vector (2 downto 0);
		datain			:	in	std_logic_vector (18 downto 0);
		dataout 		:	out	std_logic_vector (18 downto 0)
	);
end entity ramR;

------------------------------------------
architecture ramR of ramR is
	type memRam is array (0 to 8 - 1 ) of std_logic_vector (18 downto 0);
	signal ram 			:	memRam;
	
begin
	
	process (clock) is
	
	begin
        
		if rising_edge(clock) then
			if write_enable = '1' then
				if conv_integer(address(2 downto 0)) < 8 then 
					ram(conv_integer(address(2 downto 0))) <= datain;	
				end if;
			end if;
			if read_enable = '1' then
				dataout <= ram (conv_integer(address));
			end if;
		end if;
	end process;
	
end architecture ramR;
