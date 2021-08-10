Library IEEE;
Use ieee.std_logic_1164.all;
--  Defines a design entity
entity jkff_tb is
end jkff_tb;

architecture arch01 of jkff_tb is
component jkff Is
 Port ( j,k,clk,rst : in  STD_LOGIC;
           q : out  STD_LOGIC
       );
      End component;
signal j,k,clk,rst,q :std_logic;
begin
DUT: jkff port map(j,k,clk,rst,q);
    process
    begin
      clk <= '0'; wait for 10 ns;
      clk <= '1'; wait for 10 ns;
    End process;
    process
    Begin
      j<='0'; k<='0';rst<='1';wait for 103 ns;
      j<='0'; k<='1'; wait for 103 ns;
      rst<='0'; wait for 103 ns;
      j<='1'; k<='0'; wait for 103 ns;
      j<='1'; k<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
      j<='1'; k<='1'; wait for 103 ns;
      rst<='1'; wait for 103 ns;
     j<='0'; k<='0'; wait for 100 ns;
        wait;
    end process;
end arch01;
