
-- Autor: Marcelo Rezin
-- Data: 05/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity detector_passagem_zero_tb is
end detector_passagem_zero_tb;

architecture main of detector_passagem_zero_tb is

    signal  clk                 :   std_logic                       :=  '0';
    signal  passagem_zero       :   std_logic                       :=  '0';
    signal  centena             :   std_logic_vector(6 downto 0);
    signal  dezena              :   std_logic_vector(6 downto 0);
    signal  unidade             :   std_logic_vector(6 downto 0);
    signal  saida               :   std_logic                       :=  '0';

    signal  cout_pass           : integer   :=  0;
    signal  cout_saida          : integer   :=  0;

begin

    clk <=  not clk after 10 ns;

    passagem_zero   <=  not passagem_zero after 4.16666667 ms;

    DUT :   entity work.detector_passagem_zero(main) port map(clk, passagem_zero, centena, dezena, unidade, saida);

    process(passagem_zero)
    begin
        if rising_edge(passagem_zero) then
            cout_pass   <= cout_pass + 1;
        end if;

    end process;

    process(saida)
    begin
        if rising_edge(saida) then
            cout_saida   <= cout_saida + 1;
        end if;

    end process;

end main;
