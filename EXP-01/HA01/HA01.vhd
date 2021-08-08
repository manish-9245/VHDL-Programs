library IEEE;
use IEEE.std_logic_1164.all;

entity HA01 is
port(
a,b : IN std_logic;
sum,carry : OUT std_logic);
end HA01;

architecture dataflow of HA01 is
begin

sum <= a xor b;
carry <= a and b;

end dataflow;