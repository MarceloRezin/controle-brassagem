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
        so          :   in  std_logic;
        passagem_zero   :   in  std_logic;

        tx          :   out std_logic;
        cs          :   out std_logic;
        sck         :   out std_logic;
        disparo_triac   :   out std_logic;
        iniciado    :   out std_logic;
        pid_ativo   :   out std_logic;
        contagem_ativa  :   out std_logic
    );
end top_level;

architecture main of top_level is

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

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

    component temporizador is
        port(
            clk_1MHZ            :   in std_logic;
            reset               :   in std_logic;
            iniciar             :   in std_logic; --Um pulso indica que o temporizador deve iniciar
            paralizar_contagem  :   in std_logic; --Indica que a panela está aquecendo e não deve contar o tempo
            rampas              :   in rampa;
            
            set_point           :   out std_logic_vector(11 downto 0);
            rampa_atual         :   out integer range 0 to 9;
            tempo_passado       :   out integer range 0 to 8_191;
            alteracao_set_point :   out std_logic; --Da um pulso sempre que o set point foi alterado
            fim                 :   out std_logic --Da um pulso quando as rampas terminarem
        );
    end component temporizador;

    component leitor_temperatura is
        port(
            clk_1MHZ    :   in  std_logic;
            so          :   in  std_logic;
            
            cs          :   out std_logic;
            sck         :   out std_logic;
            temperatura :   out std_logic_vector(11 downto 0) -- Os 2 lsb's são as frações decimais (dividir o inteiro na base 10 por 4)
        );
    end component leitor_temperatura;

    component controlador_pid is
        port(
            clk                 :   in std_logic;
            set_point           :   in std_logic_vector(11 downto 0); -- Ponto fixo, 2 últimos bits é fração decimal - Faixa de 0 a 128
            temperatura_atual   :   in std_logic_vector(11 downto 0); --Ponto fixo, 2 últimos bits é fração decimal
            
            percentual_potencia :   out integer range 0 to 100;
            paralizar_contagem  :   out std_logic --Quando o erro é maior que 3C° paraliza o timer, significa que a panela está em aquecimento
        );
    end component controlador_pid;

    component controlador_potencia is
        port(
            clk_1MHZ                :   in  std_logic;
            ativo                   :   in  std_logic;
            passagem_zero           :   in  std_logic;
            porcentagem_potencia    :   in  integer range 0 to 100;
       
            disparo_triac           :   out std_logic
        );
    end component controlador_potencia;

    constant    prescaler           :   integer                         :=  50;
    signal      clk_1MHZ            :   std_logic                       :=  '0';
    signal      reset               :   std_logic                       :=  '0';

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
    signal      iniciado_tmp            :   std_logic   :=  '0';

    --Memoria
    signal      rampas              :   rampa;

    --Temporizador
    signal      set_point           :   std_logic_vector(11 downto 0);
    signal      rampa_atual         :   integer range 0 to 9;
    signal      tempo_decorrido     :   integer range 0 to 8_191;
    signal      alteracao_set_point :   std_logic;
    signal      fim                 :   std_logic;
    signal      fim_tmp             :   std_logic   :=  '0';
    signal      reset_fim           :   std_logic   :=  '0';

    --Atualizacao da ihm
    signal      index_atualizacao       :   integer range 0 to 7;
    signal      atualizacao_andamento   :   std_logic               :=  '0';

    --Leitor de temperatura
    signal      temperatura_atual       :   std_logic_vector(11 downto 0)   :=  (others => '0');

    --PID
    signal      clk_pid                 :   std_logic               :=  '0';
    signal      potencia_atual          :   integer range 0 to 100  :=   0;
    signal      paralizar_contagem      :   std_logic;

