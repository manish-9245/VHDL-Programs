library ieee;
use ieee.std_logic_1164.all;

entity clkdiv is
	port(clk, rst:in STD_logic;
	clkd: inout std_logic);
end clkdiv;

architecture behavioral of clkdiv is
signal count:integer range 0 to 5000000:=0;
signal clks: std_logic;
begin

process(clk,rst)
begin
if(rst='1') then
clks<='0';count<=0;
elsif(falling_edge(clk)) then
 if(count=5000000) then
   count<=  0;
   clks<=not clks;
  else
   count<=count+1;
end if;
end if;


end process;
  clkd<=clks;
end behavioral;
