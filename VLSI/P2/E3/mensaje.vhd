library ieee;
use ieee.std_logic_1164.all;

entity mensaje is
port(a: in integer;
     ssc: out std_logic_vector(6 downto 0));
end entity;

architecture arqmsm of mensaje is
begin
	with a select
	ssc<= "1111111" when 0,
		   "0001001" when 1,
			"1000000" when 2,
			"1000111" when 3,
			"0001000" when 4,
			"0110111" when 5,
			"0001100" when 6,
			"1111111" when 7,
			"1111111" when 8,
		   "1000110" when 9,
			"0001011" when 10,
			"1101111" when 11,
			"0101011" when 12,
			"0100011" when 13,
			"0010010" when 14,
			"1111111" when 15,
			"1111111" when others;
end architecture;