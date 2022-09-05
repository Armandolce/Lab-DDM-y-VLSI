library ieee;
use ieee.std_logic_1164.all;

entity par is
port (
    clk, E, reset: in std_logic;
    S: out std_logic
);
end entity;

architecture arqpar of par is
subtype state is std_logic_vector(1 downto 0);
signal present_state, next_state: state;
constant E0: state:="00";
constant NON: state:="01";
constant PAR: state:="10";

begin
process(clk)
begin
if rising_edge(clk) then
    if (reset='1') then
        present_state<=E0;
    else
        present_state<=next_state;
    end if;
end if;
end process;
process (present_state)
begin
case present_state is
when E0=>
    if (E='0') then next_state<=E0;
    end if;
    if (E='1') then next_state<=NON;
    end if;
    S<='0';
when NON=>
    if (E='0') then next_state<=NON;
    end if;
    if (E='1') then next_state<=PAR;
    end if;
    S<='0';
when PAR=>
    if (E='0') then next_state<=PAR;
    end if;
    if (E='1') then next_state<=NON;
    end if;
    S<='1';
when others => next_state<=E0;
end case;
end process;
end arqpar;