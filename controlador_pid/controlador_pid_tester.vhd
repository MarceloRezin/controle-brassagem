-- Utilitário para testar o controlador pid na placa

-- 1º par de displays de 7 segmentos exibe o set point, o 2º exibe a temperatura e o 3º exibe a potencia aplicada
-- func_select em 1, seleção para alteração do set point, em 0 altaração da temperatura
-- ativar_pid em 1, faz o calculo do pid, em 0 não calcula
-- btn_mais incrementa a varivel selecionada, btn_menos decrementa
-- pid_ativo: saida que pisca um LED a cada calculo do pid
-- Autor: Marcelo Rezin
-- Data: 12/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity controlador_pid_tester is
    port(
        clk_50MHZ           :   in  std_logic;
        func_select         :   in  std_logic;
        ativar_pid          :   in  std_logic;
        btn_mais            :   in  std_logic;
        btn_menos           :   in  std_logic;

        pid_ativo           :   out std_logic;
   
        dezena_set_point    :   out std_logic_vector(6 downto 0);
        unidade_set_point   :   out std_logic_vector(6 downto 0);
        
        dezena_temperatura  :   out std_logic_vector(6 downto 0);
        unidade_temperatura :   out std_logic_vector(6 downto 0);
        
        dezena_potencia     :   out std_logic_vector(6 downto 0);
        unidade_potencia    :   out std_logic_vector(6 downto 0)
    );
end controlador_pid_tester;

architecture main of controlador_pid_tester is

    component controlador_pid is
        port(
            clk                 :   in std_logic;
            set_point           :   in std_logic_vector(11 downto 0); -- Ponto fixo, 2 últimos bits é fração decimal - Faixa de 0 a 128
            temperatura_atual   :   in std_logic_vector(11 downto 0); --Ponto fixo, 2 últimos bits é fração decimal
            
            percentual_potencia :   out integer range 0 to 100
        );
    end component controlador_pid;

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

    constant    prescaler               :   integer                         :=  50;
    signal      clk_1MHZ                :   std_logic                       :=  '0';
    signal      clk_pid                 :   std_logic                       :=  '0';
    
    signal      set_point               :   std_logic_vector(11 downto 0)    := (others => '0');
    signal      set_point_tmp           :   std_logic_vector(11 downto 0)    := "000101010100"; --85
    
    signal      temperatura             :   std_logic_vector(11 downto 0)   :=  (others => '0');
    signal      temperatura_tmp         :   std_logic_vector(11 downto 0)   :=  "000100101000"; --74
    
    signal      porcentagem_potencia    :   integer range 0 to 100          :=  0;

    signal      not_btn_mais            :   std_logic                       :=  '0';
    signal      rising_mais             :   std_logic                       :=  '0';
    signal      reset_mais              :   std_logic                       :=  '0';

    signal      not_btn_menos           :   std_logic                       :=  '0';
    signal      rising_menos            :   std_logic                       :=  '0';
    signal      reset_menos             :   std_logic                       :=  '0';

    signal      dezena_set_point_tmp    :   integer range 0 to 9            :=  0;
    signal      unidade_set_point_tmp   :   integer range 0 to 9            :=  0; 

    signal      dezena_temperatura_tmp  :   integer range 0 to 9            :=  0;
    signal      unidade_temperatura_tmp :   integer range 0 to 9            :=  0; 

    signal      dezena_potencia_tmp     :   integer range 0 to 9            :=  0;
    signal      unidade_potencia_tmp    :   integer range 0 to 9            :=  0; 

