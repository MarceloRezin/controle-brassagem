-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/08/2020 14:53:53"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	detector_passagem_zero IS
    PORT (
	clk_50MHZ : IN std_logic;
	passagem_zero : IN std_logic;
	centena : OUT std_logic_vector(6 DOWNTO 0);
	dezena : OUT std_logic_vector(6 DOWNTO 0);
	unidade : OUT std_logic_vector(6 DOWNTO 0);
	saida : OUT std_logic
	);
END detector_passagem_zero;

-- Design Ports Information
-- centena[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centena[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezena[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- passagem_zero	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detector_passagem_zero IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHZ : std_logic;
SIGNAL ww_passagem_zero : std_logic;
SIGNAL ww_centena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \centena[0]~output_o\ : std_logic;
SIGNAL \centena[1]~output_o\ : std_logic;
SIGNAL \centena[2]~output_o\ : std_logic;
SIGNAL \centena[3]~output_o\ : std_logic;
SIGNAL \centena[4]~output_o\ : std_logic;
SIGNAL \centena[5]~output_o\ : std_logic;
SIGNAL \centena[6]~output_o\ : std_logic;
SIGNAL \dezena[0]~output_o\ : std_logic;
SIGNAL \dezena[1]~output_o\ : std_logic;
SIGNAL \dezena[2]~output_o\ : std_logic;
SIGNAL \dezena[3]~output_o\ : std_logic;
SIGNAL \dezena[4]~output_o\ : std_logic;
SIGNAL \dezena[5]~output_o\ : std_logic;
SIGNAL \dezena[6]~output_o\ : std_logic;
SIGNAL \unidade[0]~output_o\ : std_logic;
SIGNAL \unidade[1]~output_o\ : std_logic;
SIGNAL \unidade[2]~output_o\ : std_logic;
SIGNAL \unidade[3]~output_o\ : std_logic;
SIGNAL \unidade[4]~output_o\ : std_logic;
SIGNAL \unidade[5]~output_o\ : std_logic;
SIGNAL \unidade[6]~output_o\ : std_logic;
SIGNAL \saida~output_o\ : std_logic;
SIGNAL \clk_50MHZ~input_o\ : std_logic;
SIGNAL \clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_50x|Add0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~1\ : std_logic;
SIGNAL \divisor_50x|Add0~2_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~2_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~3\ : std_logic;
SIGNAL \divisor_50x|Add0~4_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~5\ : std_logic;
SIGNAL \divisor_50x|Add0~6_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~7\ : std_logic;
SIGNAL \divisor_50x|Add0~8_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~1_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~9\ : std_logic;
SIGNAL \divisor_50x|Add0~10_combout\ : std_logic;
SIGNAL \divisor_50x|count_tmp~0_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~11\ : std_logic;
SIGNAL \divisor_50x|Add0~12_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~13\ : std_logic;
SIGNAL \divisor_50x|Add0~14_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~15\ : std_logic;
SIGNAL \divisor_50x|Add0~16_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~17\ : std_logic;
SIGNAL \divisor_50x|Add0~18_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~19\ : std_logic;
SIGNAL \divisor_50x|Add0~20_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~21\ : std_logic;
SIGNAL \divisor_50x|Add0~22_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~23\ : std_logic;
SIGNAL \divisor_50x|Add0~24_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~25\ : std_logic;
SIGNAL \divisor_50x|Add0~26_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~27\ : std_logic;
SIGNAL \divisor_50x|Add0~28_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~29\ : std_logic;
SIGNAL \divisor_50x|Add0~30_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~31\ : std_logic;
SIGNAL \divisor_50x|Add0~32_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~33\ : std_logic;
SIGNAL \divisor_50x|Add0~34_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~35\ : std_logic;
SIGNAL \divisor_50x|Add0~36_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~37\ : std_logic;
SIGNAL \divisor_50x|Add0~38_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~39\ : std_logic;
SIGNAL \divisor_50x|Add0~40_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~41\ : std_logic;
SIGNAL \divisor_50x|Add0~42_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~43\ : std_logic;
SIGNAL \divisor_50x|Add0~44_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~45\ : std_logic;
SIGNAL \divisor_50x|Add0~46_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~47\ : std_logic;
SIGNAL \divisor_50x|Add0~48_combout\ : std_logic;
SIGNAL \divisor_50x|Add0~49\ : std_logic;
SIGNAL \divisor_50x|Add0~50_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~1_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~2_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~3_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~4_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~5_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~6_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~7_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~8_combout\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp_up~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp_up~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~0_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~feeder_combout\ : std_logic;
SIGNAL \divisor_50x|reset_out_clk_tmp~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~q\ : std_logic;
SIGNAL \divisor_50x|out_clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \passagem_zero~input_o\ : std_logic;
SIGNAL \rising_passagem_zero~feeder_combout\ : std_logic;
SIGNAL \reset_passagem_zero~feeder_combout\ : std_logic;
SIGNAL \reset_passagem_zero~q\ : std_logic;
SIGNAL \rising_passagem_zero~q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \count_1s~6_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count_1s~5_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \count_1s~4_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \count_1s~3_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \count_1s~2_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \count_1s~1_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \count_1s~0_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \count_unidade~4_combout\ : std_logic;
SIGNAL \count_unidade~2_combout\ : std_logic;
SIGNAL \count_unidade~6_combout\ : std_logic;
SIGNAL \count_unidade~1_combout\ : std_logic;
SIGNAL \count_unidade~7_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count_unidade~0_combout\ : std_logic;
SIGNAL \count_unidade~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count_dezena~10_combout\ : std_logic;
SIGNAL \count_dezena~2_combout\ : std_logic;
SIGNAL \count_dezena~5_combout\ : std_logic;
SIGNAL \count_dezena~8_combout\ : std_logic;
SIGNAL \count_dezena~4_combout\ : std_logic;
SIGNAL \count_dezena~9_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count_dezena~3_combout\ : std_logic;
SIGNAL \count_dezena~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count_centena~0_combout\ : std_logic;
SIGNAL \count_centena~8_combout\ : std_logic;
SIGNAL \count_centena~5_combout\ : std_logic;
SIGNAL \count_centena~9_combout\ : std_logic;
SIGNAL \count_centena~2_combout\ : std_logic;
SIGNAL \count_centena~3_combout\ : std_logic;
SIGNAL \count_centena~7_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count_centena~6_combout\ : std_logic;
SIGNAL \count_centena~1_combout\ : std_logic;
SIGNAL \count_centena~4_combout\ : std_logic;
SIGNAL \display_centena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_centena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_centena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_centena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_centena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_centena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_centena|out_display[6]~6_combout\ : std_logic;
SIGNAL \count_dezena~6_combout\ : std_logic;
SIGNAL \display_dezena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|out_display[6]~6_combout\ : std_logic;
SIGNAL \count_unidade~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[6]~6_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \count_triac~0_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \count_triac~1_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \delay_ativacao~0_combout\ : std_logic;
SIGNAL \delay_ativacao~q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \count_ativacao~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \count_ativacao~5_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \count_ativacao~4_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \count_ativacao~3_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \count_ativacao~2_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \count_ativacao~1_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \count_ativacao~0_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \saida~reg0_q\ : std_logic;
SIGNAL count_triac : std_logic_vector(8 DOWNTO 0);
SIGNAL count_ativacao : std_logic_vector(25 DOWNTO 0);
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL count_1s : std_logic_vector(25 DOWNTO 0);
SIGNAL count_dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL count_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL count_centena : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL dezena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL centena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \ALT_INV_reset_passagem_zero~q\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_centena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_centena|ALT_INV_out_display[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_passagem_zero <= passagem_zero;
centena <= ww_centena;
dezena <= ww_dezena;
unidade <= ww_unidade;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\ALT_INV_reset_passagem_zero~q\ <= NOT \reset_passagem_zero~q\;
\display_unidade|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade|out_display[5]~5_combout\;
\display_unidade|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade|out_display[2]~2_combout\;
\display_dezena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena|out_display[5]~5_combout\;
\display_dezena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena|out_display[2]~2_combout\;
\display_centena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_centena|out_display[5]~5_combout\;
\display_centena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_centena|out_display[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y44_N9
\centena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \centena[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\centena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \centena[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\centena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \centena[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\centena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \centena[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\centena[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \centena[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\centena[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \centena[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\centena[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \centena[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \dezena[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \dezena[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \dezena[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \dezena[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\dezena[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \dezena[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\dezena[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \dezena[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\dezena[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \dezena[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \unidade[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \unidade[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \unidade[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \unidade[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\unidade[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \unidade[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\unidade[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \unidade[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\unidade[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \unidade[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\saida~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~reg0_q\,
	devoe => ww_devoe,
	o => \saida~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk_50MHZ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHZ,
	o => \clk_50MHZ~input_o\);

-- Location: CLKCTRL_G19
\clk_50MHZ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHZ~inputclkctrl_outclk\);

-- Location: FF_X39_Y9_N23
\divisor_50x|count_tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(24));

-- Location: LCCOMB_X39_Y10_N6
\divisor_50x|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~0_combout\ = \divisor_50x|count_tmp\(0) $ (VCC)
-- \divisor_50x|Add0~1\ = CARRY(\divisor_50x|count_tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(0),
	datad => VCC,
	combout => \divisor_50x|Add0~0_combout\,
	cout => \divisor_50x|Add0~1\);

-- Location: FF_X39_Y10_N7
\divisor_50x|count_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(0));

-- Location: LCCOMB_X39_Y10_N8
\divisor_50x|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~2_combout\ = (\divisor_50x|count_tmp\(1) & (!\divisor_50x|Add0~1\)) # (!\divisor_50x|count_tmp\(1) & ((\divisor_50x|Add0~1\) # (GND)))
-- \divisor_50x|Add0~3\ = CARRY((!\divisor_50x|Add0~1\) # (!\divisor_50x|count_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(1),
	datad => VCC,
	cin => \divisor_50x|Add0~1\,
	combout => \divisor_50x|Add0~2_combout\,
	cout => \divisor_50x|Add0~3\);

-- Location: LCCOMB_X40_Y10_N4
\divisor_50x|count_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~2_combout\ = (\divisor_50x|Add0~2_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~2_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~2_combout\);

-- Location: FF_X40_Y10_N5
\divisor_50x|count_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(1));

-- Location: LCCOMB_X39_Y10_N10
\divisor_50x|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~4_combout\ = (\divisor_50x|count_tmp\(2) & (\divisor_50x|Add0~3\ $ (GND))) # (!\divisor_50x|count_tmp\(2) & (!\divisor_50x|Add0~3\ & VCC))
-- \divisor_50x|Add0~5\ = CARRY((\divisor_50x|count_tmp\(2) & !\divisor_50x|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(2),
	datad => VCC,
	cin => \divisor_50x|Add0~3\,
	combout => \divisor_50x|Add0~4_combout\,
	cout => \divisor_50x|Add0~5\);

-- Location: FF_X39_Y10_N11
\divisor_50x|count_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(2));

-- Location: LCCOMB_X39_Y10_N12
\divisor_50x|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~6_combout\ = (\divisor_50x|count_tmp\(3) & (!\divisor_50x|Add0~5\)) # (!\divisor_50x|count_tmp\(3) & ((\divisor_50x|Add0~5\) # (GND)))
-- \divisor_50x|Add0~7\ = CARRY((!\divisor_50x|Add0~5\) # (!\divisor_50x|count_tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(3),
	datad => VCC,
	cin => \divisor_50x|Add0~5\,
	combout => \divisor_50x|Add0~6_combout\,
	cout => \divisor_50x|Add0~7\);

-- Location: FF_X39_Y10_N13
\divisor_50x|count_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(3));

-- Location: LCCOMB_X39_Y10_N14
\divisor_50x|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~8_combout\ = (\divisor_50x|count_tmp\(4) & (\divisor_50x|Add0~7\ $ (GND))) # (!\divisor_50x|count_tmp\(4) & (!\divisor_50x|Add0~7\ & VCC))
-- \divisor_50x|Add0~9\ = CARRY((\divisor_50x|count_tmp\(4) & !\divisor_50x|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(4),
	datad => VCC,
	cin => \divisor_50x|Add0~7\,
	combout => \divisor_50x|Add0~8_combout\,
	cout => \divisor_50x|Add0~9\);

-- Location: LCCOMB_X40_Y10_N28
\divisor_50x|count_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~1_combout\ = (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~1_combout\);

-- Location: FF_X40_Y10_N29
\divisor_50x|count_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(4));

-- Location: LCCOMB_X39_Y10_N16
\divisor_50x|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~10_combout\ = (\divisor_50x|count_tmp\(5) & (!\divisor_50x|Add0~9\)) # (!\divisor_50x|count_tmp\(5) & ((\divisor_50x|Add0~9\) # (GND)))
-- \divisor_50x|Add0~11\ = CARRY((!\divisor_50x|Add0~9\) # (!\divisor_50x|count_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(5),
	datad => VCC,
	cin => \divisor_50x|Add0~9\,
	combout => \divisor_50x|Add0~10_combout\,
	cout => \divisor_50x|Add0~11\);

-- Location: LCCOMB_X40_Y10_N24
\divisor_50x|count_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~0_combout\ = (\divisor_50x|Add0~10_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|Add0~10_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~0_combout\);

-- Location: FF_X40_Y10_N25
\divisor_50x|count_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|count_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(5));

-- Location: LCCOMB_X39_Y10_N18
\divisor_50x|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~12_combout\ = (\divisor_50x|count_tmp\(6) & (\divisor_50x|Add0~11\ $ (GND))) # (!\divisor_50x|count_tmp\(6) & (!\divisor_50x|Add0~11\ & VCC))
-- \divisor_50x|Add0~13\ = CARRY((\divisor_50x|count_tmp\(6) & !\divisor_50x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(6),
	datad => VCC,
	cin => \divisor_50x|Add0~11\,
	combout => \divisor_50x|Add0~12_combout\,
	cout => \divisor_50x|Add0~13\);

-- Location: FF_X39_Y10_N19
\divisor_50x|count_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(6));

-- Location: LCCOMB_X39_Y10_N20
\divisor_50x|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~14_combout\ = (\divisor_50x|count_tmp\(7) & (!\divisor_50x|Add0~13\)) # (!\divisor_50x|count_tmp\(7) & ((\divisor_50x|Add0~13\) # (GND)))
-- \divisor_50x|Add0~15\ = CARRY((!\divisor_50x|Add0~13\) # (!\divisor_50x|count_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(7),
	datad => VCC,
	cin => \divisor_50x|Add0~13\,
	combout => \divisor_50x|Add0~14_combout\,
	cout => \divisor_50x|Add0~15\);

-- Location: FF_X39_Y10_N21
\divisor_50x|count_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(7));

-- Location: LCCOMB_X39_Y10_N22
\divisor_50x|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~16_combout\ = (\divisor_50x|count_tmp\(8) & (\divisor_50x|Add0~15\ $ (GND))) # (!\divisor_50x|count_tmp\(8) & (!\divisor_50x|Add0~15\ & VCC))
-- \divisor_50x|Add0~17\ = CARRY((\divisor_50x|count_tmp\(8) & !\divisor_50x|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(8),
	datad => VCC,
	cin => \divisor_50x|Add0~15\,
	combout => \divisor_50x|Add0~16_combout\,
	cout => \divisor_50x|Add0~17\);

-- Location: FF_X39_Y10_N23
\divisor_50x|count_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(8));

-- Location: LCCOMB_X39_Y10_N24
\divisor_50x|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~18_combout\ = (\divisor_50x|count_tmp\(9) & (!\divisor_50x|Add0~17\)) # (!\divisor_50x|count_tmp\(9) & ((\divisor_50x|Add0~17\) # (GND)))
-- \divisor_50x|Add0~19\ = CARRY((!\divisor_50x|Add0~17\) # (!\divisor_50x|count_tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(9),
	datad => VCC,
	cin => \divisor_50x|Add0~17\,
	combout => \divisor_50x|Add0~18_combout\,
	cout => \divisor_50x|Add0~19\);

-- Location: FF_X39_Y10_N25
\divisor_50x|count_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(9));

-- Location: LCCOMB_X39_Y10_N26
\divisor_50x|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~20_combout\ = (\divisor_50x|count_tmp\(10) & (\divisor_50x|Add0~19\ $ (GND))) # (!\divisor_50x|count_tmp\(10) & (!\divisor_50x|Add0~19\ & VCC))
-- \divisor_50x|Add0~21\ = CARRY((\divisor_50x|count_tmp\(10) & !\divisor_50x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(10),
	datad => VCC,
	cin => \divisor_50x|Add0~19\,
	combout => \divisor_50x|Add0~20_combout\,
	cout => \divisor_50x|Add0~21\);

-- Location: FF_X39_Y10_N27
\divisor_50x|count_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(10));

-- Location: LCCOMB_X39_Y10_N28
\divisor_50x|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~22_combout\ = (\divisor_50x|count_tmp\(11) & (!\divisor_50x|Add0~21\)) # (!\divisor_50x|count_tmp\(11) & ((\divisor_50x|Add0~21\) # (GND)))
-- \divisor_50x|Add0~23\ = CARRY((!\divisor_50x|Add0~21\) # (!\divisor_50x|count_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(11),
	datad => VCC,
	cin => \divisor_50x|Add0~21\,
	combout => \divisor_50x|Add0~22_combout\,
	cout => \divisor_50x|Add0~23\);

-- Location: FF_X39_Y10_N29
\divisor_50x|count_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(11));

-- Location: LCCOMB_X39_Y10_N30
\divisor_50x|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~24_combout\ = (\divisor_50x|count_tmp\(12) & (\divisor_50x|Add0~23\ $ (GND))) # (!\divisor_50x|count_tmp\(12) & (!\divisor_50x|Add0~23\ & VCC))
-- \divisor_50x|Add0~25\ = CARRY((\divisor_50x|count_tmp\(12) & !\divisor_50x|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(12),
	datad => VCC,
	cin => \divisor_50x|Add0~23\,
	combout => \divisor_50x|Add0~24_combout\,
	cout => \divisor_50x|Add0~25\);

-- Location: FF_X39_Y10_N31
\divisor_50x|count_tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(12));

-- Location: LCCOMB_X39_Y9_N0
\divisor_50x|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~26_combout\ = (\divisor_50x|count_tmp\(13) & (!\divisor_50x|Add0~25\)) # (!\divisor_50x|count_tmp\(13) & ((\divisor_50x|Add0~25\) # (GND)))
-- \divisor_50x|Add0~27\ = CARRY((!\divisor_50x|Add0~25\) # (!\divisor_50x|count_tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(13),
	datad => VCC,
	cin => \divisor_50x|Add0~25\,
	combout => \divisor_50x|Add0~26_combout\,
	cout => \divisor_50x|Add0~27\);

-- Location: FF_X39_Y9_N1
\divisor_50x|count_tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(13));

-- Location: LCCOMB_X39_Y9_N2
\divisor_50x|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~28_combout\ = (\divisor_50x|count_tmp\(14) & (\divisor_50x|Add0~27\ $ (GND))) # (!\divisor_50x|count_tmp\(14) & (!\divisor_50x|Add0~27\ & VCC))
-- \divisor_50x|Add0~29\ = CARRY((\divisor_50x|count_tmp\(14) & !\divisor_50x|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(14),
	datad => VCC,
	cin => \divisor_50x|Add0~27\,
	combout => \divisor_50x|Add0~28_combout\,
	cout => \divisor_50x|Add0~29\);

-- Location: FF_X39_Y9_N3
\divisor_50x|count_tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(14));

-- Location: LCCOMB_X39_Y9_N4
\divisor_50x|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~30_combout\ = (\divisor_50x|count_tmp\(15) & (!\divisor_50x|Add0~29\)) # (!\divisor_50x|count_tmp\(15) & ((\divisor_50x|Add0~29\) # (GND)))
-- \divisor_50x|Add0~31\ = CARRY((!\divisor_50x|Add0~29\) # (!\divisor_50x|count_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(15),
	datad => VCC,
	cin => \divisor_50x|Add0~29\,
	combout => \divisor_50x|Add0~30_combout\,
	cout => \divisor_50x|Add0~31\);

-- Location: FF_X39_Y9_N5
\divisor_50x|count_tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(15));

-- Location: LCCOMB_X39_Y9_N6
\divisor_50x|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~32_combout\ = (\divisor_50x|count_tmp\(16) & (\divisor_50x|Add0~31\ $ (GND))) # (!\divisor_50x|count_tmp\(16) & (!\divisor_50x|Add0~31\ & VCC))
-- \divisor_50x|Add0~33\ = CARRY((\divisor_50x|count_tmp\(16) & !\divisor_50x|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(16),
	datad => VCC,
	cin => \divisor_50x|Add0~31\,
	combout => \divisor_50x|Add0~32_combout\,
	cout => \divisor_50x|Add0~33\);

-- Location: FF_X39_Y9_N7
\divisor_50x|count_tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(16));

-- Location: LCCOMB_X39_Y9_N8
\divisor_50x|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~34_combout\ = (\divisor_50x|count_tmp\(17) & (!\divisor_50x|Add0~33\)) # (!\divisor_50x|count_tmp\(17) & ((\divisor_50x|Add0~33\) # (GND)))
-- \divisor_50x|Add0~35\ = CARRY((!\divisor_50x|Add0~33\) # (!\divisor_50x|count_tmp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(17),
	datad => VCC,
	cin => \divisor_50x|Add0~33\,
	combout => \divisor_50x|Add0~34_combout\,
	cout => \divisor_50x|Add0~35\);

-- Location: FF_X39_Y9_N9
\divisor_50x|count_tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(17));

-- Location: LCCOMB_X39_Y9_N10
\divisor_50x|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~36_combout\ = (\divisor_50x|count_tmp\(18) & (\divisor_50x|Add0~35\ $ (GND))) # (!\divisor_50x|count_tmp\(18) & (!\divisor_50x|Add0~35\ & VCC))
-- \divisor_50x|Add0~37\ = CARRY((\divisor_50x|count_tmp\(18) & !\divisor_50x|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(18),
	datad => VCC,
	cin => \divisor_50x|Add0~35\,
	combout => \divisor_50x|Add0~36_combout\,
	cout => \divisor_50x|Add0~37\);

-- Location: FF_X39_Y9_N11
\divisor_50x|count_tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(18));

-- Location: LCCOMB_X39_Y9_N12
\divisor_50x|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~38_combout\ = (\divisor_50x|count_tmp\(19) & (!\divisor_50x|Add0~37\)) # (!\divisor_50x|count_tmp\(19) & ((\divisor_50x|Add0~37\) # (GND)))
-- \divisor_50x|Add0~39\ = CARRY((!\divisor_50x|Add0~37\) # (!\divisor_50x|count_tmp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(19),
	datad => VCC,
	cin => \divisor_50x|Add0~37\,
	combout => \divisor_50x|Add0~38_combout\,
	cout => \divisor_50x|Add0~39\);

-- Location: FF_X39_Y9_N13
\divisor_50x|count_tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(19));

-- Location: LCCOMB_X39_Y9_N14
\divisor_50x|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~40_combout\ = (\divisor_50x|count_tmp\(20) & (\divisor_50x|Add0~39\ $ (GND))) # (!\divisor_50x|count_tmp\(20) & (!\divisor_50x|Add0~39\ & VCC))
-- \divisor_50x|Add0~41\ = CARRY((\divisor_50x|count_tmp\(20) & !\divisor_50x|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(20),
	datad => VCC,
	cin => \divisor_50x|Add0~39\,
	combout => \divisor_50x|Add0~40_combout\,
	cout => \divisor_50x|Add0~41\);

-- Location: FF_X39_Y9_N15
\divisor_50x|count_tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(20));

-- Location: LCCOMB_X39_Y9_N16
\divisor_50x|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~42_combout\ = (\divisor_50x|count_tmp\(21) & (!\divisor_50x|Add0~41\)) # (!\divisor_50x|count_tmp\(21) & ((\divisor_50x|Add0~41\) # (GND)))
-- \divisor_50x|Add0~43\ = CARRY((!\divisor_50x|Add0~41\) # (!\divisor_50x|count_tmp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(21),
	datad => VCC,
	cin => \divisor_50x|Add0~41\,
	combout => \divisor_50x|Add0~42_combout\,
	cout => \divisor_50x|Add0~43\);

-- Location: FF_X39_Y9_N17
\divisor_50x|count_tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(21));

-- Location: LCCOMB_X39_Y9_N18
\divisor_50x|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~44_combout\ = (\divisor_50x|count_tmp\(22) & (\divisor_50x|Add0~43\ $ (GND))) # (!\divisor_50x|count_tmp\(22) & (!\divisor_50x|Add0~43\ & VCC))
-- \divisor_50x|Add0~45\ = CARRY((\divisor_50x|count_tmp\(22) & !\divisor_50x|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(22),
	datad => VCC,
	cin => \divisor_50x|Add0~43\,
	combout => \divisor_50x|Add0~44_combout\,
	cout => \divisor_50x|Add0~45\);

-- Location: FF_X39_Y9_N19
\divisor_50x|count_tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(22));

-- Location: LCCOMB_X39_Y9_N20
\divisor_50x|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~46_combout\ = (\divisor_50x|count_tmp\(23) & (!\divisor_50x|Add0~45\)) # (!\divisor_50x|count_tmp\(23) & ((\divisor_50x|Add0~45\) # (GND)))
-- \divisor_50x|Add0~47\ = CARRY((!\divisor_50x|Add0~45\) # (!\divisor_50x|count_tmp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(23),
	datad => VCC,
	cin => \divisor_50x|Add0~45\,
	combout => \divisor_50x|Add0~46_combout\,
	cout => \divisor_50x|Add0~47\);

-- Location: FF_X39_Y9_N21
\divisor_50x|count_tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(23));

-- Location: LCCOMB_X39_Y9_N22
\divisor_50x|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~48_combout\ = (\divisor_50x|count_tmp\(24) & (\divisor_50x|Add0~47\ $ (GND))) # (!\divisor_50x|count_tmp\(24) & (!\divisor_50x|Add0~47\ & VCC))
-- \divisor_50x|Add0~49\ = CARRY((\divisor_50x|count_tmp\(24) & !\divisor_50x|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(24),
	datad => VCC,
	cin => \divisor_50x|Add0~47\,
	combout => \divisor_50x|Add0~48_combout\,
	cout => \divisor_50x|Add0~49\);

-- Location: FF_X39_Y9_N25
\divisor_50x|count_tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|count_tmp\(25));

-- Location: LCCOMB_X39_Y9_N24
\divisor_50x|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~50_combout\ = \divisor_50x|Add0~49\ $ (\divisor_50x|count_tmp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor_50x|count_tmp\(25),
	cin => \divisor_50x|Add0~49\,
	combout => \divisor_50x|Add0~50_combout\);

-- Location: LCCOMB_X39_Y10_N2
\divisor_50x|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~1_combout\ = (!\divisor_50x|Add0~12_combout\ & (\divisor_50x|Add0~8_combout\ & (!\divisor_50x|Add0~14_combout\ & \divisor_50x|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~12_combout\,
	datab => \divisor_50x|Add0~8_combout\,
	datac => \divisor_50x|Add0~14_combout\,
	datad => \divisor_50x|Add0~10_combout\,
	combout => \divisor_50x|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y10_N4
\divisor_50x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~0_combout\ = (!\divisor_50x|Add0~0_combout\ & (!\divisor_50x|Add0~6_combout\ & (!\divisor_50x|Add0~4_combout\ & \divisor_50x|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~0_combout\,
	datab => \divisor_50x|Add0~6_combout\,
	datac => \divisor_50x|Add0~4_combout\,
	datad => \divisor_50x|Add0~2_combout\,
	combout => \divisor_50x|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y10_N0
\divisor_50x|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~2_combout\ = (!\divisor_50x|Add0~16_combout\ & (!\divisor_50x|Add0~18_combout\ & (!\divisor_50x|Add0~20_combout\ & !\divisor_50x|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~16_combout\,
	datab => \divisor_50x|Add0~18_combout\,
	datac => \divisor_50x|Add0~20_combout\,
	datad => \divisor_50x|Add0~22_combout\,
	combout => \divisor_50x|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y10_N18
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~26_combout\ & (!\divisor_50x|Add0~24_combout\ & (!\divisor_50x|Add0~28_combout\ & !\divisor_50x|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~26_combout\,
	datab => \divisor_50x|Add0~24_combout\,
	datac => \divisor_50x|Add0~28_combout\,
	datad => \divisor_50x|Add0~30_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y10_N2
\divisor_50x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~4_combout\ = (\divisor_50x|Equal0~1_combout\ & (\divisor_50x|Equal0~0_combout\ & (\divisor_50x|Equal0~2_combout\ & \divisor_50x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Equal0~1_combout\,
	datab => \divisor_50x|Equal0~0_combout\,
	datac => \divisor_50x|Equal0~2_combout\,
	datad => \divisor_50x|Equal0~3_combout\,
	combout => \divisor_50x|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y10_N6
\divisor_50x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~5_combout\ = (!\divisor_50x|Add0~34_combout\ & (!\divisor_50x|Add0~36_combout\ & (!\divisor_50x|Add0~32_combout\ & \divisor_50x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~34_combout\,
	datab => \divisor_50x|Add0~36_combout\,
	datac => \divisor_50x|Add0~32_combout\,
	datad => \divisor_50x|Equal0~4_combout\,
	combout => \divisor_50x|Equal0~5_combout\);

-- Location: LCCOMB_X40_Y10_N10
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~38_combout\ & (!\divisor_50x|Add0~40_combout\ & (!\divisor_50x|Add0~42_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~38_combout\,
	datab => \divisor_50x|Add0~40_combout\,
	datac => \divisor_50x|Add0~42_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y10_N12
\divisor_50x|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~7_combout\ = (!\divisor_50x|Add0~44_combout\ & \divisor_50x|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|Add0~44_combout\,
	datad => \divisor_50x|Equal0~6_combout\,
	combout => \divisor_50x|Equal0~7_combout\);

-- Location: LCCOMB_X40_Y10_N20
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~48_combout\ & (!\divisor_50x|Add0~46_combout\ & (!\divisor_50x|Add0~50_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~48_combout\,
	datab => \divisor_50x|Add0~46_combout\,
	datac => \divisor_50x|Add0~50_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y10_N26
\divisor_50x|out_clk_tmp_up~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|out_clk_tmp_up~feeder_combout\ = \divisor_50x|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|out_clk_tmp_up~feeder_combout\);

-- Location: FF_X40_Y10_N27
\divisor_50x|out_clk_tmp_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|out_clk_tmp_up~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|out_clk_tmp_up~q\);

-- Location: LCCOMB_X41_Y10_N0
\divisor_50x|out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|out_clk_tmp~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \divisor_50x|out_clk_tmp~feeder_combout\);

-- Location: LCCOMB_X41_Y10_N4
\divisor_50x|reset_out_clk_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|reset_out_clk_tmp~0_combout\ = (\divisor_50x|out_clk_tmp_up~q\ & !\divisor_50x|reset_out_clk_tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|out_clk_tmp_up~q\,
	datad => \divisor_50x|reset_out_clk_tmp~q\,
	combout => \divisor_50x|reset_out_clk_tmp~0_combout\);

-- Location: LCCOMB_X41_Y10_N20
\divisor_50x|reset_out_clk_tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|reset_out_clk_tmp~feeder_combout\ = \divisor_50x|reset_out_clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|reset_out_clk_tmp~0_combout\,
	combout => \divisor_50x|reset_out_clk_tmp~feeder_combout\);

-- Location: FF_X41_Y10_N21
\divisor_50x|reset_out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_50MHZ~inputclkctrl_outclk\,
	d => \divisor_50x|reset_out_clk_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|reset_out_clk_tmp~q\);

-- Location: FF_X41_Y10_N1
\divisor_50x|out_clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp_up~q\,
	d => \divisor_50x|out_clk_tmp~feeder_combout\,
	clrn => \divisor_50x|ALT_INV_reset_out_clk_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor_50x|out_clk_tmp~q\);

-- Location: CLKCTRL_G16
\divisor_50x|out_clk_tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor_50x|out_clk_tmp~clkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N15
\passagem_zero~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_passagem_zero,
	o => \passagem_zero~input_o\);

-- Location: LCCOMB_X59_Y32_N16
\rising_passagem_zero~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_passagem_zero~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rising_passagem_zero~feeder_combout\);

-- Location: LCCOMB_X59_Y32_N0
\reset_passagem_zero~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_passagem_zero~feeder_combout\ = \rising_passagem_zero~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rising_passagem_zero~q\,
	combout => \reset_passagem_zero~feeder_combout\);

-- Location: FF_X59_Y32_N1
reset_passagem_zero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \reset_passagem_zero~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_passagem_zero~q\);

-- Location: FF_X59_Y32_N17
rising_passagem_zero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \passagem_zero~input_o\,
	d => \rising_passagem_zero~feeder_combout\,
	clrn => \ALT_INV_reset_passagem_zero~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_passagem_zero~q\);

-- Location: FF_X61_Y35_N23
\count_1s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(24));

-- Location: LCCOMB_X61_Y36_N6
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = count_1s(0) $ (VCC)
-- \Add5~1\ = CARRY(count_1s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: FF_X61_Y36_N7
\count_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(0));

-- Location: LCCOMB_X61_Y36_N8
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count_1s(1) & (!\Add5~1\)) # (!count_1s(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!count_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: FF_X61_Y36_N9
\count_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(1));

-- Location: LCCOMB_X61_Y36_N10
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count_1s(2) & (\Add5~3\ $ (GND))) # (!count_1s(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count_1s(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X61_Y36_N11
\count_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(2));

-- Location: LCCOMB_X61_Y36_N12
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count_1s(3) & (!\Add5~5\)) # (!count_1s(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count_1s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X61_Y36_N13
\count_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(3));

-- Location: LCCOMB_X61_Y36_N14
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count_1s(4) & (\Add5~7\ $ (GND))) # (!count_1s(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count_1s(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X61_Y36_N15
\count_1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(4));

-- Location: LCCOMB_X61_Y36_N16
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (count_1s(5) & (!\Add5~9\)) # (!count_1s(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!count_1s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X61_Y36_N17
\count_1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(5));

-- Location: LCCOMB_X61_Y36_N18
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (count_1s(6) & (\Add5~11\ $ (GND))) # (!count_1s(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((count_1s(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X62_Y36_N4
\count_1s~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~6_combout\ = (\Add5~12_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~12_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_1s~6_combout\);

-- Location: FF_X62_Y36_N5
\count_1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(6));

-- Location: LCCOMB_X61_Y36_N20
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (count_1s(7) & (!\Add5~13\)) # (!count_1s(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!count_1s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X61_Y36_N21
\count_1s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(7));

-- Location: LCCOMB_X61_Y36_N22
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (count_1s(8) & (\Add5~15\ $ (GND))) # (!count_1s(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((count_1s(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X61_Y36_N23
\count_1s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(8));

-- Location: LCCOMB_X61_Y36_N24
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (count_1s(9) & (!\Add5~17\)) # (!count_1s(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!count_1s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X60_Y36_N8
\count_1s~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~5_combout\ = (\Add5~18_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~18_combout\,
	datac => \Equal4~8_combout\,
	combout => \count_1s~5_combout\);

-- Location: FF_X60_Y36_N9
\count_1s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(9));

-- Location: LCCOMB_X61_Y36_N26
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (count_1s(10) & (\Add5~19\ $ (GND))) # (!count_1s(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((count_1s(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X61_Y36_N27
\count_1s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(10));

-- Location: LCCOMB_X61_Y36_N28
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (count_1s(11) & (!\Add5~21\)) # (!count_1s(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!count_1s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: FF_X61_Y36_N29
\count_1s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(11));

-- Location: LCCOMB_X61_Y36_N30
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (count_1s(12) & (\Add5~23\ $ (GND))) # (!count_1s(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((count_1s(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X61_Y36_N31
\count_1s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(12));

-- Location: LCCOMB_X61_Y35_N0
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (count_1s(13) & (!\Add5~25\)) # (!count_1s(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!count_1s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: FF_X61_Y35_N1
\count_1s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(13));

-- Location: LCCOMB_X61_Y35_N2
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (count_1s(14) & (\Add5~27\ $ (GND))) # (!count_1s(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((count_1s(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X61_Y35_N26
\count_1s~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~4_combout\ = (\Add5~28_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~28_combout\,
	datac => \Equal4~8_combout\,
	combout => \count_1s~4_combout\);

-- Location: FF_X61_Y35_N27
\count_1s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(14));

-- Location: LCCOMB_X61_Y35_N4
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (count_1s(15) & (!\Add5~29\)) # (!count_1s(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!count_1s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: FF_X61_Y35_N5
\count_1s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(15));

-- Location: LCCOMB_X61_Y35_N6
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (count_1s(16) & (\Add5~31\ $ (GND))) # (!count_1s(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((count_1s(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X61_Y35_N28
\count_1s~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~3_combout\ = (\Add5~32_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~32_combout\,
	datac => \Equal4~8_combout\,
	combout => \count_1s~3_combout\);

-- Location: FF_X61_Y35_N29
\count_1s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(16));

-- Location: LCCOMB_X61_Y35_N8
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (count_1s(17) & (!\Add5~33\)) # (!count_1s(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!count_1s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X61_Y35_N30
\count_1s~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~2_combout\ = (!\Equal4~8_combout\ & \Add5~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~8_combout\,
	datad => \Add5~34_combout\,
	combout => \count_1s~2_combout\);

-- Location: FF_X61_Y35_N31
\count_1s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(17));

-- Location: LCCOMB_X61_Y35_N10
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (count_1s(18) & (\Add5~35\ $ (GND))) # (!count_1s(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((count_1s(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X60_Y36_N14
\count_1s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~1_combout\ = (\Add5~36_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~36_combout\,
	datac => \Equal4~8_combout\,
	combout => \count_1s~1_combout\);

-- Location: FF_X60_Y36_N15
\count_1s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(18));

-- Location: LCCOMB_X61_Y35_N12
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (count_1s(19) & (!\Add5~37\)) # (!count_1s(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!count_1s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X60_Y36_N16
\count_1s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_1s~0_combout\ = (\Add5~38_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~38_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_1s~0_combout\);

-- Location: FF_X60_Y36_N17
\count_1s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_1s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(19));

-- Location: LCCOMB_X61_Y35_N14
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (count_1s(20) & (\Add5~39\ $ (GND))) # (!count_1s(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((count_1s(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X61_Y35_N15
\count_1s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(20));

-- Location: LCCOMB_X61_Y35_N16
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (count_1s(21) & (!\Add5~41\)) # (!count_1s(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!count_1s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X61_Y35_N17
\count_1s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(21));

-- Location: LCCOMB_X61_Y35_N18
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (count_1s(22) & (\Add5~43\ $ (GND))) # (!count_1s(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((count_1s(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: FF_X61_Y35_N19
\count_1s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(22));

-- Location: LCCOMB_X61_Y35_N20
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (count_1s(23) & (!\Add5~45\)) # (!count_1s(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!count_1s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_1s(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X61_Y35_N21
\count_1s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(23));

