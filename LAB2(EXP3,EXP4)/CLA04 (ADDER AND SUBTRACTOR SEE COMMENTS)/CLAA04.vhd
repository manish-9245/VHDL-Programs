library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 -- If Cin=0 THEN ITS ADDER,IF Cin = 1 then it acts as a subtractor
 -- cout represents both carry/ borrow
 --sum also represents SUM AND SUBTRACTION
entity CLAA4 is
Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
b : in STD_LOGIC_VECTOR (3 downto 0);
cin : in STD_LOGIC;
Sum : out STD_LOGIC_VECTOR (3 downto 0);
cout,ovfl : out STD_LOGIC);
end CLAA4;
 
architecture arch of CLAA4 is
 
component Partial_FA
Port( a,b, cin : in STD_LOGIC;
	sum, p, g: out STD_LOGIC
	);
end component;
 
signal c1,c2,c3,c4: STD_LOGIC;
signal p,g,ip: STD_LOGIC_VECTOR(3 downto 0);
begin
ip(0)<= b(0) xor cin;
ip(1)<= b(1) xor cin;
ip(2)<= b(2) xor cin;
ip(3)<= b(3) xor cin;
 
U1: Partial_FA port map( a(0), ip(0), cin, sum(0), p(0), g(0));
c1 <= g(0) or (p(0) and cin);
U2: Partial_FA port map( a(1), ip(1), c1, sum(1), p(1), g(1));
c2 <= g(1) or (p(1) and c1);
U3: Partial_FA port map( a(2), ip(2), c2, sum(2), p(2), g(2));
c3 <= g(2) or (p(2) and c2);
U4: Partial_FA port map( a(3), ip(3), c3, sum(3), p(3), g(3));
c4 <= g(3) or (p(3) and c3);
ovfl<=c3 xor c4;
cout<=c4;
end arch;
