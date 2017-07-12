--MAC > Multiplier - Adder - Accumulator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

--------------------------------------------
entity mac is
	port (
		clock					:	in 		std_logic;
		ai						:	in 		std_logic_vector(7 downto 0);
		xi						:	in 		std_logic_vector(7 downto 0);
		mac_clean				:	in 		std_logic;
		data_out				:	out 	std_logic_vector (18 downto 0)
	);
end entity mac;

---------------------------------------------
architecture multiplier_accumulator_implentation of mac is 

	signal multiplier_result		:	std_logic_vector(15 downto 0);
	signal mult_out                 :   std_logic_vector(18 downto 0);
    signal mult_out_reg             :   std_logic_vector(15 downto 0);
    signal reg                      :   std_logic_vector(18 downto 0);
    signal adder_result             :   std_logic_vector(18 downto 0);

begin

    multiplier_result <= ai * xi;
    adder_result <= reg + mult_out;
	
	data_out <= reg;
	
	process (clock)
	begin
        
		if rising_edge(clock) then
            mult_out_reg <= multiplier_result;
            mult_out <= std_logic_vector(resize(signed(mult_out_reg), 19));
			if (mac_clean = '1') then 	-- Multiplier result is ready
                reg <= mult_out;
			else
                reg <= adder_result;
            end if;

		end if;
	end process;
end architecture multiplier_accumulator_implentation;

    
