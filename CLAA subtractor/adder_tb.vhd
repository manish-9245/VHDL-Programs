LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY CLAA4_012_tb IS
END CLAA4_012_tb;
 
ARCHITECTURE archtb OF CLAA4_012_tb IS 
COMPONENT CLAA4_012 is
Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
b : in STD_LOGIC_VECTOR (3 downto 0);
cin : in STD_LOGIC;
Sum : out STD_LOGIC_VECTOR (3 downto 0);
cout,ovfl : out STD_LOGIC);
END COMPONENT;
 
--Inputs
signal a, b, sum : std_logic_vector(3 downto 0);
signal cin, cout : std_logic;
 
BEGIN
DUT: CLAA4_012 PORT MAP (a,b,cin,sum,cout);
 
process
begin
wait for 10 ns;
wait for 100 ns;
	cin<='0';
		a<="0000";b<="1010";wait for 100 ns;
		a<="1011";b<="0101";wait for 100 ns;
		a<="0101";b<="1000";wait for 100 ns;
		a<="1000";b<="0011";wait for 100 ns;
		
	cin<='1';
		a<="1011";b<="1010";wait for 100 ns;
		a<="0001";b<="0101";wait for 100 ns;
		a<="0000";b<="1111";wait for 100 ns;
		a<="1000";b<="1001";wait for 100 ns;
 
end process;
 
END archtb;
