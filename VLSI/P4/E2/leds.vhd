library ieee;
use ieee.std_logic_1164.all;

entity leds is
port(clk: in std_logic;
	  led1,led2,led3,led4,led5,led6,led7,led8,led9: out std_logic);
end entity;

architecture arqpwm of leds is
signal clkl: std_logic;
signal a1: integer :=100;
signal a2: integer :=200;
signal a3: integer :=300;
signal a4: integer :=400;
signal a5: integer :=500;
signal a6: integer :=600;
signal a7: integer :=700;
signal a8: integer :=800;
signal a9: integer :=900;
begin
	u1: entity work.divf(arqdivf) generic map(25000) port map(clk,clkl);
	u2: entity work.senal(arqsenal) port map(clkl,a1,led1);
	u3: entity work.senal(arqsenal) port map(clkl,a2,led2);
	u4: entity work.senal(arqsenal) port map(clkl,a3,led3);
	u5: entity work.senal(arqsenal) port map(clkl,a4,led4);
	u6: entity work.senal(arqsenal) port map(clkl,a5,led5);
	u7: entity work.senal(arqsenal) port map(clkl,a6,led6);
	u8: entity work.senal(arqsenal) port map(clkl,a7,led7);
	u9: entity work.senal(arqsenal) port map(clkl,a8,led8);
	u10: entity work.senal(arqsenal) port map(clkl,a9,led9);
end architecture;