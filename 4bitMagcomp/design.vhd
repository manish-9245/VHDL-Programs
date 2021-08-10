-- Code your design 
Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
--  Defines a design entity
entity bitMagcomp04 is
Port(
     a        :in std_logic_vector(3 downto 0);
     b        :in std_logic_vector(3 downto 0);
     x0,y0,z0 :in std_logic;
     x,y,z :out std_logic
     );
end bitMagcomp04;

architecture structural of bitMagcomp04 is
Component bitMagcomp01 is
Port(
     a        :in std_logic;
     b        :in std_logic;
     x0,y0,z0 :in std_logic;
     x1,y1,z1 :out std_logic
     );
     End component;
Signal k:std_logic_vector(8 downto 0);
begin
D0 :bitMagcomp01 port map(a(0),b(0),x0,y0,z0,k(0),k(1),k(2));
D1 :bitMagcomp01 port map(a(1),b(1),k(0),k(1),k(2),k(3),k(4),k(5));
D2 :bitMagcomp01 port map(a(2),b(2),k(3),k(4),k(5),k(6),k(7),k(8));
D3 :bitMagcomp01 port map(a(3),b(3),k(6),k(7),k(8),x,y,z);
  
end structural;

