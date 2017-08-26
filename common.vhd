library ieee;
use ieee.std_logic_1164.all;

entity common is
	port 
	(
		Con : out std_logic_vector(0 to 3);
		--re : in std_logic;
		TIC : in std_logic
	
	);

end entity;

architecture rtl of common is
begin
	process (TIC)
	variable count1 : integer range 0 to 5 :=0;
	variable count2 : integer range 0 to 9 :=0;  
	 
	begin
	
	 if (rising_edge(TIC)) then
		case count1 is 						  --abcdefg
			when 0 =>       count1 :=1; 	Con <= "0000";
			when 1 =>      	count1 :=2; 	Con <= "0001";
			--when 2 =>      	count1 :=3; 	Con <= "0010";
			--when 3 =>      	count1 :=4; 	Con <= "0011";
			--when 4 =>      	count1 :=5; 	Con <= "0100";
			--when 5 =>      	count1 :=0; 	Con <= "0101";
			when others	=>	 count1 :=0; Con <= "0000";
		end case;
	  
	
	end if;
	end process;
end rtl;
