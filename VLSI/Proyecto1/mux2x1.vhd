library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
port(UA, UL : in std_logic_vector(2 downto 0);
		sel2 : in std_logic;
		salmux2: out std_logic_vector(2 downto 0)
		);
end;

architecture arqmux2x1 of mux2x1 is
begin
with sel2 select
				salmux2 <= UA when '0',
							  UL when others;
end architecture arqmux2x1;