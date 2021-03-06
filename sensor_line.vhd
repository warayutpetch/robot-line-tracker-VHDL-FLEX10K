library ieee;
use ieee.std_logic_1164.all;

entity sensor_line is

	port 
	(
		TIC		: 	in 	std_logic;
		Control	: 	out std_logic_vector(0 to 3);
		sensor : in std_logic_vector (0 to 3);
		chk1 : in std_logic_vector(0 to 3)
	);

end entity;

architecture rtl of sensor_line is
begin

	process(chk1)
	begin 
					
				case chk1 is 
				when "0000" => Control <="0001";
				when others => Control <="0010";
				end case;

	end process;
end rtl;
