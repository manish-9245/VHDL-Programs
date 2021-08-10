Library Ieee;
use Ieee.std_logic_1164.all;

Entity  HA_012 is
port 
(a:in std_logic;
 b:in std_logic;
 s:out std_logic;
 c:out std_logic
 );
 End HA_012;
 
 Architecture arch01 of HA_012 is
 Begin
 s<=a xor b;
 c<=a and b;
 End arch01;
