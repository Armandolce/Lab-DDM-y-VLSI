library ieee;
use ieee.std_logic_1164.all;

entity conteo is
port(clk, direccion: in std_logic;
	  conteo: buffer integer);
end entity;

architecture arqcont of conteo is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(direccion = '0') then
					if(conteo=100) then
						conteo<=100;
					else
						conteo<= conteo+1;
					end if;
				else
					if(conteo=50) then
						conteo<=50;
					else
						conteo<= conteo-1;
					end if;
				end if;
			end if;
		end process;
end architecture;
