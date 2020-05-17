-- Receptor UART que opera em uma taxa de 9600 bauds
-- Sempre que um byte é recebido, um pulso é dado em 'byte_recebido'
-- Autor: Marcelo Rezin
-- Data: 14/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
    port(
        clk_1MHZ        :   in  std_logic;
        rx_in           :   in  std_logic;

        byte            :   out std_logic_vector(7 downto 0);
        byte_recebido   :   out std_logic
    );
end uart_rx;

architecture main of uart_rx is


    signal  recepcao_inciada    :   std_logic   :=  '0';
    signal  reset               :   std_logic   :=  '0';
    signal  byte_recebido_tmp   :   std_logic   :=  '0';

begin

    byte_recebido   <=  byte_recebido_tmp;

    process(clk_1MHZ)

        variable    start_bit       :   std_logic   :=  '1';
        variable    index           :   integer range 0 to 8; --Indice do byte lido, uart manda lsb primeiro
        variable    pulsos_tempo    :   integer range 0 to 104; --Tempo de sincronismo para ler o bit, 1 pulso, 1us
        variable    byte_lido       :   std_logic_vector(7 downto 0);

    begin
        if rising_edge(clk_1MHZ) then

            if reset = '1' then
                reset   <=  '0';
            end if;
                
            if byte_recebido_tmp = '1' then
                byte_recebido_tmp   <=  '0';
            end if;

            if recepcao_inciada = '1' then

                pulsos_tempo    :=  pulsos_tempo + 1;

                if start_bit = '1' and pulsos_tempo = 51 then --A metade é 52, mas pode ter o atraso de 1us entre o inicio da transmissao e o pulso do clock

                    index           :=  0;
                    pulsos_tempo    :=  0;
                    start_bit       :=  '0';

                elsif pulsos_tempo = 104 then
                
                    if index = 8 then --stop bit
                        reset               <=  '1';
                        byte                <=  byte_lido;
                        byte_recebido_tmp   <=  '1';
                        start_bit           :=  '1';
                    else
                        byte_lido(index)    :=  rx_in;
                        index               :=  index + 1;
                        pulsos_tempo        :=  0;
                    end if;

                end if;

            end if;

        end if;
    end process;

    process(rx_in, reset)
    begin
        if reset = '1' then
            recepcao_inciada    <=  '0';
        elsif falling_edge(rx_in) then

            if recepcao_inciada = '0' then
                recepcao_inciada    <=  '1';
            end if;

        end if;
    end process;

end main;