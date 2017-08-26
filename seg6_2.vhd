library ieee;
use ieee.std_logic_1164.all;

entity seg6_2 is

	port 
	(
		clk : in std_logic;
		Com : out std_logic_vector ( 5 downto 0)
	);

end entity;

architecture rtl of seg6_2 is
begin

	process(clk)
	variable common : std_logic_vector(5 downto 0) := "111111";
	begin 				
	if rising_edge(clk) then
				case common is 
					when "111110" => common := 	"111101";
					when "111101" => common :=	"111011";
					when "111011" => common := 	"110111";
					when "110111" => common := 	"101111";
					when "101111" => common := 	"011111";
					when "011111" => common := 	"111110";
					when others => common := "111110";
				end case;
			end if;
			Com <= common;
	end process;
end rtl;
