Library IEEE;
Use IEEE.STD_LOGIC_1164.all;

Entity sist_ent is
	Port(Entradas: in std_logic_vector (2 downto 0);
		Display: out std_logic_vector (6 downto 0));
End sist_ent;
Architecture Behavioral of sist_ent is

Begin
		With Entradas Select
				Display <= "1000000" when "000",
							  "1000110" when "001",
							  "0000110" when "010",
							  "0000110" when "011",
							  "0010010" when "100",
							  "0010010" when "101",
							  "0010010" when "110",
							  "0010010" when "111";
End Behavioral;