Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity Dreg01NEAsyn_012_tb is
end Dreg01NEAsyn_012_tb;

architecture arch01 of Dreg01NEAsyn_012_tb is
component Dreg01NEAsyn_012 Is
Port (d  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
      End component;
signal d,clk,rst,q :std_logic;
begin
DUT: Dreg01NEAsyn_012 port map(d,clk,rst,q);
    process
    begin
      clk <= '0'; wait for 10 ns;
      clk <= '1'; wait for 10 ns;
    End process;
    process
    Begin
      d<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      d<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      d<='0'; wait for 103 ns;
      d<='1'; wait for 103 ns;
      rst<='0'; wait for 103 ns;
      d<='1'; wait for 103 ns;
      d<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      d<='0'; wait for 100 ns;
      d<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
        wait;
    end process;
end arch01;
