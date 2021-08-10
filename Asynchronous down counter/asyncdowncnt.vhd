Library IEEE;
Use ieee.std_logic_1164.all;

Entity asyncdowncnt is
Port (x  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic_vector(7 downto 0)
      );
End asyncdowncnt;

Architecture arch01 of asyncdowncnt is
Component Treg01NEsyn_012 
Port (t  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
End component;

Signal k :std_logic_vector(7 downto 0);
Begin

D0 : Treg01NEsyn_012 port map (x,clk,rst,k(0));
D1 : Treg01NEsyn_012 port map (x,k(0),rst,k(1));
D2 : Treg01NEsyn_012 port map (x,k(1),rst,k(2));
D3 : Treg01NEsyn_012 port map (x,k(2),rst,k(3));
D4 : Treg01NEsyn_012 port map (x,k(3),rst,k(4));
D5 : Treg01NEsyn_012 port map (x,k(4),rst,k(5));
D6 : Treg01NEsyn_012 port map (x,k(5),rst,k(6));
D7 : Treg01NEsyn_012 port map (x,k(6),rst,k(7));

q<=not k;
End arch01;

