Library IEEE;
Use IEEE.STD_LOGIC_1164.all;

Entity compuerta is
Port ( a,b: in std_logic;
			c: out std_logic);
End compuerta;
Architecture Behavioral of compuerta is
Begin
	c <= a and b;
End Behavioral;