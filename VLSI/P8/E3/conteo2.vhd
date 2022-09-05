library ieee;
use ieee.std_logic_1164.all;

entity conteo2 is
port(f: in std_logic;
	  conteo: buffer integer);
end entity;

architecture arqcont2 of conteo2 is
begin
	process(f)
		begin
			if(rising_edge(f)) then
				if(conteo = 5) then
					conteo<=0;
				else
					conteo<= conteo+1;
				end if;
			end if;
		end process;
end architecture;
