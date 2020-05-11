-- Testbench para o tester do leitor de temperatura
-- Possui um slave SPI para simular a comunicação com o MAX 6675
-- Autor: Marcelo Rezin
-- Data: 11/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leitor_temperatura_tester_tb is
end leitor_temperatura_tester_tb;

architecture main of leitor_temperatura_tester_tb is

    signal  clk     :   std_logic                       :=  '0';
    signal  so      :   std_logic                       :=  '0';

    signal  cs      :   std_logic;
    signal  sck     :   std_logic; -- 1 MHz

    signal  dezena  :   std_logic_vector(6 downto 0);
    signal  unidade :   std_logic_vector(6 downto 0);

begin

    clk <=  not clk after 10 ns;

    DUT :   entity work.leitor_temperatura_tester(main) port map(clk, so, cs, sck, dezena, unidade);

    --Simula o slave
    process(cs, sck)

        variable bit_transmitido   :   integer range 0 to 15;

    begin

        if falling_edge(cs) then
            bit_transmitido :=  15;
            so              <=  '0';

        elsif falling_edge(sck) then

            if bit_transmitido /= 0 then --Se ainda não terminou

                bit_transmitido :=  bit_transmitido - 1;

                -- Os bits de 14 a 3 são de informações, desses, os 2 ultimos são as fracoes decimais.
                -- A conversão se dá dividindo o inteiro recebido por 4

                --                  14 13 12 11 10 09 08 07 06 05 04 03               
                -- 20°C =>  80   => 0  0  0  0  0  1  0  1  0  0  0  0
                
                --                  14 13 12 11 10 09 08 07 06 05 04 03               
                -- 77°C =>  308   => 0  0  0  1  0  0  1  1  0  1  0  0
                if bit_transmitido = 14 then
                    so  <=  '0';
                elsif bit_transmitido = 13 then
                    so  <=  '0';
                elsif bit_transmitido = 12 then
                    so  <=  '0';
                elsif bit_transmitido = 11 then
                    so  <=  '1';
                elsif bit_transmitido = 10 then
                    so  <=  '0';
                elsif bit_transmitido = 9 then
                    so  <=  '0';
                elsif bit_transmitido = 8 then
                    so  <=  '1';
                elsif bit_transmitido = 7 then
                    so  <=  '1';
                elsif bit_transmitido = 6 then
                    so  <=  '0';
                elsif bit_transmitido = 5 then
                    so  <=  '1';
                elsif bit_transmitido = 4 then
                    so  <=  '0';
                elsif bit_transmitido = 3 then
                    so  <=  '0';
                else
                    so  <=  '0';
                end if;

            end if;

        end if;

    end process;
    
end main;
