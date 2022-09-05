library ieee;
use ieee.std_logic_1164.all;

entity servomotor is
port(clk, selector: in std_logic;
	  motor: out std_logic);
end entity;

architecture arqpwm of servomotor is
signal clkl, clkl2: std_logic;
signal a1: integer:=50;
begin

	u1: entity work.divf(arqdivf) generic map(250000) port map(clk, clkl2);
	u2: entity work.divf(arqdivf) generic map(500) port map(clk,clkl);
	u3: entity work.conteo(arqcont) port map(clkl2, selector, a1);
	u4: entity work.senal(arqsnl) port map(clkl,75,motor);
end architecture;