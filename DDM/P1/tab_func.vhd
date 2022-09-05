Library IEEE;
Use IEEE.STD_LOGIC_1164.all;

Entity tab_func is
Port ( in_xyz: in std_logic_vector(2 downto 0);
			in_abc: in std_logic_vector (2 downto 0);
			salida: out std_logic_vector (1 downto 0));
End tab_func;
Architecture Behavioral of tab_func is
Begin
	salida(1) <= ((in_xyz(2) and(not in_xyz(1))) or ((not in_xyz(2)) and in_xyz(1) and in_xyz(0)) or (in_xyz(1) and in_xyz(0)));
	salida(0) <= (( (not in_abc(2)) and (not in_abc(1)) and (not in_abc(0))) or (in_abc(2) and in_abc(0)));
End Behavioral;