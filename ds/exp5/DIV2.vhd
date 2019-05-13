library ieee;
use ieee.std_logic_1164.all;
entity div2 is
  generic(factor:integer := 100);
  port(
    clk: in std_logic;
    clkdiv: out std_logic
  );
end div2;
architecture rtl of div2 is
  signal cnt: std_logic:='1';
begin
  process(clk)
  variable i: integer range 0 to factor-1 := 0;
  begin
    if(clk'event and clk='1') then
      if(i=factor-1) then
        i:=0;
        cnt<=not cnt;
      else
        i:=i+1;
      end if;
    end if;
  end process;
  clkdiv <= cnt;
end rtl;