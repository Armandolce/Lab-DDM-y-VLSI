library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is
port(a, b: in std_logic_vector(2 downto 0);
		cin: in std_logic;
		sel: in std_logic_vector(2 downto 0);
		salALU: out std_logic_vector(2 downto 0);
		cout: out std_logic);
end;

architecture arqalu of ALU is
signal UA: std_logic_vector(2 downto 0); --Arit
signal UL: std_logic_vector(2 downto 0); --Logic

begin

u0: entity work.ua(arqua) port map (a,b,cin,sel(1 downto 0), UA, cout);
u2: entity work.ul(arqul) port map (a,b,sel(1 downto 0), UL);
u3: entity work.mux2x1(arqmux2x1) port map (UA, UL, sel(2), salALU);

end; 