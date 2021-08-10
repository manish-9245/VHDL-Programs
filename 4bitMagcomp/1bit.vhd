Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
--  Defines a design entity
entity bitMagcomp01 is
Port(
     a        :in std_logic;
     b        :in std_logic;
     x0,y0,z0 :in std_logic;
     x1,y1,z1 :out std_logic
     );
end bitMagcomp01;

architecture behaviour of bitMagcomp01 is
begin
    process(a,b,x0,y0,z0)
    begin
    if(a='0' and b='1')then
    x1<='1';y1<='0';z1<='0';
    elsif(a='1' and b='0')then
    x1<='0';y1<='1';z1<='0';
    else
    x1<=x0;y1<=y0;z1<=z0;
    end if;
    End process;
  
end behaviour;
