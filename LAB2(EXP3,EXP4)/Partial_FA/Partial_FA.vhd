library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Partial_FA is
Port ( a,b, cin : in STD_LOGIC;
		sum,p,g : out STD_LOGIC
		);
end Partial_FA;
 
architecture arch of Partial_FA is
 
begin
 
sum <= a xor b xor cin;
p <= a or b;
g <= a and b;
 
end arch;
