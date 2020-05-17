-- Transmissor UART que opera em uma taxa de 9600 bauds
-- Autor: Marcelo Rezin
-- Data: 17/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
    port(
        clk_1MHZ            :   in  std_logic;
        byte                :   in  std_logic_vector(7 downto 0);
        iniciar             :   in  std_logic;

        tx_out              :   out std_logic;
        byte_transmitido    :   out std_logic
    );
end uart_tx;

architecture main of uart_tx is

    signal  byte_tmp                :   std_logic_vector(9 downto 0);
    signal  transmissao_inciada     :   std_logic                       :=  '0';
    signal  reset                   :   std_logic                       :=  '0';
    signal  tx_out_tmp              :   std_logic                       :=  '1';
    signal  byte_transmitido_tmp    :   std_logic                       :=  '0';

begin

    byte_tmp            <=  ('1' & byte(7 downto 0) & '0'); --Adicionado o start e o stop bit no vetor (lsb é enviado primeiro)
    tx_out              <=  tx_out_tmp;
    byte_transmitido    <=  byte_transmitido_tmp;

    process(clk_1MHZ)

        variable    start_bit       :   std_logic               :=  '1';
        variable    index           :   integer range 0 to 10   :=  0; --Indice do byte enviado, uart manda lsb primeiro
        variable    pulsos_tempo    :   integer range 0 to 104; --Tempo de sincronismo para ler o bit, 1 pulso, 1us

    begin
        if rising_edge(clk_1MHZ) then

            if reset = '1' then
                reset   <=  '0';
            end if;
                
            if byte_transmitido_tmp = '1' then
                byte_transmitido_tmp   <=  '0';
            end if;

            if transmissao_inciada = '1' then
                
                if start_bit = '1' then
                    tx_out_tmp      <=  byte_tmp(index);
                    index           :=  index + 1;
                    start_bit       :=  '0';
                    pulsos_tempo    :=  0;
                else
                    pulsos_tempo    :=  pulsos_tempo + 1;

                    if pulsos_tempo = 104 then
                        if index = 10 then --Acabou
                            reset                   <=  '1';
                            byte_transmitido_tmp    <=  '1'; 
                            index                   :=  0;
                            start_bit               :=  '1';
                        else
                            tx_out_tmp  <=  byte_tmp(index);
                            index       :=  index + 1;
                        end if;

                        pulsos_tempo    :=  0;
                        
                    end if;
                end if;

            end if;

        end if;
    end process;

    process(iniciar, reset)
    begin
        if reset = '1' then
            transmissao_inciada    <=  '0';
        elsif rising_edge(iniciar) then
            transmissao_inciada    <=  '1';
        end if;
    end process;

end main;