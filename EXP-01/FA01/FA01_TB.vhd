LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FA01_TB IS
END FA01_TB;

ARCHITECTURE behavior OF FA01_TB IS 

 COMPONENT FA01
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 Cin : IN std_logic;
 S : OUT std_logic;
 Cout : OUT std_logic
 );
 END COMPONENT;

 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal Cin : std_logic := '0';
 signal S : std_logic;
 signal Cout : std_logic;

BEGIN
 uut: FA01 PORT MAP (
 A => A,
 B => B,
 Cin => Cin,
 S => S,
 Cout => Cout
 );
 stim_proc: process
 begin
 wait for 100 ns; 
 A <= '1';
 B <= '0';
 Cin <= '0';
 wait for 10 ns;

 A <= '0';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;

 A <= '1';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;

 A <= '0';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;

 A <= '1';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;

 A <= '0';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;

 A <= '1';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;

 end process;

END;