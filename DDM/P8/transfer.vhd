library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transfer is
    Port ( Lds_in : in  STD_LOGIC_VECTOR (6 downto 0);
           divi_in : in  STD_LOGIC;
           Lds_out : out  STD_LOGIC_VECTOR (6 downto 0));
end transfer;

architecture Behavioral of transfer is

begin
	
	process(divi_in) 
	begin
		if rising_edge(divi_in) then
			Lds_out <= Lds_in;
		end if;
	end process;

end Behavioral;

