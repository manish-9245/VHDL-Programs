Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity Treg01NEAsyn_012 is
Port (t  :in std_logic;
      clk:in std_logic;
      rst:in std_logic;
      q  :out std_logic
      );
end Treg01NEAsyn_012;

architecture behaviour of Treg01NEAsyn_012 is
signal pstate,nstate:std_logic;
begin
    --Dreg which stores present state
    process(nstate,clk,rst)
    Begin
     if (rst ='1') then
    pstate<='0';
    elsif(clk 'event and clk='0')then
    pstate<=nstate;
    end if;
    end process;
    -- 2to1 mux used to generate nstate
    process (pstate,t)
    begin
    if(t='0') then
    nstate<=pstate;
    else
    nstate<=not pstate;
    end if;
    end process;
 q<=pstate;
end behaviour;
