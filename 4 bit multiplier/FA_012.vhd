Library Ieee;
use Ieee.std_logic_1164.all;

Entity  FA_012 is
port 
(a:in std_logic;
 b:in std_logic;
 Cin: in std_logic;
 s:out std_logic;
 c:out std_logic
 );
 End FA_012;
 
 Architecture arch01 of FA_012 is
 Begin
 s<=a xor b xor Cin;
 c<=(a and b)or (b and Cin)or (a and Cin);
 End arch01;
