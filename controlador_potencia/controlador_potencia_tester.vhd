-- Utilitario para testar o controlador na placa
-- Autor: Marcelo Rezin
-- Data: 08/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity controlador_potencia_tester is
    port(
        clk_50MHZ           :   in  std_logic;
        passagem_zero       :   in  std_logic;
        porcentagem_mais    :   in  std_logic;
        porcentagem_menos   :   in  std_logic;
   
        centena             :   out std_logic_vector(6 downto 0);
        dezena              :   out std_logic_vector(6 downto 0);
        unidade             :   out std_logic_vector(6 downto 0);
        disparo_triac       :   out std_logic
    );
end controlador_potencia_tester;

architecture main of controlador_potencia_tester is

    component controlador_potencia is
        port(
            clk_1MHZ                :   in  std_logic;
            passagem_zero           :   in  std_logic;
            porcentagem_potencia    :   in  integer range 0 to 100;
       
            disparo_triac           :   out std_logic
        );
    end component controlador_potencia;

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

    component sete_seg_display is
        port(
            numero      :   in  integer range 0 to 9;
            out_display :   out std_logic_vector(6 downto 0)
        );
    end component sete_seg_display;

    constant prescaler              :   integer range 0 to 50   :=  50;

    signal  clk_1MHZ                :   std_logic               :=  '0';
    signal  porcentagem_potencia    :   integer range 0 to 100  :=  0;

    signal  not_porcentagem_mais       :   std_logic               :=  '0';
    signal  rising_mais                :   std_logic               :=  '0';
    signal  reset_mais                :   std_logic               :=  '0';

    signal  not_porcentagem_menos      :   std_logic               :=  '0';
    signal  rising_menos               :   std_logic               :=  '0';
    signal  reset_menos               :   std_logic               :=  '0';

    signal  centena_tmp             :   integer range 0 to 9    :=  0;
    signal  dezena_tmp              :   integer range 0 to 9    :=  0;
    signal  unidade_tmp             :   integer range 0 to 9    :=  0; 

begin

    divisor_50x :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);
    controlador :   controlador_potencia port map(clk_1MHZ, passagem_zero, porcentagem_potencia, disparo_triac);

    display_centena :   sete_seg_display port map(centena_tmp, centena);
    display_dezena  :   sete_seg_display port map(dezena_tmp, dezena);
    display_unidade :   sete_seg_display port map(unidade_tmp, unidade);

    not_porcentagem_mais    <=  not porcentagem_mais;
    not_porcentagem_menos   <=  not porcentagem_menos;

    process(clk_1MHZ)

        variable update_display  :   integer range 0 to 200000   :=  0;

    begin
        if rising_edge(clk_1MHZ) then

            if reset_mais = '1' then
                reset_mais  <=  '0';
            end if;

            if reset_menos = '1' then
                reset_menos  <=  '0';
            end if;

            if rising_mais = '1' then
                reset_mais  <= '1';

                if porcentagem_potencia = 100 then
                    porcentagem_potencia    <=  0;
                else
                    porcentagem_potencia    <=  porcentagem_potencia + 5;
                end if;
            elsif rising_menos = '1' then
                reset_menos  <= '1';

                if porcentagem_potencia = 0 then
                    porcentagem_potencia    <=  100;
                else
                    porcentagem_potencia    <=  porcentagem_potencia - 5;
                end if;
            end if;

            update_display :=   update_display + 1;
            if update_display = 200000 then
                centena_tmp <=  porcentagem_potencia / 100;
                dezena_tmp  <= (porcentagem_potencia rem 100) / 10;
                unidade_tmp <=  (porcentagem_potencia rem 100) rem 10;

                update_display  :=  0;
            end if;

        end if;
    end process;
    
    process(not_porcentagem_mais, reset_mais)
    begin
        if reset_mais = '1' then
            rising_mais   <=   '0';
        elsif rising_edge(not_porcentagem_mais) then
            rising_mais   <=   '1';
        end if;
    end process;

    process(not_porcentagem_menos, reset_menos)
    begin
        if reset_menos = '1' then
            rising_menos   <=   '0';
        elsif rising_edge(not_porcentagem_menos) then
            rising_menos   <=   '1';
        end if;
    end process;

end main;
