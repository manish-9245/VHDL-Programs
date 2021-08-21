LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY AsynCount08_TB IS
END AsynCount08_TB;
 
ARCHITECTURE behavior OF AsynCount08_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT AsynCount08 PORT(
         x : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AsynCount08 PORT MAP (
          x => x,
          clk => clk,
          rst => rst,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0'; wait for 100 ns;

		clk <= '1';wait for 100 ns;

   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
    

       x  <='1'; 
     rst<='1'; wait for 100 ns;
     rst<='0'; wait for 100 ns;
     wait;
      -- insert stimulus here 

      wait;
   end process;

END;
