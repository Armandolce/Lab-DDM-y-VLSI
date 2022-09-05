library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity recorrido is
port ( clk, direccion : in std_logic;
			estacion : buffer std_logic_vector(2 downto 0));
end;

architecture arqrec of recorrido is
begin
process(clk)
	begin
		if(rising_edge(clk)) then
			if(direccion = '0') then
				if(estacion = "111") then
					estacion <= "111";
				else
					estacion <= estacion + 1;
				end if;
			else
				if(estacion = "000") then
					estacion <= "000";
				else
					estacion <= estacion - 1;
				end if; 
			end if;
		end if;
	end process;
end architecture;
