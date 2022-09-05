Library IEEE;
Use IEEE.std_logic_1164.all;
Entity carro_alar is
    port (peso_c, peso_a : in std_logic;
            cint_c, cint_a : in std_logic;
            marcha : in std_logic;
            alarma : out std_logic);
End carro_alar;

Architecture Behavioral of carro_alar is
Component peso_cint is
    port (peso: in std_logic;
            cinturon : in std_logic;
            f_out : out std_logic);
End Component;

Signal S_cond, S_acom : std_logic;

Begin

conductor: peso_cint 
port map (peso => peso_c,
    cinturon => cint_c,
    f_out => S_cond );

acompanante: peso_cint
port map (peso => peso_a,
    cinturon => cint_a,
    f_out => S_acom );

Process (S_cond, S_acom, marcha)
Begin
    if(S_acom = '1' and marcha = '1') or (S_cond = '1' and marcha = '1')
        or (S_acom = '1' and S_cond = '1' and marcha = '1') then
            alarma <= '1';
    Else
            alarma <= '0';
    End if;
End Process;
End Behavioral;