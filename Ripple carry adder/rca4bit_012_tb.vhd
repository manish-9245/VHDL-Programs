library ieee;
use ieee.std_logic_1164.all;

entity rca4bit_012_tb is
end rca4bit_012_tb;


architecture archtb of rca4bit_012_tb is
component rca4bit_012 is
Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component;

signal a,b : STD_LOGIC_VECTOR (3 downto 0);
signal cin: STD_LOGIC;
signal s : STD_LOGIC_VECTOR (3 downto 0);
signal cout :STD_LOGIC;
signal s1 :std_logic;
 -- function to check even parity
 function eparity (a:std_logic_vector(3 downto 0)) return std_logic is
 variable parity:std_logic;
 begin
 parity:=a(0) xor a(1) xor a(2) xor a(3);
 return parity;
 end eparity;
 -- finding odd and even parity using procedure
 Procedure oeparity (signal a :in std_logic_vector(3 downto 0),signal oparity:out std_logic, signal eparity:out std_logic) is
Begin
eparity
 
 begin
 DUT: rca4bit_012 port map (a,b,cin,s,cout);
 
 process
 begin
 wait for 100 ns;
	cin <='0';
		a<="0000";b<="0101";wait for 100 ns;
		s1<= eparity(s); wait for 20 ns;
		a<="1111";b<="1101";wait for 100 ns;
		a<="1011";b<="0011";wait for 100 ns;
			s1<= eparity(s); wait for 20 ns;
		a<="1111";b<="0011";wait for 100 ns;
	cin <='1';
		a<="1011";b<="1010";wait for 100 ns;
			s1<= eparity(s); wait for 20 ns;
		a<="0001";b<="0101";wait for 100 ns;
		a<="0000";b<="1111";wait for 100 ns;
			s1<= eparity(s); wait for 20 ns;
		a<="1000";b<="1001";wait for 100 ns;
			s1<= eparity(s); wait for 20 ns;
end process;
end archtb;
