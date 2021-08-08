library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dreg01SynRst is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q,qb : out  STD_LOGIC);
end Dreg01SynRst;

architecture Behavioral of Dreg01SynRst is
begin
process (D,CLK,RST)
BEGIN
if (clk'event and clk = '1') then 
		if (rst = '1') then 
			q <= '0';
			qb<= '1';
		else
			q <= d; 
			qb <=not d;
		end if;
	end if;
end process;


end Behavioral;