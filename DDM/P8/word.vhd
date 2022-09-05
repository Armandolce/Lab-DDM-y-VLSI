library IEEE;
Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity word is
    Port (Qin : in std_logic_vector (2 downto 0);
          Lds : out STD_LOGIC_VECTOR(6 downto 0));
end word;

architecture Behavioral of word is

begin 

    process(Qin)
    begin
        case Qin is
            when "000" => Lds <= "0001001";
            when "001" => Lds <= "1000000";
            when "010" => Lds <= "1000111";
            when "011" => Lds <= "0001000";
            when others => Lds <= "1111111";
        end case;
    end process;

end Behavioral;