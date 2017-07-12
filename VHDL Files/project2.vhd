 -- Project 2

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;


------------------------------------
entity project2 is
	port (
		clock		:	in	std_logic;
		reset		:	in	std_logic;
		valid		:	in	std_logic;
		hold_me		: 	in	std_logic;
		data_in		:	in	std_logic_vector (7 downto 0);
		data_out	:	out	std_logic_vector (18 downto 0);
		hold_prev	:	out std_logic
	);
end entity project2;



-------------------------------------
architecture project_2 of project2 is

	-------------counter address generator----------------
	component counter_address_generator is
	  	port (
			clock				:	in	std_logic;
			reset				:	in  std_logic;
			need_to_reset		:	in	std_logic;
	        enable				:	in	std_logic;
			read_enable			:	in	std_logic;
			address				:	out	std_logic_vector (7 downto 0)
	   	);
	end component;

	-------------ramA----------------
	component ramA is
		port(
		clock			:	in	std_logic;
		write_enable	:	in	std_logic;
		read_enable		:	in	std_logic;
		address 		:	in	std_logic_vector (2 downto 0);
		datain			:	in	std_logic_vector (7 downto 0);
		dataout 		:	out	std_logic_vector (7 downto 0)
        );
	end component;

	-------------ramR----------------
	component ramR is
		port(
		clock			:	in	std_logic;
		write_enable	:	in	std_logic;
		read_enable		:	in	std_logic;
		address 		:	in	std_logic_vector (2 downto 0);
		datain			:	in	std_logic_vector (18 downto 0);
		dataout 		:	out	std_logic_vector (18 downto 0)
        );
	end component;

	-------------rom-----------------
	component rom is
		port (
		clock				:	in	std_logic;
		address				:	in	std_logic_vector (5 downto 0);
		rom_enable			:	in	std_logic;
		data				:	out	std_logic_vector (7 downto 0)
        );
	end component;

	-------------fsm-----------------
	component fsm
		port (
            clock                       :   in      std_logic;
			reset						:	in		std_logic;
			ramA_address				:	in		std_logic_vector (4 downto 0);
			ramR_address				:	in		std_logic_vector (7 downto 0);
			rom_address					:	in		std_logic_vector (7 downto 0);
			hold_me						:	in		std_logic;
			ramR_readEnable 			: 	out 	std_logic;
			ramA_writeEnable 			: 	out 	std_logic;
			ramA_readEnable 			: 	out 	std_logic;
			ramR_writeEnable			:	out		std_logic;
			rom_enable 					: 	out 	std_logic;
			counterAddressGen_H_enable 	: 	out 	std_logic;
			counterAddressGen_R_enable  :	out 	std_logic;
			counterAddressGen_A_restart : 	out 	std_logic;
			counterAddressGen_R_restart : 	out 	std_logic;
			counterAddressGen_H_restart : 	out 	std_logic;
			mac_clean 					: 	out 	std_logic;
			reset_fsm                   :   out     std_logic;
			hold_prev					:	out 	std_logic
		);
	end component fsm;

	-------------mac-----------------
	component mac is 
		port (
		clock					:	in 		std_logic;
		ai						:	in 		std_logic_vector(7 downto 0);
		xi						:	in 		std_logic_vector(7 downto 0);
		mac_clean				:	in 		std_logic;
		data_out				:	out 	std_logic_vector (18 downto 0)
        );
	end component;
	
	-------------------------------------
	
	signal	Ai					:	std_logic_vector	(7 downto 0);
	signal	Hi					:	std_logic_vector	(7 downto 0);
	signal	Ri					:	std_logic_vector	(18 downto 0);
	signal addressA				:	std_logic_vector	(7 downto 0);
	signal addressH				:	std_logic_vector	(7 downto 0);
	signal addressR				:	std_logic_vector	(7 downto 0);
	signal CAG_A_restart		: 	std_logic;
	signal CAG_H_restart		: 	std_logic;
	signal CAG_R_restart		: 	std_logic;
	signal ramA_write_enable	:	std_logic;
	signal ramA_read_enable		:	std_logic;
	signal ramR_write_enable	:	std_logic;
	signal ramR_read_enable		:	std_logic;
	signal romH_enable			:	std_logic;
	signal clear_register		:	std_logic;
	signal CAG_H_enable			: 	std_logic;
	signal CAG_R_enable			: 	std_logic;
	signal reset_fsm            :   std_logic;
	
