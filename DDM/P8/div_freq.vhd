Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_freq is
	Port (reloj: std_logic;
			div_clk: out std_logic);

end div_freq;

architecture Behavioral of div_freq is
begin
	process(reloj)
	Variable cuenta: STD_LOGIC_VECTOR(27 downto 0) := X"0000000";
	Begin
		if rising_edge(reloj) then
			if cuenta = X"48009E0" then
				cuenta:= X"0000000";
			else
				cuenta:= cuenta+1;
			end if;
		end if;
		div_clk<=cuenta(26); --Asignacion
	end Process;
	
end Behavioral;