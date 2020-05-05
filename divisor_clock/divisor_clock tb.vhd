-- Testbench do divisor de clock
-- Autor: Marcelo Rezin
-- Data: 04/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity divisor_clock_tb is
end divisor_clock_tb;

architecture sim of divisor_clock_tb is
    
    signal  clock           :   std_logic               :=  '0';
    signal  divisor         :   integer range 0 to 10   :=  10;
    signal  clock_dividido  :   std_logic               :=  '0';

begin

    DUT :   entity work.divisor_clock(main) port map(clock, divisor, clock_dividido);

    clock   <=  not clock after 2 ns; -- 50MHZ 50% duty cicle 

end sim;
