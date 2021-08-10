Library IEEE;
Use ieee.std_logic_1164.all;

Entity asyncdowncnt_tb is
End asyncdowncnt_tb;

Architecture arch01 of asyncdowncnt_tb is
Component asyncdowncnt is 
Port (x  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic_vector(7 downto 0)
      );
End component;

Signal x,clk,rst:std_logic;
signal q        :std_logic_vector(7 downto 0);

Begin
DUT : asyncdowncnt port map(x,clk,rst,q);

Process 
Begin 
     clk<='0'; wait for 10 ns;
     clk<='1'; wait for 10 ns;
End process;

Process 
Begin
x  <='1'; wait for 1000 ns;
rst<='1'; wait for 100 ns;
rst<='0'; wait for 1000 ns;
wait;
End process;
End arch01;
     
