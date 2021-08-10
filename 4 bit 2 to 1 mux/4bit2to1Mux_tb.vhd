-- Code your testbench here
Library IEEE;
Use IEEE.Std_logic_1164.all;
--  Defines a design entity
entity Mux_tb is
end Mux_tb;

architecture behaviour of Mux_tb is
component Mux is
port (a:in std_logic_vector(3 downto 0);
      b:in std_logic_vector(3 downto 0);
      s:in std_logic;
      y:out std_logic_vector(3 downto 0));
End component;
Signal a,y,b:std_logic_vector(3 downto 0);
Signal s:std_logic;
begin
DUT: Mux Port map(a,b,s,y);

    process
    Begin
    a<="0000"; wait for 100 ns;
    s<='0'; wait for 100 ns;
    b<="0011"; wait for 100 ns;
      s<='1'; wait for 100 ns;
    a<="0010"; wait for 100 ns;
      s<='1'; wait for 100 ns;
    b<="0001"; wait for 100 ns;
    
      s<='0'; wait for 100 ns;
    a<="1111"; wait for 100 ns;
       s<='1'; wait for 100 ns;
    b<="1110"; wait for 100 ns;
      s<='0'; wait for 100 ns;
    a<="1100"; wait for 100 ns;
      s<='1'; wait for 100 ns;
    b<="0100"; wait for 100 ns;
        wait;
    end process;
end behaviour;
