library ieee;
use ieee.std_logic_1164.all;

entity dist is
port(t: in integer range 0 to 1500;
	  d: out std_logic_vector(4 downto 0));
end entity;

architecture arqd of dist is
begin
	process(t)
		begin
			if((t>=118)and(t<176)) then --2
				d<="00010";
			elsif((t>=176)and(t<235)) then --3
				d<="00011";
			elsif((t>=235)and(t<294)) then --4
				d<="00100";
			elsif((t>=294)and(t<353)) then --5
				d<="00101";
			elsif((t>=353)and(t<412)) then --6
				d<="00110";
			elsif((t>=412)and(t<470)) then --7
				d<="00111";
			elsif((t>=470)and(t<529)) then --8
				d<="01000";
			elsif((t>=529)and(t<588)) then --9
				d<="01001";
			elsif((t>=588)and(t<647)) then --10
				d<="01010";
			elsif((t>=647)and(t<706)) then --11
				d<="01011";
			elsif((t>=706)and(t<765)) then --12
				d<="01100";
			elsif((t>=765)and(t<824)) then --13
				d<="01101";
			elsif((t>=824)and(t<882)) then --14
				d<="01110";
			elsif((t>=882)and(t<941)) then --15
				d<="01111";
			elsif((t>=941)and(t<1000)) then --16
				d<="10000";
			elsif((t>=1000)and(t<1059)) then --17
				d<="10001";
			elsif((t>=1059)and(t<1118)) then --18
				d<="10010";
			elsif((t>=1118)and(t<1176)) then --19
				d<="10011";
			elsif((t>=1176)and(t<1235)) then --20
				d<="10100";
			elsif((t>=1235)and(t<1294)) then --21
				d<="10101";
			elsif((t>=1294)and(t<1353)) then --22
				d<="10110";
			else 
				d<="11111";
			end if;
		end process;
end architecture;