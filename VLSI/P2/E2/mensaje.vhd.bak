library ieee;
use ieee.std_logic_1164.all;

entity mensaje is
port(s: in std_logic_vector(2 downto 0);
     ssc: out std_logic_vector(6 downto 0));
end entity;

architecture arqmsm of mensaje is
begin
	with s select
	ssc<= "1111111" when "000",
		   "0001001" when "001",
			"1000000" when "010",
			"1000111" when "011",
			"0001000" when "100",
			"0110111" when "101",
			"0001100" when "110",
			"1111111" when "111";
end architecture;