Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity Treg01NEsyn_012_tb is
end Treg01NEsyn_012_tb;

architecture arch01 of Treg01NEsyn_012_tb is
component Treg01NEsyn_012 Is
Port (t  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
      End component;
signal t,clk,rst,q :std_logic;
begin
DUT: Treg01NEsyn_012 port map(t,clk,rst,q);
    process
    begin
      clk <= '0'; wait for 10 ns;
      clk <= '1'; wait for 10 ns;
    End process;
    process
    Begin
      t<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='0'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='0'; wait for 103 ns;
      rst<='0';wait for 205 ns;
      t<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      t<='1'; wait for 103 ns;
      t<='1'; wait for 103 ns;
      rst<='0'; wait for 103 ns;
      t<='0'; wait for 100 ns;
      t<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
        wait;
    end process;
end arch01;
