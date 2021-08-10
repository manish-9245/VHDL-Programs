library ieee;
use ieee.std_logic_1164.all;

entity rca4bit_012 is
Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end rca4bit_012;


architecture arch of rca4bit_012 is
component fa_012 is
port (c,a,b : in std_logic;
	s, cout : out std_logic
	);
end component;
signal c:std_logic_vector (3 downto 0);

begin
U1: fa_012 port map (cin,a(0),b(0),s(0),c(0));
U2: fa_012 port map (c(0),a(1),b(1),s(1),c(1));
U3: fa_012 port map (c(1),a(2),b(2),s(2),c(2));
U4: fa_012 port map (c(2),a(3),b(3),s(3),c(3));

cout<=c(3);
end arch;
