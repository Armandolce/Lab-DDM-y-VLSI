library ieee;
use ieee.std_logic_1164.all;

entity combinacional is
port(q0,q1,q2: in std_logic;
	  d0,d1,d2: out std_logic);
end entity;

architecture arqcom of combinacional is
begin
	d0<= not q0;
	d1<= (q1 xor q0);
	d2<=((q2 and (not q1)) or (q1 and(q2 xor q0)));
end architecture;