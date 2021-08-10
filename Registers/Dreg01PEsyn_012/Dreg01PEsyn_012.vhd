Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity Dreg01PEsyn_012 is
Port (d  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
end Dreg01PEsyn_012;

architecture behaviour of Dreg01PEsyn_012 is
begin
    process(d,clk,rst)
    Begin
    if(clk 'event and clk='1')then
     if (rst ='1') then
    q<='0';
    else
    q<=d;
    end if;
    end if;
    end process;
end behaviour;