begin
	counterAddressGenA	:	counter_address_generator	    port map	(	clock			=>	clock,
                                                                            reset 			=> 	reset_fsm, 
                                                                            need_to_reset 	=> 	CAG_A_restart,
                                                                            enable 			=> 	valid,
                                                                            read_enable		=>	ramA_read_enable,
                                                                            address 		=> 	addressA
                                                                        );
                                                                        -------------------------------
	RAMA_UNIT			:	ramA						    port map	(	clock 			=>	clock, 
                                                                            write_enable 	=>	ramA_write_enable, 
                                                                            read_enable 	=> 	ramA_read_enable, 
                                                                            address 		=> 	addressA(2 downto 0), 
                                                                            datain 			=> 	data_in, 
                                                                            dataout 		=> 	Ai
                                                                        );
                                                                        -------------------------------
	counterAddressGenH	:	counter_address_generator	port map	(	clock 			=> 	clock, 
                                                                            reset 			=> 	reset_fsm, 
                                                                            need_to_reset 	=> 	CAG_H_restart, 
                                                                            enable 			=>	CAG_H_enable,
                                                                            read_enable		=>	CAG_H_enable,
                                                                            address 		=> 	addressH
                                                                        );
                                                                        --------------------------------
    ROMH				:	rom							    port map	(	clock 				=> 	clock, 
                                                                            address 			=> 	addressH(5 downto 0), 
                                                                            rom_enable 			=> 	romH_enable, 
                                                                            data 				=> 	Hi
                                                                        );
                                                                        --------------------------------
	MAC_UNIT			:	mac							    port map	(	clock 			=> 	clock,
                                                                            ai 				=> 	Ai, 
                                                                            xi 				=> 	Hi, 
                                                                            mac_clean		=>  clear_register, 
                                                                            data_out 		=> 	Ri
                                                                        );
                                                                        ---------------------------------
	FSM_UNIT			:	fsm							    port map	(	clock                       =>  clock,
                                                                            reset						=>	reset,
                                                                            ramA_address				=>	addressA(7 downto 3),
                                                                            ramR_address				=>	addressR,
                                                                            rom_address					=>	addressH,
                                                                            hold_me						=>	hold_me,
                                                                            ramR_readEnable 			=>	ramR_read_enable,
                                                                            ramA_writeEnable 			=>	ramA_write_enable,
                                                                            ramA_readEnable 			=>	ramA_read_enable, 
                                                                            ramR_writeEnable			=>	ramR_write_enable,
                                                                            rom_enable 					=>	romH_enable,
                                                                            counterAddressGen_H_enable 	=>	CAG_H_enable,
                                                                            counterAddressGen_R_enable  =>	CAG_R_enable,	
                                                                            counterAddressGen_A_restart =>	CAG_A_restart, 						
                                                                            counterAddressGen_R_restart =>	CAG_R_restart, 																	
                                                                            counterAddressGen_H_restart =>	CAG_H_restart, 
                                                                            mac_clean 					=>	clear_register,
                                                                            reset_fsm                   =>  reset_fsm,
                                                                            hold_prev					=>	hold_prev
                                                                            
                                                                        );
                                                                        ---------------------------------
	counterAddressGenR	:	counter_address_generator	    port map	(	clock 			=> 	clock, 
                                                                            reset 			=> 	reset_fsm, 
                                                                            need_to_reset 	=> 	CAG_R_restart, 
                                                                            enable 			=> 	CAG_R_enable,
                                                                            read_enable		=>	ramR_read_enable,
                                                                            address 		=> 	addressR
                                                                        );
                                                                        ----------------------------------
	RAMR_UNIT			:	ramR						    port map	(	clock			=> 	clock, 
                                                                            write_enable 	=> 	ramR_write_enable, 
                                                                            read_enable 	=> 	ramR_read_enable, 
                                                                            address 		=> 	addressR(2 downto 0), 
                                                                            datain 			=> 	Ri, 
                                                                            dataout 		=> 	data_out
                                                                        );
end architecture project_2;
	
