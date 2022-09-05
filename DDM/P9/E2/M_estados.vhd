Library IEEE;
Use IEEE.Std_logic_1164.all;

entity M_estados is 
port ( tog_en : in std_logic_vector(2 downto 0);
		clk,clr : in std_logic;
		E, S,led_clk: out std_logic;
		Display1 : out std_logic_vector (6 downto 0);
		Display2 : out std_logic_vector (6 downto 0);
		Display3 : out std_logic_vector (6 downto 0);
		Display4 : out std_logic_vector (6 downto 0));
end entity;

architecture behavioral of M_estados is
type state_type is (st0, st1, st2, st3, nullst);
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
		E <= '0';
		S <= '0';
		case ps is 
			when st0 => 
				E <= '0';
				S <= '0';
				Display4 <= "0000110";
				Display3 <= "1001000";
				Display2 <= "0001100";
				Display1 <= "0000111";
				if (tog_en = "001") then 
					ns <= st1;
				elsif(tog_en = "011") then
					ns <= st2;
				elsif(tog_en = "111") then
					ns <= st3;
				elsif(tog_en = "000") then
					ns <= st0;
				else
					ns <= nullst;
				end if;
			when st1 => 
				E <= '1';
				S <= '1';
				Display4 <= "0101011";
				Display3 <= "1000000";
				Display2 <= "0101111";
				Display1 <= "1001000";
				if (tog_en = "001") then 
					ns <= st1;
				elsif (tog_en = "011") then 
					ns <= st2;
				elsif (tog_en = "111") then 
					ns <= st3;					
				elsif(tog_en = "000") then
					ns <= st0;
				else
					ns <= nullst;				
				end if;
			when st2 => 
				E <= '0';
				S <= '1';
				Display4 <= "0001110";
				Display3 <= "1100011";
				Display2 <= "1000111";
				Display1 <= "1000111";					
				if (tog_en = "011") then 
					ns <= st2;
				elsif (tog_en = "111") then 
					ns <= st3;
				elsif (tog_en = "001") then 
					ns <= st1;	
				elsif(tog_en = "000") then
					ns <= st0;
				else
					ns <= nullst;					
				end if;
			when st3 => 
				E <= '0';
				S <= '1';
				Display4 <= "0001000";
				Display3 <= "1000111";
				Display2 <= "0001000";
				Display1 <= "0101111";	
				if (tog_en = "111") then 
					ns <= st3;
				elsif (tog_en = "011") then 
					ns <= st2;
				elsif (tog_en = "001") then 
					ns <= st1;	
				elsif(tog_en = "000") then
					ns <= st0;
				else
					ns <= nullst;
				end if;				
			when others =>
				E <= '0';
				S <= '0';
				Display4 <= "0101011";
				Display3 <= "1100011";
				Display2 <= "1000111";
				Display1 <= "1001111";				
				ns <= st0;
			end case;
	end process;
end behavioral;	