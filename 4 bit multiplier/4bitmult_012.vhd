Library Ieee;
use Ieee.std_logic_1164.all;

Entity Mult04_012 is
Port 
(a :in std_logic_vector(3 downto 0);
 b :in std_logic_vector(3 downto 0);
 p :out std_logic_vector(7 downto 0)
 ); 
 End Mult04_012;
 Architecture arch01 of Mult04_012 is
 Component And01_012 is
 port 
(a:in std_logic;
 b:in std_logic;
 y:out std_logic
 );
 End Component;
 Component HA_012 is
 port 
(a:in std_logic;
 b:in std_logic;
 s:out std_logic;
 c:out std_logic
 );
 End Component;
 Component FA_012 is
 port 
(a:in std_logic;
 b:in std_logic;
 Cin: in std_logic;
 s:out std_logic;
 c:out std_logic
 );
 End Component;
 signal s : std_logic_vector(21 downto 0);
 signal c : std_logic_vector(10 downto 0);
 Begin
 D1  : And01_012 Port map (a(0),b(0),p(0));
 D2  : And01_012 Port map (a(0),b(1),s(0));
 D3  : And01_012 Port map (a(0),b(2),s(1));
 D4  : And01_012 Port map (a(0),b(3),s(2));
 D5  : And01_012 Port map (a(1),b(0),s(3));
 D6  : And01_012 Port map (a(1),b(1),s(4));
 D7  : And01_012 Port map (a(1),b(2),s(5));
 D8  : And01_012 Port map (a(1),b(3),s(6));
 D9  : And01_012 Port map (a(2),b(0),s(10));
 D10  : And01_012 Port map (a(2),b(1),s(11));
 D11  : And01_012 Port map (a(2),b(2),s(12));
 D12  : And01_012 Port map (a(2),b(3),s(13));
 D13  : And01_012 Port map (a(3),b(0),s(18));
 D14  : And01_012 Port map (a(3),b(1),s(19));
 D15  : And01_012 Port map (a(3),b(2),s(20));
 D16  : And01_012 Port map (a(3),b(3),s(21));
 U1   : HA_012    Port map (s(0),s(3),p(1),c(0));
 U2   : HA_012    Port map (s(6),c(2),s(9),c(3));
 U3   : HA_012    Port map (s(7),s(10),p(2),c(4));
 U4   : HA_012    Port map (s(15),s(18),p(3),c(8));
 K1   : FA_012    Port map (s(1),s(4),c(0),s(7),c(1));
 K2   : FA_012    Port map (s(2),s(5),c(1),s(8),c(2));
 K3   : FA_012    Port map (s(8),s(11),c(4),s(15),c(5));
 K4   : FA_012    Port map (s(9),s(13),c(5),s(16),c(6));
 K5   : FA_012    Port map (c(3),s(13),c(6),s(17),c(7));
 K6   : FA_012    Port map (s(16),s(19),c(8),p(4),c(9));
 K7   : FA_012    Port map (s(17),s(20),c(9),p(5),c(10));
 K8   : FA_012    Port map (c(7),s(21),c(10),p(6),p(7));
  
  End Arch01;
