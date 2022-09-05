Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity suma_3bit is
Port (A_in : in std_logic_vector (2 downto 0);
		B_in : in std_logic_vector (2 downto 0);
		Display : out std_logic_vector (6 downto 0));
End Entity;

Architecture Behavioral of suma_3bit is
Component half_add is
	Port(A : in std_logic;
		  B : in std_logic;
		  C : out std_logic;
		  S : out std_logic);
End Component;

Component full_add is
	Port(A : in std_logic;
		  B : in std_logic;
		  Cin : in std_logic;
		  Co : out std_logic;
		  S : out std_logic);
End Component;

signal c1_aux : std_logic;
signal c2_aux : std_logic;
signal c3_aux : std_logic_vector(3 downto 0);

Begin
suma_medio : half_add
	Port map(A => A_in(0),
				B => B_in(0),
				C => c1_aux,
				s => c3_aux(0));

suma_comp1 : full_add
	Port map(A => A_in(1),
				B => B_in(1),
				Cin => c1_aux,
				Co => c2_aux,
				s => c3_aux(1));
				
suma_comp2 : full_add
	Port map(A => A_in(2),
				B => B_in(2),
				Cin => c2_aux,
				Co => c3_aux(3),
				s => c3_aux(2));
				
	

With c3_aux Select
				Display <= "1000000" when "0000",
							  "1111001" when "0001",
							  "0100100" when "0010",
							  "0110000" when "0011",
							  "0011001" when "0100",
							  "0010010" when "0101",
							  "0000010" when "0110",
							  "0111000" when "0111",
							  "0000000" when "1000",
							  "0011000" when "1001",
							  "0001000" when "1010",
							  "0000011" when "1011",
							  "1000110" when "1100",
							  "0100001" when "1101",
							  "0000110" when "1110",
							  "0001110" when "1111";
				
End Behavioral;