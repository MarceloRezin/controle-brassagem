-- Módulo de memória para armazenamento das rampas de temperatura que serão utilizadas na receita 
-- O tipo 'parametros' pode armazenar tanto temperatura alvo quanto o tempo. A temperatura é sempre 
-- em graus celsius com o valor máximo de 1023,75°C (A capacidade real é 4093, porém é dividido por 4 devido ao ponto fixo).
-- Já o tempo é armazenado em segundos e pode atingir no máximo 8191 s, o que resulta em um tempo de 2h:16m:31s. 
-- O primeiro parâmetro (posição 0) é sempre a temperatura e o segundo (posição 1) é sempre o tempo.
-- O tipo 'rampa' armazena todos os paramêtros das rampas de uma receita. Pode conter no máximo 9 temperaturas;
-- Autor: Marcelo Rezin
-- Data: 14/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package memoria_rampa is
    type    parametros  is array (0 to 1)   of std_logic_vector(12 downto 0);
    type    rampa       is array (0 to 8)   of parametros;

    function get_temperatura(p : parametros) return  std_logic_vector;
    function get_tempo(p : parametros) return  std_logic_vector;
end;

package body memoria_rampa is

    function get_temperatura(p : parametros) return std_logic_vector is
    begin
        return p(0);
    end function;

    function get_tempo(p : parametros) return std_logic_vector is
    begin
        return p(1);
    end function;

end package body;