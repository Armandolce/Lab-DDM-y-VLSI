Library IEEE;
Use IEEE.Std_logic_1164.all;

entity my_fsm1 is 
port ( tog_en : in std_logic;
		clk,clr : in std_logic;
		z1, led_clk: out std_logic);
end entity;

architecture behavioral of my_fsm1 is
type state_type is (st0, st1);
signal ps, ns : state_type;
signal clk_aux: std_logic;

begin
	U1: ENTITY WORK.divisorF (Behavioral) port map (clk, clk_aux);
	led_clk <= clk_aux;
	
	process (clk_aux, ns, clr, tog_en)
	begin
		if (clr = '0') then
			ps <= st0;
		elsif rising_edge(clk_aux) then
			ps <= ns;
		end if;
	end process;
	
	process (ps, tog_en)
	begin
		z1 <= '0';
		case ps is 
			when st0 => 
				z1 <= '0';
				if (tog_en = '1') then 
					ns <= st1;
				else
					ns <= st0;
				end if;
			when st1 => 
				z1 <= '1';
				if (tog_en = '0') then 
					ns <= st1;
				else
					ns <= st0;
				end if;
			when others =>
				z1 <= '0';
				ns <= st0;
			end case;
	end process;
end behavioral;			
		