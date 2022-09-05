library ieee;
use ieee.std_logic_1164.all;

entity Cataupulta is
port(clk: in std_logic;
	  rst,echo: in std_logic;
	  trig: out std_logic;
	  motor: out std_logic;
	  Ss0,Ss1,Ss2,Ss3 : out std_logic_vector(6 downto 0)
	  );
end entity;

architecture arqCat of Cataupulta is
signal encendido : std_logic := '1';
signal E: std_logic := '0';
begin

	u1: entity work.sensor(arqsns) port map(clk, rst, echo,trig, E);
	u2: entity work.servomotor(arqpwm) port map(clk, E,motor);
	u3: entity work.Mensaje port map(E, encendido, Ss0,Ss1,Ss2,Ss3);

end architecture;