library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_012 is
port(
   a, b,y :IN std_logic;
   s, c :OUT std_logic
   
   );
  end fa_012;
  
  architecture Arch01 of fa_012 is
  begin 
  s<= a xor b xor y;
  c<= (a and b) or (y and a) or (y and b);
end Arch01;  
