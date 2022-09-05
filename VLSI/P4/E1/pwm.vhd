library ieee;
use ieee.std_logic_1164.all;

entity pwm is
port(clk: in std_logic;
	  led1: out std_logic);
end entity;

architecture arqpwm of pwm is
signal clkl: std_logic;
begin
	u1: entity work.divf(arqdivf) generic map(100000) port map(clk,clkl);
	u2: entity work.senal(arqsenal) port map(clkl,250,led1);
end architecture;