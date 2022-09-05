library ieee;
use ieee.std_logic_1164.all;

entity servomotor is
port(clk: in std_logic;
	  sel: in std_logic;
	  motor: out std_logic);
end entity;

architecture arqpwm of servomotor is
signal clkl: std_logic;
signal a1: integer range 25 to 125;
begin
	with sel select
			a1 <= 25 when '0',
					125 when others;
	u1: entity work.divf(arqdivf) generic map(500) port map(clk,clkl);
	u3: entity work.senal(arqsnl) port map(clkl,a1,motor);
end architecture;