-- Testbench para o tester do temporizador
-- Autor: Marcelo Rezin
-- Data: 15/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity temporizador_tester_tb is
end temporizador_tester_tb;

architecture main of temporizador_tester_tb is

    signal  clk         :   std_logic                       :=  '0';
    signal  iniciar     :   std_logic                       :=  '0';
    signal  dezena      :   std_logic_vector(6 downto 0);
    signal  unidade     :   std_logic_vector(6 downto 0);
    signal  alteracao   :   std_logic                       :=  '0';
    signal  fim         :   std_logic                       :=  '0';

begin

    clk     <=  not clk after 10 ns;
    iniciar <=  '1' after 1 ms;

    DUT :   entity work.temporizador_tester(main) port map(clk, iniciar, dezena, unidade, alteracao, fim);

end main;
