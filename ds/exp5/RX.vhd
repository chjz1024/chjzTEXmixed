library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RX is
	generic(data_bits: integer := 8);--clkwait: integer := 16)
	port(
		clk: in std_logic;
		data: in std_logic;
		rd: in std_logic;
		buff: buffer std_logic_vector(data_bits-1 downto 0);
		rx_ready: out std_logic := '0';
		sync_sig: out std_logic
	);
end RX;

architecture rtl of RX is
type states is(r_idle, r_start, r_data);
type sync_states is(rx_start, rx_wait, rx_sample);
signal state: states:= r_idle;
signal sync_state: sync_states := rx_start;
signal sync: std_logic := '0';
begin
	
	sync_sig <= sync;
	
	sync_gen: process(clk)
	variable clkcnt: std_logic_vector(3 downto 0) := "0000";
	variable datacnt: integer range 0 to 16:= 0;
	begin
		if(clk'event and clk='1') then
			case sync_state is
				when rx_start =>
					if(data = '0') then
						clkcnt := clkcnt + '1';
						if(clkcnt = "1000") then
							sync_state <= rx_wait;
							sync <= not sync;
						end if;
					else
						clkcnt := "0000";
						sync <= '0';
					end if;
				
				when rx_wait =>
					clkcnt := clkcnt + '1';
					if(clkcnt(2 downto 0) = "000") then
						sync_state <= rx_sample;
					end if;

				when rx_sample =>
					clkcnt := clkcnt + '1';
					sync <= not sync;
					datacnt := datacnt + 1;
					if(datacnt = 16) then
						sync_state <= rx_start;
						datacnt := 0;
					else
						sync_state <= rx_wait;
					end if;

			end case;
		end if;
	end process sync_gen;

	state_transfer: process(sync)
	variable cnt: integer range 0 to data_bits := 0;
	begin
		if(sync'event and sync='1') then
			case state is
				when r_idle =>
					if(data = '0') then
						state <= r_start;
						cnt := 0;
					end if;
				when r_start =>
					state <= r_data;
					buff(data_bits-1) <= data;
					cnt := cnt + 1;
				when r_data =>
					buff(data_bits-2 downto 0) <= buff(data_bits-1 downto 1);
					buff(data_bits-1) <= data;
					if(cnt = 7) then
						state <= r_idle;
						rx_ready <= '1';
					end if;
					cnt := cnt + 1;
			end case;
		end if;
	end process state_transfer;
end rtl;