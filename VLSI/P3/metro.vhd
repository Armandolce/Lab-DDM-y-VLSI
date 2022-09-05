library ieee;
use ieee.std_logic_1164.all;

entity sttm is
port(clk,estacion, alto, emergencia,direccion: in std_logic;
     alto2,alto1,izquierda,derecha: out std_logic);
end entity;


architecture arq of sttm is
signal clkl: std_logic;

begin
	u1: entity work.divf(arqdivf) port map(clk,clkl);
	u2: entity work.states(arqsts) port map(clkl,estacion,alto,emergencia,direccion,alto2,alto1,izquierda,derecha);
end architecture;