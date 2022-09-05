Library IEEE;
Use IEEE.std_logic_1164.all;
Entity doble_enc is
	port (izq2 : in std_logic;
			der2: in std_logic;
			f_out: out std_logic);
End doble_enc;

Architecture Behavioral of doble_enc is
Begin
Process (izq2, der2)
Begin
	if(izq2 = '1' and der2 = '1') then
		f_out <= '1';
	Else
		f_out <= '0';
	End if;
End process;
End Behavioral;