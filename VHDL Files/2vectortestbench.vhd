library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench is
end testbench;

architecture final_testbench of testbench is
	
	
	component project2
		port (
		clock		:	in	std_logic;
		reset		:	in	std_logic;
		valid		:	in	std_logic;
		hold_me		: 	in	std_logic;
		data_in		:	in	std_logic_vector (7 downto 0);
		data_out	:	out	std_logic_vector (18 downto 0);
		hold_prev	:	out std_logic
	);
	end component project2;
	
	signal 	clock 	: std_logic := 	'0';
	signal 	reset 	: std_logic := 	'1';
	signal 	valid 	: std_logic	:=	'0';
	signal 	datain 	: std_logic_vector (7 downto 0);
	signal 	dataout	: std_logic_vector (18 downto 0);
	signal	hold_me : std_logic;
	signal	hold_prev:std_logic;
	
	begin 
		--MAP TO COMPONENT
		project_map	:	project2	port map	(	clock 		=>	clock,
			 										reset 		=> 	reset, 
													valid 		=> 	valid, 
													hold_me		=>	hold_me,
													data_in 	=> 	datain,
													data_out	=> 	dataout,
													hold_prev	=>	hold_prev
												);
						
		--SET CLOCK PERIOD
		process
		begin
			clock <= '1';
			wait for 1 ns;
			clock <='0';
			wait for 1 ns;
		end process;
		
		--STARTING WITH RESET 
		process
		begin
			reset <= '1';
			wait for 8 ns;
			reset <= '0';
			
			wait for 188 ns;
			reset <= '1';
			wait for 10 ns;
			reset <= '0';
			wait;
		end process;
		
		--INITIALIZE THE INPUT AND SEND IT
		process
		begin
		
			hold_me <= '0';
			
			wait for 12 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns;
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns;
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "10000000";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			--------------------------------------------
			--2nd vector
			
			wait for 170 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 2 ns; 
			datain <= "01111111";
			valid <= '1';
			
			wait for 2 ns;
			valid <='0';
			
			wait for 170 ns;
			valid <= '1';
			datain <= "01010101";
			
			wait for 2 ns;
			valid <= '0';
			--TELOS
			wait;
		 
		end process;
		
end architecture final_testbench;
