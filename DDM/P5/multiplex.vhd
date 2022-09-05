Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity multiplex is
port(A: in std_logic_vector(1 downto 0);
		B: in std_logic_vector(1 downto 0);
		Muxsal: out std_logic_vector(6 downto 0);
		selec: in std_logic);
end multiplex;
architecture behavioral of multiplex is

Component multi is
Port (A_in : in std_logic_vector (1 downto 0);
		B_in : in std_logic_vector (1 downto 0);
		Output : out std_logic_vector (3 downto 0));
End component;

component suma_2bit is
Port (A_in : in std_logic_vector (1 downto 0);
		B_in : in std_logic_vector (1 downto 0);
		Suma : out std_logic_vector (2 downto 0));
End component;

signal auxsum : std_logic_vector(2 downto 0);
signal auxbus1, auxbus2: std_logic_vector(3 downto 0);
signal auxFinal : std_logic_vector(3 downto 0);

begin
suma: suma_2bit port map(
							A_in => A,
							B_in => B,
							Suma => auxsum
							);

auxbus1 <= '0' & auxsum;

multiplicacion : multi port map(
							A_in => A,
							B_in => B,
							Output => auxbus2
							);
Process (selec) is
Begin
	Case selec is
		when '0' => auxFinal <= auxbus1;
		when others => auxFinal <= auxbus2;
		End case;
End process;

With auxFinal Select
				Muxsal <= 	"1000000" when "0000",
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