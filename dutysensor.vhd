-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dutysensor is

	port
	(
		clk_in		  : in std_logic;
		duty          : in integer range 0 to 99;
		clk_out1      : out std_logic;
		clk_out2	  : out std_logic;
		clk_out3	  : out std_logic
	);

end entity;

architecture rtl of dutysensor is
begin

	process (clk_in)
		variable	clk1 : std_logic :='1';
		variable	clk2 : std_logic :='1';
		variable	clk3 : std_logic :='1';
		variable	Count1 : integer range 0 to 99 :=0 ;
		variable	Count2 : integer range 0 to 99 :=0 ;
		variable	Count3 : integer range 0 to 99 :=0 ;
	begin
	
		if (rising_edge(clk_in)) then
			
			if Count1 = 99 then
				clk1 := '1';
				clk2 := '1';
				clk3 := '1';
				Count1 := 0;
				Count2 := 0;
				Count3 := 0;

				else if Count1 = (duty+0)-1 then
					clk1 := '0';
				else if Count2 = (duty-3)-1 then
					clk2 := '0';
				else if Count3 = (duty-5)-1 then
					clk3 := '0';
					
			end if;
			end if;
			end if;
				Count1 := Count1 + 1;
				Count2 := Count2 + 1;
				Count3 := Count3 + 1;
			end if;
				
		end if;
		clk_out1 <= clk1;
		clk_out2 <= clk2;
		clk_out3 <= clk3;
		
		
		
	end process;

end rtl;
