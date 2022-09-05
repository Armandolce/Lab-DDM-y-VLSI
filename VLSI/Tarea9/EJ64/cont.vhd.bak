library ieee;
use ieee.std_logic_1164.all;
entity contador is
port (clk: in std_logic;
		Q0,Q1: inout std_logic);
end contador;

architecture arq of contador is
signal D0,D1:std_logic;

begin
u1: entity work.combinacional(arq) port map (Q0,Q1,D0,D1);
u2: entity work.FFD(arq) port map (D0,clk,Q0);
u3: entity work.FFD(arq) port map (D1,clk,Q1);
end architecture arq;
