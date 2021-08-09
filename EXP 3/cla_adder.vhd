library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla_adder is
port( A,B : in std_logic_vector(3 downto 0);
        cin : in std_logic;
        S : out std_logic_vector(3 downto 0);
        cout : out std_logic
        );
end cla_adder;

architecture Behavioral of cla_adder is

signal P,G : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
signal C : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";

component cla_block is
port (
      P : in std_logic_vector(3 downto 0);
      G : in std_logic_vector(3 downto 0);
     C : out std_logic_vector(4 downto 0);
     cin : in std_logic
     );
end component;

begin

--first level
P <= A xor B;
G <= A and B;

--second level
gen_c : cla_block port map(P,G,C,cin);

--third level
S <= P xor C(3 downto 0);
cout <= C(4);

end Behavioral;
