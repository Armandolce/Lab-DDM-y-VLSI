library ieee;
use ieee.std_logic_1164.all;

entity cont1 is
port(clk: in std_logic;
	  conteo: buffer integer;
	  f: out std_logic);
end entity;

architecture arqcont1 of cont1 is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				if(conteo=59) then
					conteo<=0;
					f<='1';
				else
					conteo<= conteo+1;
					f<='0';
				end if;
			end if;
		end process;
end architecture;