library ieee;
use ieee.std_logic_1164.all;
entity combinacional is
port (Q0,Q1 : in std_logic;
		D0,D1 : out std_logic);
end combinacional;

architecture arq of combinacional is
begin
D0<= not Q0;
D1<= Q0 xor Q1;

end architecture arq;