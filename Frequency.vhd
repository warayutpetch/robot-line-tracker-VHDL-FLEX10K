library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Frequency is

generic(
	F : NATURAL := 0
	);

port(
		clk_in : in std_logic;
		clk_out: out std_logic
	);
end entity;
architecture rtl of Frequency is
begin
	
	process(clk_in)
	variable sum : integer range 0 to 30000 :=0 ;
	begin
	
	if rising_edge(clk_in) then
		if sum >= 0 and sum <= (20000-F) then
		clk_out <= '0';
		sum := sum+1;
		elsif sum > (20000-F) then
		clk_out <= '1';
		sum := sum+1;
			if sum = 20000 then
			sum :=0;
			end if;
		end if;
		end if;
	
	
	end process;
	end rtl;