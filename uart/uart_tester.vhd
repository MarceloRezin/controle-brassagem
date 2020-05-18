-- Utilitário para testar a comunicação UART na placa

-- Autor: Marcelo Rezin
-- Data: 17/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity uart_tester is
    port(
        clk_50MHZ   :   in  std_logic;
        rx          :   in  std_logic;
        funcao      :   in  std_logic;
        btn_mais    :   in  std_logic;
        btn_menos   :   in  std_logic;

        tx          :   out std_logic;
        dezena_r    :   out std_logic_vector(6 downto 0);
        unidade_r   :   out std_logic_vector(6 downto 0);
        dezena_t    :   out std_logic_vector(6 downto 0);
        unidade_t   :   out std_logic_vector(6 downto 0)
    );
end uart_tester;

architecture main of uart_tester is

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

    component sete_seg_display is
        port(
            numero      :   in  integer range 0 to 9;
            out_display :   out std_logic_vector(6 downto 0)
        );
    end component sete_seg_display;

    constant    prescaler               :   integer                         :=  50;
    signal      clk_1MHZ                :   std_logic                       :=  '0';

    --rx
    signal      byte_r                  :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_r_tmp              :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_recebido           :   std_logic                       :=  '0';
    
    --tx
    signal      iniciar                 :   std_logic                       :=  '0';
    signal      byte_t                  :   std_logic_vector(7 downto 0)    :=  (others => '0');
    signal      byte_transmitido        :   std_logic                       :=  '0';

    signal      dezena_r_tmp            :   integer range 0 to 9            :=  0;
    signal      unidade_r_tmp           :   integer range 0 to 9            :=  0; 

    signal      dezena_t_tmp            :   integer range 0 to 9            :=  0;
    signal      unidade_t_tmp           :   integer range 0 to 9            :=  0;
    
    signal      not_btn_mais            :   std_logic                       :=  '0';
    signal      rising_mais             :   std_logic                       :=  '0';
    signal      reset_mais              :   std_logic                       :=  '0';

    signal      not_btn_menos           :   std_logic                       :=  '0';
    signal      rising_menos            :   std_logic                       :=  '0';
    signal      reset_menos             :   std_logic                       :=  '0';

begin

    divisor_50x         :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);    
    u_rx                :   uart_rx port map(clk_1MHZ, rx, byte_r, byte_recebido);    
    u_tx                :   uart_tx port map(clk_1MHZ, byte_t, iniciar, tx, byte_transmitido);    
    
    display_dezena_r    :   sete_seg_display port map(dezena_r_tmp, dezena_r);
    display_unidade_r   :   sete_seg_display port map(unidade_r_tmp, unidade_r);
    
    display_dezena_t    :   sete_seg_display port map(dezena_t_tmp, dezena_t);
    display_unidade_t   :   sete_seg_display port map(unidade_t_tmp, unidade_t);

    not_btn_mais    <=  not btn_mais;
    not_btn_menos   <=  not btn_menos;

    process(clk_1MHZ)

        variable    update_display  :   integer range 0 to 200_000  :=  0; --Atualiza os displays a cada 200 ms
        
        variable    recebido_int    :   integer range 0 to 99       :=  0; 
        variable    enviado_int     :   integer range 0 to 99       :=  0; 

    begin
        if rising_edge(clk_1MHZ) then

            if reset_mais = '1' then
                reset_mais  <=  '0';
            end if;

            if reset_menos = '1' then
                reset_menos  <=  '0';
            end if;
            
            if iniciar = '1' then
                iniciar  <=  '0';
            end if;
        
            if rising_mais = '1' then
                reset_mais  <= '1';

                if funcao = '1' then --Envia
                    iniciar <=  '1';
                else -- Sobe os valores
                   
                    if unsigned(byte_t) = 99 then
                        byte_t  <=  (others => '0');
                    else
                        byte_t  <=  std_logic_vector(unsigned(byte_t) + 1);
                    end if;

                end if;

            elsif rising_menos = '1' then
                reset_menos  <= '1';

                if unsigned(byte_t) = 0 then
                    byte_t  <=  "01100011";
                else
                    byte_t  <=  std_logic_vector(unsigned(byte_t) - 1);
                end if;

            end if;

            update_display      :=   update_display + 1;

            if update_display = 200000 then

                recebido_int    :=  to_integer(unsigned(byte_r_tmp));

                dezena_r_tmp    <=  recebido_int / 10;
                unidade_r_tmp   <=  recebido_int rem 10;

                enviado_int    :=  to_integer(unsigned(byte_t));
                
                dezena_t_tmp    <=  enviado_int / 10;
                unidade_t_tmp   <=  enviado_int rem 10;

                update_display              :=  0;
                
            end if;
            
        end if;
    end process;

    process(byte_recebido)
    begin
        if rising_edge(byte_recebido) then
            byte_r_tmp   <=  byte_r;
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
