# Lab 4: Vit Walach

### LED(7:4) indicators

1. Complete the truth table for LEDs(7:4) according to comments in source code.

   | **Hex** | **Inputs** | **LED4** | **LED5** | **LED6** | **LED7** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0000 | 0 | 1 | 1 | 0 |
   | 1 | 0001 | 1 | 1 | 0 | 1 |
   | 2 | 0010 | 1 | 1 | 1 | 1 |
   | 3 | 0011 | 1 | 1 | 0 | 0 |
   | 4 | 0100 | 1 | 1 | 1 | 1 |
   | 5 | 0101 | 1 | 1 | 0 | 0 |
   | 6 | 0110 | 1 | 1 | 1 | 0 |
   | 7 | 0111 | 1 | 1 | 0 | 0 |
   | 8 | 1000 | 1 | 1 | 1 | 1 |
   | 9 | 1001 | 1 | 1 | 0 | 0 |
   | A | 1010 | 1 | 0 | 1 | 0 |
   | b | 1011 | 1 | 0 | 0 | 0 |
   | C | 1100 | 1 | 0 | 1 | 0 |
   | d | 1101 | 1 | 0 | 0 | 0 |
   | E | 1110 | 1 | 0 | 1 | 0 |
   | F | 1111 | 1 | 0 | 0 | 0 |

2. Listing of LEDs(7:4) part of VHDL architecture from source file `top.vhd`. Try to write logic functions as simple as possible. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   ```vhdl
   --------------------------------------------------------------------
   -- Experiments on your own: LED(7:4) indicators

   -- Turn LED(4) on if input value is equal to 0, ie "0000"
   
      LED(4) <= `0` when hex is "0000";

   -- Turn LED(5) on if input value is greater than "1001", ie 10, 11, 12, ...
   -- LED(5) <=
   
   case hex is

        when "1010" =>

          LED(5) <= "0";
          
        when "1011" =>

          LED(5) <= "0";
          
        when "1100" =>

          LED(5) <= "0";
          
        when "1101" =>

          LED(5) <= "0";
          
        when "1111" =>

          LED(5) <= "0";
          
   end case;

   -- Turn LED(6) on if input value is odd, ie 1, 3, 5, ...
   -- LED(6) <=
   
   case hex is

        when "0001" =>

          LED(6) <= "0";
          
        when "0011" =>

          LED(6) <= "0";
          
        when "0101" =>

          LED(6) <= "0";
          
        when "0111" =>

          LED(6) <= "0";
          
        when "1001" =>

          LED(6) <= "0";
          
        when "1011" =>

          LED(6) <= "0";
          
        when "1101" =>

          LED(6) <= "0";
          
        when "1111" =>

          LED(6) <= "0";
          
   end case;


   -- Turn LED(7) on if input value is a power of two, ie 1, 2, 4, or 8
   -- LED(7) <=
   
   case hex is

        when "0001" =>

          LED(7) <= "0";
          
        when "0010" =>

          LED(7) <= "0";
          
         when "0100" =>

          LED(7) <= "0";
          
        when "1000" =>

          LED(7) <= "0";
          
   end case;
          
   ```
