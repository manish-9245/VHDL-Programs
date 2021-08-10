library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity jkff is
    Port ( j,k,clk,rst: in  STD_LOGIC;
           q : out  STD_LOGIC);
end jkff;
architecture Behavioral of jkff is
Signal pstate,nstate:std_logic;
begin
-- Dreg to generate pstate
Process(nstate,rst,clk)
Begin
if(rst='1')then
pstate<='0';
elsif(clk 'event and clk ='1') then
pstate<=nstate;
End if;
End process;
--genearte next state using mux
process(j,k,pstate)
begin
if (j='0' and k='0')then
nstate<=pstate;
elsif (j='0' and k='1')then
nstate<='0';
elsif (j='1' and k='0')then
nstate<='1';
else
nstate<=not pstate;

end if;
end process;
q<=pstate;

end Behavioral;
