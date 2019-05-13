library ieee;
use ieee.std_logic_1164.all;

entity UART is
	port(
		clk: in std_logic;
		data: in std_logic;
		rd: in std_logic;
		rx_ready: out std_logic;
		sync_sig: out std_logic;
		ledout: out std_logic_vector(6 downto 0);
		
		music_out: out std_logic;
		
		--use for powering chip
		gnd: out std_logic;
		gndref: out std_logic;
		--chip end
		
		led_ena: in std_logic;
		led_anode: out std_logic;
		
		rxbuf: out std_logic_vector(7 downto 0);
		clkkdiv: out std_logic;
		clkkk32: out std_logic
	);
end UART;

architecture rtl of UART is

component LED_TRANS is
  port (
    busin: in std_logic_vector(3 downto 0);
    ledout: out std_logic_vector(6 downto 0)
  );
end component;

component DIV27 is
  port(
    clk: in std_logic;
    clkdiv: out std_logic
  );
end component;

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

component div2 is
  generic(factor:integer := 100);
  port(
    clk: in std_logic;
    clkdiv: out std_logic
  );
end component;

component MUSIC is
	PORT (
			KEY_CODE : IN std_logic_vector(3 downto 0);
			CLK:IN STD_LOGIC;--32
			OUTPUT:OUT STD_LOGIC
			);
END component;

	signal clkdiv: std_logic;
	signal clk32: std_logic;
	signal buff: std_logic_vector(7 downto 0);
	
begin

	gnd <= '0';
	gndref <= '0';
	
	clkk: DIV27 port map(clk, clkdiv);
	rxx: RX generic map(8) port map(clkdiv, data, rd, buff, rx_ready, sync_sig);
	led: LED_TRANS port map(buff(3 downto 0), ledout);
	clkk32: div2 generic map(16) port map(clk, clk32);
	musicc: music port map(buff(7 downto 4), clk32, music_out);

	clkkdiv <= clkdiv;
	clkkk32 <= clk32;
	rxbuf <= buff;
	led_anode <= led_ena;
	
end rtl;
