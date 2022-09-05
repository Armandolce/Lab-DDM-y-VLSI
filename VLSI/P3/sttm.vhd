library ieee;
use ieee.std_logic_1164.all;

entity sttm is
port(clk,estacion, alto, emergencia,direccion: in std_logic;
		alto2,alto1,izquierda,derecha: buffer std_logic;
		ss1: out std_logic_vector(7 downto 0));
end;

architecture arqsttm of sttm is
signal clkl: std_logic;
signal mapa : std_logic_vector(2 downto 0);
begin
u1: entity work.divf(arqdivf) port map(clk,clkl);
u2: entity work.states(arqsts) port map(clkl,estacion, alto, emergencia,direccion, alto2,alto1,izquierda,derecha);
u3: entity work.recorrido(arqrec) port map(alto2, direccion, mapa);
u4: entity work.display(arqdisp) port map(mapa, ss1);
end architecture;