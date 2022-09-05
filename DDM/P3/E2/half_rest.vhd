Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity half_rest is
	Port(X : in std_logic;
		  Y : in std_logic;
		  B : out std_logic;
		  D : out std_logic);
End half_rest;

Architecture Behavioral of half_rest is
Begin
	B <= (not X) and Y;
	D <= X xor Y;
End Behavioral;