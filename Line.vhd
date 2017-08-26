library ieee;
use ieee.std_logic_1164.all;

entity Line is

	port 
	(
		sensor : in std_logic_vector (0 to 3);
		con : out 	integer range 0 to 99
	);

end entity;

architecture rtl of Line is
begin

	process(sensor)
	begin 				
				case sensor is 
					when "1111" => con <=20;
					when "0110" => con <=53;
					when others => con <=00;
				end case;
	end process;
end rtl;
