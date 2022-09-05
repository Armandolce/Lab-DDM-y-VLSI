library ieee;
use ieee.std_logic_1164.all;

entity casc_cont is
port(clk: in stD_logic;
	  ss1, ss2, ss3, ss4, ss5, ss6: buffer std_logic_vector(6 downto 0));
end entity;

architecture arqwf of casc_cont is
signal clkl: std_logic;
signal a: integer range 0 to 16;
begin
	u1: entity work.divf(arqdivf) port map(clk,clkl);
	u2: entity work.contador(arqcont) port map(clkl, a);
	u0: entity work.mensaje(arqmsm) port map(a,ss1);
	u5: entity work.display(arqdsp) port map(clkl,ss1,ss2);
	u6: entity work.display(arqdsp) port map(clkl,ss2,ss3);
	u7: entity work.display(arqdsp) port map(clkl,ss3,ss4);
	u8: entity work.display(arqdsp) port map(clkl,ss4,ss5);
	u9: entity work.display(arqdsp) port map(clkl,ss5,ss6);
end architecture;
