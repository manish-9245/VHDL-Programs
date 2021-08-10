-- Code your testbench here
Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
--  Defines a design entity
entity bitMagcomp04_tb is
end bitMagcomp04_tb;

architecture arch01 of bitMagcomp04_tb is
Component bitMagcomp04 is
Port(
     a        :in std_logic_vector(3 downto 0);
     b        :in std_logic_vector(3 downto 0);
     x0,y0,z0 :in std_logic;
     x,y,z :out std_logic
     );
end component;

Signal a,b:std_logic_vector(3 downto 0);
Signal x0,y0,z0,x,y,z:std_logic;

begin
DUT : bitMagcomp04 port map(a,b,x0,y0,z0,x,y,z);

    process
    begin
    x0<='1';y0<='0';z0<='0'; wait for 1000 ns;
    a<="0101";b<="1000";wait for 100 ns;
    a<="0111";b<="1001";wait for 100 ns;
    a<="0111";b<="0100";wait for 100 ns;
    a<="1101";b<="1110";wait for 100 ns;
    a<="1101";b<="1011";wait for 100 ns;
    a<="0001";b<="0110";wait for 100 ns;
    a<="1101";b<="1111";wait for 100 ns;
    a<="0111";b<="0010";wait for 100 ns;
        wait;
    end process;
end arch01;
