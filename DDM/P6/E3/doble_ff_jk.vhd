Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity doble_ff_jk is
Port (clk_in : in std_logic;
		rst_in : in std_logic;
		D0 : out std_logic;
		D1 : out std_logic;
		led_clk : out std_logic);
End Entity;

Architecture Behavioral of doble_ff_jk is

Component ff_jk is
	Port( clk_aux : in std_logic;
			rst : in std_logic;
			j : in std_logic;
			k : in std_logic;
			qn : out std_logic;
			q : out std_logic);
End Component;

Component divisorF is
    Port (reloj: std_logic;
          div_clk: out std_logic);
end component;

signal clk_aux : std_logic;
signal D0_aux : std_logic;
signal D1_aux : std_logic;

Begin
divisor: divisorF port map(clk_in, clk_aux);
    led_clk <= clk_aux;
	 

flip_flop_jk1 : ff_jk
	Port map(clk_aux => clk_aux,
				rst => rst_in,
				j => '1',
				k => '1',
				q => D0_aux);
				
flip_flop_jk2 : ff_jk
	Port map(clk_aux => D0_aux,
				rst => rst_in,
				j => '1',
				k => '1',
				q => D1_aux);
				
D0 <= D0_aux;
D1 <= D1_aux;
				
End Behavioral;