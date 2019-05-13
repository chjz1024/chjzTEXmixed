library ieee;
use ieee.std_logic_1164.all;

entity REG is
  generic(width: INTEGER:=8);
  port(
    reset: in std_logic;
    seq: in std_logic;
    clk: in std_logic;
    regOut: buffer std_logic_vector(width-1 downto 0)
  );
end REG;

architecture arch_REG of REG is
begin
  process(clk, reset)
  begin
    if(reset = '0') then
      regOut <= (others=>'0');
    elsif(clk'event and clk='1') then
      regOut(width-2 downto 0) <= regOut(width-1 downto 1);
      regOut(width-1) <= seq;
    end if;
  end process;
end arch_REG;