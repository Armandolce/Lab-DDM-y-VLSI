library ieee;
use ieee.std_logic_1164.all;

entity states is
port(clk : in std_logic;
		 a : out std_logic_vector(3 downto 0));
end entity;

architecture arqstates of states is
subtype estado is std_logic_vector(3 downto 0);
constant e0: estado := "1100";
constant e1: estado := "0110";
constant e2: estado := "0011";
constant e3: estado := "1001";

signal estado_actual, estado_siguiente : estado;
begin
		process(estado_actual)
			begin
				case estado_actual is
					when e0 =>
						estado_siguiente <= e1;
					when e1 =>
						estado_siguiente <= e2;
					when e2 =>
						estado_siguiente <= e3;
					when e3 =>
						estado_siguiente <= e0;
					end case;
				a <= estado_actual;
			end process;
		process(clk)
			begin
				if(rising_edge(clk)) then
					estado_actual <= estado_siguiente;
				end if;
			end process;
end architecture;
						