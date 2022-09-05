Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_ARITH.ALL;
Use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity full_rest is
	Port(X : in std_logic;
		  Y : in std_logic;
		  Z : in std_logic;
		  B : out std_logic;
		  D : out std_logic);
End full_rest;

Architecture Behavioral of full_rest is
Begin
	B <= ((not X) and Y)or((not X) and Z)or(Y and Z);
	D <= ((not X) and (not Y) and Z)or((not X) and Y and (not Z))or(X and (not Y) and (not Z))or(X and Y and Z);
End Behavioral;