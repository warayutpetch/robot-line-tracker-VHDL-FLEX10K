library ieee;
use ieee.std_logic_1164.all;

entity TIC is 

	port 
	(
		TIC		: 	in 	std_logic;
		Control	: 	out std_logic_vector(0 to 1)
	
	);

end entity;

architecture rtl of TIC is
begin

	process(TIC)
	variable count : integer range 0 to 1 := 0;
	begin 
		if(rising_edge(TIC)) then
		case count is 
		when "0001" => Motor(0) <= PWM; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= PWM; --fw
		when "0010" => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= PWM; Motor(3) <= PWM; --left
		when "0100" => Motor(0) <= PWM; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= PWM; --fw
		when "1000" => Motor(0) <= PWM; Motor(1) <=	PWM; Motor(2) <= '0'; Motor(3) <= '0'; --right
		when "0001" => Motor(0) <= PWM; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= PWM; --fw
		end case;
		end if;
	end process;
end rtl;
