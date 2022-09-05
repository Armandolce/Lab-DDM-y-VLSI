library ieee;
use ieee.std_logic_1164.all;

entity states is
port(clk : in std_logic;
		 a : out std_logic_vector(3 downto 0));
end entity;

architecture arqstates of states is
subtype estado is std_logic_vector(3 downto 0);
constant e0: estado := "0000";
constant e1: estado := "0001";
constant e2: estado := "0010";
constant e3: estado := "0011";
constant e4: estado := "0100";
constant e5: estado := "0101";
constant e6: estado := "0110";
constant e7: estado := "0111";
constant e8: estado := "1000";
constant e9: estado := "1001";
constant e10: estado := "1010";
constant e11: estado := "1011";
constant e12: estado := "1100";
constant e13: estado := "1101";
constant e14: estado := "1110";
constant e15: estado := "1111";
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
						estado_siguiente <= e4;
					when e4 =>
						estado_siguiente <= e5;
					when e5 =>
						estado_siguiente <= e6;
					when e6 =>
						estado_siguiente <= e7;
					when e7 =>
						estado_siguiente <= e8;
					when e8 =>
						estado_siguiente <= e9;
					when e9 =>
						estado_siguiente <= e10;
					when e10 =>
						estado_siguiente <= e11;
					when e11 =>
						estado_siguiente <= e12;
					when e12 =>
						estado_siguiente <= e13;
					when e13 =>
						estado_siguiente <= e14;
					when e14 =>
						estado_siguiente <= e15;
					when e15 =>
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
						