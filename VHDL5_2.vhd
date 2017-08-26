library ieee;
use ieee.std_logic_1164.all;

entity VHDL5_2 is

	port 
	(
		SEL : in std_logic_vector(0 to 3);
		Control : out integer range 0 to 99 
	
	);

end entity;

architecture rtl of VHDL5_2 is
begin
	process (SEL)
	begin
		case SEL is 
			when "1110" => Control <= 30;
			when "1101" => Control <= 50;
			when "1011" => Control <= 70;
			when "0111" => Control <= 90;
			when others => Control <= 0;
	end case;
	end process;
end rtl;
