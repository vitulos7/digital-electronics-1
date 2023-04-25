----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2023 13:27:27
-- Design Name: 
-- Module Name: char_register - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity char_register is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           char : in STD_LOGIC; 
           enable : in STD_LOGIC;
           space : out STD_LOGIC;
           word : out std_logic_vector(1 downto 0)
         );
    port map (
      clk => clk,
      rst => rst,
      char  => char,
      enable => btnc_change
    );
end char_register;

architecture Behavioral of char_register is

signal spot : natural;    
    
begin

char_register_process : process (clk) is

  begin
    
    spot  <= 0;
      
    if (rising_edge(clk)) then
      
      if (space = '1') then 
          spot  <= 0;
      end if;
          
      if (enable = '1') then 
          spot  <= spot + 1;
          word <= word + char*2^(spot-1);
      end if;
      
    end if; -- Rising edge
        
end process char_register_process;

end Behavioral;
