library ieee;
use ieee.std_logic_1164.all;

entity RX_tb is
end RX_tb;

architecture rtl of RX_tb is
component RX is
	generic(data_bits: integer := 8);--clkwait: integer := 16)
	port(
		clk: in std_logic;
		data: in std_logic;
		rd: in std_logic;
		buff: buffer std_logic_vector(data_bits-1 downto 0);
		rx_ready: out std_logic := '0';
		sync_sig: out std_logic
	);
end component;

signal clk, data, rx_ready, rd, sync : std_logic;
signal buff : std_logic_vector(7 downto 0);

begin
	rxx: RX generic map(8) port map(clk, data, rd, buff, rx_ready, sync);
	
	process
	begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
	end process;
	
	process
	begin
		data <= '1';
		wait for 40 ns;
		data <= '0'; -- start
		wait for 32 ns;
		
		data <= '1';
		wait for 32 ns;
		data <= '0';
		wait for 32 ns;
		data <= '1';
		wait for 32 ns;
		data <= '1';
		wait for 32 ns;
		
		data <= '0';
		wait for 32 ns;
		data <= '1';
		wait for 32 ns;
		data <= '0';
		wait for 32 ns;
		data <= '0';
		wait for 32 ns;
		
		data <= '1';
		wait for 40 ns;
	end process;

end rtl;