----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2023 13:27:27
-- Design Name: 
-- Module Name: d_ff_rst - Behavioral
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

   port(clk: in std_logic;
 	    enable: in std_logic; 
 	    char: in std_logic; -- new data to shift in
 	    word: out std_logic_vector(4 downto 0);
 	    Input: in std_logic_vector(4 downto 0));
   port map (
        clk => clk,
        char  => char,
        enable => btnc_change
    );

end char_register;

architecture Behavioral of Shift_register_VHDL is
    
begin
    
   process
    
   variable temp: std_logic_vector(4 downto 0);
    
   begin
      wait until rising_edge (clk);
      temp := Input; 
      if L='1' then 
         for i in 0 to 2 loop
            temp(i) := temp(i+1);
         end loop;
         temp(3) := w;
      end if;
      Output <= temp;
    end process;

end Behavioral;
