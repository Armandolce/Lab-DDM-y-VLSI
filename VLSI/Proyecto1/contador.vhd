library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador is
port(clk, stop: in std_logic;
	  conteo: buffer std_logic_vector(2 downto 0));
end entity;

architecture arqcont of contador is
begin
	process(clk)
		begin
			if(stop ='0') then
				if(rising_edge(clk)) then
					if(conteo= "111") then
						conteo<="000";
					else
						conteo<= conteo+1;
					end if;
				end if;
			end if;
		end process;
end architecture;