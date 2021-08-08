library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gates is
Port ( A,B : in  STD_LOGIC;
P, Q, R, S, T, U, V : out  STD_LOGIC);
end gates;

architecture arch of gates is

begin

P <= A and B;
Q <= A nand B;
R <= A or B;
S <= A nor B;
T <= not A;
U <= A xor B;
V <= A xnor B;

end arch;