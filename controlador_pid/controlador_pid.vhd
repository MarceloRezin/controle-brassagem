-- Módulo que por meio da temperatura obtida realiza o calculo PID para indicar a potência que o sistema de aquecimento deve assumir
-- Internamente utiliza números reais por meio da representação por ponto fixo de 3 casas
-- Autor: Marcelo Rezin
-- Data: 12/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_pid is
    port(
        clk                 :   in std_logic;
        set_point           :   in std_logic_vector(11 downto 0); -- Ponto fixo, 2 últimos bits é fração decimal - Faixa de 0 a 128
        temperatura_atual   :   in std_logic_vector(11 downto 0); --Ponto fixo, 2 últimos bits é fração decimal
        
        percentual_potencia :   out integer range 0 to 100;
        paralizar_contagem  :   out std_logic --Quando o erro é maior que 3C° paraliza o timer, significa que a panela está em aquecimento
    );
end controlador_pid;

architecture main of controlador_pid is

    --Tudo multiplicado por 8 causa do ponto fixo de 3 casas
    constant    kp                      :   signed(4 downto 0)  :=  "01010"; -- 8 -> 1
    constant    ki                      :   signed(4 downto 0)  :=  "00000"; -- 0 -> 0
    constant    kd                      :   signed(4 downto 0)  :=  "00001"; -- 1 -> .125

    signal      i                       :   signed(18 downto 0) :=  (others => '0');
    signal      ultima_temperatura      :   signed(13 downto 0) :=  (others => '0');
    signal      paralizar_contagem_tmp  :   std_logic           :=  '0';

begin

    paralizar_contagem  <= paralizar_contagem_tmp;

    process(clk)
        
        variable    temperatura_atual_signed    :   signed(13 downto 0);
        variable    erro                        :   signed(13 downto 0);
        variable    p                           :   signed(18 downto 0);
        variable    d                           :   signed(18 downto 0);
        variable    pid                         :   signed(18 downto 0);

    begin

        if rising_edge(clk) then
            temperatura_atual_signed    :=  signed(shift_left(resize(unsigned(temperatura_atual), temperatura_atual_signed'length), 1));

            erro                        :=  signed(shift_left(unsigned(set_point), 1)) - temperatura_atual_signed;
            p                           :=  shift_right(erro * kp, 3);
            i                           <=  i + shift_right(erro * ki, 3);
            d                           :=  shift_right((ultima_temperatura - temperatura_atual_signed) * kd, 3);
            pid                         :=  shift_right(p + i + d, 3);    

            ultima_temperatura          <=  temperatura_atual_signed;

            if pid > 9 then
                 percentual_potencia <=  100;
            elsif pid < 0 then
                percentual_potencia <=  0;
            else
                percentual_potencia <=  to_integer(pid) * 10;
            end if;

            if erro > 24 then --24 = 3 no ponto fixo - Aguarda a panela aquecer
                paralizar_contagem_tmp  <=  '1';
            else
                paralizar_contagem_tmp  <=  '0';
            end if;

        end if;

    end process;

end main;