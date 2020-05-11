-- Utilitario para testar a leitura de temperatura na placa
-- Autor: Marcelo Rezin
-- Data: 10/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity leitor_temperatura_tester is
    port(
        clk_50MHZ   :   in  std_logic;
        so          :   in  std_logic;
   
        cs          :   out std_logic;
        sck         :   out std_logic;
        dezena      :   out std_logic_vector(6 downto 0);
        unidade     :   out std_logic_vector(6 downto 0)
    );
end leitor_temperatura_tester;

architecture main of leitor_temperatura_tester is

    component leitor_temperatura is
        port(
            clk_1MHZ    :   in  std_logic;
            so          :   in  std_logic;
        
            cs          :   out std_logic;
            sck         :   out std_logic;
            temperatura :   out std_logic_vector(11 downto 0)
    );
    end component leitor_temperatura;

    component divisor_clock is
        port(
            clk     :   in  std_logic;
            divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
            
            out_clk :   out std_logic
        );
    end component divisor_clock;

    component sete_seg_display is
        port(
            numero      :   in integer range 0 to 9;
            out_display :   out std_logic_vector(6 downto 0)
        );
    end component sete_seg_display;

    constant prescaler      :   integer range 0 to 50           :=  50;
    signal  clk_1MHZ        :   std_logic                       :=  '0';

    signal  temperatura_tmp :   std_logic_vector(11 downto 0)   :=  (others => '0');
    signal  dezena_tmp      :   integer range 0 to 9            :=  0;
    signal  unidade_tmp     :   integer range 0 to 9            :=  0; 

begin

    divisor_50x :   divisor_clock port map(clk_50MHZ, prescaler, clk_1MHZ);
    leitor      :   leitor_temperatura port map(clk_1MHZ, so, cs, sck, temperatura_tmp);

    display_dezena  :   sete_seg_display port map(dezena_tmp, dezena);
    display_unidade :   sete_seg_display port map(unidade_tmp, unidade);

    process(temperatura_tmp)

        variable temp   :   integer range 0 to 4093;

    begin
        temp    :=  to_integer(unsigned(temperatura_tmp)) / 4; --Divide por quatro pra desconsiderar a parte decimal
        
        dezena_tmp  <=  temp / 10;
        unidade_tmp <=  temp rem 10;

    end process;

end main;
