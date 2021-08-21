
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY PASCLA_TB IS
END PASCLA_TB;
 
ARCHITECTURE behavior OF PASCLA_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PASCLA
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Overflo : OUT  std_logic;
         Cout : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

	--BiDirs
   signal Cout : std_logic;

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Overflo : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PASCLA PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Overflo => Overflo,
          Cout => Cout
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


wait for 10 ns;
wait for 100 ns;
	cin<='0';
		a<="0000";b<="0101";wait for 100 ns;
		a<="1111";b<="1101";wait for 100 ns;
		a<="1011";b<="1011";wait for 100 ns;
		a<="1111";b<="0011";wait for 100 ns;
		
	cin<='1';
		a<="1011";b<="1010";wait for 100 ns;
		a<="0001";b<="0101";wait for 100 ns;
		a<="0000";b<="1111";wait for 100 ns;
		a<="1000";b<="1001";wait for 100 ns;
		a<="0010";b<="0001";wait for 100 ns;

      wait;
   end process;

END;
