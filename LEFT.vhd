library ieee;
use ieee.std_logic_1164.all;

entity LEFT is

	port 
	(
		PWM		: in 	std_logic;
		Control	: in 	std_logic_vector(0 to 1);
		Motor 	: out 	std_logic_vector(0 to 3)
	
	);

end entity;

architecture rtl of LEFT is
begin

	process(Control)
	begin 
		case Control is
		when "01" => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= PWM; Motor(3) <= PWM; --right
		when others => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= '0'; Motor(3) <= '0';
		end case;
	end process;
end rtl;