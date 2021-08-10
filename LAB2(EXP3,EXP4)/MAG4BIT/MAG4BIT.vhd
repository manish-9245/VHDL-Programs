library ieee;
use ieee.std_logic_1164.all;

entity ncc4 is
port (a,b: in std_logic_vector (3 downto 0);
	go,eo,lo : out std_logic);
end ncc4;

architecture arch of ncc4 is
component cc is
port (a,b,gi,ei,li : in std_logic;
		go,eo,lo: out std_logic);
end component;

signal g,e,l: std_logic_vector (3 downto 0);
signal gi,ei,li: std_logic;
begin
gi<='0';
ei<='0';
li<='0';

D0: cc port map (a(0),b(0),gi,ei,li,g(0),e(0),l(0));
D1: cc port map (a(1),b(1),g(0),e(0),l(0),g(1),e(1),l(1));
D2: cc port map (a(2),b(2),g(1),e(1),l(1),g(2),e(2),l(2));
D3: cc port map (a(3),b(3),g(2),e(2),l(2),g(3),e(3),l(3));

go<=g(3);
eo<=e(3);
lo<=l(3);
end arch;