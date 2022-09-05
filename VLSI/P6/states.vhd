library ieee;
use ieee.std_logic_1164.all;

entity states is
port(clk, dir: in std_logic;
		 a : out std_logic_vector(1 downto 0));
end entity;

architecture arqstates of states is
subtype estado is std_logic_vector(1 downto 0);
constant e0: estado := "00";
constant e1: estado := "01";
constant e2: estado := "10";
constant e3: estado := "11";

signal estado_actual, estado_siguiente : estado;
begin
	process(clk)
		begin 
			if(rising_edge(clk)) then
				estado_actual<=estado_siguiente;
			end if;
		end process;
		
	process(estado_actual)
		begin
			case estado_actual is
				when e0 =>
					if(dir = '1') then
						a<="00";
						estado_siguiente <= e1;
					else
						a<="11";
						estado_siguiente <= e3;
					end if;
				when e1 =>
					if(dir = '1') then
						a<="01";
						estado_siguiente <= e2;
					else
						a<="00";
						estado_siguiente <= e0;
					end if;				
				when e2 =>
					if(dir = '1') then
						a<="10";
						estado_siguiente <= e3;
					else
						a<="01";
						estado_siguiente <= e1;
					end if;
				when e3 =>
					if(dir = '1') then
						a<="11";
						estado_siguiente <= e0;
					else
						a<="10";
						estado_siguiente <= e2;
					end if;
				end case;
			end process;
end architecture;