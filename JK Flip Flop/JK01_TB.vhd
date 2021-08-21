library ieee;
use ieee.std_logic_1164.all;

entity JK01_tb is
end JK01_tb;

architecture testbench of JK01_tb is

COMPONENT JK01 is
port(J, K, clk, rst : in std_logic;
Q  : out std_logic
);
end COMPONENT;

signal J, K, clk, rst : std_logic;
signal Q  : std_logic;

begin
uut: JK01 port map(
J => J,
K => K,
clk => clk,
rst => rst,
Q => Q
 );

clock: process
begin
clk <= '1';
wait for 10 ns;
clk <= '0';
wait for 10 ns;
end process;

Force: process
begin
J <= '0';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '0';
rst <= '1';
wait for 20 ns;
end process;
end testbench;