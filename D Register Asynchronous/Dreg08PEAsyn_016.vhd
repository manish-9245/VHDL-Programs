library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Dreg08PEAsyn_016 is
    Port ( D : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(7 DOWNTO 0)
			  );
end Dreg08PEAsyn_016;

architecture ARCH016 of Dreg08PEAsyn_016 is


COMPONENT Dreg01PEAsyn_016 is
port ( D : in  STD_LOGIC;
       RST : in  STD_LOGIC;
       CLK : in  STD_LOGIC;
        Q : out  STD_LOGIC
			  );
END COMPONENT;
BEGIN

A1: Dreg01PEAsyn_016 port map ( d(0),rst,clk,q(0));
A2: Dreg01PEAsyn_016 port map ( d(1),rst,clk,q(1));	
A3: Dreg01PEAsyn_016 port map ( d(2),rst,clk,q(2));	
A4: Dreg01PEAsyn_016 port map ( d(3),rst,clk,q(3));	
A5: Dreg01PEAsyn_016 port map ( d(4),rst,clk,q(4));	
A6: Dreg01PEAsyn_016 port map ( d(5),rst,clk,q(5));	
A7: Dreg01PEAsyn_016 port map ( d(6),rst,clk,q(6));	
A8: Dreg01PEAsyn_016 port map ( d(7),rst,clk,q(7));	
	
	end ARCH016;