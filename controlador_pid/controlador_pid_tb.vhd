-- Testbench do divisor de controlador PID
-- Autor: Marcelo Rezin
-- Data: 12/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity controlador_pid_tb is
end controlador_pid_tb;

architecture sim of controlador_pid_tb is
    
    signal  clk                 :   std_logic   := '0';
    signal  set_point           :   std_logic_vector(11 downto 0)   :=  "000101010100"; --85
    signal  temperatura_atual   :   std_logic_vector(11 downto 0)   :=  "000100101000"; --74
    signal  percentual_potencia :   integer range 0 to 100;

begin

    clk                 <=  not clk after 2.5 ns;
    temperatura_atual   <=  std_logic_vector(unsigned(temperatura_atual) + 4) after 5 ns;

    DUT :   entity work.controlador_pid(main) port map(clk, set_point, temperatura_atual, percentual_potencia);

end sim;
