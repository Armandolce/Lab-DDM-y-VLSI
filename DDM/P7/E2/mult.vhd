Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity mult is
Port (A_in : in std_logic_vector (3 downto 0);
		B_in : in std_logic_vector (3 downto 0);
		S_in : in std_logic;
		Output : out std_logic_vector (3 downto 0));
End Entity;

Architecture syst of mult is
begin
	Process (S_in)
		begin
			case S_in is
				when '0' => Output <=  A_in;
				when others => Output <=  B_in;
			End case;
	End Process;
	
End syst;