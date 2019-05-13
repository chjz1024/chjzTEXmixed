library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MUSIC is
	PORT (
			KEY_CODE : IN std_logic_vector(3 downto 0);
			CLK:IN STD_LOGIC;--32
			OUTPUT:OUT STD_LOGIC
			);
END MUSIC;

ARCHITECTURE MUSIC_BEHAVE OF MUSIC IS
	SIGNAL JUG : STD_LOGIC_VECTOR(12 DOWNTO 0);
	signal cnt : std_logic_vector(12 downto 0);
	signal tmp : std_logic:='0'; 
BEGIN	
	PROCESS(CLK)
	--variable i:integer:=0;
	BEGIN
	--if(i=0)then

			CASE KEY_CODE IS
				WHEN "1001" => JUG<="0101110101001";--DO 2986.43 260.61
				WHEN "1010" => JUG<="0101001100100";--RE 2660.93
				WHEN "1011" => JUG<="0100101000001";--MI 2370.30
				WHEN "1100" => JUG<="0100010111100";--FA 2237.26
				WHEN "1101" => JUG<="0011111001000";--SO 1992.98
				WHEN "1110" => JUG<="0011011101111";--LA 1775.57
				WHEN "1111" => JUG<="0011000101101";--SI 1582.12

				WHEN "0001" => JUG<="0010111010100";--DO 1493.07
				WHEN "0010" => JUG<="0010100110001";--RE 1330.17
				WHEN "0011" => JUG<="0010010100001";--MI 1185.04
				WHEN "0100" => JUG<="0010001011110";--FA 1118.53
				WHEN "0101" => JUG<="0001111100100";--SO 996.50
				WHEN "0110" => JUG<="0001101110111";--LA 887.79
				WHEN "0111" => JUG<="0001100010110";--SI 790.92
				WHEN OTHERS => JUG<="0000000000000";
			END CASE;
	END PROCESS;
	
	process(clk)
	begin
		if(clk'event and clk='1')then
			if(cnt=JUG)then
				cnt<="0000000000000";
				tmp <=not tmp;
			else
				cnt<=cnt+1;
			end if;
		end if;
	end process;
	OUTPUT <=tmp;
END MUSIC_BEHAVE;