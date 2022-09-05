library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rom is
port(bus_dir: in std_logic_vector(2 downto 0);
     cs: in std_logic;
	  bus_datos: out std_logic_vector(6 downto 0));
end rom;


architecture arqrom of rom is
constant LL: std_logic_vector(6 downto 0):="1000111";
constant LO: std_logic_vector(6 downto 0):="1000000";
constant LC: std_logic_vector(6 downto 0):="1000110";
constant LK: std_logic_vector(6 downto 0):="0001011";
constant LF: std_logic_vector(6 downto 0):="0001110";
constant LR: std_logic_vector(6 downto 0):="0101111";
constant LE: std_logic_vector(6 downto 0):="0000110";

type memoria is array (6 downto 0) of std_logic_vector(6 downto 0);
constant mem_rom: memoria:=(LL,LO,LC,LK,LF,LR,LE);

signal dato: std_logic_vector(6 downto 0);

begin
	prom: process(bus_dir)
	begin
		dato <= mem_rom(conv_integer(bus_dir));
	end process prom;
	
pbuf: process(dato,cs)
begin
	if(cs='1') then
		bus_datos<=dato;
	else
		bus_datos<=(others=>'Z');
	end if;
end process pbuf;
end arqrom;
