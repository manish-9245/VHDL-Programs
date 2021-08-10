library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha012tb is 
end ha012tb;

architecture Arch01 of ha012tb is component ha_012 is 
port(
   a, b :IN std_logic;
   s, c :OUT std_logic
   
  );
  end component;
  signal a, b, s, c: std_logic;
  begin
  DUT:ha_012 port map(a, b, s, c);
  
  process
  begin
  wait for 100 ns;
  
  a<='0'; b<='0'; wait for 100 ns;
  a<='0'; b<='1'; wait for 100 ns;
  a<='1'; b<='0'; wait for 100 ns;
  a<='1'; b<='1'; wait for 100 ns;
  wait;
  end process;
  
  end Arch01;
