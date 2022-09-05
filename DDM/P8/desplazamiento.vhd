LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.std_logic_arith.ALL;

Entity desplazamiento IS
	PORT( clk : in std_logic;
			Display1 : out std_logic_vector (6 downto 0);
			Display2 : out std_logic_vector (6 downto 0);
			Display3 : out std_logic_vector (6 downto 0);
			Display4 : out std_logic_vector (6 downto 0));
END desplazamiento;

Architecture behavioral of desplazamiento is
	Signal divi_aux : std_logic;
	Signal q_aux : std_logic_vector (2 downto 0);
	Signal LDSin1_aux : std_logic_vector (6 downto 0);
	Signal LDSout1_aux : std_logic_vector (6 downto 0);
	Signal LDSout2_aux : std_logic_vector (6 downto 0);
	Signal LDSout3_aux : std_logic_vector (6 downto 0);
	Signal LDSout4_aux : std_logic_vector (6 downto 0);	
	
begin
	U1: ENTITY WORK.div_freq (Behavioral) port map (clk, divi_aux);
	U2: ENTITY WORK.conta_2 (Behavioral) port map (divi_aux, q_aux);
	U3: ENTITY WORK.word (Behavioral) port map (q_aux, LDSin1_aux);
	U4: ENTITY WORK.transfer (Behavioral) port map (LDSin1_aux, divi_aux, LDSout1_aux);
	Display1 <= LDSout1_aux;
	U5: ENTITY WORK.transfer (Behavioral) port map (LDSout1_aux, divi_aux, LDSout2_aux);
	Display2 <= LDSout2_aux;
	U6: ENTITY WORK.transfer (Behavioral) port map (LDSout2_aux, divi_aux, LDSout3_aux);
	Display3 <= LDSout3_aux;
	U7: ENTITY WORK.transfer (Behavioral) port map (LDSout3_aux, divi_aux, LDSout4_aux);
	Display4 <= LDSout4_aux;
	
end behavioral;