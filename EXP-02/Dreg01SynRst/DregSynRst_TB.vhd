
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dreg01SynRst_TB IS
END Dreg01SynRst_TB;
 
ARCHITECTURE behavior OF Dreg01SynRst_TB IS 
 
   
    COMPONENT Dreg01SynRst
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    


   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';


   signal Q : std_logic;
  constant CLK_riod : time := 10 ns;
 
BEGIN
 

   DUT: Dreg01SynRst PORT MAP (
          D => D,
          CLK => CLK,
          RST => RST,
          Q => Q
        );

  process
begin
	clk <= '0'; wait for 10 ns;
	clk <= '1'; wait for 10 ns;
end process;

 process
   begin
  rst <= '1'; wait for 22 ns; 
   d <= '0'; wait for 100 ns; 
   d <= '1'; wait for 100 ns; 
  rst <= '0'; wait for 100 ns; 
   d <= '1'; wait for 100 ns; 
   d <= '0'; wait for 100 ns; 
    d <= '1'; wait for 100 ns; 
   d <= '0'; wait for 100 ns; 
   d <= '1'; wait for 100 ns; 
   rst <= '1'; wait for 100 ns; 
   d <= '1'; wait for 100 ns; 
   d <= '0'; wait for 100 ns; 
   rst <= '0'; wait for 100 ns; 
   d <= '1'; wait for 100 ns; 
   d <= '0'; wait for 100 ns; 
   rst <= '0'; wait for 100 ns; 

    wait;
 end process;

END;
