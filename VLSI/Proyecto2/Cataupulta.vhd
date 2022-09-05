library ieee;
use ieee.std_logic_1164.all;

entity Cataupulta is
port(clk: in std_logic;
	  E: in std_logic;
	  motor: out std_logic;
	  Ss0,Ss1,Ss2,Ss3 : out std_logic_vector(6 downto 0)
	  );
end entity;

architecture arqCat of Cataupulta is
signal encendido : std_logic := '1';
begin

	u1: entity work.servomotor(arqpwm) port map(clk, E,motor);
	u2 : entity work.Mensaje(arqmsj) port map(E,encendido, Ss0,Ss1,Ss2,Ss3);
end architecture;