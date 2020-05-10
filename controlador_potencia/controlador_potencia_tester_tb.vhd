
-- Autor: Marcelo Rezin
-- Data: 05/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_potencia_tester_tb is
end controlador_potencia_tester_tb;

architecture main of controlador_potencia_tester_tb is

    signal  clk                 :   std_logic                       :=  '0';
    signal  passagem_zero       :   std_logic                       :=  '0';
    signal  porcentagem_mais    :   std_logic                       :=  '0';
    signal  porcentagem_menos   :   std_logic                       :=  '0';
    signal  centena             :   std_logic_vector(6 downto 0);
    signal  dezena              :   std_logic_vector(6 downto 0);
    signal  unidade             :   std_logic_vector(6 downto 0);
    signal  saida               :   std_logic                       :=  '0';
    signal  porcentagem_potencia               :   integer range 0 to 100   :=  0;

begin

    clk <=  not clk after 10 ns;
    passagem_zero   <=  not passagem_zero after 4.16666667 ms;

    porcentagem_mais    <=  '1' after 10 ms, '0' after 160 ms, '1' after 860 ms, '0' after 1010 ms;
    porcentagem_menos   <=  '1' after 1500 ms, '0' after 1650 ms;

    DUT :   entity work.controlador_potencia_tester(main) port map(clk, passagem_zero, porcentagem_mais, porcentagem_menos, centena, dezena, unidade, saida);

end main;
