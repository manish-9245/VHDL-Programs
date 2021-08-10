library ieee;
use ieee.std_logic_1164.all;

entity cc is
port (a,b,gi,ei,li : in std_logic;
		go,eo,lo: out std_logic);
end cc;

architecture arch of cc is
begin
process(a,b)
begin
if (a='1' and b='0') then
	go<='1';
	eo<='0';
	lo<='0';
	elsif(a='0' and b='1') then
	go<='0';
	eo<='0';
	lo<='1';
elsif((a='0'and b='0') or (a='1' and b='1')) then
	if (gi='1') then
		go<='1';
	elsif(ei='1')then
		eo<='1';
	elsif(li='1')then
		lo<='1';
	end if;
end if;
end process;
end arch;

	