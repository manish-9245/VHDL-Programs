--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:55:44 08/16/2021
-- Design Name:   
-- Module Name:   F:/SynCount08/SynCount08_tb.vhd
-- Project Name:  SynCount08
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SynCount08
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SynCount08_tb IS
END SynCount08_tb;
 
ARCHITECTURE behavior OF SynCount08_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SynCount08
    PORT(
         x : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SynCount08 PORT MAP (
          x => x,
          rst => rst,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
rst<= '1' ;wait for 100 ns;
rst<= '0' ;wait for 100 ns;

x<='0';wait for 500 ns;


x<='1';wait for 500 ns;


      wait;
   end process;

END;