begin

    divisor_50x                 :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);
    pid                         :   controlador_pid port map(clk_pid, set_point, temperatura, porcentagem_potencia);
    
    display_dezena_set_point    :   sete_seg_display port map(dezena_set_point_tmp, dezena_set_point);
    display_unidade_set_point   :   sete_seg_display port map(unidade_set_point_tmp, unidade_set_point);
    
    display_dezena_temperatura  :   sete_seg_display port map(dezena_temperatura_tmp, dezena_temperatura);
    display_unidade_temperatura :   sete_seg_display port map(unidade_temperatura_tmp, unidade_temperatura);
    
    display_dezena_potencia     :   sete_seg_display port map(dezena_potencia_tmp, dezena_potencia);
    display_unidade_potencia    :   sete_seg_display port map(unidade_potencia_tmp, unidade_potencia);

    not_btn_mais    <=  not btn_mais;
    not_btn_menos   <=  not btn_menos;

    process(clk_1MHZ)

        variable update_display             :   integer range 0 to 200_000      :=  0; --Atualiza os displays a cada 200 ms
        variable update_variaveis           :   integer range 0 to 1_000_000    :=  0; --Atualiza as variaveis a casa 1s

        variable set_point_tmp_unsigned     :   unsigned(11 downto 0)           :=  (others => '0');
        variable temperatura_tmp_unsigned   :   unsigned(11 downto 0)           :=  (others => '0');

    begin
        if rising_edge(clk_1MHZ) then

            if reset_mais = '1' then
                reset_mais  <=  '0';
            end if;

            if reset_menos = '1' then
                reset_menos  <=  '0';
            end if;

            set_point_tmp_unsigned   :=  unsigned(set_point_tmp);
            temperatura_tmp_unsigned :=  unsigned(temperatura_tmp);

            if rising_mais = '1' then
                reset_mais  <= '1';

                if func_select = '1' then --Altera set point

                    if set_point_tmp_unsigned = 396 then
                        set_point_tmp_unsigned   := (others => '0');
                    else
                        set_point_tmp_unsigned   :=  set_point_tmp_unsigned + 4;
                    end if;

                    set_point_tmp   <=  std_logic_vector(set_point_tmp_unsigned);

                else -- Altera temperatura
                    
                    if temperatura_tmp_unsigned = 396 then
                        temperatura_tmp_unsigned   := (others => '0');
                    else
                        temperatura_tmp_unsigned   :=  temperatura_tmp_unsigned + 4;
                    end if;

                    temperatura_tmp   <=  std_logic_vector(temperatura_tmp_unsigned);

                end if;

            elsif rising_menos = '1' then
                reset_menos  <= '1';

                if func_select = '1' then --Altera set point

                    if set_point_tmp_unsigned = 0 then
                        set_point_tmp_unsigned   := "000110001100"; --396 = 99
                    else
                        set_point_tmp_unsigned   :=  set_point_tmp_unsigned - 4;
                    end if;

                    set_point_tmp   <=  std_logic_vector(set_point_tmp_unsigned);

                else -- Altera temperatura

                    if temperatura_tmp_unsigned = 0 then
                        temperatura_tmp_unsigned   := "000110001100"; --396 = 99
                    else
                        temperatura_tmp_unsigned   :=  temperatura_tmp_unsigned - 4;
                    end if;

                    temperatura_tmp   <=  std_logic_vector(temperatura_tmp_unsigned);

                end if;

            end if;

            update_display      :=   update_display + 1;
            update_variaveis    :=   update_variaveis + 1;

            if update_display = 200000 then

                set_point_tmp_unsigned      :=  shift_right(set_point_tmp_unsigned, 2); --Divide por 4, apresenta o valor inteiro
                dezena_set_point_tmp        <=  to_integer(set_point_tmp_unsigned) / 10;
                unidade_set_point_tmp       <=  to_integer(set_point_tmp_unsigned) rem 10;

                temperatura_tmp_unsigned    :=  shift_right(temperatura_tmp_unsigned, 2); --Divide por 4, apresenta o valor inteiro
                dezena_temperatura_tmp      <=  to_integer(temperatura_tmp_unsigned) / 10;
                unidade_temperatura_tmp     <=  to_integer(temperatura_tmp_unsigned) rem 10;
                
                if porcentagem_potencia > 99 then
                    dezena_potencia_tmp     <=  9;
                    unidade_potencia_tmp    <=  9;
                else
                    dezena_potencia_tmp     <=  porcentagem_potencia / 10;
                    unidade_potencia_tmp    <=  porcentagem_potencia rem 10;
                end if;

                update_display              :=  0;

                pid_ativo                   <=  '0';
                clk_pid                     <=  '0';
            end if;
            
            if update_variaveis = 1000000 then

                if ativar_pid = '1' then
                    set_point   <=  set_point_tmp;
                    temperatura <=  temperatura_tmp;

                    pid_ativo   <=  '1';
                    clk_pid     <=  '1';
                end if;

                update_variaveis  :=  0;
            end if;
            
        end if;
    end process;
    
    process(not_btn_mais, reset_mais)
    begin
        if reset_mais = '1' then
            rising_mais   <=   '0';
        elsif rising_edge(not_btn_mais) then
            rising_mais   <=   '1';
        end if;
    end process;

    process(not_btn_menos, reset_menos)
    begin
        if reset_menos = '1' then
            rising_menos   <=   '0';
        elsif rising_edge(not_btn_menos) then
            rising_menos   <=   '1';
        end if;
    end process;

end main;
