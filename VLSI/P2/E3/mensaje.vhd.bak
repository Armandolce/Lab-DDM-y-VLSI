library ieee;
use ieee.std_logic_1164.all;

entity mensaje is
port(a: in std_logic_vector(3 downto 0);
     ssc: out std_logic_vector(6 downto 0));
end entity;

architecture arqmsm of mensaje is
begin
	with a select
	ssc<= "1111111" when "0000",
		   "0001001" when "0001",
			"1000000" when "0010",
			"1000111" when "0011",
			"0001000" when "0100",
			"0110111" when "0101",
			"0001100" when "0110",
			"1111111" when "0111",
			"1111111" when "1000",
		   "1000110" when "1001",
			"0001011" when "1010",
			"1101111" when "1011",
			"0101011" when "1100",
			"0100011" when "1101",
			"0010010" when "1110",
			"1111111" when "1111";
end architecture;