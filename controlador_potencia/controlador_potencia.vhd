-- Por meio da porcetagem de potencia recebida faz o acionamento do triac no tempo correto
-- Autor: Marcelo Rezin
-- Data: 08/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity controlador_potencia is
    port(
        clk_1MHZ                :   in  std_logic;
        passagem_zero           :   in  std_logic;
        porcentagem_potencia    :   in  integer range 0 to 100;
   
        disparo_triac           :   out std_logic
    );
end controlador_potencia;

architecture main of controlador_potencia is

    --Retorna o total de pulsos necessários para atender a porcentagem de potência requirida
    function porcentagem_to_pulsos (porcentagem :   integer) return integer is
    begin
    
        if porcentagem < 5 then
            return 8800;
        elsif porcentagem < 10 then
            return 8400;
        elsif porcentagem < 15 then
            return 8200;
        elsif porcentagem < 20 then
            return 7850;
        elsif porcentagem < 25 then
            return 7500;
        elsif porcentagem < 30 then
            return 7250;
        elsif porcentagem < 35 then
            return 7050;
        elsif porcentagem < 40 then
            return 6800;
        elsif porcentagem < 45 then
            return 6600;
        elsif porcentagem < 50 then
            return 6400;
        elsif porcentagem < 55 then
            return 6200;
        elsif porcentagem < 60 then
            return 5950;
        elsif porcentagem < 65 then
            return 5750;
        elsif porcentagem < 70 then
            return 5500;
        elsif porcentagem < 75 then
            return 5200;
        elsif porcentagem < 80 then
            return 4950;
        elsif porcentagem < 85 then
            return 4600;
        elsif porcentagem < 90 then
            return 4300;
        elsif porcentagem < 95 then
            return 4050;
        else
            return 3500;
        end if;
        
    end porcentagem_to_pulsos;
    
    signal  rising_passagem_zero    :   std_logic               :=  '0';
    signal  reset_passagem_zero     :   std_logic               :=  '0';
    signal  delay_ativacao          :   std_logic               :=  '0';
    signal  delay_triac             :   std_logic               :=  '0';

    signal  pulsos_potencia         :   integer range 0 to 9000 :=  0;

begin

    pulsos_potencia <=  porcentagem_to_pulsos(porcentagem_potencia);

    process(clk_1MHZ)
        variable count_ativacao      :   integer range 0 to 50000000    :=  0;
        variable count_triac         :   integer range 0 to 500         :=  0;
    begin
        
        if rising_edge(clk_1MHZ) then

            if rising_passagem_zero = '1' then
                delay_ativacao   <=  '1';
            end if;

            if delay_ativacao = '1' then
                count_ativacao := count_ativacao + 1;
            end if;

            -- A cada 1us são 1 pulso
            if count_ativacao >= pulsos_potencia then
                count_ativacao   :=  0;
                
                delay_ativacao   <=  '0';
                delay_triac      <=  '1';
                
                --Ativar o triac
                disparo_triac   <=  '1';      
            end if;

            if delay_triac = '1' then
                count_triac :=  count_triac + 1;
            end if;

            if count_triac = 10 then --Tempo suficiente para acionar o triac
                count_triac :=  0;
                
                delay_triac <=  '0';
                disparo_triac       <=  '0';
            end if;

            if reset_passagem_zero = '1' then
                reset_passagem_zero   <=  '0';
            end if;

            if rising_passagem_zero = '1' then
                reset_passagem_zero   <=  '1';
            end if;

        end if;

    end process;

    process(passagem_zero, reset_passagem_zero)
    begin
        if reset_passagem_zero = '1' then
            rising_passagem_zero   <=   '0';
        elsif rising_edge(passagem_zero) then
            rising_passagem_zero   <=   '1';
        end if;

    end process;

end main;
