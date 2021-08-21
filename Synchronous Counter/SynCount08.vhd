
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity  SynCount08 is
    Port ( x : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end SynCount08 ;

architecture Behavioral of SynCount08 is

Signal pstate,nstate:std_logic_vector(7 downto 0);
begin
-- defining d register
Process(nstate,clk,rst)

Begin

if(rst='1')then
pstate<="00000000";

elsif(clk 'event and clk ='1')then
pstate<=nstate;
End if;

End process;

process(x,pstate)
Begin
if(x='0')then
nstate<= pstate + 1 ;
else
nstate<= pstate -1;
end if;
End process;




q<= pstate;
end Behavioral;
