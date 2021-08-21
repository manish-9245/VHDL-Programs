
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY MagComp01_tb IS
END MagComp01_tb;
 
ARCHITECTURE behavior OF MagComp01_tb IS 

 
    COMPONENT MagComp01
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         P : OUT  std_logic;
         Q : OUT  std_logic;
         J : OUT  std_logic;
         C1 : IN  std_logic;
         C2 : IN  std_logic;
         C3 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C1 : std_logic := '0';
   signal C2 : std_logic := '0';
   signal C3 : std_logic := '0';

 	--Outputs
   signal P : std_logic;
   signal Q : std_logic;
   signal J : std_logic :='0';

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MagComp01 PORT MAP (
          A => A,
          B => B,
          P => P,
          Q => Q,
          J => J,
          C1 => C1,
          C2 => C2,
          C3 => C3
        );

 

   -- Stimulus process
process
   begin		
 
   
A<='0';B<='0';
C1<='0';C2<='0';C3<='0';  wait for 10 ns;
C1<='1';C2<='0';C3<='0';  wait for 10 ns;
C1<='0';C2<='1';C3<='0';  wait for 10 ns;
C1<='0';C2<='0';C3<='1';  wait for 10 ns;

A<='0';B<='1';
C1<='0';C2<='0';C3<='0';  wait for 10 ns;
C1<='1';C2<='0';C3<='0';  wait for 10 ns;
C1<='0';C2<='1';C3<='0';  wait for 10 ns;
C1<='0';C2<='0';C3<='1';  wait for 10 ns;

A<='1';B<='0';
C1<='0';C2<='0';C3<='0';  wait for 10 ns;
C1<='1';C2<='0';C3<='0';  wait for 10 ns;
C1<='0';C2<='1';C3<='0';  wait for 10 ns;
C1<='0';C2<='0';C3<='1';  wait for 10 ns;

A<='1';B<='1';
C1<='0';C2<='0';C3<='0';  wait for 10 ns;
C1<='1';C2<='0';C3<='0';  wait for 10 ns;
C1<='0';C2<='1';C3<='0';  wait for 10 ns;
C1<='0';C2<='0';C3<='1';  wait for 10 ns;

 wait;
 end process;

END;
