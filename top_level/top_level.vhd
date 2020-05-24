-- Entidade top level na hierarquia. Representa o controlador em si, reunindo todas as funções dos outros módulos
-- Autor: Marcelo Rezin
-- Data: 23/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.memoria_rampa.all;

-- Entidade
entity top_level is
    port(
        clk_50MHZ   :   in  std_logic;
        rx          :   in  std_logic;

        tx          :   out std_logic
    );
end top_level;

architecture main of top_level is

    component uart_rx is
        port(
            clk_1MHZ        :   in  std_logic;
            rx_in           :   in  std_logic;
    
            byte            :   out std_logic_vector(7 downto 0);
            byte_recebido   :   out std_logic
        );
    end component uart_rx;

    component uart_tx is
        port(
            clk_1MHZ            :   in  std_logic;
            byte                :   in  std_logic_vector(7 downto 0);
            iniciar             :   in  std_logic;
    
            tx_out              :   out std_logic;
            byte_transmitido    :   out std_logic
        );
    end component uart_tx;

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

    constant    prescaler           :   integer                         :=  50;
    signal      clk_1MHZ            :   std_logic                       :=  '0';

    --rx
    signal      byte_r              :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_r_tmp          :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_recebido       :   std_logic                       :=  '0';
    signal      nova_recepcao       :   std_logic                       :=  '0';
    signal      reset_recepcao      :   std_logic                      :=  '0';
    
    --tx
    signal      iniciar_transmissao :   std_logic                       :=  '0';
    signal      byte_t              :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_transmitido    :   std_logic                       :=  '0';

    --Sincronização
    signal      sincronizacao_andamento :   std_logic                   :=  '0';
    signal      indexRampa              :   integer range 0 to 9;
    signal      indexParam              :   std_logic; -- 0 temperatura, 1 tempo

    --Memoria
    signal      rampas              :   rampa;

begin

    divisor_50x :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);    
    u_rx        :   uart_rx port map(clk_1MHZ, rx, byte_r, byte_recebido);    
    u_tx        :   uart_tx port map(clk_1MHZ, byte_t, iniciar_transmissao, tx, byte_transmitido);

    process(clk_1MHZ)
        variable byte_r_unsigned    :   unsigned(7 downto 0);
    begin
        if rising_edge(clk_1MHZ) then

            if reset_recepcao = '1' then
                reset_recepcao  <=  '0';
            end if;

            if iniciar_transmissao = '1' then
                iniciar_transmissao <=  '0';
            end if;

            if nova_recepcao = '1' then

                byte_r_unsigned :=  unsigned(byte_r_tmp);

                if sincronizacao_andamento = '1' then --Byte com informações do usuário

                    if byte_r_unsigned = 0 and indexParam = '0' then --Terminou antes de dar o total de rampas
                        sincronizacao_andamento <=  '0';

                        --Devolve 2 indicando que está tudo pronto para começar
                        byte_t              <=  "00000010";
                        iniciar_transmissao <=  '1';
                    else

                        if indexParam = '0' then --Temperatura
                            rampas(indexRampa)(0)(7 downto 0)   <=    byte_r_tmp;
                            rampas(indexRampa)(0)               <=    std_logic_vector(shift_left(unsigned(rampas(indexRampa)(0)), 2)); --Faz o shift para considerar as casas decimais
                        else --Tempo
                            rampas(indexRampa)(1)   <=    std_logic_vector(byte_r_unsigned * 60)(12 downto 0);
                        end if;

                        if indexParam = '1' then --Significa que já veio os 2 params dessa rampa
                            if indexRampa = 9 then --Acabou a sincronização 
                                sincronizacao_andamento <=  '0';

                                --Devolve 2 indicando que está tudo pronto para começar
                                byte_t              <=  "00000010";
                                iniciar_transmissao <=  '1';
                            else
                                indexRampa  <=  indexRampa + 1;
                            end if;
                        end if;

                        indexParam  <=  not indexParam;
                    end if;

                else --Byte com código

                    if byte_r_unsigned = 1 then --Indica que a sincronizacao vai comecar

                        --Zera tudo para inicar a sincronizacao
                        sincronizacao_andamento <=  '1';
                        indexRampa              <=  0;
                        indexParam              <=  '0';
                        rampas                  <= (others => ((others => '0'), (others => '0')));

                        --Devolve 2 indicando que está tudo pronto para começar
                        byte_t              <=  "00000010";
                        iniciar_transmissao <=  '1';
                    end if;
                        
                end if;

                reset_recepcao  <=  '1';
            end if;

        end if;
    end process;

    --rx
    process(byte_recebido, reset_recepcao)
    begin
        if reset_recepcao = '1' then
            nova_recepcao   <=  '0';
        elsif rising_edge(byte_recebido) then
            if nova_recepcao = '0' then --Ignora qualquer recepcao até que o byte tenha sido processado
                byte_r_tmp      <=  byte_r;
                nova_recepcao   <=  '1';
            end if;
        end if;
    end process;

end main;