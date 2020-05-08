
-- Autor: Marcelo Rezin
-- Data: 13/04/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity detector_passagem_zero is
    port(
        clk_50MHZ           :   in  std_logic;
        passagem_zero       :   in  std_logic;

        centena             :   out std_logic_vector(6 downto 0);
        dezena              :   out std_logic_vector(6 downto 0);
        unidade             :   out std_logic_vector(6 downto 0);
   
        saida               :   out std_logic
    );
end detector_passagem_zero;

architecture main of detector_passagem_zero is

    component sete_seg_display is
        port(
            numero      :   in std_logic_vector(3 downto 0); -- valor entre 0 e 9
            out_display :   out std_logic_vector(6 downto 0)
        );
    end component sete_seg_display;

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

    constant prescaler              :   integer range 0 to 50   :=  50;

    signal  clk_1MHZ                :   std_logic               :=  '0';
    
    signal  rising_passagem_zero    :   std_logic               :=  '0';
    signal  reset_passagem_zero     :   std_logic               :=  '0';
    signal  delay_ativacao          :   std_logic               :=  '0';
    signal  delay_triac             :   std_logic               :=  '0';

    signal  centena_tmp             :   unsigned(3 downto 0)    :=  (others => '0');
    signal  dezena_tmp              :   unsigned(3 downto 0)    :=  (others => '0');
    signal  unidade_tmp             :   unsigned(3 downto 0)    :=  (others => '0');

begin

    divisor_50x :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);

    display_centena :   sete_seg_display port map(std_logic_vector(centena_tmp), centena);
    display_dezena  :   sete_seg_display port map(std_logic_vector(dezena_tmp), dezena);
    display_unidade :   sete_seg_display port map(std_logic_vector(unidade_tmp), unidade);

    process(clk_1MHZ)
        variable count_ativacao      :   integer range 0 to 50000000 :=  0;
        variable count_triac         :   integer range 0 to 500 :=  0;

        variable  count_centena :   unsigned(3 downto 0)    :=  (others => '0');
        variable  count_dezena  :   unsigned(3 downto 0)    :=  (others => '0');
        variable  count_unidade :   unsigned(3 downto 0)    :=  (others => '0');
        variable count_1s       :   integer range 0 to 50000000 :=  0;

    begin
        
        if rising_edge(clk_1MHZ) then

            if rising_passagem_zero = '1' then
                delay_ativacao   <=  '1';

                if count_unidade = 9 then
                    count_unidade   :=  (others => '0');
                    
                    if count_dezena = 9 then
                        count_dezena    :=  (others => '0');
                        count_centena   :=  count_centena + 1;

                    else
                        count_dezena    :=  count_dezena + 1;
                    end if;
                    
                else
                    count_unidade   := count_unidade + 1;
                end if;

            end if;

            if delay_ativacao = '1' then
                count_ativacao := count_ativacao + 1;
            end if;

            -- A cada 1us são 1 pulso

            -- 8334 us
            -- 8334 pulsos 0%
            -- 4197 50%
            -- 7500 pulsos 10%
            if count_ativacao = 1500 then
                count_ativacao   :=  0;
                
                delay_ativacao   <=  '0';
                delay_triac      <=  '1';
                
                --Ativar saida
                saida   <=  '1';      
            end if;

            if delay_triac = '1' then
                count_triac :=  count_triac + 1;
            end if;

            if count_triac = 10 then --Tempo suficiente para acionar o triac
                count_triac :=  0;
                
                delay_triac <=  '0';
                saida       <=  '0';
            end if;

            if reset_passagem_zero = '1' then
                reset_passagem_zero   <=  '0';
            end if;

            if rising_passagem_zero = '1' then
                reset_passagem_zero   <=  '1';
            end if;


            -- Displays
            count_1s    :=  count_1s + 1;
            if count_1s = 1000000 then

                count_1s    :=  0; 

                centena_tmp <= count_centena;
                dezena_tmp  <= count_dezena;
                unidade_tmp <= count_unidade;

                count_centena   :=  (others => '0');
                count_dezena    :=  (others => '0');
                count_unidade   :=  (others => '0');
            
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
