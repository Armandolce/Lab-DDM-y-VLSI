Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity full_add is
	Port(A : in std_logic;
		  B : in std_logic;
		  Cin : in std_logic;
		  Co : out std_logic;
		  S : out std_logic);
End full_add;

Architecture Behavioral of full_add is
Begin
	Co <= (A and B)or(Cin and(A xor B));
	S <= (A xor B) xor Cin;
End Behavioral;