library ieee;
use ieee.std_logic_1164.all;

entity ssd is
port(a: in std_logic_vector(4 downto 0);
	  f: out std_logic_vector(6 downto 0));
end entity;

architecture arqssd of ssd is
begin
	with a select
	f<="1111111" when "00010",
		"1111111" when "00011",
		"1111111" when "00100",
		"1111111" when "00101",
		"1111111" when "00110",
		"1111111" when "00111",
		"1111111" when "01000",
		"1111111" when "01001",
		
		"1111001" when "01010",
		"1111001" when "01011",
		"1111001" when "01100",
		"1111001" when "01101",
		"1111001" when "01110",
		"1111001" when "01111",
		"1111001" when "10000",
		"1111001" when "10001",
		"1111001" when "10010",
		"1111001" when "10011",
		
		"0100100" when "10100",
		"0100100" when "10101",
		"0100100" when "10110",
		"1111111" when others;
end architecture;