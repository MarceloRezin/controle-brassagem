
-- Autor: Marcelo Rezin
-- Data: 13/04/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity detector_passagem_zero is
    port(
        passagem_zero       :   in  std_logic;
   
        saida               :   out std_logic
    );
end detector_passagem_zero;

architecture main of detector_passagem_zero is

begin

    saida   <= passagem_zero;

end main;
