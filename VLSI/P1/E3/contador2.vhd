library ieee;
use ieee.std_logic_1164.all;

entity contador2 is
port(clk: in std_logic;
	  ssg1: out std_logic_vector(6 downto 0);
	  ssg2: out std_logic_vector(6 downto 0);
	  ssg3: out std_logic_vector(6 downto 0);
	  ssg4: out std_logic_vector(6 downto 0);
	  ssg5: out std_logic_vector(6 downto 0);
	  ssg6: out std_logic_vector(6 downto 0));
end entity;

architecture arqcontador of contador2 is
signal clkl: std_logic;
signal f : std_logic:= '0';
signal f2 : std_logic:= '0';
signal a: integer range 0 to 60;
signal b: integer range 0 to 60;
signal c: integer range 0 to 60;
begin
	u1: entity work.divf(arqdivf) port map(clk,clkl);
	u2: entity work.cont1(arqcont1) port map(clkl,a,f);
	u3: entity work.cont1(arqcont1) port map(f,b, f2);
	u4: entity work.cont2(arqcont2) port map(f2,c);
	u5: entity work.ssd(arqssd) port map(a,ssg2);
	u6: entity work.ssd(arqssd) port map(b,ssg4);
	u7: entity work.ssu(arqssu) port map(a,ssg1);
	u8: entity work.ssu(arqssu) port map(b,ssg3);
	u9: entity work.ssd(arqssd) port map(c,ssg6);
	u10: entity work.ssu(arqssu) port map(c,ssg5);
end architecture;