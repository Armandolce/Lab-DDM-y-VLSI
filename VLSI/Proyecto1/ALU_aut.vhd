library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU_aut is
port(a, b: in std_logic_vector(2 downto 0);
		stop, clk: in std_logic;
		salALU: out std_logic_vector(2 downto 0);
		ss1: out std_logic_vector(6 downto 0);
		cout: out std_logic);
end;

architecture arqalu of ALU_aut is
signal clkl: std_logic;
signal selector: std_logic_vector(2 downto 0) :="000";
signal cin: std_logic; 
signal UA: std_logic_vector(2 downto 0); --Arit
signal UL: std_logic_vector(2 downto 0); --Logic

begin

u0: entity work.divf(arqdivf) port map(clk, clkl);
u1: entity work.contador(arqcont) port map (clkl, stop, selector);
with selector select
				cin <= '1' when "001",
						 '0' when others;						  
u2: entity work.ua(arqua) port map (a,b,cin,selector(1 downto 0), UA, cout);
u3: entity work.ul(arqul) port map (a,b,selector(1 downto 0), UL);
u4: entity work.mux2x1(arqmux2x1) port map (UA, UL, selector(2), salALU);
u5: entity work.display(arqdisp) port map(selector, ss1);
end;