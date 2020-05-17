-- Testbench para o receptor UART
-- Possui um simulador de transmissor UART
-- Autor: Marcelo Rezin
-- Data: 17/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_tb is
end uart_rx_tb;

architecture main of uart_rx_tb is

    signal  clk             :   std_logic                       :=  '0';
    signal  rx_in           :   std_logic                       :=  '1';

    signal  byte            :   std_logic_vector(7 downto 0);
    signal  byte_recebido   :   std_logic;

begin

    clk <=  not clk after 500 ns;

    DUT :   entity work.uart_rx(main) port map(clk, rx_in, byte, byte_recebido);


    process(clk)

        variable    index           :   integer range 0 to 9            :=  0;
        variable    count           :   integer range 0 to 104          :=  0;
        variable    bit_transmitido :   std_logic_vector(0 to 7)    :=  "01010101";

    begin

        if rising_edge(clk) then

            if count = 104 then
                
                if index = 0 then -- Start bit
                    rx_in   <=  '0';
                    index   := index + 1;
                    count   :=  0;
                else

                    if index = 9 then -- Stop bit
                        rx_in   <=  '1';
                    else
                        rx_in   <=  bit_transmitido(index - 1);
                        index   := index + 1;
                        count   :=  0;
                    end if;
                    
                end if;

            else
                count := count + 1;
            end if;

        end if;

    end process;
    
end main;