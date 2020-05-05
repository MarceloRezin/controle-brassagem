
-- Autor: Marcelo Rezin
-- Data: 05/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity detector_passagem_zero_tb is
end detector_passagem_zero_tb;

architecture main of detector_passagem_zero_tb is

    signal  passagem_zero       :   std_logic                       :=  '0';
    signal  saida               :   std_logic                       :=  '0';

    signal  cout_pass           : integer   :=  0;

begin

    passagem_zero   <=  not passagem_zero after 4.16666667 ms;

    DUT :   entity work.detector_passagem_zero(main) port map(passagem_zero, saida);

    process(saida)
    begin
        if rising_edge(saida) then
            cout_pass   <= cout_pass + 1;
        end if;

    end process;

end main;
