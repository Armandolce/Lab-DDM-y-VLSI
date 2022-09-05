library ieee;
use ieee.std_logic_1164.all;

entity cascada is
port(clk: in stD_logic;
	  ss1, ss2, ss3, ss4, ss5, ss6: buffer std_logic_vector(6 downto 0));
end entity;

architecture arqwf of cascada is
signal clkl: std_logic;
signal d0,d1,d2,q0,q1,q2: std_logic;
signal s: std_logic_vector(2 downto 0);
begin
	u1: entity work.divf(arqdivf) port map(clk,clkl);
	u2: entity work.combinacional(arqcom) port map(q0,q1,q2,d0,d1,d2);
	u3: entity work.secuencial(arqsec) port map(clkl,d0,d1,d2,q0,q1,q2);
	s(0)<=q0;
	s(1)<=q1;
	s(2)<=q2;
	u4: entity work.mensaje(arqmsm) port map(s,ss1);
	u5: entity work.display(arqdsp) port map(clkl,ss1,ss2);
	u6: entity work.display(arqdsp) port map(clkl,ss2,ss3);
	u7: entity work.display(arqdsp) port map(clkl,ss3,ss4);
	u8: entity work.display(arqdsp) port map(clkl,ss4,ss5);
	u9: entity work.display(arqdsp) port map(clkl,ss5,ss6);
end architecture;
