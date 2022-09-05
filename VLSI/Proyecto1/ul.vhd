library ieee;
use ieee.std_logic_1164.all;

entity ul is
port(a,b: in std_logic_vector(2 downto 0);
		sel: in std_logic_vector(1 downto 0);
		salmux2: out std_logic_vector(2 downto 0));
end entity ul;

architecture arqul of ul is
begin
with sel select
			salmux2 <= (a and b) when "00",
						  (a or b) when "01",
						  (a xor b)   when "10",
						  not a when others;
end;