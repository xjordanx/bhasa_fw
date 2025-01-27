--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Jan 25 12:44:20 2025
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_bhasa_zero is
   port (
      gpio_io : in std_logic_vector(7 downto 0);
      clk_i : in std_logic;
      rstn_i : in std_logic;
      rxd_i : in std_logic;
      txd_o : out std_logic
   );
end wrapper_for_bhasa_zero;

architecture bhasa_zero of wrapper_for_bhasa_zero is

component bhasa_zero
 port (
   gpio_io : inout std_logic_vector (7 downto 0);
   clk_i : in std_logic;
   rstn_i : in std_logic;
   rxd_i : in std_logic;
   txd_o : out std_logic
 );
end component;

signal tmp_gpio_io : std_logic_vector (7 downto 0);
signal tmp_clk_i : std_logic;
signal tmp_rstn_i : std_logic;
signal tmp_rxd_i : std_logic;
signal tmp_txd_o : std_logic;

begin

tmp_gpio_io <= gpio_io;

tmp_clk_i <= clk_i;

tmp_rstn_i <= rstn_i;

tmp_rxd_i <= rxd_i;

txd_o <= tmp_txd_o;



u1:   bhasa_zero port map (
		gpio_io => tmp_gpio_io,
		clk_i => tmp_clk_i,
		rstn_i => tmp_rstn_i,
		rxd_i => tmp_rxd_i,
		txd_o => tmp_txd_o
       );
end bhasa_zero;
