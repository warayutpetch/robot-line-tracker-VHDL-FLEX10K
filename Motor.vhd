library ieee;
use ieee.std_logic_1164.all;

entity Motor is
port (
	clk1 : in std_logic;
	clk2 : in std_logic;
	clk3 : in std_logic;
	control : in std_logic_vector(0 to 3);
	control1 : in std_logic_vector(0 to 3);
	motor : out std_logic_vector(0 to 3)
	);
	end entity;
	
architecture rtl of Motor is
begin 
	process(clk1,clk2,control,control1)
	begin
		case control is
		when "0100" => Motor(0) <= clk1; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= clk2; --fw
		when "1000" => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= clk3; Motor(3) <=clk3; --left
		when "0010" => Motor(0) <= '0'; Motor(1) <=clk1; Motor(2) <= clk1; Motor(3) <= '0'; --back
		when "0001" => Motor(0) <= clk3; Motor(1) <=clk3; Motor(2) <= '0'; Motor(3) <= '0'; --right
		when "0011" => Motor(0) <= clk3; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= '0'; --blance right
		when "1100" => Motor(0) <= '0'; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= clk3; --blance lfe
		when "0000" =>
			case control1 is
		when "0100" => Motor(0) <= clk1; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= clk2; --fw
		when "1000" => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= clk3; Motor(3) <=clk3; --left
		when "0010" => Motor(0) <= '0'; Motor(1) <=clk1; Motor(2) <= clk1; Motor(3) <= '0'; --back
		when "0001" => Motor(0) <= clk3; Motor(1) <=clk3; Motor(2) <= '0'; Motor(3) <= '0'; --right
		when "0011" => Motor(0) <= clk3; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= '0'; --blance right
		when "1100" => Motor(0) <= '0'; Motor(1) <='0'; Motor(2) <= '0'; Motor(3) <= clk3; --blance lfe
		when others => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= '0'; Motor(3) <= '0'; --stop
		end case;
		when others => Motor(0) <= '0'; Motor(1) <=	'0'; Motor(2) <= '0'; Motor(3) <= '0'; --stop
		end case;

		
		
end process;
end rtl;