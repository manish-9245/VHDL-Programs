Library Ieee;
use Ieee.std_logic_1164.all;

Entity  FA_012 is

port (c,a,b : in std_logic;
	s, cout : out std_logic
	);
 End FA_012;
 
 Architecture arch01 of FA_012 is
 Begin
 s<=a xor b xor C;
 cout<=(a and b)or (b and C)or (a and C);
 End arch01;
