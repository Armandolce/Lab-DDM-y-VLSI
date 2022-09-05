library ieee;
use ieee.std_logic_1164.all;

entity decenas is
port(num: in integer;
     display_ena: in stD_logic;
	  column: in integer range 0 to 640;
	  row: in integer range 0 to 480;
	  red,green,blue: out std_logic_vector(3 downto 0));
end entity;

architecture arqdec of decenas is
constant cero: 	integer:=0;
constant uno: 		integer:=1;
constant dos: 		integer:=2;
constant tres: 	integer:=3;
constant cuatro: 	integer:=4;
constant cinco: 	integer:=5;
constant r0: std_logic_vector(3 downto 0):=(others =>'0');
constant g0: std_logic_vector(3 downto 0):=(others =>'0');
constant b0: std_logic_vector(3 downto 0):=(others =>'0');

begin
	process(display_ena,row,column)
		begin
			if(display_ena='1') then
				case num is
				when cero =>
					if((row>200 and row <210) and (column>110 and column<140)) then --azul
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '1');
					elsif((row>210 and row<240) and (column>140 and column<150)) then --verde
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>250 and row<280) and (column>140 and column<150)) then --rojo
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '0');
					elsif((row>280 and row<290) and (column>110 and column<140)) then --blanco
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>250 and row<280) and (column>100 and column<110)) then --cian
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>210 and row<240) and (column>100 and column<110)) then --amarillo
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '0');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
				when uno =>
					if((row>210 and row<240) and (column>140 and column<150)) then --verde
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>250 and row<280) and (column>140 and column<150)) then --rojo
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '0');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
				when dos =>
					if((row>200 and row <210) and (column>110 and column<140)) then --azul
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '1');
					elsif((row>210 and row<240) and (column>140 and column<150)) then --verde
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>280 and row<290) and (column>110 and column<140)) then --blanco
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>250 and row<280) and (column>100 and column<110)) then --cian
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>240 and row<250) and (column>110 and column<140)) then --violeta
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '1');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
				when tres =>
					if((row>200 and row <210) and (column>110 and column<140)) then --azul
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '1');
					elsif((row>210 and row<240) and (column>140 and column<150)) then --verde
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>250 and row<280) and (column>140 and column<150)) then --rojo
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '0');
					elsif((row>280 and row<290) and (column>110 and column<140)) then --blanco
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>240 and row<250) and (column>110 and column<140)) then --violeta
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '1');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
				when cuatro =>
					if((row>210 and row<240) and (column>140 and column<150)) then --verde
						red<= (others => '0');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>250 and row<280) and (column>140 and column<150)) then --rojo
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '0');
					elsif((row>210 and row<240) and (column>100 and column<110)) then --amarillo
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>240 and row<250) and (column>110 and column<140)) then --violeta
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '1');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
					when cinco =>
					if((row>200 and row <210) and (column>110 and column<140)) then --azul
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '1');
					elsif((row>250 and row<280) and (column>140 and column<150)) then --rojo
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '0');
					elsif((row>280 and row<290) and (column>110 and column<140)) then --blanco
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '1');
					elsif((row>210 and row<240) and (column>100 and column<110)) then --amarillo
						red<= (others => '1');
						green<= (others => '1');
						blue<= (others => '0');
					elsif((row>240 and row<250) and (column>110 and column<140)) then --violeta
						red<= (others => '1');
						green<= (others => '0');
						blue<= (others => '1');
					else
						red<= (others => '0');
						green<= (others => '0');
						blue<= (others => '0');
					end if;
				when others =>
					red <= r0; green<=g0; blue<=b0;
				end case;
			else
			red<= (others=>'0');
			green<= (others=>'0');
			blue<= (others=>'0');
			end if;
		end process;
end architecture;