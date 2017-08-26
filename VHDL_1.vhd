library ieee;
use ieee.std_logic_1164.all;

entity VHDL_1 is

	port 
	(
		clk_in		: in std_logic;
		clk_out		: out std_logic
	
	);

end entity;

architecture rtl of VHDL_1 is
begin

	process(CLK_in)
		variable clk    : std_logic :='0';
		variable count  : integer range 0 to 20 := 0 ; 
begin
	if rising_edge(CLK_in) then
		if count = 18 then
			clk := not clk;
			count := 0;
		else 
			count :=count+1;
		end if;
	end if;
	clk_out <= clk;	
	end process;
end rtl;
