--FSM


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

-----------------------------------------------------------------------------

entity fsm is
	port (
        clock                       :   in      std_logic;
        reset                       :   in      std_logic;
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
end entity;
------------------------------------------------------------------------------
architecture fsm of fsm is

-- RESET= 000 INPUT=001 COMPUTE=010 RESULT=011 OUTPUT=100 HOLD=101
type fsm_status is (RST, INPUT, COMPUTE, RESULT, OUTPUT, HOLD);
signal  status   :   fsm_status;
	
begin
        
    process (clock)
    begin
        
        if rising_edge(clock) then
            if reset = '1' then
                status <= RST; --RESET
                
            else
                
                case status is
                ----------------RESET-------------------
                when RST =>
                    status <= INPUT; 
                                       
                    
                ----------------INPUT-------------------
                when INPUT =>
                    if (ramA_address = "00000") then
                        
                        status <= INPUT; --INPUT
                    else
                        
                        status <= COMPUTE; --COMPUTE
                        
                    end if;
                    
                    
                ----------------COMPUTE-------------------
                when COMPUTE =>
                    if (rom_address = "00001010" or
                        rom_address = "00010010" or 
                        rom_address = "00011010" or 
                        rom_address = "00100010" or 
                        rom_address = "00101010" or
                        rom_address = "00110010" or 
                        rom_address = "00111010" or 
                        rom_address = "01000010") then
                        
                        
                        status <= RESULT; --RESULT
                    else
                        status <= COMPUTE; --COMPUTE
                    end if;
                    
                    
                ----------------RESULT-------------------
                when RESULT =>
                    
                    
                    if (rom_address = "01000011") then
                        
                        status <= OUTPUT; --OUTPUT
                    else
                        status <= COMPUTE; --COMPUTE
                    end if;
                    
                    
                ----------------OUTPUT-------------------
                when OUTPUT =>
                    if (hold_me = '1') then
                        
                        status <= HOLD; --HOLD 
                    elsif (ramR_address = "00001111") then
                        status <= RST; --RESET
                    else
                    
                        status <= OUTPUT; --OUTPUT
                    end if;
                    
            
                ----------------HOLD-------------------
                when  HOLD =>
                    if (hold_me = '0') then
                        
                        status <= OUTPUT; --OUTPUT
                    else
                        
                        status <= HOLD; --HOLD
                    end if;
                    
                when others => 
                    
                    status <= RST;
                    
                end case;
            end if;
        end if;
            
    end process;
    
    
    process(status)
    begin
        
        case (status) is
            when RST =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '1';
                ramA_readEnable             <=  '0';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '0';
                counterAddressGen_H_enable  <=  '1';
                counterAddressGen_R_enable  <=  '1';
                counterAddressGen_A_restart <=  '1';
                counterAddressGen_R_restart <=  '1';
                counterAddressGen_H_restart <=  '1';
                mac_clean                   <=  '1';
                reset_fsm                   <=  '1';
                hold_prev                   <=  '0'; 
            when INPUT =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '1';
                ramA_readEnable             <=  '0';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '0';
                counterAddressGen_H_enable  <=  '0';
                counterAddressGen_R_enable  <=  '0';
                counterAddressGen_A_restart <=  '0';
                counterAddressGen_R_restart <=  '0';
                counterAddressGen_H_restart <=  '0';
                mac_clean                   <=  '0';
                reset_fsm                   <=  '0';
                hold_prev                   <=  '1';
            
            when COMPUTE =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '0';
                ramA_readEnable             <=  '1';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '1';
                counterAddressGen_H_enable  <=  '1';
                counterAddressGen_R_enable  <=  '0';
                counterAddressGen_A_restart <=  '0';
                counterAddressGen_R_restart <=  '0';
                counterAddressGen_H_restart <=  '0';
                mac_clean                   <=  '0'; 
                hold_prev                   <=  '1';
                reset_fsm                   <=  '0';
            
            when RESULT =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '0';
                ramA_readEnable             <=  '1';
                ramR_writeEnable            <=  '1';
                rom_enable                  <=  '1';
                counterAddressGen_H_enable  <=  '1';
                counterAddressGen_R_enable  <=  '1';
                counterAddressGen_A_restart <=  '0';
                counterAddressGen_R_restart <=  '0';
                counterAddressGen_H_restart <=  '0';
                mac_clean                   <=  '1'; 
                hold_prev                   <=  '1';
                reset_fsm                   <=  '0';
            
            when OUTPUT =>
                ramR_readEnable             <=  '1';
                ramA_writeEnable            <=  '1';
                ramA_readEnable             <=  '0';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '0';
                counterAddressGen_H_enable  <=  '0';
                counterAddressGen_R_enable  <=  '1';
                counterAddressGen_A_restart <=  '0';
                counterAddressGen_R_restart <=  '0';
                counterAddressGen_H_restart <=  '0';
                mac_clean                   <=  '0'; 
                hold_prev                   <=  '0';
                reset_fsm                   <=  '0';
            
            when HOLD =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '1';
                ramA_readEnable             <=  '0';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '0';
                counterAddressGen_H_enable  <=  '0';
                counterAddressGen_R_enable  <=  '0';
                counterAddressGen_A_restart <=  '0';
                counterAddressGen_R_restart <=  '0';
                counterAddressGen_H_restart <=  '0';
                mac_clean                   <=  '0'; 
                hold_prev                   <=  '0';
                reset_fsm                   <=  '0';
            
            when others =>
                ramR_readEnable             <=  '0';
                ramA_writeEnable            <=  '1';
                ramA_readEnable             <=  '0';
                ramR_writeEnable            <=  '0';
                rom_enable                  <=  '0';
                counterAddressGen_H_enable  <=  '0';
                counterAddressGen_R_enable  <=  '0';
                counterAddressGen_A_restart <=  '1';
                counterAddressGen_R_restart <=  '1';
                counterAddressGen_H_restart <=  '1';
                mac_clean                   <=  '1';
                reset_fsm                   <=  '1';
                hold_prev                   <=  '0'; 
        end case;
        
    end process;
    
    
    
end architecture fsm;
