library ieee;
use ieee.std_logic_1164.all;

entity imagen is
port(display_ena: in stD_logic;
	  u,d: in std_logic_vector(6 downto 0);
	  column: in integer range 0 to 640;
	  row: in integer range 0 to 480;
	  red,green,blue: out std_logic_vector(3 downto 0));
end entity;

architecture arqim of imagen is
constant cero: 	integer:=0;
constant uno: 		integer:=1;
constant dos: 		integer:=2;
constant tres: 	integer:=3;
constant cuatro: 	integer:=4;
constant cinco: 	integer:=5;
constant seis: 	integer:=6;
constant siete: 	integer:=7;
constant ocho: 	integer:=8;
constant nueve: 	integer:=9;
constant r0: std_logic_vector(3 downto 0):=(others =>'0');
constant g0: std_logic_vector(3 downto 0):=(others =>'0');
constant b0: std_logic_vector(3 downto 0):=(others =>'0');

begin
	process(display_ena,row,column)
		begin
			if(display_ena='1') then
				if((row>200 and row <210) and (column>170 and column<200) and u(0)='0') then
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>210 and row<240) and (column>200 and column<210) and u(1)='0') then
					red<= (others => '0');
					green<= (others => '1');
					blue<= (others => '0');
				elsif((row>250 and row<280) and (column>200 and column<210) and u(2)='0') then
					red<= (others => '1');
					green<= (others => '0');
					blue<= (others => '0');
				elsif((row>280 and row<290) and (column>170 and column<200) and u(3)='0') then
					red<= (others => '1');
					green<= (others => '1');
					blue<= (others => '1');
				elsif((row>250 and row<280) and (column>160 and column<170) and u(4)='0') then
					red<= (others => '1');
					green<= (others => '1');
					blue<= (others => '0');
				elsif((row>210 and row<240) and (column>160 and column<170) and u(5)='0') then
					red<= (others => '1');
					green<= (others => '1');
					blue<= (others => '0');
				elsif((row>240 and row<250) and (column>170 and column<200) and u(6)='0') then
					red<= (others => '1');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>200 and row <210) and (column>110 and column<140) and d(0)='0') then --azul
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>210 and row<240) and (column>140 and column<150) and d(1)='0') then --verde
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>250 and row<280) and (column>140 and column<150) and d(2)='0') then --rojo
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>280 and row<290) and (column>110 and column<140) and d(3)='0') then --blanco
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>250 and row<280) and (column>100 and column<110) and d(4)='0') then --cian
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>210 and row<240) and (column>100 and column<110) and d(5)='0') then --amarillo
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '1');
				elsif((row>240 and row<250)and (column>110 and column<140) and d(6)='0') then --violeta
					red<= (others => '1');
					green<= (others => '0');
					blue<= (others => '1');
				else
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '0');
				end if;
			else
			red<= (others=>'0');
			green<= (others=>'0');
			blue<= (others=>'0');
			end if;
		end process;
end architecture;