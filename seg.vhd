library ieee;
use ieee.std_logic_1164.all;

entity seg is

	port 
	(
		data : integer range 0 to 16;
		seg7 : out std_logic_vector ( 7 downto 0)
	);

end entity;

architecture rtl of seg is
begin

	process(data)
	begin 				
				case data is 
					when 0	 	=> seg7 <= 	"11000000";
					when 1		=> seg7 <=	"11111001";
					when 2 		=> seg7 <= 	"10100100";
					when 3 		=> seg7 <= 	"10110000";
					when 4		=> seg7 <=	"10011001";
					when 5 		=> seg7 <= 	"10010010";
					when 6		=> seg7 <=	"10000010";
					when 7		=> seg7 <=	"11111000";
					when 8		=> seg7 <=	"10000000";
					when 9		=> seg7 <=	"10010000";
					when 10		=> seg7 <=	"10001000";
					when 11		=> seg7 <=	"10000011";
					when 12		=> seg7 <=	"10100111";
					when 13		=> seg7 <=	"10100001";
					when 14		=> seg7 <=	"10000110";
					when 15		=> seg7 <=	"10001110";
					when others => seg7 <= "11111111";
				end case;
	end process;
end rtl;
