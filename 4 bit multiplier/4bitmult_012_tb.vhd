Library Ieee;
use Ieee.std_logic_1164.all;

Entity Mult04_012_tb is
End  Mult04_012_tb;

Architecture Arch01 of Mult04_012_tb is 

Component Mult04_012 is
port 
(a :in std_logic_vector(3 downto 0);
 b :in std_logic_vector(3 downto 0);
 p :out std_logic_vector(7 downto 0)
 ); 
 End Component;
 Signal a,b : std_logic_vector(3 downto 0);
 Signal p   : std_logic_vector(7 downto 0);
 Begin
 DUT : Mult04_012 Port map (a,b,p);
 
 Process
 Begin
 a<="0000";  b<="0001"; wait for 100 ns;
 a<="0001";  b<="0110"; wait for 100 ns;
 a<="0010";  b<="1000"; wait for 100 ns;
 a<="0100";  b<="0011"; wait for 100 ns;
  a<="0011";  b<="1001"; wait for 100 ns;
 a<="0010";  b<="0101"; wait for 100 ns;
 a<="1000";  b<="0110"; wait for 100 ns;
 a<="1000";  b<="0000"; wait for 100 ns;
 a<="0011";  b<="1110"; wait for 100 ns;
 a<="0100";  b<="1111"; wait for 100 ns;
 wait;
 
 End process;
 End Arch01;
