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
           enable : in STD_LOGIC);
end char_register;

architecture Behavioral of char_register is

begin

char_register_process : process (clk) is

  begin
  
    if (rising_edge(clk)) then
        
      if (BTNC = '0') then    
        if (btnc_value = 0) then 
            zero_cnt  <= zero_cnt + 1;
            one_cnt <= 0;
            btnc_value <= 0;
            btnc_change <= 0;
        elsif (btnc_value = 1) then
            zero_cnt  <= zero_cnt + 1;
            one_cnt <= 0;
            btnc_value <= 0;
            btnc_change <= 1;
        end if;
            
      elsif (BTNC = '1') then
        if (btnc_value = 0) then
            one_cnt <= zero_cnt + 1;
            zero_cnt <= 0;
            btnc_value <= 1;
            btnc_change <= 1;
        elsif (btnc_value = 1) then
            one_cnt <= zero_cnt + 1;
            zero_cnt <= 0;
            btnc_value <= 1;
            btnc_change <= 0;
        end if;
            
      end if;
      
      if (btnc_change = 1) then
          if (one_cnt = 1) then         % dot
            char <= "00";
          elsif (one_cnt = 3) then      % dash
            char <= "11";
          elsif (zero_cnt = 3) then     % short gap (between letters)
            char <= "01";
          elsif (zero_cnt = 5) then     % medium gap (between words)
            char <= "10";
          end if;
              
      end if;
      
    end if; -- Rising edge
end process char_register_process;

end Behavioral;
