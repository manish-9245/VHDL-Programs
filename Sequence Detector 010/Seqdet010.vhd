

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity SeqDet010 is
Port (x   : in std_logic;
      clk : in std_logic;
	  rst : in std_logic;
	  z   : out std_logic
	  );
End SeqDet010;

Architecture arch01 of SeqDet010 is

signal pstate, nstate :std_logic_vector(1 downto 0);

Begin
-- defining dregister
Process(nstate,rst,clk)
Begin
     if (clk 'event and clk = '1')then
	 if (rst='1')then
	 pstate<="00";
	 else
	 pstate<=nstate;
	 End if;
	 End if;
End process;

-- describing combo 1 to generate next state
process(x,pstate)
begin case pstate is
	 when "00" => if (x='0') then
	                 nstate <="01";
					 else
					 nstate <="00";
					 end if;
	 when "01" => if (x='1') then
	                 nstate <="10";
					 else
					 nstate <="01";
					 end if;
	 when "10" => if (x='0') then
	                 nstate <="01";
					 else
					 nstate <="00";
					 end if;
	 When others =>nstate<="00";
End case;	 
End process;

--describing combo 2 depending on pstate and input to generate output

Process (x,pstate)
Begin
     case pstate is 
	 when "00" =>z<='0';
	 when "01" =>z<='0';
	 when "10" => if (x='0') then
                  z<='1';
                  else 
                  z<='0';
                  End if;
     When others => z <='0';
End case;
End Process;

End arch01;	 
