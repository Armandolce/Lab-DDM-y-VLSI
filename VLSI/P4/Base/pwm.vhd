library ieee;
use ieee.std_logic_1164.all;

entity pwm is
port(clk: in std_logic;
	  led1, led2, led3, led4, led5, led6, led7, led8, led9: out std_logic);
end entity;

architecture arqpwm of pwm is
signal clkl: std_logic;
signal clkl2: std_logic;
signal a1: integer:=1000;
signal a2: integer;
signal a3: integer;
signal a4: integer;
signal a5: integer;
signal a6: integer;
signal a7: integer;
signal a8: integer;
signal a9: integer;
signal a10: integer;
begin
	u1: entity work.divf(arqdivf) generic map(250) port map(clk,clkl);
	u2: entity work.divf(arqdivf) generic map(4000000) port map(clk,clkl2);
	u3: entity work.conteo(arqcont) port map(clkl2, a1);
	u4: entity work.senal(arqsenal) port map(clkl,clkl2,a1,led1,a2);
	u5: entity work.senal(arqsenal) port map(clkl,clkl2,a2,led2,a3);
	u6: entity work.senal(arqsenal) port map(clkl,clkl2,a3,led3,a4);
	u7: entity work.senal(arqsenal) port map(clkl,clkl2,a4,led4,a5);
	u8: entity work.senal(arqsenal) port map(clkl,clkl2,a5,led5,a6);
	u9: entity work.senal(arqsenal) port map(clkl,clkl2,a6,led6,a7);
	u10: entity work.senal(arqsenal) port map(clkl,clkl2,a7,led7,a8);
	u11: entity work.senal(arqsenal) port map(clkl,clkl2,a8,led8,a9);
	u12: entity work.senal(arqsenal) port map(clkl,clkl2,a9,led9,a10);
end architecture;