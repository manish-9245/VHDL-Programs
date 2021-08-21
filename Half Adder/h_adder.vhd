library IEEE;
use IEEE.std_logic_1164.all;

entity H_adder is
port(
a,b : IN std_logic;
sum,carry : OUT std_logic);
end H_adder;

architecture dataflow of H_adder is
begin

sum <= a xor b;
carry <= a and b;

end dataflow;