----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:51:10 08/14/2021 
-- Design Name: 
-- Module Name:    MUL4X4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUL4X4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0));
end MUL4X4;

architecture Behavioral of MUL4X4 is
COMPONENT HA01 IS 
PORT( A,B:IN STD_LOGIC;
SUM,CARRY: OUT STD_LOGIC 
);
END COMPONENT;

COMPONENT FA01 IS 
PORT( A,B,CIN:IN STD_LOGIC;
S,COUT: OUT STD_LOGIC 
);
END COMPONENT;

COMPONENT AND01 IS 
PORT( A,B:IN STD_LOGIC;
Y : OUT STD_LOGIC 
);
END COMPONENT;

SIGNAL K :STD_LOGIC_VECTOR(22 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN

 U1:  AND01 PORT MAP (A(0),B(0),P(0));
 U2:  AND01 PORT MAP (A(0),B(1),K(0));
 U3:  AND01 PORT MAP (A(0),B(2),K(1));
 U4:  AND01 PORT MAP (A(0),B(3),K(2));
 U5:  AND01 PORT MAP (A(1),B(0),K(3));
 U6:  AND01 PORT MAP (A(1),B(1),K(4));
 U7:  AND01 PORT MAP (A(1),B(2),K(5));
 U8:  AND01 PORT MAP (A(1),B(3),K(6));
 U9:  AND01 PORT MAP (A(2),B(0),K(11));
U10:  AND01 PORT MAP (A(2),B(1),K(12));
U11:  AND01 PORT MAP (A(2),B(2),K(13));
U12:  AND01 PORT MAP (A(2),B(3),K(14));		  
U13:  AND01 PORT MAP (A(3),B(0),K(19));
U14:  AND01 PORT MAP (A(3),B(1),K(20));
U15:  AND01 PORT MAP (A(3),B(2),K(21));
U16:  AND01 PORT MAP (A(3),B(3),K(22));
HA1: HA01 PORT MAP ( K(3),K(0),P(1),C(0));
HA2: HA01 PORT MAP ( K(6),C(2),K(9),K(10));
HA3: HA01 PORT MAP ( K(11),K(7),P(2),C(3));
HA4: HA01 PORT MAP ( K(19),K(15),P(3),C(6));
FA1: FA01 PORT MAP (K(1),K(4),C(0),K(7),C(1));
FA2: FA01 PORT MAP (K(2),K(5),C(1),K(8),C(2));
FA3: FA01 PORT MAP (K(8),K(12),C(3),K(15),C(4));
FA4: FA01 PORT MAP (K(9),K(13),C(4),K(16),C(5));
FA5: FA01 PORT MAP (K(10),K(14),C(5),K(17),K(18));
FA6: FA01 PORT MAP (K(16),K(20),C(6),P(4),C(7));
FA7: FA01 PORT MAP (K(17),K(21),C(7),P(5),C(8));
FA8: FA01 PORT MAP (K(18),K(22),C(8),P(6),P(7));




end Behavioral;

