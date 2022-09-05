library ieee;
use ieee.std_logic_1164.all;

entity movimiento is
port(estado: in std_logic_vector(1 downto 0);
	  snlo: out std_logic_vector(3 downto 0));
end entity;

architecture arqmov of movimiento is
begin
			with estado select
				snlo <= "1100" when "00", --sm0
						  "0110" when "01", --sm1
						  "0011" when "10", --sm2
						  "1001" when "11"; --sm3
end architecture;