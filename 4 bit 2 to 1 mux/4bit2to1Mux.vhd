-- Code your design here
Library IEEE;
Use IEEE.Std_logic_1164.all;
--  Defines a design entity
entity Mux is
port (a:in std_logic_vector(3 downto 0);
      b:in std_logic_vector(3 downto 0);
      s:in std_logic;
      y:out std_logic_vector(3 downto 0)
      );
end Mux;

architecture behaviour of Mux is
begin
    process(a,b,s)

    begin
    if(s='0')then
    y<=a;
    else
    y<=b;
    end if;
    end process;
end behaviour;
