library ieee;
use ieee.std_logic_1164.all;

entity ssu is
port(a: in std_logic_vector(4 downto 0);
	  f: out std_logic_vector(6 downto 0));
end entity;

architecture arqssu of ssu is
begin
	with a select
	f<="0100100" when "00010",
		"0110000" when "00011",
		"0011001" when "00100",
		"0010010" when "00101",
		"0000010" when "00110",
		"1111000" when "00111",
		"0000000" when "01000",
		"0011000" when "01001",
		
		"1000000" when "01010",
		"1111001" when "01011",
		"0100100" when "01100",
		"0110000" when "01101",
		"0011001" when "01110",
		"0010010" when "01111",
		"0000010" when "10000",
		"1111000" when "10001",
		"0000000" when "10010",
		"0011000" when "10011",
		
		"1000000" when "10100",
		"1111001" when "10101",
		"0100100" when "10110",
		"1111111" when others;
end architecture;