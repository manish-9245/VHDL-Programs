library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha_012 is
port(
   a, b :IN std_logic;
   s, c :OUT std_logic
   
  );
  end ha_012;
  
  architecture Arch01 of ha_012 is
  begin
  s<= a xor b;
  c<= a and b;
  
  end Arch01;
