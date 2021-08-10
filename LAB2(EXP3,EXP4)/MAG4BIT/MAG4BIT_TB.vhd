library ieee;
use ieee.std_logic_1164.all;

entity ncc4_tb is
end ncc4_tb;

architecture archtb of ncc4_tb is
component ncc4 is
port (a,b: in std_logic_vector (3 downto 0);
	go,eo,lo : out std_logic);
end component;

signal a,b : std_logic_vector (3 downto 0);
signal go,eo,lo : std_logic;

begin
DUT: ncc4 port map (a,b,go,eo,lo);
process
begin
	wait for 100 ns;
	a<="0101"; b<="1011"; wait for 100 ns;
	a<="1111"; b<="0000"; wait for 100 ns;
	a<="1100"; b<="1010"; wait for 100 ns;
end process;
end archtb;
