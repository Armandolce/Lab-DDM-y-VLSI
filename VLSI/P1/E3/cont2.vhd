library ieee;
use ieee.std_logic_1164.all;

entity cont2 is
port(a: in std_logic;
	  conteo: buffer integer:=0);
end entity;

architecture arqcont2 of cont2 is
begin
	process(a)
		begin
			if(rising_edge(a)) then
				if(conteo=23) then
					conteo<=0;
				else
					conteo<= conteo+1;
				end if;
			end if;
		end process;
end architecture;