
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUL4X4_TB IS
END MUL4X4_TB;
 
ARCHITECTURE behavior OF MUL4X4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUL4X4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);
 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUL4X4 PORT MAP (
          A => A,
          B => B,
          P => P
        );


 


    process
   begin		
 A<="0000";  B<="0001"; wait for 100 ns;
 A<="0001";  B<="0110"; wait for 100 ns;
 A<="0010";  B<="1000"; wait for 100 ns;
 A<="0100";  B<="0011"; wait for 100 ns;
  A<="0011";  B<="1001"; wait for 100 ns;
 A<="0010";  B<="0101"; wait for 100 ns;
 A<="1000";  B<="0110"; wait for 100 ns;
 A<="1000";  B<="0000"; wait for 100 ns;
 A<="0011";  B<="1110"; wait for 100 ns;
 A<="0100";  B<="1111"; wait for 100 ns;
      wAit;
   end process;

END;
