Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity resta_3bit is
Port (X_in : in std_logic_vector (2 downto 0);
		Y_in : in std_logic_vector (2 downto 0);
		Display : out std_logic_vector (6 downto 0));
End Entity;

Architecture Behavioral of resta_3bit is
Component half_rest is
	Port(X : in std_logic;
		  Y : in std_logic;
		  B : out std_logic;
		  D : out std_logic);
End Component;

Component full_rest is
	Port(X : in std_logic;
		  Y : in std_logic;
		  Z : in std_logic;
		  B : out std_logic;
		  D : out std_logic);
End Component;

signal aux1 : std_logic;
signal aux2 : std_logic;
signal Resta_aux : std_logic_vector(3 downto 0);

Begin
resta_medio : half_rest
	Port map(X => X_in(0),
				Y => Y_in(0),
				D => Resta_aux(0),
				B => aux1);

resta_comp1 : full_rest
	Port map(X => X_in(1),
				Y => Y_in(1),
				Z => aux1,
				D => Resta_aux(1),
				B => aux2);
				
resta_comp2 : full_rest
	Port map(X => X_in(2),
				Y => Y_in(2),
				Z => aux2,
				D => Resta_aux(2),
				B => Resta_aux(3));
				
With Resta_aux Select
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