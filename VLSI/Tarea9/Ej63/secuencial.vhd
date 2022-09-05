library ieee;
use ieee.std_logic_1164.all;

entity secuencial is
port(d0, d1: in std_logic;
	  q0, q1: out std_logic);
end entity;

architecture arqsec of secuencial is
begin
				q0<=d0;
				q1<=d1;
end architecture;