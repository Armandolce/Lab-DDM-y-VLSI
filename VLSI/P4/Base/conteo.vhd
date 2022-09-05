library ieee;
use ieee.std_logic_1164.all;

entity conteo is
port(clk: in std_logic;
	  conteo: buffer integer);
end entity;

architecture arqcont of conteo is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(conteo=0) then
					conteo<=1000;
				else
					conteo<= conteo-100;
				end if;
			end if;
		end process;
end architecture;