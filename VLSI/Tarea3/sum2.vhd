Library IEEE;
Use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;

entity sum2 is
port(a,b: in std_logic_vector(1 downto 0);
		cin: in std_logic;
		salsum: out std_logic_vector(1 downto 0);
		cout: out std_logic);
end entity sum2;

architecture arqsum of sum2 is
begin
salsum <= a + b; --SOlo vectores
cout <= '0'; --no tenemos acarreo de salida
end architecture arqsum;