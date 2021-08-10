library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_012_tb is 
end fa_012_tb;

architecture Arch01 of fa_012_tb is
 component fa_012 is 
port(
   a, b,y :IN std_logic;
   s, c :OUT std_logic
   
  );
  end component;
  signal a, b, y:std_logic;
  signal s,c:std_logic;
  begin
  DUT: fa_012 port map (a=>a,b=>b,y=>y,s=>s,c=>c);
  
  
  process
  begin
  
  a<='0'; b<='0'; y<='0'; wait for 100 ns;
  a<='0'; b<='0'; y<='1'; wait for 100 ns;
  a<='0'; b<='1'; y<='0'; wait for 100 ns;
  a<='0'; b<='1'; y<='1'; wait for 100 ns;
  a<='1'; b<='0'; y<='0'; wait for 100 ns;
  a<='1'; b<='0'; y<='1'; wait for 100 ns;
  a<='1'; b<='1'; y<='0'; wait for 100 ns;
  a<='1'; b<='1'; y<='1'; wait for 100 ns;
  wait;
  end process;
  end Arch01;
