library ieee;
use ieee.std_logic_1164.all;

entity VHDL2 is

	port 
	(
		clk_in		: in std_logic;
		clk_out		: out std_logic
	
	);

end entity;

architecture rtl of VHDL2 is
begin

	process(CLK_in)
		variable clk    : std_logic :='1';
		variable count  : integer range 0 to 99:= 0 ;  --control scale
begin
	if rising_edge(CLK_in) then
		if count = 99 then --control scale compare 
			clk := '1';
			count := 0;
		else 
			if Count = 49 then --scale %
			clk := '0';
		end if;
		Count := Count + 1;
		end if;
	clk_out <= clk;
	end if;	
	end process;
end rtl;
