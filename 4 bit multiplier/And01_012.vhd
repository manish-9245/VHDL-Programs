Library Ieee;
use Ieee.std_logic_1164.all;

Entity  and01_012 is
port 
(a:in std_logic;
 b:in std_logic;
 y:out std_logic
 );
 End and01_012;
 
 Architecture arch01 of and01_012 is
 Begin
 y<=a and b;
 End arch01;
