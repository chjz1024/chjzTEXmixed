library ieee;
use ieee.std_logic_1164.all;

entity LED_TRANS is
  port (
    busin: in std_logic_vector(3 downto 0);
    ledout: out std_logic_vector(6 downto 0)
  );
end entity LED_TRANS;

architecture rtl of LED_TRANS is
  
begin
  process(busin)
  begin
    case busin is
      when "0000" => ledout <= "0000001";
      when "0001" => ledout <= "1001111";
      when "0010" => ledout <= "0010010";
      when "0011" => ledout <= "0000110";
      when "0100" => ledout <= "1001100";
      when "0101" => ledout <= "0100100";
      when "0110" => ledout <= "0100000";
      when "0111" => ledout <= "0001111";
      when "1000" => ledout <= "0000000";
      when "1001" => ledout <= "0001100";
      when "1010" => ledout <= "0001000";
      when "1011" => ledout <= "1100000";
      when "1100" => ledout <= "0110001";
      when "1101" => ledout <= "1000010";
      when "1110" => ledout <= "0110000";
      when "1111" => ledout <= "0111000";
        
      when others => ledout <= "1000000";
        
    end case;
  end process;
  
  
end architecture rtl;