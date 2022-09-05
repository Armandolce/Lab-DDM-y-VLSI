Library IEEE;
Use IEEE.STD_logic_1164.ALL;
Use IEEE.STD_logic_unsigned.ALL;
Use IEEE.STD_logic_arith.ALL;

Entity cont_up_dn IS
	PORT( clk, inc, dec : IN std_logic;
			rst : IN std_logic;
			Display : out unsigned (6 downto 0));
END cont_up_dn;

Architecture behavioral of cont_up_dn is
	Signal div_clk : std_logic;
	Signal aux_cuenta : unsigned ( 3 downto 0);
	
begin
	U1 : ENTITY WORK.divisorF (syst) port map ( clk, div_clk );
	
	PROCESS( div_clk, rst, inc, dec )
	variable cuenta : unsigned (3 downto 0) := "0000";
	
	begin
		IF rising_edge(div_clk) THEN
			IF (rst = '0') THEN
				cuenta := X"0";
			ELSIF (inc = '1' and dec = '1') THEN
				cuenta := X"F";
			ELSIF (dec = '1') THEN
				cuenta := cuenta - 1;
			ELSIF (inc = '1') THEN
				cuenta := cuenta + 1;
			ELSIF (inc = '0' and dec = '0') THEN
				cuenta := X"0";
			END IF;
			aux_cuenta <= cuenta;
		END IF;
	END PROCESS;
	 
	 With aux_cuenta Select
				Display <= 	"1000000" when "0000",
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

	 
END behavioral;