Library IEEE;
Use IEEE.std_logic_1164.all;
Entity motor_elec is
    port (izq, der : in std_logic;
            interruptor : in std_logic;
            led_I , led_D : out std_logic);
End motor_elec;

Architecture Behavioral of motor_elec  is
Component doble_enc is
	port (izq2 : in std_logic;
			der2: in std_logic;
			f_out: out std_logic);
End Component;

Signal doble_s : std_logic;

Begin

condicionante: doble_enc 
port map (izq2 => izq,
    der2 => der,
    f_out => doble_s );

Process (doble_s, izq , der , interruptor)
Begin
	if(doble_S = '1') then
		if(interruptor = '0') then
			led_I <= '1';
			led_D <= '0';
		Else
         led_D <= '1';
			led_I <= '0';
		End if;	
	Elsif(doble_s = '0') then 
		if(izq = '1') then
			led_I <= '1';
			led_D <= '0';
		Elsif(der = '1') then
			led_D <= '1';
			led_I <= '0';
		Else
			led_D <= '0';
			led_I <= '0';
		End if;
	End if;
End Process;
End Behavioral;