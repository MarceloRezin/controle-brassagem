-- Módulo que por meio da temperatura obtida realiza o calculo PID para indicar a potência que o sistema de aquecimento deve assumir
-- Autor: Marcelo Rezin
-- Data: 12/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_pid is
    port(
        set_point           :   in std_logic_vector(8 downto 0); -- Ponto fixo, 2 últimos bits é fração decimal - Faixa de 0 a 128
        temperatura_atual   :   in std_logic_vector(11 downto 0); --Ponto fixo, 2 últimos bits é fração decimal
        
        percentual_potencia :   out integer range 0 to 100
    );
end controlador_pid;

architecture main of controlador_pid is

    --Tudo multiplicado por 4 causa do ponto fixo de 2 casas
    constant    kp                  :   integer                     :=  3; --0,75
    constant    ki                  :   integer                     :=  0;
    constant    kd                  :   integer                     :=  0;

    signal      i                   :   integer range -1024 to 1024 :=  0;
    signal      ultima_temperatura  :   integer range 0 to 4096     :=  0;

begin

    process(temperatura_atual) --Não usa o clock porque a temperatura e a potência já são definidas com base nele

        variable    temperatura_int    :   integer range 0 to 4096;
        variable    erro               :   integer range -1024 to 1024;
        variable    p                  :   integer range -1024 to 1024;
        variable    d                  :   integer range -1024 to 1024;
        variable    pid                :   integer range -1024 to 1024;

    begin
        
        temperatura_int     :=  to_integer(unsigned(temperatura_atual));
        erro                :=  to_integer(unsigned(set_point)) - temperatura_int;
        p                   :=  erro * kp;
        i                   <=  i + (erro * ki);
        d                   :=  (ultima_temperatura - temperatura_int) * kd;

        ultima_temperatura  <=  temperatura_int;

        pid                 :=  p + i + d;
        pid                 :=  pid / 4; -- Divide por 4 para remover a parte decimal -- TODO: shift?

        if pid > 10 then
            percentual_potencia <=  100;
        elsif pid < 0 then
            percentual_potencia <=  0;
        else
            percentual_potencia <=  pid * 10;
        end if;

    end process;

end main;