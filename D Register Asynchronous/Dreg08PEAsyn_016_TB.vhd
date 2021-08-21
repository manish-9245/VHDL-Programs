LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Dreg08PEAsyn_016_TB IS
END Dreg08PEAsyn_016_TB;
ARCHITECTURE behavior OF Dreg08PEAsyn_016_TB IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Dreg08PEAsyn_016
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
   -- Clock period definitions
   constant CLK_period : time := 20 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Dreg08PEAsyn_016 PORT MAP (
          D => D,
          RST => RST,
          CLK => CLK,
          Q => Q
        );
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin		
  WAIT FOR 100 NS;
RST<='1';WAIT FOR 22 NS;
D(0)<='1';WAIT FOR 20 NS;
D(1)<='0';WAIT FOR 20 NS;
D(2)<='1';WAIT FOR 20 NS;
D(3)<='0';WAIT FOR 20 NS;
D(4)<='1';WAIT FOR 20 NS;
D(5)<='0';WAIT FOR 20 NS;
D(6)<='1';WAIT FOR 20 NS;
D(7)<='0';WAIT FOR 20 NS;

RST<='0' ;WAIT FOR 20 NS;
D(0)<='1';WAIT FOR 20 NS;
D(1)<='0';WAIT FOR 20 NS;
D(2)<='1';WAIT FOR 20 NS;
D(3)<='0';WAIT FOR 20 NS;
D(4)<='1';WAIT FOR 20 NS;
D(5)<='0';WAIT FOR 20 NS;
D(6)<='1';WAIT FOR 20 NS;
D(7)<='0';WAIT FOR 20 NS;

RST<='1';WAIT FOR 22 NS;
D(0)<='1';WAIT FOR 20 NS;
D(1)<='0';WAIT FOR 20 NS;
D(2)<='1';WAIT FOR 20 NS;
D(3)<='0';WAIT FOR 20 NS;
D(4)<='1';WAIT FOR 20 NS;
D(5)<='0';WAIT FOR 20 NS;
D(6)<='1';WAIT FOR 20 NS;
D(7)<='0';WAIT FOR 20 NS;
wait;
end process;
END behavior;