-- Divide o clock informado pelo valor especificado
-- Autor: Marcelo Rezin
-- Data: 04/05/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity divisor_clock is
    port(
        clk     :   in  std_logic;
        divisor :   in  integer range 0 to 50000000 :=  0; -- divisão máxima de 1hz (De acordo com a placa utilizada). Dá pra usar divisores em cascata  
        
        out_clk :   out std_logic
    );
end divisor_clock;

architecture main of divisor_clock is

	signal	out_clk_tmp	:	std_logic	:=	'0';
	signal	out_clk_tmp_up	:	std_logic	:=	'0';
	signal	reset_out_clk_tmp           	:	std_logic	:=	'0';

begin

    process(clk)
        variable count_tmp      :   integer range 0 to 50000000 :=  0;
    begin
        
        if rising_edge(clk) then
            
            count_tmp := count_tmp + 1;

            if out_clk_tmp_up = '1' then
                out_clk_tmp_up   <=  '0';
            end if;
            
            if count_tmp = divisor then
                count_tmp   :=  0; 

                out_clk_tmp_up  <=  '1';             
            end if;

        end if;

        if falling_edge(clk) then

            if out_clk_tmp_up = '1' then
                reset_out_clk_tmp   <=  '1';
            end if;

            if reset_out_clk_tmp = '1' then
                reset_out_clk_tmp   <=  '0';
            end if;

        end if;

    end process;

    process(out_clk_tmp_up, reset_out_clk_tmp)
    begin
        if reset_out_clk_tmp = '1' then
            out_clk_tmp   <=    '0';
        elsif rising_edge(out_clk_tmp_up) then
            out_clk_tmp   <=  '1';
        end if;

    end process;

    out_clk	<=	out_clk_tmp;

end main;
