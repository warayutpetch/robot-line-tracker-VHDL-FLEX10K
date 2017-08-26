library ieee;
use ieee.std_logic_1164.all;

entity countsen is

	port 
	(  
		sensor : in std_logic;
		chk	: 	out integer range 0 to 99
	);

end entity;

architecture rtl of countsen is
begin


	process(sensor)

variable a : integer range 0 to 99 :=0 ;
			begin
				
				if sensor ='1' then 
				a:=(a+1);
				chk<=a;
				end if;
	end process;

end rtl;
