LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY tb_adder IS
END tb_adder;
 
ARCHITECTURE behavior OF tb_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT cla_adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    
   signal A,B,S : std_logic_vector(3 downto 0) := (others => '0');
   signal cin,cout : std_logic := '0';
    signal error : integer := 0;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: cla_adder PORT MAP (
          A => A,
          B => B,
          cin => cin,
          S => S,
          cout => cout
        );

-- Stimulus process - all the input combinations are tested here.
--the number of errors are recorded in the signal named "error".
   stim_proc: process
   begin    
        cin <= '0';
      for i in 0 to 15 loop
            for j in 0 to 15 loop
                A <= conv_std_logic_vector(i,4);
                B <= conv_std_logic_vector(j,4);
                wait for 10 ns;
                if(conv_integer(cout & S) /= (i+j)) then
                    error <= error + 1;
                end if; 
            end loop;   
        end loop;
            
        cin <= '1';
      for i in 0 to 15 loop
            for j in 0 to 15 loop
                A <= conv_std_logic_vector(i,4);
                B <= conv_std_logic_vector(j,4);
                wait for 10 ns;
                if(conv_integer(cout & S) /= (i+j+1)) then
                    error <= error + 1;
                end if;
            end loop;   
        end loop;   
      wait;
   end process;

END;