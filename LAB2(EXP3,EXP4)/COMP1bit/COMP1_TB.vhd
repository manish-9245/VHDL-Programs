library ieee;
use ieee.std_logic_1164.all;

entity cc_tb is
end cc_tb;

architecture archtb of cc_tb is
component cc is
port (a,b,gi,ei,li : in std_logic;
		go,eo,lo: out std_logic);
end component;

signal a,b,gi,ei,li,go,eo,lo: std_logic;

begin
	DUT: CC port map (a,b,gi,ei,li,go,eo,lo);
process
begin
	wait for 100 ns;
	gi<='1'; ei<='0'; li<='0';
	a<='1'; b<='1'; wait for 100 ns;
	a<='1'; b<='0'; wait for 100 ns;
	a<='0'; b<='1'; wait for 100 ns;
	
	gi<='0'; ei<='1'; li<='0';
	a<='1'; b<='1'; wait for 100 ns;
	a<='1'; b<='0'; wait for 100 ns;
	a<='0'; b<='1'; wait for 100 ns;
	
	gi<='0'; ei<='0'; li<='1';
	a<='1'; b<='1'; wait for 100 ns;
	a<='1'; b<='0'; wait for 100 ns;
	a<='0'; b<='1'; wait for 100 ns;
end process;
end archtb;