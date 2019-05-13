library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity DIV27 is
  port(
    clk: in std_logic;
    clkdiv: out std_logic
  );
end DIV27;
architecture rtl of DIV27 is
  signal cnt: std_logic:='1';
  type states is(llow, hhigh);
begin
  process(clk)
  variable i: std_logic_vector(3 downto 0) := "0000";
  variable state: states := llow;
  begin
    if(clk'event and clk='1') then
		if(state = llow) then
			if(i = "1100") then
				i := "0000";
				state := hhigh;
				cnt <= not cnt;
			else
				i := i + '1';
			end if;
		else
			if(i = "1101") then
				i := "0000";
				state := llow;
				cnt <= not cnt;
			else
				i := i + '1';
			end if;
		end if;
    end if;
  end process;
  clkdiv <= cnt;
end rtl;