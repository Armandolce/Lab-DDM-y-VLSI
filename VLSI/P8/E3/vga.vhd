library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga is
port (clk:  in std_logic;
		red: out std_logic_vector (3 downto 0);
		green: out std_logic_vector (3 downto 0);
		blue: out std_logic_vector (3 downto 0);
		h_sync: out std_logic;
		v_sync: out std_logic);
end entity;

architecture arqvga of vga is
signal clkl,clkl2,disp_ena: std_logic;
signal column,row: integer;
signal f: std_logic :='0';
signal num: integer:=0;
signal u,d: std_logic_vector(6 downto 0);

begin
	u1: entity work.divf(arqdivf) generic map(0) port map(clk,clkl);
	u2: entity work.divf(arqdivf) port map(clk,clkl2);
	u3: entity work.vga_core(arqcr) port map(clkl,disp_ena,h_sync,v_sync,column,row);
	u4: entity work.conteo(arqcont) port map(clkl2,num);
	u5: entity work.ssu(arqssu) port map(num,u);
	u6: entity work.ssd(arqssd) port map(num,d);
	u7: entity work.imagen(arqim) port map(disp_ena,u,d,column,row,red,green,blue);
end architecture;