
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MagComp01 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P : out  STD_LOGIC;
           Q : out  STD_LOGIC;
           J : out  STD_LOGIC;
			  C1 ,C2 ,C3 : IN STD_LOGIC
			  );
end MagComp01;

architecture Behavioral of MagComp01 is

begin
PROCESS( A,B, C1,C2,C3)
BEGIN
IF ( (A ='1' AND B ='0'))THEN 
  P<= '1' ;
  Q<='0';
  j<='0';
      ELSIF ((A ='0' AND B ='1')) THEN
		  P<= '0' ;
      Q <= '1';
		  j<= '0' ;
      ELSIF (((A ='0' AND B ='0') or (a='1' AND B='1'))AND(C1 ='1')AND (C2 ='0')AND(C3 = '0')) THEN
      
		P<='1';     

		Q <= '0';
		J<='0';
		 ELSIF (((A ='0' AND B ='0') or (a='1' AND B='1'))AND(C1 ='0')AND(C2='1')AND(C3 = '0')) THEN
      
		
		     
		P<='0';
	   Q<='1';
		J<='0';
		
		 ELSIF (((A ='0' AND B ='0') or (a='1' AND B='1'))AND(C1 ='0')AND(C2 ='0')AND(C3 = '1')) THEN
      
		     
		P<='0';
		Q <= '0';

		J<='1';
		 ELSIF (((A ='0' AND B ='0') or (a='1' AND B='1'))AND(C3 <= '1')) THEN
           
		P<='0';
		Q <= '0';
		J<='1';
		ELSE
      
		P  <='0';
		Q  <= '0';
		J  <= '0';
		END IF;
		
END PROCESS;

									
																								
												

		
		
     
end Behavioral;

