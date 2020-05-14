-- Módulo de memória para armazenamento das rampas de temperatura que serão utilizadas na receita 
-- 0 -> temperatura
-- 1 -> tempo
-- Autor: Marcelo Rezin
-- Data: 14/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package memoria_rampa is
    type    parametros  is array (0 to 1)   of std_logic_vector(12 downto 0);
    type    rampa       is array (0 to 9)   of parametros;

    function    get_rampa(i : integer; rp : rampa)  return  rampa;
    function    get_temperatura(p : parametros)     return  std_logic_vector(12 downto 0);
    function    get_tempo(p : parametros)           return  std_logic_vector(12 downto 0);
end;

package body memoria_rampa is

    function get_parametros(i : integer; rp : rampa)  return  parametros is
    begin
        return  rp(i);
    end function;

    function get_temperatura(p : parametros)   return std_logic_vector(12 downto 0) is
    begin
        return p(0);
    end function;

    function get_temperatura(p : parametros)   return std_logic_vector(12 downto 0) is
    begin
        return p(1);
    end function;

end package body;