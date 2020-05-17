-- Testbench para o transmissor UART
-- Autor: Marcelo Rezin
-- Data: 17/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx_tb is
end uart_tx_tb;

architecture main of uart_tx_tb is

    signal  clk                 :   std_logic                       :=  '0';
    signal  tx_out              :   std_logic                       :=  '1';
    signal  iniciar             :   std_logic                       :=  '0';       
    signal  byte                :   std_logic_vector(7 downto 0)    :=  "01010101";
    signal  byte_transmitido    :   std_logic                       :=  '0';

begin

    clk     <=  not clk after 500 ns;
    iniciar <=  '1' after 10 us;

    DUT :   entity work.uart_tx(main) port map(clk, byte, iniciar, tx_out, byte_transmitido);
    
end main;