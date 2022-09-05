library ieee;
use ieee.std_logic_1164.all;
entity FFD is
port (d, clk : in std_logic;
		Q: out std_logic);
end FFD;

architecture arq of FFD is
begin
process(clk)
begin
if clk 'event and clk='1' then
		Q<=d;
	end if;
end process;
end architecture arq;