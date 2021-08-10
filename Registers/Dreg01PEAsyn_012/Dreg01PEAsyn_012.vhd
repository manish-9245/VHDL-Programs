Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity Dreg01PEAsyn_012 is
Port (d  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
end Dreg01PEAsyn_012;

architecture behaviour of Dreg01PEAsyn_012 is
begin
    process(d,clk,rst)
    Begin
     if (rst ='1') then
    q<='0';
    elsif(clk 'event and clk='1')then
    q<=d;
    end if;
    end process;
end behaviour;
