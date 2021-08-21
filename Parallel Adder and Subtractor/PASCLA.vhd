library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity PASCLA is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
Overflo: OUT STD_LOGIC ;
Cout : inout STD_LOGIC);
end PASCLA;
 
architecture Behavioral of PASCLA is
 
component PFA is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
P : out STD_LOGIC;
G : out STD_LOGIC);
end component;
signal c1,c2,c3,c4: STD_LOGIC;
signal p,g,ip: STD_LOGIC_VECTOR(3 downto 0);
begin
ip(0)<= b(0) xor cin;
ip(1)<= b(1) xor cin;
ip(2)<= b(2) xor cin;
ip(3)<= b(3) xor cin;
 
U1: PFA port map( a(0), ip(0), cin, S(0), p(0), g(0));
U2: PFA port map( a(1), ip(1), c1, S(1), p(1), g(1));
U3: PFA port map( a(2), ip(2), c2, S(2), p(2), g(2));
U4: PFA port map( a(3), ip(3), c3, S(3), p(3), g(3));

c1 <= g(0) or (p(0) and cin);
c2 <= g(1) or (p(1) and c1);
c3 <= g(2) or (p(2) and c2);
c4 <= g(3) or (p(3) and c3);
overflo <= c3 xor c4;
cout<=c4;
end behavioral;
