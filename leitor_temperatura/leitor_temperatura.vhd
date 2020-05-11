-- Módulo que realiza a comunicação com o MAX6675 via SPI para recuperar a temperatura do termopar
-- O MAX6675 envia 16 bits, sendo que os 14 à 3 são a temperatura. Desses, o bit 3 e 4 representam a fração decimal.
-- Autor: Marcelo Rezin
-- Data: 10/05/2020

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity leitor_temperatura is
    port(
        clk_1MHZ    :   in  std_logic;
        so          :   in  std_logic;
        
        cs          :   out std_logic;
        sck         :   out std_logic;
        temperatura :   out std_logic_vector(11 downto 0) -- Os 2 lsb's são as frações decimais (dividir o inteiro na base 10 por 4)
    );
end leitor_temperatura;

architecture main of leitor_temperatura is

    signal  cs_tmp          :   std_logic                       :=  '1';
    signal  sck_tmp         :   std_logic                       :=  '0';
    signal  temperatura_tmp :   std_logic_vector(11 downto 0)   :=  (others => '0');

begin

    cs  <=  cs_tmp;
    sck <=  sck_tmp;

    process(clk_1MHZ)

        variable    delay_1s        :   integer range 0 to 1000000  :=  0;
        variable    count_bordas    :   integer range 0 to 32       :=  0; -- 2 bordas por pulso, 16 bits

    begin

        if rising_edge(clk_1MHZ) then

            delay_1s  :=  delay_1s + 1;

            if cs_tmp = '0' then
                sck_tmp         <=  not sck_tmp;
                count_bordas    :=  count_bordas + 1;

                if count_bordas = 32 then
                    cs_tmp      <=  '1';

                    temperatura <=  temperatura_tmp;
                end if;

            end if;
           
            if delay_1s = 1000000 then
                cs_tmp      <=  '0';
                delay_1s    :=  0;

                sck_tmp       <=  '0';
                count_bordas  :=  0;
            end if;
                    
        end if;

    end process;

    process(sck_tmp)

        variable    bit_recebido    :   integer range 0 to 15   :=  15;

    begin

        if rising_edge(sck_tmp) then

            if bit_recebido = 0 then
                bit_recebido    :=  15;
            else

                if bit_recebido < 15 and bit_recebido > 2 then
                    temperatura_tmp(bit_recebido - 3) <=  so;
                end if;

                bit_recebido := bit_recebido - 1;

            end if;

        end if;

    end process;

end main;