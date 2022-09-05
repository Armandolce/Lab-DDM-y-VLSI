library ieee;
use ieee.std_logic_1164.all;

entity secuencial is
port(clk, d0, d1, d2: in std_logic;
	  q0, q1, q2: out std_logic);
end entity;

architecture arqsec of secuencial is
begin
	process(clk)
		begin
			if(rising_edge(clk)) then
				q0<=d0;
				q1<=d1;
				q2<=d2;
			end if;
		end procesS;
end architecture;