begin

    divisor_50x :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);    
    u_rx        :   uart_rx port map(clk_1MHZ, rx, byte_r, byte_recebido);    
    u_tx        :   uart_tx port map(clk_1MHZ, byte_t, iniciar_transmissao, tx, byte_transmitido);
    tmpr        :   temporizador port map(clk_1MHZ, reset, iniciado_tmp, paralizar_contagem, rampas, set_point, rampa_atual, tempo_decorrido, alteracao_set_point, fim);
    termometro  :   leitor_temperatura port map(clk_1MHZ, so, cs, sck, temperatura_atual);
    pid         :   controlador_pid port map(clk_pid, set_point, temperatura_atual, potencia_atual, paralizar_contagem);
    controlador :   controlador_potencia port map(clk_1MHZ, iniciado_tmp, passagem_zero, potencia_atual, disparo_triac);
    
    iniciado        <=  iniciado_tmp;
    contagem_ativa  <=  not paralizar_contagem;

    process(clk_1MHZ)
        variable    byte_r_unsigned    :   unsigned(7 downto 0);
        variable    atualizar_ihm      :   integer range 0 to 200_000   :=  0;
        variable    count_atualizacao  :   integer range 0 to 2_000   :=  0;
        variable    atualizacao_pid    :   integer range 0 to 1_000_000    :=  0; --Atualiza as variaveis a casa 1s
    begin
        if rising_edge(clk_1MHZ) then

            if reset_recepcao = '1' then
                reset_recepcao  <=  '0';
            end if;

            if iniciar_transmissao = '1' then
                iniciar_transmissao <=  '0';
            end if;

            if reset = '1' then
                reset <=  '0';
            end if;
            
            if reset_fim = '1' then
                reset_fim <=  '0';
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
                            rampas(indexRampa)(0)(9 downto 2)   <=    byte_r_tmp; --Faz o shift para considerar as casas decimais
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

                        atualizar_ihm       :=  0;
                        count_atualizacao   :=  0;
                        atualizacao_pid     := 0;

                        --Devolve 2 indicando que está tudo pronto para começar
                        byte_t              <=  "00000010";
                        iniciar_transmissao <=  '1';
                    elsif byte_r_unsigned = 10 then
                        iniciado_tmp            <=  '1';
                    elsif byte_r_unsigned = 11 then --Sinal de reset
                        iniciado_tmp    <=  '0';
                        reset           <=  '1';
                        clk_pid         <=  '0';
                        pid_ativo       <=  '0';
                    end if;
                        
                end if;

                reset_recepcao  <=  '1';
            end if;

            if iniciado_tmp = '1' then
                if atualizacao_andamento = '1' then
                    count_atualizacao   :=   count_atualizacao + 1;
                    if count_atualizacao = 2_000 then
                        count_atualizacao   :=  0;
                        
                        if index_atualizacao = 0 then --Envia a rampa atual
                            byte_t              <=  std_logic_vector(to_unsigned(rampa_atual, 8));
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 1 then --Envia os bits mais significativos do tempo
                            byte_t              <=  (others => '0');
                            byte_t(4 downto 0)  <=  std_logic_vector(to_unsigned(tempo_decorrido, 13))(12 downto 8);
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 2 then --Envia os bits menos significativos do tempo
                            byte_t              <=  std_logic_vector(to_unsigned(tempo_decorrido, 13))(7 downto 0);
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 3 then --Envia os bits mais significativos da temperatura atual
                            byte_t              <=  (others => '0');
                            byte_t(3 downto 0)  <=  temperatura_atual(11 downto 8);
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 4 then --Envia os bits menos significativos do tempo
                            byte_t              <=  temperatura_atual(7 downto 0);
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 5 then --Envia a potencia atual
                            byte_t              <=  std_logic_vector(to_unsigned(potencia_atual, 8));
                            iniciar_transmissao <=  '1';
                        elsif index_atualizacao = 6 then --Envia o status do contador
                            byte_t              <=  (others => '0');

                            if paralizar_contagem = '0' then
                                byte_t(0)  <=  '1';
                            end if;

                            iniciar_transmissao <=  '1';
                        end if;

                        if index_atualizacao = 6 then --Acabou de enviar as informações
                            atualizacao_andamento   <=  '0';
                        else
                            index_atualizacao   <=  index_atualizacao + 1; 
                        end if;
                    end if;
                end if;
    
                atualizar_ihm   :=   atualizar_ihm + 1;
                if atualizar_ihm = 200_000 then
                    clk_pid     <=  '0';
                    pid_ativo   <=  '0';

                    if fim_tmp = '1' then --Acabou a brassagem, reseta tudo e avisa a IHM
                        reset_fim   <=  '1';
    
                        iniciado_tmp    <=  '0';
                        reset           <=  '1';
    
                        --Devolve 12
                        byte_t              <=  "00001100";
                        iniciar_transmissao <=  '1';
                    else
                        index_atualizacao       <=  0;
                        atualizacao_andamento   <=  '1';
                        count_atualizacao       :=  0;
    
                        --Avisa pra ihm que a atualizacao vai começar
                        byte_t              <=  "00000001";
                        iniciar_transmissao <=  '1';
    
                        atualizar_ihm  :=  0;
                    end if;
                end if;

                atualizacao_pid    :=   atualizacao_pid + 1;
                if atualizacao_pid = 1_000_000 then
                    clk_pid     <=  '1';
                    pid_ativo   <=  '1';
    
                    atualizacao_pid  :=  0;
                end if;
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

    --Temporizador
    process(fim, reset_fim)
    begin
        if reset_fim = '1' then
            fim_tmp <=  '0';
        elsif rising_edge(fim) then
            fim_tmp <=  '1';
        end if;
    end process;
end main;