-- Location: LCCOMB_X61_Y35_N22
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (count_1s(24) & (\Add5~47\ $ (GND))) # (!count_1s(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((count_1s(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_1s(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X61_Y35_N25
\count_1s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_1s(25));

-- Location: LCCOMB_X61_Y35_N24
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = \Add5~49\ $ (count_1s(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_1s(25),
	cin => \Add5~49\,
	combout => \Add5~50_combout\);

-- Location: LCCOMB_X62_Y36_N6
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\Add5~6_combout\ & (!\Add5~0_combout\ & (!\Add5~2_combout\ & !\Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add5~0_combout\,
	datac => \Add5~2_combout\,
	datad => \Add5~4_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X61_Y36_N0
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!\Add5~16_combout\ & (\Add5~18_combout\ & (!\Add5~20_combout\ & !\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Add5~18_combout\,
	datac => \Add5~20_combout\,
	datad => \Add5~22_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X62_Y36_N0
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\Add5~8_combout\ & (!\Add5~14_combout\ & (!\Add5~10_combout\ & \Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add5~14_combout\,
	datac => \Add5~10_combout\,
	datad => \Add5~12_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X61_Y36_N2
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!\Add5~24_combout\ & (!\Add5~26_combout\ & (\Add5~28_combout\ & !\Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \Add5~26_combout\,
	datac => \Add5~28_combout\,
	datad => \Add5~30_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X61_Y36_N4
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~0_combout\ & (\Equal4~2_combout\ & (\Equal4~1_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X60_Y36_N2
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (\Add5~34_combout\ & (\Add5~36_combout\ & (\Add5~38_combout\ & \Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datab => \Add5~36_combout\,
	datac => \Add5~38_combout\,
	datad => \Equal4~4_combout\,
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X60_Y36_N0
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!\Add5~40_combout\ & (\Add5~32_combout\ & (!\Add5~42_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add5~32_combout\,
	datac => \Add5~42_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X60_Y36_N12
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!\Add5~44_combout\ & \Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~44_combout\,
	datad => \Equal4~6_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X60_Y36_N22
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!\Add5~48_combout\ & (!\Add5~46_combout\ & (!\Add5~50_combout\ & \Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~48_combout\,
	datab => \Add5~46_combout\,
	datac => \Add5~50_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X59_Y36_N18
\count_unidade~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~4_combout\ = (!\Equal4~8_combout\ & (\rising_passagem_zero~q\ $ (count_unidade(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rising_passagem_zero~q\,
	datac => count_unidade(0),
	datad => \Equal4~8_combout\,
	combout => \count_unidade~4_combout\);

-- Location: FF_X59_Y36_N19
\count_unidade[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_unidade~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unidade(0));

-- Location: LCCOMB_X59_Y36_N6
\count_unidade~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~2_combout\ = (\rising_passagem_zero~q\ & (!\Equal0~0_combout\ & (count_unidade(0) $ (count_unidade(1))))) # (!\rising_passagem_zero~q\ & (((count_unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count_unidade(0),
	datac => count_unidade(1),
	datad => \rising_passagem_zero~q\,
	combout => \count_unidade~2_combout\);

-- Location: LCCOMB_X60_Y36_N10
\count_unidade~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~6_combout\ = (\count_unidade~2_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_unidade~2_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_unidade~6_combout\);

-- Location: FF_X60_Y36_N11
\count_unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_unidade~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unidade(1));

-- Location: LCCOMB_X59_Y36_N4
\count_unidade~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~1_combout\ = count_unidade(2) $ (((count_unidade(0) & (count_unidade(1) & \rising_passagem_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unidade(0),
	datab => count_unidade(2),
	datac => count_unidade(1),
	datad => \rising_passagem_zero~q\,
	combout => \count_unidade~1_combout\);

-- Location: LCCOMB_X60_Y36_N28
\count_unidade~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~7_combout\ = (\count_unidade~1_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_unidade~1_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_unidade~7_combout\);

-- Location: FF_X60_Y36_N29
\count_unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_unidade~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unidade(2));

-- Location: LCCOMB_X59_Y32_N4
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count_unidade(3) $ (((count_unidade(0) & (count_unidade(2) & count_unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unidade(0),
	datab => count_unidade(2),
	datac => count_unidade(1),
	datad => count_unidade(3),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X59_Y32_N22
\count_unidade~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~0_combout\ = (\rising_passagem_zero~q\ & (!\Equal0~0_combout\ & ((\Add2~0_combout\)))) # (!\rising_passagem_zero~q\ & (((count_unidade(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count_unidade(3),
	datac => \Add2~0_combout\,
	datad => \rising_passagem_zero~q\,
	combout => \count_unidade~0_combout\);

-- Location: LCCOMB_X60_Y36_N20
\count_unidade~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~5_combout\ = (\count_unidade~0_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_unidade~0_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_unidade~5_combout\);

-- Location: FF_X60_Y36_N21
\count_unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_unidade~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unidade(3));

-- Location: LCCOMB_X59_Y32_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count_unidade(0) & (!count_unidade(2) & (!count_unidade(1) & count_unidade(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unidade(0),
	datab => count_unidade(2),
	datac => count_unidade(1),
	datad => count_unidade(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X60_Y36_N18
\count_dezena~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~10_combout\ = (!\Equal4~8_combout\ & (count_dezena(0) $ (((\Equal0~0_combout\ & \rising_passagem_zero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \rising_passagem_zero~q\,
	datac => count_dezena(0),
	datad => \Equal4~8_combout\,
	combout => \count_dezena~10_combout\);

-- Location: FF_X60_Y36_N19
\count_dezena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_dezena~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_dezena(0));

-- Location: LCCOMB_X58_Y36_N20
\count_dezena~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~2_combout\ = (\Equal0~0_combout\ & \rising_passagem_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \rising_passagem_zero~q\,
	combout => \count_dezena~2_combout\);

-- Location: LCCOMB_X58_Y36_N26
\count_dezena~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~5_combout\ = (\count_dezena~2_combout\ & (!\Equal1~0_combout\ & (count_dezena(1) $ (count_dezena(0))))) # (!\count_dezena~2_combout\ & (((count_dezena(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => count_dezena(1),
	datac => count_dezena(0),
	datad => \count_dezena~2_combout\,
	combout => \count_dezena~5_combout\);

-- Location: LCCOMB_X58_Y36_N14
\count_dezena~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~8_combout\ = (\count_dezena~5_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_dezena~5_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_dezena~8_combout\);

-- Location: FF_X58_Y36_N15
\count_dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_dezena~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_dezena(1));

-- Location: LCCOMB_X58_Y36_N4
\count_dezena~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~4_combout\ = count_dezena(2) $ (((count_dezena(0) & (count_dezena(1) & \count_dezena~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_dezena(0),
	datab => count_dezena(1),
	datac => count_dezena(2),
	datad => \count_dezena~2_combout\,
	combout => \count_dezena~4_combout\);

-- Location: LCCOMB_X58_Y36_N8
\count_dezena~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~9_combout\ = (\count_dezena~4_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_dezena~4_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_dezena~9_combout\);

-- Location: FF_X58_Y36_N9
\count_dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_dezena~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_dezena(2));

-- Location: LCCOMB_X58_Y36_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count_dezena(3) $ (((count_dezena(0) & (count_dezena(1) & count_dezena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_dezena(0),
	datab => count_dezena(1),
	datac => count_dezena(2),
	datad => count_dezena(3),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X58_Y36_N30
\count_dezena~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~3_combout\ = (\count_dezena~2_combout\ & (\Add1~0_combout\ & ((!\Equal1~0_combout\)))) # (!\count_dezena~2_combout\ & (((count_dezena(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => count_dezena(3),
	datac => \Equal1~0_combout\,
	datad => \count_dezena~2_combout\,
	combout => \count_dezena~3_combout\);

-- Location: LCCOMB_X58_Y36_N28
\count_dezena~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~7_combout\ = (\count_dezena~3_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_dezena~3_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_dezena~7_combout\);

-- Location: FF_X58_Y36_N29
\count_dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_dezena~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_dezena(3));

-- Location: LCCOMB_X58_Y36_N2
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (count_dezena(0) & (!count_dezena(1) & (!count_dezena(2) & count_dezena(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_dezena(0),
	datab => count_dezena(1),
	datac => count_dezena(2),
	datad => count_dezena(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X59_Y36_N12
\count_centena~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~0_combout\ = (\Equal1~0_combout\ & (\Equal0~0_combout\ & \rising_passagem_zero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \rising_passagem_zero~q\,
	combout => \count_centena~0_combout\);

-- Location: LCCOMB_X59_Y36_N20
\count_centena~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~8_combout\ = (!\Equal4~8_combout\ & (\count_centena~0_combout\ $ (count_centena(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_centena~0_combout\,
	datac => count_centena(0),
	datad => \Equal4~8_combout\,
	combout => \count_centena~8_combout\);

-- Location: FF_X59_Y36_N21
\count_centena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_centena(0));

-- Location: LCCOMB_X59_Y36_N10
\count_centena~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~5_combout\ = count_centena(0) $ (((\Equal0~0_combout\ & (\Equal1~0_combout\ & \rising_passagem_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count_centena(0),
	datac => \Equal1~0_combout\,
	datad => \rising_passagem_zero~q\,
	combout => \count_centena~5_combout\);

-- Location: FF_X59_Y36_N11
\centena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~5_combout\,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(0));

-- Location: LCCOMB_X59_Y36_N14
\count_centena~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~9_combout\ = (!\Equal4~8_combout\ & (count_centena(1) $ (((\count_centena~0_combout\ & count_centena(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_centena~0_combout\,
	datab => count_centena(0),
	datac => count_centena(1),
	datad => \Equal4~8_combout\,
	combout => \count_centena~9_combout\);

-- Location: FF_X59_Y36_N15
\count_centena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_centena(1));

-- Location: LCCOMB_X59_Y36_N30
\count_centena~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~2_combout\ = ((!\Equal1~0_combout\) # (!count_centena(1))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count_centena(1),
	datad => \Equal1~0_combout\,
	combout => \count_centena~2_combout\);

-- Location: LCCOMB_X59_Y36_N22
\count_centena~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~3_combout\ = count_centena(2) $ (((!\count_centena~2_combout\ & (count_centena(0) & \rising_passagem_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_centena~2_combout\,
	datab => count_centena(0),
	datac => count_centena(2),
	datad => \rising_passagem_zero~q\,
	combout => \count_centena~3_combout\);

-- Location: LCCOMB_X59_Y36_N26
\count_centena~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~7_combout\ = (\count_centena~3_combout\ & !\Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_centena~3_combout\,
	datad => \Equal4~8_combout\,
	combout => \count_centena~7_combout\);

-- Location: FF_X59_Y36_N27
\count_centena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_centena(2));

-- Location: LCCOMB_X59_Y36_N8
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count_centena(3) $ (((count_centena(2) & (count_centena(0) & count_centena(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_centena(2),
	datab => count_centena(0),
	datac => count_centena(1),
	datad => count_centena(3),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X59_Y36_N16
\count_centena~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~6_combout\ = (!\Equal4~8_combout\ & ((\count_centena~0_combout\ & (\Add0~0_combout\)) # (!\count_centena~0_combout\ & ((count_centena(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_centena~0_combout\,
	datab => \Add0~0_combout\,
	datac => count_centena(3),
	datad => \Equal4~8_combout\,
	combout => \count_centena~6_combout\);

-- Location: FF_X59_Y36_N17
\count_centena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_centena(3));

-- Location: LCCOMB_X59_Y36_N28
\count_centena~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~1_combout\ = (\count_centena~0_combout\ & ((\Add0~0_combout\))) # (!\count_centena~0_combout\ & (count_centena(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_centena(3),
	datac => \Add0~0_combout\,
	datad => \count_centena~0_combout\,
	combout => \count_centena~1_combout\);

-- Location: FF_X59_Y36_N29
\centena_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~1_combout\,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(3));

-- Location: LCCOMB_X59_Y36_N24
\count_centena~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_centena~4_combout\ = count_centena(1) $ (((count_centena(0) & \count_centena~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_centena(0),
	datac => count_centena(1),
	datad => \count_centena~0_combout\,
	combout => \count_centena~4_combout\);

-- Location: FF_X59_Y36_N25
\centena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_centena~4_combout\,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(1));

-- Location: FF_X59_Y36_N31
\centena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_centena~3_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(2));

-- Location: LCCOMB_X66_Y35_N8
\display_centena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[0]~0_combout\ = (centena_tmp(1) & (((centena_tmp(3))))) # (!centena_tmp(1) & (centena_tmp(2) $ (((centena_tmp(0) & !centena_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[0]~0_combout\);

-- Location: LCCOMB_X66_Y35_N2
\display_centena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[1]~1_combout\ = (centena_tmp(3) & (((centena_tmp(1)) # (centena_tmp(2))))) # (!centena_tmp(3) & (centena_tmp(2) & (centena_tmp(0) $ (centena_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[1]~1_combout\);

-- Location: LCCOMB_X66_Y35_N12
\display_centena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[2]~2_combout\ = (centena_tmp(2) & (((!centena_tmp(3))))) # (!centena_tmp(2) & (((centena_tmp(0) & !centena_tmp(3))) # (!centena_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[2]~2_combout\);

-- Location: LCCOMB_X66_Y35_N26
\display_centena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[3]~3_combout\ = (centena_tmp(1) & ((centena_tmp(3)) # ((centena_tmp(0) & centena_tmp(2))))) # (!centena_tmp(1) & (centena_tmp(2) $ (((centena_tmp(0) & !centena_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[3]~3_combout\);

-- Location: LCCOMB_X66_Y35_N4
\display_centena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[4]~4_combout\ = (centena_tmp(0)) # ((centena_tmp(1) & (centena_tmp(3))) # (!centena_tmp(1) & ((centena_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[4]~4_combout\);

-- Location: LCCOMB_X66_Y35_N22
\display_centena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[5]~5_combout\ = (centena_tmp(0) & (!centena_tmp(1) & (centena_tmp(3) $ (centena_tmp(2))))) # (!centena_tmp(0) & ((centena_tmp(2) & (!centena_tmp(3))) # (!centena_tmp(2) & ((!centena_tmp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[5]~5_combout\);

-- Location: LCCOMB_X66_Y35_N24
\display_centena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[6]~6_combout\ = (centena_tmp(1) & ((centena_tmp(3)) # ((centena_tmp(0) & centena_tmp(2))))) # (!centena_tmp(1) & ((centena_tmp(3) $ (!centena_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(0),
	datab => centena_tmp(3),
	datac => centena_tmp(1),
	datad => centena_tmp(2),
	combout => \display_centena|out_display[6]~6_combout\);

-- Location: FF_X60_Y36_N13
\dezena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_dezena~4_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(2));

-- Location: FF_X58_Y36_N21
\dezena_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_dezena~3_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(3));

-- Location: FF_X58_Y36_N23
\dezena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_dezena~5_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(1));

-- Location: LCCOMB_X60_Y36_N30
\count_dezena~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_dezena~6_combout\ = count_dezena(0) $ (((\Equal0~0_combout\ & \rising_passagem_zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_dezena(0),
	datac => \Equal0~0_combout\,
	datad => \rising_passagem_zero~q\,
	combout => \count_dezena~6_combout\);

-- Location: FF_X60_Y36_N31
\dezena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_dezena~6_combout\,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(0));

-- Location: LCCOMB_X58_Y36_N16
\display_dezena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[0]~0_combout\ = (dezena_tmp(1) & (((dezena_tmp(3))))) # (!dezena_tmp(1) & (dezena_tmp(2) $ (((!dezena_tmp(3) & dezena_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[0]~0_combout\);

-- Location: LCCOMB_X58_Y36_N18
\display_dezena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[1]~1_combout\ = (dezena_tmp(2) & ((dezena_tmp(3)) # (dezena_tmp(1) $ (dezena_tmp(0))))) # (!dezena_tmp(2) & (dezena_tmp(3) & (dezena_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[1]~1_combout\);

-- Location: LCCOMB_X58_Y36_N0
\display_dezena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[2]~2_combout\ = (dezena_tmp(2) & (!dezena_tmp(3))) # (!dezena_tmp(2) & (((!dezena_tmp(3) & dezena_tmp(0))) # (!dezena_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[2]~2_combout\);

-- Location: LCCOMB_X58_Y36_N22
\display_dezena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[3]~3_combout\ = (dezena_tmp(1) & ((dezena_tmp(3)) # ((dezena_tmp(2) & dezena_tmp(0))))) # (!dezena_tmp(1) & (dezena_tmp(2) $ (((!dezena_tmp(3) & dezena_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[3]~3_combout\);

-- Location: LCCOMB_X58_Y36_N10
\display_dezena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[4]~4_combout\ = (dezena_tmp(0)) # ((dezena_tmp(1) & ((dezena_tmp(3)))) # (!dezena_tmp(1) & (dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[4]~4_combout\);

-- Location: LCCOMB_X58_Y36_N24
\display_dezena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[5]~5_combout\ = (dezena_tmp(2) & (!dezena_tmp(3) & ((!dezena_tmp(0)) # (!dezena_tmp(1))))) # (!dezena_tmp(2) & (!dezena_tmp(1) & ((dezena_tmp(3)) # (!dezena_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[5]~5_combout\);

-- Location: LCCOMB_X58_Y36_N6
\display_dezena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[6]~6_combout\ = (dezena_tmp(2) & ((dezena_tmp(3)) # ((dezena_tmp(1) & dezena_tmp(0))))) # (!dezena_tmp(2) & (dezena_tmp(3) $ ((!dezena_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(3),
	datac => dezena_tmp(1),
	datad => dezena_tmp(0),
	combout => \display_dezena|out_display[6]~6_combout\);

-- Location: FF_X60_Y36_N7
\unidade_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_unidade~1_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(2));

-- Location: FF_X60_Y36_N5
\unidade_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_unidade~0_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(3));

-- Location: FF_X60_Y36_N25
\unidade_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \count_unidade~2_combout\,
	sload => VCC,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(1));

-- Location: LCCOMB_X60_Y36_N26
\count_unidade~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_unidade~3_combout\ = count_unidade(0) $ (\rising_passagem_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unidade(0),
	datad => \rising_passagem_zero~q\,
	combout => \count_unidade~3_combout\);

-- Location: FF_X60_Y36_N27
\unidade_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_unidade~3_combout\,
	ena => \Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(0));

-- Location: LCCOMB_X57_Y36_N0
\display_unidade|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[0]~0_combout\ = (unidade_tmp(1) & (((unidade_tmp(3))))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(3),
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[0]~0_combout\);

-- Location: LCCOMB_X60_Y36_N4
\display_unidade|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[1]~1_combout\ = (unidade_tmp(3) & ((unidade_tmp(1)) # ((unidade_tmp(2))))) # (!unidade_tmp(3) & (unidade_tmp(2) & (unidade_tmp(1) $ (unidade_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(1),
	datab => unidade_tmp(0),
	datac => unidade_tmp(3),
	datad => unidade_tmp(2),
	combout => \display_unidade|out_display[1]~1_combout\);

-- Location: LCCOMB_X57_Y36_N6
\display_unidade|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[2]~2_combout\ = (unidade_tmp(2) & (!unidade_tmp(3))) # (!unidade_tmp(2) & (((!unidade_tmp(3) & unidade_tmp(0))) # (!unidade_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(3),
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[2]~2_combout\);

-- Location: LCCOMB_X57_Y36_N12
\display_unidade|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[3]~3_combout\ = (unidade_tmp(1) & ((unidade_tmp(3)) # ((unidade_tmp(2) & unidade_tmp(0))))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(3),
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[3]~3_combout\);

-- Location: LCCOMB_X60_Y36_N24
\display_unidade|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[4]~4_combout\ = (unidade_tmp(0)) # ((unidade_tmp(1) & ((unidade_tmp(3)))) # (!unidade_tmp(1) & (unidade_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(3),
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[4]~4_combout\);

-- Location: LCCOMB_X60_Y36_N6
\display_unidade|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[5]~5_combout\ = (unidade_tmp(2) & (!unidade_tmp(3) & ((!unidade_tmp(0)) # (!unidade_tmp(1))))) # (!unidade_tmp(2) & (!unidade_tmp(1) & ((unidade_tmp(3)) # (!unidade_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(1),
	datab => unidade_tmp(3),
	datac => unidade_tmp(2),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[5]~5_combout\);

-- Location: LCCOMB_X57_Y36_N30
\display_unidade|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[6]~6_combout\ = (unidade_tmp(2) & ((unidade_tmp(3)) # ((unidade_tmp(1) & unidade_tmp(0))))) # (!unidade_tmp(2) & (unidade_tmp(3) $ ((!unidade_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(3),
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[6]~6_combout\);

-- Location: FF_X56_Y32_N29
\count_triac[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(8));

-- Location: LCCOMB_X56_Y32_N6
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\Add4~14_combout\ & (!\Add4~8_combout\ & (!\Add4~10_combout\ & !\Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add4~8_combout\,
	datac => \Add4~10_combout\,
	datad => \Add4~12_combout\,
	combout => \Equal3~1_combout\);

-- Location: FF_X56_Y32_N13
\count_triac[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(0));

-- Location: LCCOMB_X56_Y32_N12
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\saida~reg0_q\ & (count_triac(0) $ (VCC))) # (!\saida~reg0_q\ & (count_triac(0) & VCC))
-- \Add4~1\ = CARRY((\saida~reg0_q\ & count_triac(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~reg0_q\,
	datab => count_triac(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X56_Y32_N14
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (count_triac(1) & (!\Add4~1\)) # (!count_triac(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!count_triac(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_triac(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X56_Y32_N4
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\Add4~0_combout\ & (\Add4~6_combout\ & (\Add4~2_combout\ & !\Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add4~6_combout\,
	datac => \Add4~2_combout\,
	datad => \Add4~4_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X56_Y32_N8
\count_triac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_triac~0_combout\ = (\Add4~2_combout\ & (((\Add4~16_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \Add4~2_combout\,
	datad => \Add4~16_combout\,
	combout => \count_triac~0_combout\);

-- Location: FF_X56_Y32_N9
\count_triac[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_triac~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(1));

-- Location: LCCOMB_X56_Y32_N16
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (count_triac(2) & (\Add4~3\ $ (GND))) # (!count_triac(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((count_triac(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_triac(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X56_Y32_N17
\count_triac[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(2));

-- Location: LCCOMB_X56_Y32_N18
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (count_triac(3) & (!\Add4~5\)) # (!count_triac(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!count_triac(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_triac(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X56_Y32_N10
\count_triac~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_triac~1_combout\ = (\Add4~6_combout\ & (((\Add4~16_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add4~6_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add4~16_combout\,
	combout => \count_triac~1_combout\);

-- Location: FF_X56_Y32_N11
\count_triac[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_triac~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(3));

-- Location: LCCOMB_X56_Y32_N20
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (count_triac(4) & (\Add4~7\ $ (GND))) # (!count_triac(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((count_triac(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_triac(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X56_Y32_N21
\count_triac[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(4));

-- Location: LCCOMB_X56_Y32_N22
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (count_triac(5) & (!\Add4~9\)) # (!count_triac(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!count_triac(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_triac(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X56_Y32_N23
\count_triac[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(5));

-- Location: LCCOMB_X56_Y32_N24
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (count_triac(6) & (\Add4~11\ $ (GND))) # (!count_triac(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((count_triac(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_triac(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X56_Y32_N25
\count_triac[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(6));

-- Location: LCCOMB_X56_Y32_N26
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (count_triac(7) & (!\Add4~13\)) # (!count_triac(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!count_triac(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_triac(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X56_Y32_N27
\count_triac[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_triac(7));

-- Location: LCCOMB_X56_Y32_N28
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (!count_triac(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_triac(8),
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X56_Y32_N0
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\Add4~16_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~16_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: FF_X58_Y31_N23
\count_ativacao[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(24));

-- Location: LCCOMB_X57_Y32_N6
\delay_ativacao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \delay_ativacao~0_combout\ = (!\Equal2~8_combout\ & ((\rising_passagem_zero~q\) # (\delay_ativacao~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rising_passagem_zero~q\,
	datac => \delay_ativacao~q\,
	datad => \Equal2~8_combout\,
	combout => \delay_ativacao~0_combout\);

-- Location: FF_X57_Y32_N7
delay_ativacao : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \delay_ativacao~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_ativacao~q\);

-- Location: LCCOMB_X58_Y32_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (count_ativacao(0) & (\delay_ativacao~q\ $ (VCC))) # (!count_ativacao(0) & (\delay_ativacao~q\ & VCC))
-- \Add3~1\ = CARRY((count_ativacao(0) & \delay_ativacao~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(0),
	datab => \delay_ativacao~q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: FF_X58_Y32_N7
\count_ativacao[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(0));

-- Location: LCCOMB_X58_Y32_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (count_ativacao(1) & (!\Add3~1\)) # (!count_ativacao(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!count_ativacao(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X58_Y32_N9
\count_ativacao[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(1));

-- Location: LCCOMB_X58_Y32_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (count_ativacao(2) & (\Add3~3\ $ (GND))) # (!count_ativacao(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((count_ativacao(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X57_Y32_N12
\count_ativacao~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~6_combout\ = (\Add3~4_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~6_combout\);

-- Location: FF_X57_Y32_N13
\count_ativacao[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(2));

-- Location: LCCOMB_X58_Y32_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (count_ativacao(3) & (!\Add3~5\)) # (!count_ativacao(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!count_ativacao(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X57_Y32_N14
\count_ativacao~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~5_combout\ = (\Add3~6_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~5_combout\);

-- Location: FF_X57_Y32_N15
\count_ativacao[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(3));

-- Location: LCCOMB_X58_Y32_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (count_ativacao(4) & (\Add3~7\ $ (GND))) # (!count_ativacao(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((count_ativacao(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X57_Y32_N16
\count_ativacao~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~4_combout\ = (\Add3~8_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~4_combout\);

-- Location: FF_X57_Y32_N17
\count_ativacao[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(4));

-- Location: LCCOMB_X58_Y32_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (count_ativacao(5) & (!\Add3~9\)) # (!count_ativacao(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!count_ativacao(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X58_Y32_N17
\count_ativacao[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(5));

-- Location: LCCOMB_X58_Y32_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (count_ativacao(6) & (\Add3~11\ $ (GND))) # (!count_ativacao(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((count_ativacao(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X57_Y32_N26
\count_ativacao~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~3_combout\ = (\Add3~12_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~12_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~3_combout\);

-- Location: FF_X57_Y32_N27
\count_ativacao[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(6));

-- Location: LCCOMB_X58_Y32_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (count_ativacao(7) & (!\Add3~13\)) # (!count_ativacao(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!count_ativacao(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X57_Y32_N0
\count_ativacao~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~2_combout\ = (\Add3~14_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~14_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~2_combout\);

-- Location: FF_X57_Y32_N1
\count_ativacao[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(7));

-- Location: LCCOMB_X58_Y32_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (count_ativacao(8) & (\Add3~15\ $ (GND))) # (!count_ativacao(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((count_ativacao(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X58_Y32_N4
\count_ativacao~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~1_combout\ = (\Add3~16_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~1_combout\);

-- Location: FF_X58_Y32_N5
\count_ativacao[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(8));

-- Location: LCCOMB_X58_Y32_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (count_ativacao(9) & (!\Add3~17\)) # (!count_ativacao(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!count_ativacao(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X58_Y32_N25
\count_ativacao[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(9));

-- Location: LCCOMB_X58_Y32_N26
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (count_ativacao(10) & (\Add3~19\ $ (GND))) # (!count_ativacao(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((count_ativacao(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X57_Y32_N30
\count_ativacao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_ativacao~0_combout\ = (\Add3~20_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~20_combout\,
	datad => \Equal2~8_combout\,
	combout => \count_ativacao~0_combout\);

-- Location: FF_X57_Y32_N31
\count_ativacao[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \count_ativacao~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(10));

-- Location: LCCOMB_X58_Y32_N28
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (count_ativacao(11) & (!\Add3~21\)) # (!count_ativacao(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!count_ativacao(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X58_Y32_N29
\count_ativacao[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(11));

-- Location: LCCOMB_X58_Y32_N30
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (count_ativacao(12) & (\Add3~23\ $ (GND))) # (!count_ativacao(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((count_ativacao(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X58_Y32_N31
\count_ativacao[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(12));

-- Location: LCCOMB_X58_Y31_N0
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (count_ativacao(13) & (!\Add3~25\)) # (!count_ativacao(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!count_ativacao(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X58_Y31_N1
\count_ativacao[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(13));

-- Location: LCCOMB_X58_Y31_N2
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (count_ativacao(14) & (\Add3~27\ $ (GND))) # (!count_ativacao(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((count_ativacao(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X58_Y31_N3
\count_ativacao[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(14));

-- Location: LCCOMB_X58_Y31_N4
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (count_ativacao(15) & (!\Add3~29\)) # (!count_ativacao(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!count_ativacao(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: FF_X58_Y31_N5
\count_ativacao[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(15));

-- Location: LCCOMB_X58_Y31_N6
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (count_ativacao(16) & (\Add3~31\ $ (GND))) # (!count_ativacao(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((count_ativacao(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X58_Y31_N7
\count_ativacao[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(16));

-- Location: LCCOMB_X58_Y31_N8
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (count_ativacao(17) & (!\Add3~33\)) # (!count_ativacao(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!count_ativacao(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X58_Y31_N9
\count_ativacao[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(17));

-- Location: LCCOMB_X58_Y31_N10
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (count_ativacao(18) & (\Add3~35\ $ (GND))) # (!count_ativacao(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((count_ativacao(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X58_Y31_N11
\count_ativacao[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(18));

-- Location: LCCOMB_X58_Y31_N12
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (count_ativacao(19) & (!\Add3~37\)) # (!count_ativacao(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!count_ativacao(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X58_Y31_N13
\count_ativacao[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(19));

-- Location: LCCOMB_X58_Y31_N14
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (count_ativacao(20) & (\Add3~39\ $ (GND))) # (!count_ativacao(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((count_ativacao(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X58_Y31_N15
\count_ativacao[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(20));

-- Location: LCCOMB_X58_Y31_N16
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (count_ativacao(21) & (!\Add3~41\)) # (!count_ativacao(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!count_ativacao(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X58_Y31_N17
\count_ativacao[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(21));

-- Location: LCCOMB_X58_Y31_N18
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (count_ativacao(22) & (\Add3~43\ $ (GND))) # (!count_ativacao(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((count_ativacao(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X58_Y31_N19
\count_ativacao[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(22));

-- Location: LCCOMB_X58_Y31_N20
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (count_ativacao(23) & (!\Add3~45\)) # (!count_ativacao(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!count_ativacao(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_ativacao(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X58_Y31_N21
\count_ativacao[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(23));

-- Location: LCCOMB_X58_Y31_N22
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (count_ativacao(24) & (\Add3~47\ $ (GND))) # (!count_ativacao(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((count_ativacao(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_ativacao(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X58_Y31_N25
\count_ativacao[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_ativacao(25));

-- Location: LCCOMB_X58_Y31_N24
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (count_ativacao(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_ativacao(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X57_Y32_N8
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Add3~0_combout\ & (\Add3~4_combout\ & (!\Add3~2_combout\ & \Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~6_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X58_Y32_N2
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Add3~10_combout\ & (\Add3~14_combout\ & (\Add3~8_combout\ & \Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add3~14_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~12_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X58_Y32_N0
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Add3~16_combout\ & (!\Add3~18_combout\ & (\Add3~20_combout\ & !\Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add3~18_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~22_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X57_Y32_N2
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Add3~24_combout\ & (!\Add3~30_combout\ & (!\Add3~26_combout\ & !\Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Add3~30_combout\,
	datac => \Add3~26_combout\,
	datad => \Add3~28_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X57_Y32_N20
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X57_Y32_N18
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\Add3~34_combout\ & (!\Add3~36_combout\ & (!\Add3~38_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \Add3~36_combout\,
	datac => \Add3~38_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X57_Y32_N24
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!\Add3~32_combout\ & (!\Add3~40_combout\ & (!\Add3~42_combout\ & \Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add3~40_combout\,
	datac => \Add3~42_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X57_Y32_N10
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!\Add3~44_combout\ & \Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~44_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X57_Y32_N28
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!\Add3~48_combout\ & (!\Add3~50_combout\ & (!\Add3~46_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => \Add3~50_combout\,
	datac => \Add3~46_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X57_Y32_N4
\saida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (!\Equal3~2_combout\ & ((\saida~reg0_q\) # (\Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datac => \saida~reg0_q\,
	datad => \Equal2~8_combout\,
	combout => \saida~0_combout\);

-- Location: FF_X57_Y32_N5
\saida~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_centena(0) <= \centena[0]~output_o\;

ww_centena(1) <= \centena[1]~output_o\;

ww_centena(2) <= \centena[2]~output_o\;

ww_centena(3) <= \centena[3]~output_o\;

ww_centena(4) <= \centena[4]~output_o\;

ww_centena(5) <= \centena[5]~output_o\;

ww_centena(6) <= \centena[6]~output_o\;

ww_dezena(0) <= \dezena[0]~output_o\;

ww_dezena(1) <= \dezena[1]~output_o\;

ww_dezena(2) <= \dezena[2]~output_o\;

ww_dezena(3) <= \dezena[3]~output_o\;

ww_dezena(4) <= \dezena[4]~output_o\;

ww_dezena(5) <= \dezena[5]~output_o\;

ww_dezena(6) <= \dezena[6]~output_o\;

ww_unidade(0) <= \unidade[0]~output_o\;

ww_unidade(1) <= \unidade[1]~output_o\;

ww_unidade(2) <= \unidade[2]~output_o\;

ww_unidade(3) <= \unidade[3]~output_o\;

ww_unidade(4) <= \unidade[4]~output_o\;

ww_unidade(5) <= \unidade[5]~output_o\;

ww_unidade(6) <= \unidade[6]~output_o\;

ww_saida <= \saida~output_o\;
END structure;


