library ieee;
use ieee.std_logic_1164.all;

entity sensor is
port(clk,rst,echo: in std_logic;
	  trig: out std_logic;
	  ssu,ssd: out std_logic_vector(6 downto 0));
end entity;

architecture arqsns of sensor is
signal clkl1,clkl2,tr: std_logic;
signal cm: integer;
signal d: std_logic_vector(4 downto 0);
begin
	u1: entity work.divf(arqdivf) generic map(25) port map(clk,clkl1); -- 1 MHz -> 1 us
	u2: entity work.senal(arqsenal) port map(clk,clkl2); --pwm
	u3: entity work.trigger(arqtrg) port map(clkl2,rst,echo,tr);
	trig<=tr;
	u4: entity work.contador(arqcnt) port map(echo,clkl1,tr,cm);
	u5: entity work.dist(arqd) port map(cm, d);
	u6: entity work.ssu(arqssu) port map(d, ssu);
	u7: entity work.ssd(arqssd) port map(d, ssd);
	
end architecture;