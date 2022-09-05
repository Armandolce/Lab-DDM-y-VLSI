library ieee;
use ieee.std_logic_1164.all;

entity coordenadas is
port(	reloj: in std_logic;
		dipsw: in std_logic_vector(1 downto 0);
		display_ena: in stD_logic;
		column: in integer range 0 to 640;
		row: in integer range 0 to 480;
		red,green,blue: out std_logic_vector(3 downto 0));
end entity;

architecture arqcord of coordenadas is
signal x : integer := 240;
signal y : integer := 320;
begin
	process(display_ena,row,column)
		begin
			if(display_ena='1') then
				if(( row> x  and row <x+20 ) and ( column>y and column<y+15)) then
					--red<= (others => '1');
					green<= (others => '1');
					blue<= (others => '1');
				elsif(( row>x+20 and row<x+40 )and ( column>y-5 and column<y+20 )) then
					red<= (others => '1');
					green<= (others => '1');
					--blue<= (others => '1');
				else
					red<= (others => '0');
					green<= (others => '0');
					blue<= (others => '0');
				end if;
			end if;
		end process;
process(reloj,dipsw)
begin
	if(reloj'event and reloj = '1') then
		if(dipsw(1)='1' and dipsw(0)='1') then
			if(x>10 and x<450) then
				x<=x-1;
				y<=y;
			else
				x<=449;
			end if;
		elsif(dipsw(1)='0' and dipsw(0)='1') then
			if(y>0 and y<600) then
				x<=x;
				y<=y+1;
			else
				y<=1;
			end if;
		elsif(dipsw(1)='1' and dipsw(0)='0') then
			if(y>20 and y <600) then
				x<=x;
				y<=y-1;
			else
				y<=599;
			end if;
		elsif(dipsw(1)='0' and dipsw(0)='0') then
			if(x>0 and x<450) then
				x<=x+1;
				y<=y;
			else
				x<=1;
			end if;
		end if;
	end if;
end process;
end architecture;