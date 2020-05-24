-- Módulo que aponta a temperatura do setpoint de acordo com o tempo
-- Autor: Marcelo Rezin
-- Data: 14/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.memoria_rampa.all;

entity temporizador is
    port(
        clk_1MHZ            :   in std_logic;
        iniciar             :   in std_logic; --Um pulso indica que o temporizador deve iniciar
        rampas              :   in rampa;
        
        set_point           :   out std_logic_vector(11 downto 0);
        rampa_atual         :   out integer range 0 to 9;
        tempo_passado       :   out integer range 0 to 8_191;
        alteracao_set_point :   out std_logic; --Da um pulso sempre que o set point foi alterado
        fim                 :   out std_logic --Da um pulso quando as rampas terminarem
    );
end temporizador;

architecture main of temporizador is

    function set_tempo_alvo(index : integer; rampas : rampa) return integer is
    begin
        return to_integer(unsigned(get_tempo(rampas(index))));
    end set_tempo_alvo;
    
    function set_set_point(index : integer; rampas : rampa) return std_logic_vector is
    begin
        return get_temperatura(rampas(index))(11 downto 0);
    end set_set_point;

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

    constant    prescaler               :   integer     :=  1_000_000;
    signal      clk_1HZ                 :   std_logic   :=  '0'; -- Clock de 1 segundo para contagem do tempo

    signal      alteracao_set_point_tmp :   std_logic   :=  '0';
    signal      fim_tmp                 :   std_logic   :=  '0';

    signal      iniciado                :   std_logic   :=  '0';

begin

    divisor_1Mx :   divisor_clock port map(clk_1MHZ, prescaler, clk_1HZ);

    alteracao_set_point <=  alteracao_set_point_tmp;
    fim                 <=  fim_tmp;

    process(clk_1HZ, iniciar)
        
        variable    segundo_zero        :   std_logic :=  '1';
        variable    index               :   integer range 0 to 9; --Indica qual rampa que está sendo executada no momento 
        variable    tempo_alvo          :   integer range 0 to 8_191;
        variable    tempo_decorrido     :   integer range 0 to 8_191; --Tempo máximo em segundos de uma rampa

    begin

        if rising_edge(clk_1HZ) then
            
            if alteracao_set_point_tmp =  '1' then
                alteracao_set_point_tmp <=  '0';
            end if;
            
            if fim_tmp =  '1' then
                fim_tmp <=  '0';
            end if;

            if iniciado = '1' then
                if segundo_zero = '1' then
                    segundo_zero    := '0';

                    index           :=  0;
                    tempo_decorrido :=  0;
        
                    tempo_alvo      :=  set_tempo_alvo(index, rampas);
                    set_point       <=  set_set_point(index, rampas);
                else
                    tempo_decorrido :=  tempo_decorrido + 1;

                    if tempo_decorrido = tempo_alvo then
                        tempo_decorrido :=  0;

                        if index = 9 then -- acabou
                            fim_tmp         <=  '1';
                            segundo_zero    := '1';
                        else
                            index       :=  index + 1;
                            tempo_alvo  :=  set_tempo_alvo(index, rampas);
                            
                            if tempo_alvo = 0 then -- acabou
                                fim_tmp         <=  '1';
                                segundo_zero    := '1';
                            else --Trocou o set point
                                set_point               <=  set_set_point(index, rampas);
                                alteracao_set_point_tmp <=  '1';
                            end if;
                        end if;

                    end if;

                end if;

                rampa_atual     <=  index;
                tempo_passado   <= tempo_decorrido;
            end if;

        end if;
    end process;

    process(iniciar, fim_tmp)
    begin

        if fim_tmp = '1' then
            iniciado    <=  '0';
        elsif rising_edge(iniciar) then
            iniciado    <=   '1';
        end if;

    end process;

end main;