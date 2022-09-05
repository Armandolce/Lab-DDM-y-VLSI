 library IEEE;
use IEEE.std_logic_1164.all;

entity cont is
  port (
    echo, clk, rst: in std_logic;
    led : out std_logic_vector(2 downto 0);
	 sal: out integer range 0 to 120000
  ) ;
end cont;

architecture arqcont of cont is
    signal conteo : integer range 0 to 120000;
begin
    process(echo,clk,rst)
    begin
	 if rising_edge(clk) then
        if (rst='1') then
            conteo <= 0;
        elsif((rising_edge(clk))) then
            if (echo = '1') then 
                conteo <= conteo + 1;
            else
                if conteo < 1259 and conteo > 0 then
                    led(0) <= '1';
						  if (conteo >=1176) and (conteo <1235) then
								led(1)<='1';
								led(2)<='0';
						  elsif (conteo>=294)and(conteo<353) then
								led(2)<='1';
								led(1)<='0';
						  end if;
                else
                    led <= "000";
						  
                end if;
				end if;
        end if ;
		end if;
		sal <=conteo;
	end process;
end arqcont ; -- arqcont