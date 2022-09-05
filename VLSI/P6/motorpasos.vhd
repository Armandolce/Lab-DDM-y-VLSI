library ieee;
use ieee.std_logic_1164.all;

entity motorpasos is
port(clk, dir: in std_logic;
	  snlo: out std_logic_vector(3 downto 0));
end entity;

architecture arqmotor of motorpasos is
signal clkl: std_logic;
signal a: std_logic_vector(1 downto 0);

begin
	u1: entity work.divf(arqdivf) generic map(250000) port map(clk, clkl);
	u2: entity work.states(arqstates) port map(clkl, dir, a);	
	u3: entity work.movimiento(arqmov) port map(a, snlo);
end architecture;