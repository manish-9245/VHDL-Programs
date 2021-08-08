LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Treg01SynRst_TB IS
END Treg01SynRst_TB;
 
ARCHITECTURE behavior OF Treg01SynRst_TB IS 
 
    -- COMPONENT Declaration for the Unit Under Test (UUT)
 
    COMPONENT Treg01SynRst
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock riod definitions
   constant CLK_riod : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Treg01SynRst PORT MAP (
          T => T,
          CLK => CLK,
          RST => RST,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_riod/2;
		CLK <= '1';
		wait for CLK_riod/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     t<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='0'; wait for 103 ns;
      rst<='0';wait for 205 ns;
      t<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='1'; wait for 103 ns;
      t<='1'; wait for 103 ns;
      rst<='0'; wait for 103 ns;
      t<='0'; wait for 100 ns;
      t<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      wait;
   end process;

END;
