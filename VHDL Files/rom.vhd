--ROM for the constant matrix H

library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_Std.all;
use IEEE.Std_logic_unsigned.all;

-----------------------------------
entity rom is
	port (
		clock				:	in	std_logic;
		address				:	in	std_logic_vector (5 downto 0);
		rom_enable			:	in	std_logic;
		data				:	out	std_logic_vector (7 downto 0)
    );
end entity rom;

------------------------------------
architecture rom of rom is
	type rom_type is array (0 to 2**6 -1) of std_logic_vector (7 downto 0);
	constant H : rom_type := (
		0   =>      "10000000",
		1   =>      "10000000",
    	2   =>      "10000000",
    	3   =>      "10000000",
    	4   =>      "10000000",
    	5   =>      "10000000",
    	6   =>      "10000000",
    	7   =>      "10000000",
    	8   =>      "10000000",
    	9   =>      "10000000",
    	10  =>      "10000000",
    	11  =>      "10000000",
    	12  =>      "10000000",
    	13  =>      "10000000",
    	14  =>      "10000000",
    	15  =>      "10000000",
    	16  =>      "10000000",
    	17  =>      "10000000", 
    	18  =>      "10000000",
    	19  =>      "10000000",
    	20  =>      "10000000",
    	21  =>      "10000000",
    	22  =>      "10000000",
    	23  =>      "10000000",
    	24  =>      "10000000",
    	25  =>      "10000000",
    	26  =>      "10000000",
    	27  =>      "10000000",
    	28  =>      "10000000",
    	29  =>      "10000000",
    	30  =>      "10000000",
    	31  =>      "10000000",
    	32  =>      "10000000",
    	33  =>      "10000000",
    	34  =>      "10000000",
    	35  =>      "10000000",
    	36  =>      "10000000",
    	37  =>      "10000000",
    	38  =>      "10000000",
    	39  =>      "10000000",
    	40  =>      "10000000",
    	41  =>      "10000000",
    	42  =>      "10000000",
    	43  =>      "10000000",
    	44  =>      "10000000",
    	45  =>      "10000000",
    	46  =>      "10000000",
    	47  =>      "10000000",
    	48  =>      "10000000",
    	49  =>      "10000000",
    	50  =>      "10000000",
    	51  =>      "10000000",
    	52  =>      "10000000",
    	53  =>      "10000000",
    	54  =>      "10000000",
    	55  =>      "10000000",
    	56  =>      "10000000",
    	57  =>      "10000000",
    	58  =>      "10000000",
    	59  =>      "10000000",
    	60  =>      "10000000",
    	61  =>      "10000000",
    	62  =>      "10000000",
    	63  =>      "10000000"
    );
begin
	process(clock)
	begin
		if rising_edge(clock) then
			if rom_enable = '1' then
				data <= H(to_integer(unsigned(address)));
			else
				data <= "00000000";
			end if;
		end if;
		
	end process;
end architecture rom;