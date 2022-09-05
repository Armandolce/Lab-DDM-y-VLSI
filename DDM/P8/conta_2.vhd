library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity conta_2 is
    Port ( divi : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end conta_2;

architecture Behavioral of conta_2 is

begin
	process (divi)
	variable cuenta : std_logic_vector(2 downto 0) := "000";
	begin
		if rising_edge(divi) then 
			cuenta := cuenta + 1;
		end if;
		if (cuenta > "011") then
			cuenta := "000";
		end if;
		Q <= cuenta;
	end process;
end Behavioral;

