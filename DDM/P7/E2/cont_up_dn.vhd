LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.std_logic_arith.ALL;

Entity cont_up_dn IS
	PORT( clk : IN std_logic;
			rst : IN std_logic;
			Display : out unsigned (6 downto 0);
			s: in std_logic);
END cont_up_dn;

Architecture behavioral of cont_up_dn is
	Signal q_aux, qn_aux, mult_out : std_logic_vector(3 downto 0);
	Signal clk_aux : std_logic;

begin
	U1: ENTITY WORK.div_freq (syst) port map (clk, clk_aux);

	U7: ENTITY WORK.ff_jk (syst) port map (clk_aux, rst, '1', '1', qn_aux(0), q_aux(0));

	U3: ENTITY WORK.ff_jk (syst) port map (q_aux(0), rst, '1', '1', qn_aux(1), q_aux(1));

	U4: ENTITY WORK.ff_jk (syst) port map (q_aux(1), rst, '1', '1', qn_aux(2), q_aux(2));

	U5: ENTITY WORK.ff_jk (syst) port map (q_aux(2), rst, '1', '1', qn_aux(3), q_aux(3));

	U6: ENTITY WORK.mult (syst) port map (q_aux, qn_aux, s, mult_out);

	With mult_out Select
		Display <= 	"1000000" when "0000",
						"1111001" when "0001",
						"0100100" when "0010",
						"0110000" when "0011",
						"0011001" when "0100",
						"0010010" when "0101",
						"0000010" when "0110",
						"0111000" when "0111",
						"0000000" when "1000",
						"0011000" when "1001",
						"0001000" when "1010",
						"0000011" when "1011",
						"1000110" when "1100",
						"0100001" when "1101",
						"0000110" when "1110",
						"0001110" when "1111";
end behavioral;