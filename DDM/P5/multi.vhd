Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity multi is
Port (A_in : in std_logic_vector (1 downto 0);
		B_in : in std_logic_vector (1 downto 0);
		Output : out std_logic_vector (3 downto 0));
End Entity;

Architecture Behavioral of multi is
Component half_add is
	Port(A : in std_logic;
		  B : in std_logic;
		  C : out std_logic;
		  S : out std_logic);
End Component;

signal c1_aux : std_logic;
signal c2_aux : std_logic;
signal c3_aux : std_logic;
signal c4_aux : std_logic;

Begin
	Output(0) <= A_in(0) and B_in(0);
	c1_aux <= A_in(0) and B_in(1);
	c2_aux <= A_in(1) and B_in(0);
	c3_aux <= A_in(1) and B_in(1);
	
	suma_medio1 : half_add
	Port map(A => c1_aux,
				B => c2_aux,
				C => c4_aux,
				S => Output(1));
	
	suma_medio2 : half_add
	Port map(A => c3_aux,
				B => c4_aux,
				C => Output(3),
				S => Output(2));
	
	
End Behavioral;