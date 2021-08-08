LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

   ENTITY Dreg01AsynRst IS

  PORT( D,RST,CLK: IN STD_LOGIC;
      Q: OUT STD_LOGIC );

 END Dreg01AsynRst;

 ARCHITECTURE ARCH001 OF Dreg01AsynRst IS
  BEGIN
       PROCESS(D,RST,CLK )

   BEGIN
          IF(RST ='0')THEN
                Q<='0';
			    
              ELSIF ( CLK'EVENT AND CLK = '1') THEN
                 Q<=D;
				 
          END IF;

       END PROCESS;

  END ARCH001;
