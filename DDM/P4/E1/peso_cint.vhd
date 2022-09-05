Library IEEE;
Use IEEE.std_logic_1164.all;
Entity peso_cint is
	port (peso : in std_logic;
			cinturon: in std_logic;
			f_out: out std_logic);
End peso_cint;

Architecture Behavioral of peso_cint is
Begin
Process (peso, cinturon)
Begin
	if(peso = '1' and cinturon = '0') then
		f_out <= '1';
	Else
		f_out <= '0';
	End if;
End process;
End Behavioral;