# Lab 2: Vit Walach

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![image](https://github.com/vitulos7/digital-electronics-1/blob/main/02-logic/Is%20greater%20than.png)

   Less than:

   ![image](https://github.com/vitulos7/digital-electronics-1/blob/main/02-logic/Is%20%20less%20than.png)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/vitulos7/digital-electronics-1/blob/main/02-logic/Equations.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx17**

```vhdl
        p_stimulus : process
        begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";
        
        
        -- ID test case ...
        s_b <= "0001"; -- for ID xxxx17
        s_a <= "0111"; -- for ID xxxx17
        
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error end
        -- If true, then do not report anything end
        report "Input combination b=0, a=0 FAILED" severity error;


        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/9dYr)
   [4bit comparator](https://www.edaplayground.com/x/Kg5B)
