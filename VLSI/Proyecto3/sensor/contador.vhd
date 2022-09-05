library ieee;
use ieee.std_logic_1164.all;

entity contador is
port(echo,clk,rst: in std_logic;
	  E: out std_logic;
	  conteo: out integer range 0 to 1500);
end entity;

architecture arqcnt of contador is
signal cont: integer range 0 to 1500;
begin
	process(echo)
		begin
			if(rst='1') then
				cont<=0;
			elsif((rising_edge(clk))) then
				if(echo='1') then
					cont<= cont+1;
				else
					if((cont>=353)and(cont<=647)) then
						E<='1';
					else
						E<='0';
					end if;
				end if; 
			end if;
		end process;
	conteo<=cont;
end architecture;