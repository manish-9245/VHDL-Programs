LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Treg01AsynRst IS
PORT (T  :IN STD_LOGIC;
      CLK:IN STD_LOGIC;
      RST:IN STD_LOGIC;
      Q  :OUT STD_LOGIC
      );
END Treg01AsynRst;

ARCHITECTURE ARCH001 OF Treg01AsynRst IS
SIGNAL PSTATE,NSTATE:STD_LOGIC;
BEGIN

  PROC1:  PROCESS(NSTATE,CLK,RST)
    BEGIN
     IF (RST ='1') THEN
    PSTATE<='0';
    ELSIF(CLK 'EVENT AND CLK='0')THEN
    PSTATE<=NSTATE;
    END IF;
    END PROCESS;

  PROC2:  PROCESS (PSTATE,T)
    BEGIN
    IF(T='0') THEN
    NSTATE<=PSTATE;
    ELSE
    NSTATE<=NOT PSTATE;
    END IF;
    END PROCESS;
 Q<=PSTATE;
END ARCH001;
