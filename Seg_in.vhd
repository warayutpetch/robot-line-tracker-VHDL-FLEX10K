-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Seg_in is

	port
	(
		duty          : in integer range 0 to 99;
		clk_in		  : in std_logic;
		seg_one : out integer range 0 to 99;
		seg_ten : out integer range 0 to 99
	);

end entity;

architecture rtl of Seg_in is
begin

	process (clk_in)
	
		variable    int : integer range 0 to 99 :=0 ;

		
	begin
	
	
		if (rising_edge(clk_in)) then
				int := duty;
				seg_one<=int mod 10;
				seg_ten<=int/10;
				
	
				
		end if;

		
	end process;

end rtl;
