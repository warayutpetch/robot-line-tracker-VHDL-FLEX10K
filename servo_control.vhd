library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity servo_control is
port(
		control : in std_logic_vector(0 to 1);
		pick : out std_logic;
		up	 : out std_logic;
		clk_pick	: in std_logic;
		clk_up		: in std_logic;
		clk_unpick	: in std_logic;
		clk_down	: in std_logic
		
	);
end entity;
architecture rtl of servo_control is
begin
	process(clk_pick,clk_up,clk_unpick,clk_down,control)
	begin
	
	if control(0) = '1' then
	pick <= clk_pick;
	else
	pick <= clk_unpick;
	end if;
	
	if control(1) = '1' then
	up <= clk_up;
	else
	up <= clk_down;
	end if;
	
	end process;
	end rtl;