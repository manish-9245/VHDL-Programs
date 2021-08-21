library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder_tb is
end entity;

architecture tb of half_adder_tb is
component H_adder is
port( a,b : IN std_logic;
sum,carry : OUT std_logic);
end component;

signal a,b,sum,carry: std_logic;

begin

uut: H_adder port map(
a => a, b => b,
sum => sum,
carry => carry);

stim: process
begin

a <= '0';
b <= '0';
wait for 20 ns;

a <= '0';
b <= '1';
wait for 20 ns;

a <= '1';
b <= '0';
wait for 20 ns;

a <= '1';
b <= '1';
wait for 20 ns;



end process;

end tb;