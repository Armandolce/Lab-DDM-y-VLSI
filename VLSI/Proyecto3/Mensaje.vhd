library ieee;
use ieee.std_logic_1164.all;

entity Mensaje is
port(E, encendido : in std_logic;
		Ss0, Ss1,Ss2, Ss3: buffer std_logic_vector(6 downto 0)
		);
end entity;

architecture arqmsj of Mensaje is
Signal w0,w1,w2,w3: std_logic_vector(2 downto 0);
begin
	process(E)
		begin
			case E is
				when '0' =>
					w3 <= "110"; --L
					w2 <= "101"; --O
					w1 <= "100"; --C
					w0 <= "011"; --K
				when others =>
					w3 <= "010"; --F
					w2 <= "001"; --R
					w1 <= "000"; --E
					w0 <= "000"; --E		
			end case;
	end process;
	
	u1 : entity work.rom(arqrom) port map(w0, encendido, Ss0);
	u2 : entity work.rom(arqrom) port map(w1, encendido, Ss1);
	u3 : entity work.rom(arqrom) port map(w2, encendido, Ss2);
	u4 : entity work.rom(arqrom) port map(w3, encendido, Ss3);
	
end architecture;
 