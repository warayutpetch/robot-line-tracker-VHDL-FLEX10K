library ieee;
use ieee.std_logic_1164.all;

entity Seg_out is

	port 
	(	

		control : in integer range 0 to 99;
		control2 : in integer range 0 to 99;
		comn : in std_logic_vector(0 to 3);
		com : out std_logic_vector(0 to 5);
		led : out std_logic_vector(0 to 7)

	
	);

end entity;

architecture rtl of Seg_out is
begin
	process (control)
	begin
		
		case comn is 
			when "0000" => 		com(1) <='1';com(2) <='1';com(3) <='1';com(4) <='1';com(5) <='1';com(0) <='0';
			case control is 
				when 0 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='1'; led(7) <='1';	
				when 1 => led(0)<= '1'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='1'; led(6) <='1'; led(7) <='1'; 
				when 2 => led(0)<= '0'; led(1)<='0'; led(2)<='1'; led(3) <='0'; led(4) <='0'; led(5) <='1'; led(6) <='0'; led(7) <='1';
				when 3 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='1'; led(6) <='0'; led(7) <='1';		
				when 4 => led(0)<= '1'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 5 => led(0)<= '0'; led(1)<='1'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 6 => led(0)<= '0'; led(1)<='1'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 7 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='1'; led(6) <='1'; led(7) <='1';	
				when 8 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 9 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when others	=>	led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='1'; led(7) <='1';
			end case;
			when "0001" => 		com(1) <='0';com(2) <='1';com(3) <='1';com(4) <='1';com(5) <='1';com(0) <='1';
			case control2 is 
 				when 0 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='1'; led(7) <='1';
				when 1 => led(0)<= '1'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='1'; led(6) <='1'; led(7) <='1';
				when 2 => led(0)<= '0'; led(1)<='0'; led(2)<='1'; led(3) <='0'; led(4) <='0'; led(5) <='1'; led(6) <='0'; led(7) <='1';
				when 3 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='1'; led(6) <='0'; led(7) <='1';
				when 4 => led(0)<= '1'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 5 => led(0)<= '0'; led(1)<='1'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';
				when 6 => led(0)<= '0'; led(1)<='1'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='0'; led(7) <='1';		
				when 7 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='1'; led(4) <='1'; led(5) <='1'; led(6) <='1'; led(7) <='1';		
				when 8 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='0'; led(7) <='1';	
				when 9 => led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='1'; led(5) <='0'; led(6) <='0'; led(7) <='1';		
				when others	=>	led(0)<= '0'; led(1)<='0'; led(2)<='0'; led(3) <='0'; led(4) <='0'; led(5) <='0'; led(6) <='1'; led(7) <='1';
			end case;
			when others	=>	  	com(1) <='1';com(2) <='1';com(3) <='1';com(4) <='1';com(5) <='1';com(0) <='1';	
		end case;	
	end process;
end rtl;
