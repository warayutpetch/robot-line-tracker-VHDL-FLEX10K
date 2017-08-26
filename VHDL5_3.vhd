library ieee;
use ieee.std_logic_1164.all;

entity VHDL5_3 is

	port 
	(	
		PWIN : in std_logic;
		control : in std_logic_vector(0 to 3);
		PWOUT : out std_logic_vector(0 to 3)
	
	);

end entity;

architecture rtl of VHDL5_3 is
begin
	process (control)
	begin
		case control is 
			when "1110" => PWOUT(0) <= PWIN; 
						   PWOUT(1) <= '0';
						   PWOUT(2) <= PWIN;
						   PWOUT(3) <= '0';
						   
			when "1101" => PWOUT(0) <= '0';
						   PWOUT(1) <= PWIN;
						   PWOUT(2) <= '0';
						   PWOUT(3) <= PWIN;
						
			when "1011" => PWOUT(0) <= PWIN;
						   PWOUT(1) <= '0';
						   PWOUT(2) <= '0';
						   PWOUT(3) <= PWIN;
						   
			when "0111" => PWOUT(0) <= '0';
						   PWOUT(1) <= PWIN;
						   PWOUT(2) <= PWIN;
						   PWOUT(3) <= '0';
			
			when others => PWOUT(0) <= '0';
						   PWOUT(1) <= '0';
						   PWOUT(2) <= '0';
						   PWOUT(3) <= '0';
	end case;
	end process;
end rtl;
