Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity ff_jk is
Port (clk_aux : in std_logic;
      rst : in std_logic;
      j : in std_logic;
      k : in std_logic;
      qn : out std_logic;
      q : out std_logic);

end ff_jk;

Architecture syst of ff_jk is

begin

    process (clk_aux, j, k,  rst) --Importante el reloj a utilizar
    variable qestado : std_logic;
    begin
        if ( rst = '0' ) then
            qestado := '0';
        elsif ( clk_aux'event and clk_aux = '1' ) then
            if ( j = '0' and k = '0' ) then
                qestado := qestado;
            elsif ( j = '1' and k = '1' ) then
                qestado := not qestado;
            elsif ( j = '0' and k = '1' ) then
                qestado := '0';
            else
                qestado := '1';
            end if;
        end if;

        q <= qestado;
        qn <= not qestado;
     end process;

end syst;