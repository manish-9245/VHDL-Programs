LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Treg01AsynRst_TB IS
END Treg01AsynRst_TB;
 
ARCHITECTURE behavior OF Treg01AsynRst_TB IS 

    COMPONENT Treg01AsynRst
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

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Treg01AsynRst PORT MAP (
          T => T,
          CLK => CLK,
          RST => RST,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for 100 ns;
		CLK <= '1';
		wait for 100 ns ;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 3 ns ;
      T<='0'; WAIT FOR 100 NS;
      RST<='1'; WAIT FOR 100 NS;
      T<='0'; WAIT FOR 100 NS;
      RST<='1'; WAIT FOR 100 NS;
      T<='0'; WAIT FOR 100 NS;
      T<='1'; WAIT FOR 100 NS;
      RST<='0'; WAIT FOR 100 NS;
      T<='1'; WAIT FOR 100 NS;
      T<='1'; WAIT FOR 100 NS;
      RST<='1'; WAIT FOR 100 NS;
      T<='0'; WAIT FOR 100 NS;
      T<='1'; WAIT FOR 100 NS;
      RST<='1'; WAIT FOR 100 NS;

      wait;
   end process;

END;
