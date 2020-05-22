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

-- DATE "05/22/2020 19:07:28"

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

ENTITY 	controlador_potencia_tester IS
    PORT (
	clk_50MHZ : IN std_logic;
	passagem_zero : IN std_logic;
	porcentagem_mais : IN std_logic;
	porcentagem_menos : IN std_logic;
	centena : BUFFER std_logic_vector(6 DOWNTO 0);
	dezena : BUFFER std_logic_vector(6 DOWNTO 0);
	unidade : BUFFER std_logic_vector(6 DOWNTO 0);
	disparo_triac : BUFFER std_logic
	);
END controlador_potencia_tester;

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
-- disparo_triac	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHZ	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porcentagem_mais	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- porcentagem_menos	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- passagem_zero	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlador_potencia_tester IS
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
SIGNAL ww_porcentagem_mais : std_logic;
SIGNAL ww_porcentagem_menos : std_logic;
SIGNAL ww_centena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disparo_triac : std_logic;
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
SIGNAL \disparo_triac~output_o\ : std_logic;
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
SIGNAL \divisor_50x|Equal0~0_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~2_combout\ : std_logic;
SIGNAL \divisor_50x|Equal0~1_combout\ : std_logic;
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
SIGNAL \porcentagem_mais~input_o\ : std_logic;
SIGNAL \rising_mais~feeder_combout\ : std_logic;
SIGNAL \reset_mais~q\ : std_logic;
SIGNAL \rising_mais~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \controlador|LessThan6~0_combout\ : std_logic;
SIGNAL \porcentagem_potencia[0]~0_combout\ : std_logic;
SIGNAL \porcentagem_potencia[0]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \porcentagem_potencia~7_combout\ : std_logic;
SIGNAL \porcentagem_potencia~8_combout\ : std_logic;
SIGNAL \porcentagem_menos~input_o\ : std_logic;
SIGNAL \rising_menos~feeder_combout\ : std_logic;
SIGNAL \reset_menos~0_combout\ : std_logic;
SIGNAL \reset_menos~q\ : std_logic;
SIGNAL \rising_menos~q\ : std_logic;
SIGNAL \porcentagem_potencia[0]~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \porcentagem_potencia~5_combout\ : std_logic;
SIGNAL \porcentagem_potencia~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \porcentagem_potencia~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \porcentagem_potencia~2_combout\ : std_logic;
SIGNAL \centena_tmp[0]~2_cout\ : std_logic;
SIGNAL \centena_tmp[0]~4_cout\ : std_logic;
SIGNAL \centena_tmp[0]~6_cout\ : std_logic;
SIGNAL \centena_tmp[0]~8_cout\ : std_logic;
SIGNAL \centena_tmp[0]~10_cout\ : std_logic;
SIGNAL \centena_tmp[0]~11_combout\ : std_logic;
SIGNAL \update_display~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \update_display~4_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \update_display~2_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \update_display~1_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \update_display~3_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \update_display~5_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezena_tmp[1]~13_combout\ : std_logic;
SIGNAL \dezena_tmp[2]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ : std_logic;
SIGNAL \dezena_tmp[0]~2_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~4_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~6_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~8_cout\ : std_logic;
SIGNAL \dezena_tmp[0]~9_combout\ : std_logic;
SIGNAL \dezena_tmp[3]~11_combout\ : std_logic;
SIGNAL \display_dezena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|out_display[6]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~90_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~101_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~102_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~95_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~93_combout\ : std_logic;
SIGNAL \display_unidade|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[6]~6_combout\ : std_logic;
SIGNAL \controlador|Add1~5\ : std_logic;
SIGNAL \controlador|Add1~6_combout\ : std_logic;
SIGNAL \controlador|Add1~11\ : std_logic;
SIGNAL \controlador|Add1~12_combout\ : std_logic;
SIGNAL \controlador|Add1~13\ : std_logic;
SIGNAL \controlador|Add1~14_combout\ : std_logic;
SIGNAL \controlador|Add1~15\ : std_logic;
SIGNAL \controlador|Add1~16_combout\ : std_logic;
SIGNAL \controlador|count_triac~1_combout\ : std_logic;
SIGNAL \controlador|Add1~7\ : std_logic;
SIGNAL \controlador|Add1~8_combout\ : std_logic;
SIGNAL \controlador|Add1~9\ : std_logic;
SIGNAL \controlador|Add1~10_combout\ : std_logic;
SIGNAL \controlador|Equal0~1_combout\ : std_logic;
SIGNAL \controlador|Add1~0_combout\ : std_logic;
SIGNAL \controlador|Add1~1\ : std_logic;
SIGNAL \controlador|Add1~2_combout\ : std_logic;
SIGNAL \controlador|count_triac~0_combout\ : std_logic;
SIGNAL \controlador|Add1~3\ : std_logic;
SIGNAL \controlador|Add1~4_combout\ : std_logic;
SIGNAL \controlador|Equal0~0_combout\ : std_logic;
SIGNAL \controlador|Equal0~2_combout\ : std_logic;
SIGNAL \passagem_zero~input_o\ : std_logic;
SIGNAL \controlador|rising_passagem_zero~feeder_combout\ : std_logic;
SIGNAL \controlador|reset_passagem_zero~q\ : std_logic;
SIGNAL \controlador|rising_passagem_zero~q\ : std_logic;
SIGNAL \controlador|LessThan5~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[13]~8_combout\ : std_logic;
SIGNAL \controlador|LessThan17~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~10_combout\ : std_logic;
SIGNAL \controlador|LessThan12~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[12]~9_combout\ : std_logic;
SIGNAL \controlador|LessThan16~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[12]~72_combout\ : std_logic;
SIGNAL \controlador|LessThan0~2_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[12]~11_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~12_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~70_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~13_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[7]~16_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~14_combout\ : std_logic;
SIGNAL \controlador|LessThan10~0_combout\ : std_logic;
SIGNAL \controlador|LessThan9~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~15_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[11]~17_combout\ : std_logic;
SIGNAL \controlador|LessThan1~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[9]~19_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[10]~20_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[10]~21_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[10]~18_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~22_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~14_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[10]~23_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[1]~24_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[9]~27_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[9]~25_combout\ : std_logic;
SIGNAL \controlador|LessThan3~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[9]~26_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~11_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~6_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~15_combout\ : std_logic;
SIGNAL \controlador|LessThan13~0_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~12_combout\ : std_logic;
SIGNAL \controlador|porcentagem_to_pulsos~13_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[9]~28_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~34_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~35_combout\ : std_logic;
SIGNAL \controlador|LessThan6~1_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~30_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~31_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~29_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~32_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~33_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[8]~36_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~37_combout\ : std_logic;
SIGNAL \controlador|LessThan8~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[7]~38_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[7]~39_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[7]~40_combout\ : std_logic;
SIGNAL \controlador|LessThan18~0_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[6]~41_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[6]~42_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[6]~43_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[6]~44_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[6]~71_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~45_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~50_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~48_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~46_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~47_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~49_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[5]~51_combout\ : std_logic;
SIGNAL \controlador|LessThan3~1_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[4]~53_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[4]~52_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[4]~54_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[4]~55_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~57_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~58_combout\ : std_logic;
SIGNAL \controlador|LessThan10~1_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~56_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~59_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~60_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[3]~61_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~62_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~63_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~64_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[2]~65_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[1]~66_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[1]~67_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[1]~68_combout\ : std_logic;
SIGNAL \controlador|pulsos_potencia[1]~69_combout\ : std_logic;
SIGNAL \controlador|LessThan19~1_cout\ : std_logic;
SIGNAL \controlador|LessThan19~3_cout\ : std_logic;
SIGNAL \controlador|LessThan19~5_cout\ : std_logic;
SIGNAL \controlador|LessThan19~7_cout\ : std_logic;
SIGNAL \controlador|LessThan19~9_cout\ : std_logic;
SIGNAL \controlador|LessThan19~11_cout\ : std_logic;
SIGNAL \controlador|LessThan19~13_cout\ : std_logic;
SIGNAL \controlador|LessThan19~15_cout\ : std_logic;
SIGNAL \controlador|LessThan19~17_cout\ : std_logic;
SIGNAL \controlador|LessThan19~19_cout\ : std_logic;
SIGNAL \controlador|LessThan19~21_cout\ : std_logic;
SIGNAL \controlador|LessThan19~23_cout\ : std_logic;
SIGNAL \controlador|LessThan19~24_combout\ : std_logic;
SIGNAL \controlador|delay_ativacao~0_combout\ : std_logic;
SIGNAL \controlador|delay_ativacao~q\ : std_logic;
SIGNAL \controlador|Add0~0_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~13_combout\ : std_logic;
SIGNAL \controlador|Add0~1\ : std_logic;
SIGNAL \controlador|Add0~2_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~12_combout\ : std_logic;
SIGNAL \controlador|Add0~3\ : std_logic;
SIGNAL \controlador|Add0~4_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~11_combout\ : std_logic;
SIGNAL \controlador|Add0~5\ : std_logic;
SIGNAL \controlador|Add0~6_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~10_combout\ : std_logic;
SIGNAL \controlador|Add0~7\ : std_logic;
SIGNAL \controlador|Add0~8_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~9_combout\ : std_logic;
SIGNAL \controlador|Add0~9\ : std_logic;
SIGNAL \controlador|Add0~10_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~8_combout\ : std_logic;
SIGNAL \controlador|Add0~11\ : std_logic;
SIGNAL \controlador|Add0~12_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~7_combout\ : std_logic;
SIGNAL \controlador|Add0~13\ : std_logic;
SIGNAL \controlador|Add0~14_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~6_combout\ : std_logic;
SIGNAL \controlador|Add0~15\ : std_logic;
SIGNAL \controlador|Add0~16_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~5_combout\ : std_logic;
SIGNAL \controlador|Add0~17\ : std_logic;
SIGNAL \controlador|Add0~18_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~4_combout\ : std_logic;
SIGNAL \controlador|Add0~19\ : std_logic;
SIGNAL \controlador|Add0~20_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~3_combout\ : std_logic;
SIGNAL \controlador|Add0~21\ : std_logic;
SIGNAL \controlador|Add0~22_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~2_combout\ : std_logic;
SIGNAL \controlador|Add0~23\ : std_logic;
SIGNAL \controlador|Add0~24_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~1_combout\ : std_logic;
SIGNAL \controlador|Add0~25\ : std_logic;
SIGNAL \controlador|Add0~26_combout\ : std_logic;
SIGNAL \controlador|count_ativacao~0_combout\ : std_logic;
SIGNAL \controlador|Add0~27\ : std_logic;
SIGNAL \controlador|Add0~28_combout\ : std_logic;
SIGNAL \controlador|disparo_triac~0_combout\ : std_logic;
SIGNAL \controlador|disparo_triac~q\ : std_logic;
SIGNAL \controlador|count_triac\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controlador|count_ativacao\ : std_logic_vector(25 DOWNTO 0);
SIGNAL update_display : std_logic_vector(17 DOWNTO 0);
SIGNAL porcentagem_potencia : std_logic_vector(6 DOWNTO 0);
SIGNAL unidade_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_50x|count_tmp\ : std_logic_vector(25 DOWNTO 0);
SIGNAL dezena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL centena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_porcentagem_menos~input_o\ : std_logic;
SIGNAL \ALT_INV_porcentagem_mais~input_o\ : std_logic;
SIGNAL \controlador|ALT_INV_reset_passagem_zero~q\ : std_logic;
SIGNAL \ALT_INV_reset_menos~q\ : std_logic;
SIGNAL \ALT_INV_reset_mais~q\ : std_logic;
SIGNAL \divisor_50x|ALT_INV_reset_out_clk_tmp~q\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHZ <= clk_50MHZ;
ww_passagem_zero <= passagem_zero;
ww_porcentagem_mais <= porcentagem_mais;
ww_porcentagem_menos <= porcentagem_menos;
centena <= ww_centena;
dezena <= ww_dezena;
unidade <= ww_unidade;
disparo_triac <= ww_disparo_triac;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\divisor_50x|out_clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor_50x|out_clk_tmp~q\);

\clk_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHZ~input_o\);
\ALT_INV_clk_50MHZ~inputclkctrl_outclk\ <= NOT \clk_50MHZ~inputclkctrl_outclk\;
\ALT_INV_porcentagem_menos~input_o\ <= NOT \porcentagem_menos~input_o\;
\ALT_INV_porcentagem_mais~input_o\ <= NOT \porcentagem_mais~input_o\;
\controlador|ALT_INV_reset_passagem_zero~q\ <= NOT \controlador|reset_passagem_zero~q\;
\ALT_INV_reset_menos~q\ <= NOT \reset_menos~q\;
\ALT_INV_reset_mais~q\ <= NOT \reset_mais~q\;
\divisor_50x|ALT_INV_reset_out_clk_tmp~q\ <= NOT \divisor_50x|reset_out_clk_tmp~q\;
\display_unidade|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade|out_display[5]~5_combout\;
\display_unidade|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade|out_display[2]~2_combout\;
\display_dezena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena|out_display[5]~5_combout\;
\display_dezena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena|out_display[2]~2_combout\;
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
	i => centena_tmp(0),
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
	i => GND,
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
	i => GND,
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
	i => centena_tmp(0),
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
	i => centena_tmp(0),
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
	i => centena_tmp(0),
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
	i => VCC,
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
\disparo_triac~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|disparo_triac~q\,
	devoe => ww_devoe,
	o => \disparo_triac~output_o\);

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

-- Location: FF_X63_Y3_N23
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

-- Location: LCCOMB_X63_Y4_N6
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

-- Location: FF_X63_Y4_N7
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

-- Location: LCCOMB_X63_Y4_N8
\divisor_50x|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~2_combout\ = (\divisor_50x|count_tmp\(1) & (!\divisor_50x|Add0~1\)) # (!\divisor_50x|count_tmp\(1) & ((\divisor_50x|Add0~1\) # (GND)))
-- \divisor_50x|Add0~3\ = CARRY((!\divisor_50x|Add0~1\) # (!\divisor_50x|count_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(1),
	datad => VCC,
	cin => \divisor_50x|Add0~1\,
	combout => \divisor_50x|Add0~2_combout\,
	cout => \divisor_50x|Add0~3\);

-- Location: LCCOMB_X62_Y4_N6
\divisor_50x|count_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|count_tmp~2_combout\ = (\divisor_50x|Add0~2_combout\ & !\divisor_50x|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|Add0~2_combout\,
	datad => \divisor_50x|Equal0~8_combout\,
	combout => \divisor_50x|count_tmp~2_combout\);

-- Location: FF_X62_Y4_N7
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

-- Location: LCCOMB_X63_Y4_N10
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

-- Location: FF_X63_Y4_N11
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

-- Location: LCCOMB_X63_Y4_N12
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

-- Location: FF_X63_Y4_N13
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

-- Location: LCCOMB_X63_Y4_N14
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

-- Location: LCCOMB_X62_Y4_N28
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

-- Location: FF_X62_Y4_N29
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

-- Location: LCCOMB_X63_Y4_N16
\divisor_50x|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~10_combout\ = (\divisor_50x|count_tmp\(5) & (!\divisor_50x|Add0~9\)) # (!\divisor_50x|count_tmp\(5) & ((\divisor_50x|Add0~9\) # (GND)))
-- \divisor_50x|Add0~11\ = CARRY((!\divisor_50x|Add0~9\) # (!\divisor_50x|count_tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(5),
	datad => VCC,
	cin => \divisor_50x|Add0~9\,
	combout => \divisor_50x|Add0~10_combout\,
	cout => \divisor_50x|Add0~11\);

-- Location: LCCOMB_X62_Y4_N26
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

-- Location: FF_X62_Y4_N27
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

-- Location: LCCOMB_X63_Y4_N18
\divisor_50x|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~12_combout\ = (\divisor_50x|count_tmp\(6) & (\divisor_50x|Add0~11\ $ (GND))) # (!\divisor_50x|count_tmp\(6) & (!\divisor_50x|Add0~11\ & VCC))
-- \divisor_50x|Add0~13\ = CARRY((\divisor_50x|count_tmp\(6) & !\divisor_50x|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|count_tmp\(6),
	datad => VCC,
	cin => \divisor_50x|Add0~11\,
	combout => \divisor_50x|Add0~12_combout\,
	cout => \divisor_50x|Add0~13\);

-- Location: FF_X63_Y4_N19
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

-- Location: LCCOMB_X63_Y4_N20
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

-- Location: FF_X63_Y4_N21
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

-- Location: LCCOMB_X63_Y4_N22
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

-- Location: FF_X63_Y4_N23
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

-- Location: LCCOMB_X63_Y4_N24
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

-- Location: FF_X63_Y4_N25
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

-- Location: LCCOMB_X63_Y4_N26
\divisor_50x|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Add0~20_combout\ = (\divisor_50x|count_tmp\(10) & (\divisor_50x|Add0~19\ $ (GND))) # (!\divisor_50x|count_tmp\(10) & (!\divisor_50x|Add0~19\ & VCC))
-- \divisor_50x|Add0~21\ = CARRY((\divisor_50x|count_tmp\(10) & !\divisor_50x|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_50x|count_tmp\(10),
	datad => VCC,
	cin => \divisor_50x|Add0~19\,
	combout => \divisor_50x|Add0~20_combout\,
	cout => \divisor_50x|Add0~21\);

-- Location: FF_X63_Y4_N27
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

-- Location: LCCOMB_X63_Y4_N28
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

-- Location: FF_X63_Y4_N29
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

-- Location: LCCOMB_X63_Y4_N30
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

-- Location: FF_X63_Y4_N31
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

-- Location: LCCOMB_X63_Y3_N0
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

-- Location: FF_X63_Y3_N1
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

-- Location: LCCOMB_X63_Y3_N2
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

-- Location: FF_X63_Y3_N3
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

-- Location: LCCOMB_X63_Y3_N4
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

-- Location: FF_X63_Y3_N5
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

-- Location: LCCOMB_X63_Y3_N6
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

-- Location: FF_X63_Y3_N7
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

-- Location: LCCOMB_X63_Y3_N8
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

-- Location: FF_X63_Y3_N9
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

-- Location: LCCOMB_X63_Y3_N10
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

-- Location: FF_X63_Y3_N11
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

-- Location: LCCOMB_X63_Y3_N12
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

-- Location: FF_X63_Y3_N13
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

-- Location: LCCOMB_X63_Y3_N14
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

-- Location: FF_X63_Y3_N15
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

-- Location: LCCOMB_X63_Y3_N16
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

-- Location: FF_X63_Y3_N17
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

-- Location: LCCOMB_X63_Y3_N18
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

-- Location: FF_X63_Y3_N19
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

-- Location: LCCOMB_X63_Y3_N20
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

-- Location: FF_X63_Y3_N21
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

-- Location: LCCOMB_X63_Y3_N22
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

-- Location: FF_X63_Y3_N25
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

-- Location: LCCOMB_X63_Y3_N24
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

-- Location: LCCOMB_X63_Y4_N4
\divisor_50x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~0_combout\ = (!\divisor_50x|Add0~0_combout\ & (!\divisor_50x|Add0~4_combout\ & (!\divisor_50x|Add0~6_combout\ & \divisor_50x|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~0_combout\,
	datab => \divisor_50x|Add0~4_combout\,
	datac => \divisor_50x|Add0~6_combout\,
	datad => \divisor_50x|Add0~2_combout\,
	combout => \divisor_50x|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y4_N0
\divisor_50x|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~2_combout\ = (!\divisor_50x|Add0~20_combout\ & (!\divisor_50x|Add0~18_combout\ & (!\divisor_50x|Add0~16_combout\ & !\divisor_50x|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~20_combout\,
	datab => \divisor_50x|Add0~18_combout\,
	datac => \divisor_50x|Add0~16_combout\,
	datad => \divisor_50x|Add0~22_combout\,
	combout => \divisor_50x|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y4_N2
\divisor_50x|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~1_combout\ = (!\divisor_50x|Add0~14_combout\ & (\divisor_50x|Add0~10_combout\ & (\divisor_50x|Add0~8_combout\ & !\divisor_50x|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~14_combout\,
	datab => \divisor_50x|Add0~10_combout\,
	datac => \divisor_50x|Add0~8_combout\,
	datad => \divisor_50x|Add0~12_combout\,
	combout => \divisor_50x|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y4_N2
\divisor_50x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~3_combout\ = (!\divisor_50x|Add0~28_combout\ & (!\divisor_50x|Add0~24_combout\ & (!\divisor_50x|Add0~26_combout\ & !\divisor_50x|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~28_combout\,
	datab => \divisor_50x|Add0~24_combout\,
	datac => \divisor_50x|Add0~26_combout\,
	datad => \divisor_50x|Add0~30_combout\,
	combout => \divisor_50x|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y4_N0
\divisor_50x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~4_combout\ = (\divisor_50x|Equal0~0_combout\ & (\divisor_50x|Equal0~2_combout\ & (\divisor_50x|Equal0~1_combout\ & \divisor_50x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Equal0~0_combout\,
	datab => \divisor_50x|Equal0~2_combout\,
	datac => \divisor_50x|Equal0~1_combout\,
	datad => \divisor_50x|Equal0~3_combout\,
	combout => \divisor_50x|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y4_N16
\divisor_50x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~5_combout\ = (!\divisor_50x|Add0~36_combout\ & (!\divisor_50x|Add0~34_combout\ & (!\divisor_50x|Add0~38_combout\ & \divisor_50x|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~36_combout\,
	datab => \divisor_50x|Add0~34_combout\,
	datac => \divisor_50x|Add0~38_combout\,
	datad => \divisor_50x|Equal0~4_combout\,
	combout => \divisor_50x|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y4_N10
\divisor_50x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~6_combout\ = (!\divisor_50x|Add0~32_combout\ & (!\divisor_50x|Add0~42_combout\ & (!\divisor_50x|Add0~40_combout\ & \divisor_50x|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~32_combout\,
	datab => \divisor_50x|Add0~42_combout\,
	datac => \divisor_50x|Add0~40_combout\,
	datad => \divisor_50x|Equal0~5_combout\,
	combout => \divisor_50x|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y4_N12
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

-- Location: LCCOMB_X62_Y4_N18
\divisor_50x|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|Equal0~8_combout\ = (!\divisor_50x|Add0~48_combout\ & (!\divisor_50x|Add0~50_combout\ & (!\divisor_50x|Add0~46_combout\ & \divisor_50x|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_50x|Add0~48_combout\,
	datab => \divisor_50x|Add0~50_combout\,
	datac => \divisor_50x|Add0~46_combout\,
	datad => \divisor_50x|Equal0~7_combout\,
	combout => \divisor_50x|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y4_N20
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

-- Location: FF_X62_Y4_N21
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

-- Location: LCCOMB_X61_Y4_N0
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

-- Location: LCCOMB_X61_Y4_N4
\divisor_50x|reset_out_clk_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \divisor_50x|reset_out_clk_tmp~0_combout\ = (\divisor_50x|out_clk_tmp_up~q\ & !\divisor_50x|reset_out_clk_tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_50x|out_clk_tmp_up~q\,
	datad => \divisor_50x|reset_out_clk_tmp~q\,
	combout => \divisor_50x|reset_out_clk_tmp~0_combout\);

-- Location: LCCOMB_X61_Y4_N18
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

-- Location: FF_X61_Y4_N19
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

-- Location: FF_X61_Y4_N1
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

-- Location: CLKCTRL_G15
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

-- Location: IOIBUF_X46_Y54_N29
\porcentagem_mais~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_porcentagem_mais,
	o => \porcentagem_mais~input_o\);

-- Location: LCCOMB_X45_Y36_N18
\rising_mais~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_mais~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rising_mais~feeder_combout\);

-- Location: FF_X46_Y36_N9
reset_mais : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \rising_mais~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_mais~q\);

-- Location: FF_X45_Y36_N19
rising_mais : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_porcentagem_mais~input_o\,
	d => \rising_mais~feeder_combout\,
	clrn => \ALT_INV_reset_mais~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_mais~q\);

-- Location: LCCOMB_X46_Y35_N4
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = porcentagem_potencia(0) $ (VCC)
-- \Add1~1\ = CARRY(porcentagem_potencia(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X45_Y36_N10
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!porcentagem_potencia(6) & (!porcentagem_potencia(4) & (!porcentagem_potencia(5) & !porcentagem_potencia(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(6),
	datab => porcentagem_potencia(4),
	datac => porcentagem_potencia(5),
	datad => porcentagem_potencia(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X44_Y36_N4
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!porcentagem_potencia(2) & !porcentagem_potencia(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(1),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X45_Y36_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (!\rising_mais~q\ & ((porcentagem_potencia(0)) # ((!\Equal1~3_combout\) # (!\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => \Equal1~4_combout\,
	datac => \Equal1~3_combout\,
	datad => \rising_mais~q\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X43_Y36_N16
\controlador|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan6~0_combout\ = (!porcentagem_potencia(3) & !porcentagem_potencia(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(4),
	combout => \controlador|LessThan6~0_combout\);

-- Location: LCCOMB_X45_Y36_N12
\porcentagem_potencia[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia[0]~0_combout\ = (porcentagem_potencia(6) & (porcentagem_potencia(5) & (porcentagem_potencia(2) & \rising_mais~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(6),
	datab => porcentagem_potencia(5),
	datac => porcentagem_potencia(2),
	datad => \rising_mais~q\,
	combout => \porcentagem_potencia[0]~0_combout\);

-- Location: LCCOMB_X45_Y36_N14
\porcentagem_potencia[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia[0]~1_combout\ = (!porcentagem_potencia(0) & (\controlador|LessThan6~0_combout\ & (!porcentagem_potencia(1) & \porcentagem_potencia[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => \controlador|LessThan6~0_combout\,
	datac => porcentagem_potencia(1),
	datad => \porcentagem_potencia[0]~0_combout\,
	combout => \porcentagem_potencia[0]~1_combout\);

-- Location: LCCOMB_X47_Y36_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = porcentagem_potencia(0) $ (VCC)
-- \Add0~1\ = CARRY(porcentagem_potencia(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X45_Y36_N28
\porcentagem_potencia~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~7_combout\ = (\Add0~0_combout\ & \rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \rising_mais~q\,
	combout => \porcentagem_potencia~7_combout\);

-- Location: LCCOMB_X45_Y36_N20
\porcentagem_potencia~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~8_combout\ = (!\porcentagem_potencia[0]~1_combout\ & ((\porcentagem_potencia~7_combout\) # ((\Add1~0_combout\ & \Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~14_combout\,
	datac => \porcentagem_potencia[0]~1_combout\,
	datad => \porcentagem_potencia~7_combout\,
	combout => \porcentagem_potencia~8_combout\);

-- Location: IOIBUF_X49_Y54_N29
\porcentagem_menos~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_porcentagem_menos,
	o => \porcentagem_menos~input_o\);

-- Location: LCCOMB_X45_Y37_N28
\rising_menos~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rising_menos~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rising_menos~feeder_combout\);

-- Location: LCCOMB_X45_Y37_N18
\reset_menos~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_menos~0_combout\ = (\rising_menos~q\ & !\rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rising_menos~q\,
	datad => \rising_mais~q\,
	combout => \reset_menos~0_combout\);

-- Location: FF_X45_Y37_N19
reset_menos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \reset_menos~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_menos~q\);

-- Location: FF_X45_Y37_N29
rising_menos : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_porcentagem_menos~input_o\,
	d => \rising_menos~feeder_combout\,
	clrn => \ALT_INV_reset_menos~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising_menos~q\);

-- Location: LCCOMB_X45_Y36_N16
\porcentagem_potencia[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia[0]~3_combout\ = (\rising_menos~q\) # (\rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rising_menos~q\,
	datad => \rising_mais~q\,
	combout => \porcentagem_potencia[0]~3_combout\);

-- Location: FF_X45_Y36_N21
\porcentagem_potencia[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \porcentagem_potencia~8_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(0));

-- Location: LCCOMB_X46_Y35_N6
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (porcentagem_potencia(1) & (\Add1~1\ & VCC)) # (!porcentagem_potencia(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!porcentagem_potencia(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X47_Y36_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (porcentagem_potencia(1) & (!\Add0~1\)) # (!porcentagem_potencia(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!porcentagem_potencia(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X45_Y36_N22
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\rising_mais~q\ & ((\Add0~2_combout\) # ((\Add1~2_combout\ & \Add0~14_combout\)))) # (!\rising_mais~q\ & (\Add1~2_combout\ & ((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \Add1~2_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X45_Y36_N23
\porcentagem_potencia[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~17_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(1));

-- Location: LCCOMB_X47_Y36_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (porcentagem_potencia(2) & ((GND) # (!\Add0~3\))) # (!porcentagem_potencia(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((porcentagem_potencia(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X45_Y36_N26
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!porcentagem_potencia(1) & (\Equal1~4_combout\ & (!porcentagem_potencia(0) & !porcentagem_potencia(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => \Equal1~4_combout\,
	datac => porcentagem_potencia(0),
	datad => porcentagem_potencia(2),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X46_Y35_N8
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (porcentagem_potencia(2) & (\Add1~3\ $ (GND))) # (!porcentagem_potencia(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((porcentagem_potencia(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y36_N8
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\rising_mais~q\ & (\Add0~4_combout\)) # (!\rising_mais~q\ & (((\Equal1~5_combout\) # (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal1~5_combout\,
	datac => \rising_mais~q\,
	datad => \Add1~4_combout\,
	combout => \Add0~16_combout\);

-- Location: FF_X45_Y36_N9
\porcentagem_potencia[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(2));

-- Location: LCCOMB_X46_Y35_N10
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (porcentagem_potencia(3) & (\Add1~5\ & VCC)) # (!porcentagem_potencia(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!porcentagem_potencia(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X47_Y36_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (porcentagem_potencia(3) & (!\Add0~5\)) # (!porcentagem_potencia(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!porcentagem_potencia(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X45_Y36_N2
\porcentagem_potencia~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~5_combout\ = (\Add0~6_combout\ & \rising_mais~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \rising_mais~q\,
	combout => \porcentagem_potencia~5_combout\);

-- Location: LCCOMB_X45_Y36_N6
\porcentagem_potencia~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~6_combout\ = (!\porcentagem_potencia[0]~1_combout\ & ((\porcentagem_potencia~5_combout\) # ((\Add1~6_combout\ & \Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~14_combout\,
	datac => \porcentagem_potencia[0]~1_combout\,
	datad => \porcentagem_potencia~5_combout\,
	combout => \porcentagem_potencia~6_combout\);

-- Location: FF_X45_Y36_N7
\porcentagem_potencia[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \porcentagem_potencia~6_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(3));

-- Location: LCCOMB_X47_Y36_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (porcentagem_potencia(4) & (\Add0~7\ $ (GND))) # (!porcentagem_potencia(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((porcentagem_potencia(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X46_Y35_N12
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (porcentagem_potencia(4) & ((GND) # (!\Add1~7\))) # (!porcentagem_potencia(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((porcentagem_potencia(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X45_Y36_N0
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~8_combout\ & ((\rising_mais~q\) # ((\Add1~8_combout\ & \Add0~14_combout\)))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & ((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datac => \rising_mais~q\,
	datad => \Add0~14_combout\,
	combout => \Add0~15_combout\);

-- Location: FF_X45_Y36_N1
\porcentagem_potencia[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add0~15_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(4));

-- Location: LCCOMB_X47_Y36_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (porcentagem_potencia(5) & (!\Add0~9\)) # (!porcentagem_potencia(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!porcentagem_potencia(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X46_Y35_N14
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (porcentagem_potencia(5) & (\Add1~9\ & VCC)) # (!porcentagem_potencia(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!porcentagem_potencia(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X46_Y36_N2
\porcentagem_potencia~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~4_combout\ = (!\porcentagem_potencia[0]~1_combout\ & ((\rising_mais~q\ & (\Add0~10_combout\)) # (!\rising_mais~q\ & ((\Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising_mais~q\,
	datab => \Add0~10_combout\,
	datac => \Add1~10_combout\,
	datad => \porcentagem_potencia[0]~1_combout\,
	combout => \porcentagem_potencia~4_combout\);

-- Location: FF_X46_Y36_N3
\porcentagem_potencia[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \porcentagem_potencia~4_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(5));

-- Location: LCCOMB_X46_Y35_N16
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (porcentagem_potencia(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => porcentagem_potencia(6),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X47_Y36_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = porcentagem_potencia(6) $ (!\Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X46_Y36_N4
\porcentagem_potencia~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \porcentagem_potencia~2_combout\ = (!\porcentagem_potencia[0]~1_combout\ & ((\rising_mais~q\ & ((\Add0~12_combout\))) # (!\rising_mais~q\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~12_combout\,
	datac => \rising_mais~q\,
	datad => \porcentagem_potencia[0]~1_combout\,
	combout => \porcentagem_potencia~2_combout\);

-- Location: FF_X46_Y36_N5
\porcentagem_potencia[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \porcentagem_potencia~2_combout\,
	ena => \porcentagem_potencia[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => porcentagem_potencia(6));

-- Location: LCCOMB_X49_Y35_N10
\centena_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~2_cout\ = CARRY(porcentagem_potencia(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(2),
	datad => VCC,
	cout => \centena_tmp[0]~2_cout\);

-- Location: LCCOMB_X49_Y35_N12
\centena_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~4_cout\ = CARRY((!porcentagem_potencia(3) & !\centena_tmp[0]~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datad => VCC,
	cin => \centena_tmp[0]~2_cout\,
	cout => \centena_tmp[0]~4_cout\);

-- Location: LCCOMB_X49_Y35_N14
\centena_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~6_cout\ = CARRY((porcentagem_potencia(4)) # (!\centena_tmp[0]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(4),
	datad => VCC,
	cin => \centena_tmp[0]~4_cout\,
	cout => \centena_tmp[0]~6_cout\);

-- Location: LCCOMB_X49_Y35_N16
\centena_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~8_cout\ = CARRY((!\centena_tmp[0]~6_cout\) # (!porcentagem_potencia(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(5),
	datad => VCC,
	cin => \centena_tmp[0]~6_cout\,
	cout => \centena_tmp[0]~8_cout\);

-- Location: LCCOMB_X49_Y35_N18
\centena_tmp[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~10_cout\ = CARRY((porcentagem_potencia(6) & !\centena_tmp[0]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(6),
	datad => VCC,
	cin => \centena_tmp[0]~8_cout\,
	cout => \centena_tmp[0]~10_cout\);

-- Location: LCCOMB_X49_Y35_N20
\centena_tmp[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp[0]~11_combout\ = \centena_tmp[0]~10_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \centena_tmp[0]~10_cout\,
	combout => \centena_tmp[0]~11_combout\);

-- Location: LCCOMB_X59_Y36_N30
\update_display~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~0_combout\ = (\Add2~32_combout\ & ((!\Add2~34_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~32_combout\,
	datad => \Add2~34_combout\,
	combout => \update_display~0_combout\);

-- Location: FF_X59_Y36_N31
\update_display[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(16));

-- Location: LCCOMB_X59_Y37_N14
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = update_display(0) $ (VCC)
-- \Add2~1\ = CARRY(update_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => update_display(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X59_Y37_N15
\update_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(0));

-- Location: LCCOMB_X59_Y37_N16
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (update_display(1) & (!\Add2~1\)) # (!update_display(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!update_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X59_Y37_N17
\update_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(1));

-- Location: LCCOMB_X59_Y37_N18
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (update_display(2) & (\Add2~3\ $ (GND))) # (!update_display(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((update_display(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X59_Y37_N19
\update_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(2));

-- Location: LCCOMB_X59_Y37_N20
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (update_display(3) & (!\Add2~5\)) # (!update_display(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!update_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X59_Y37_N21
\update_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(3));

-- Location: LCCOMB_X59_Y37_N22
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (update_display(4) & (\Add2~7\ $ (GND))) # (!update_display(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((update_display(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X59_Y37_N23
\update_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(4));

-- Location: LCCOMB_X59_Y37_N24
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (update_display(5) & (!\Add2~9\)) # (!update_display(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!update_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X59_Y37_N25
\update_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(5));

-- Location: LCCOMB_X59_Y37_N26
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (update_display(6) & (\Add2~11\ $ (GND))) # (!update_display(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((update_display(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X59_Y37_N6
\update_display~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~4_combout\ = (\Add2~12_combout\ & (((!\Add2~32_combout\) # (!\Equal2~4_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Equal2~4_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~32_combout\,
	combout => \update_display~4_combout\);

-- Location: FF_X59_Y37_N7
\update_display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(6));

-- Location: LCCOMB_X59_Y37_N28
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (update_display(7) & (!\Add2~13\)) # (!update_display(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!update_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X59_Y37_N29
\update_display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(7));

-- Location: LCCOMB_X59_Y37_N30
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (update_display(8) & (\Add2~15\ $ (GND))) # (!update_display(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((update_display(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X59_Y36_N0
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (update_display(9) & (!\Add2~17\)) # (!update_display(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!update_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X59_Y36_N1
\update_display[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(9));

-- Location: LCCOMB_X59_Y36_N2
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (update_display(10) & (\Add2~19\ $ (GND))) # (!update_display(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((update_display(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X59_Y36_N22
\update_display~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~2_combout\ = (\Add2~20_combout\ & (((!\Add2~32_combout\) # (!\Equal2~4_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Equal2~4_combout\,
	datac => \Add2~32_combout\,
	datad => \Add2~20_combout\,
	combout => \update_display~2_combout\);

-- Location: FF_X59_Y36_N23
\update_display[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(10));

-- Location: LCCOMB_X59_Y36_N4
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (update_display(11) & (!\Add2~21\)) # (!update_display(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!update_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X59_Y36_N28
\update_display~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~1_combout\ = (\Add2~22_combout\ & (((!\Add2~34_combout\) # (!\Equal2~4_combout\)) # (!\Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Equal2~4_combout\,
	datac => \Add2~22_combout\,
	datad => \Add2~34_combout\,
	combout => \update_display~1_combout\);

-- Location: FF_X59_Y36_N29
\update_display[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(11));

-- Location: LCCOMB_X59_Y36_N6
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (update_display(12) & (\Add2~23\ $ (GND))) # (!update_display(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((update_display(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X59_Y36_N7
\update_display[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(12));

-- Location: LCCOMB_X59_Y36_N8
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (update_display(13) & (!\Add2~25\)) # (!update_display(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!update_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X59_Y36_N9
\update_display[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(13));

-- Location: LCCOMB_X59_Y36_N10
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (update_display(14) & (\Add2~27\ $ (GND))) # (!update_display(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((update_display(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => update_display(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X59_Y36_N11
\update_display[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(14));

-- Location: LCCOMB_X59_Y36_N12
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (update_display(15) & (!\Add2~29\)) # (!update_display(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!update_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X59_Y36_N13
\update_display[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(15));

-- Location: LCCOMB_X59_Y36_N14
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (update_display(16) & (\Add2~31\ $ (GND))) # (!update_display(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((update_display(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => update_display(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X59_Y37_N12
\update_display~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~3_combout\ = (\Add2~16_combout\ & (((!\Add2~32_combout\) # (!\Equal2~4_combout\)) # (!\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \Equal2~4_combout\,
	datac => \Add2~16_combout\,
	datad => \Add2~32_combout\,
	combout => \update_display~3_combout\);

-- Location: FF_X59_Y37_N13
\update_display[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(8));

-- Location: LCCOMB_X59_Y36_N26
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Add2~16_combout\ & (!\Add2~18_combout\ & (\Add2~22_combout\ & \Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~22_combout\,
	datad => \Add2~20_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X59_Y36_N20
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Add2~26_combout\ & (!\Add2~30_combout\ & (!\Add2~24_combout\ & !\Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add2~30_combout\,
	datac => \Add2~24_combout\,
	datad => \Add2~28_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X59_Y37_N10
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Add2~14_combout\ & (!\Add2~10_combout\ & (\Add2~12_combout\ & !\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~10_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~8_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X59_Y37_N4
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Add2~6_combout\ & (!\Add2~2_combout\ & (!\Add2~0_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X59_Y36_N18
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~3_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X59_Y36_N24
\update_display~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \update_display~5_combout\ = (\Add2~34_combout\ & ((!\Add2~32_combout\) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \Add2~32_combout\,
	datad => \Add2~34_combout\,
	combout => \update_display~5_combout\);

-- Location: FF_X59_Y36_N25
\update_display[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \update_display~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => update_display(17));

-- Location: LCCOMB_X59_Y36_N16
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = \Add2~33\ $ (update_display(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => update_display(17),
	cin => \Add2~33\,
	combout => \Add2~34_combout\);

-- Location: LCCOMB_X59_Y37_N0
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Add2~34_combout\ & (\Equal2~4_combout\ & \Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datac => \Equal2~4_combout\,
	datad => \Add2~32_combout\,
	combout => \Equal2~5_combout\);

-- Location: FF_X49_Y35_N21
\centena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \centena_tmp[0]~11_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(0));

-- Location: LCCOMB_X46_Y36_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = porcentagem_potencia(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(porcentagem_potencia(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X46_Y36_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (porcentagem_potencia(3) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!porcentagem_potencia(3) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!porcentagem_potencia(3) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X46_Y36_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (porcentagem_potencia(4) & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!porcentagem_potencia(4) & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((porcentagem_potencia(4)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X46_Y36_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (porcentagem_potencia(5) & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!porcentagem_potencia(5) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!porcentagem_potencia(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X46_Y36_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (porcentagem_potencia(6) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!porcentagem_potencia(6) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((porcentagem_potencia(6) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X46_Y36_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X46_Y36_N30
\Mod0|auto_generated|divider|divider|StageOut[48]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\);

-- Location: LCCOMB_X46_Y36_N8
\Mod0|auto_generated|divider|divider|StageOut[48]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\ = (porcentagem_potencia(6) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\);

-- Location: LCCOMB_X47_Y36_N2
\Mod0|auto_generated|divider|divider|StageOut[47]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\);

-- Location: LCCOMB_X47_Y36_N0
\Mod0|auto_generated|divider|divider|StageOut[47]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\ = (porcentagem_potencia(5) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\);

-- Location: LCCOMB_X46_Y36_N6
\Mod0|auto_generated|divider|divider|StageOut[46]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\);

-- Location: LCCOMB_X46_Y36_N0
\Mod0|auto_generated|divider|divider|StageOut[46]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\ = (porcentagem_potencia(4) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\);

-- Location: LCCOMB_X46_Y37_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X46_Y37_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X46_Y37_N24
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X46_Y37_N26
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X46_Y37_N30
\Div1|auto_generated|divider|divider|StageOut[17]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~72_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~72_combout\);

-- Location: LCCOMB_X47_Y37_N4
\Div1|auto_generated|divider|divider|StageOut[18]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((porcentagem_potencia(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datab => porcentagem_potencia(6),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~71_combout\);

-- Location: LCCOMB_X46_Y37_N18
\Div1|auto_generated|divider|divider|StageOut[18]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~52_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~52_combout\);

-- Location: LCCOMB_X46_Y37_N16
\Div1|auto_generated|divider|divider|StageOut[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~53_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~53_combout\);

-- Location: LCCOMB_X47_Y37_N6
\Div1|auto_generated|divider|divider|StageOut[16]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((porcentagem_potencia(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => porcentagem_potencia(4),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~73_combout\);

-- Location: LCCOMB_X46_Y37_N14
\Div1|auto_generated|divider|divider|StageOut[16]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~54_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~54_combout\);

-- Location: LCCOMB_X47_Y37_N20
\Div1|auto_generated|divider|divider|StageOut[15]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~74_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((porcentagem_potencia(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => porcentagem_potencia(3),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~74_combout\);

-- Location: LCCOMB_X47_Y37_N30
\Mod0|auto_generated|divider|divider|StageOut[45]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\ = (porcentagem_potencia(3) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\);

-- Location: LCCOMB_X47_Y37_N24
\Mod0|auto_generated|divider|divider|StageOut[45]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\);

-- Location: LCCOMB_X47_Y37_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[45]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[45]~7_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X46_Y37_N28
\Div1|auto_generated|divider|divider|StageOut[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\);

-- Location: LCCOMB_X46_Y37_N0
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~55_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~55_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X46_Y37_N2
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~73_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~73_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~73_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~54_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X46_Y37_N4
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~72_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~53_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~72_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~53_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~72_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~72_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X46_Y37_N6
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~71_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~52_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~71_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X46_Y37_N8
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X47_Y37_N28
\Div1|auto_generated|divider|divider|StageOut[23]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~72_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[17]~72_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~65_combout\);

-- Location: LCCOMB_X50_Y37_N8
\Div1|auto_generated|divider|divider|StageOut[23]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\);

-- Location: LCCOMB_X47_Y37_N26
\Div1|auto_generated|divider|divider|StageOut[22]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~73_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~66_combout\);

-- Location: LCCOMB_X46_Y37_N10
\Div1|auto_generated|divider|divider|StageOut[22]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\);

-- Location: LCCOMB_X47_Y37_N22
\Div1|auto_generated|divider|divider|StageOut[21]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\);

-- Location: LCCOMB_X46_Y37_N12
\Div1|auto_generated|divider|divider|StageOut[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~74_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X50_Y37_N12
\Mod0|auto_generated|divider|divider|StageOut[44]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~9_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~9_combout\);

-- Location: LCCOMB_X50_Y37_N2
\Mod0|auto_generated|divider|divider|StageOut[44]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~8_combout\ = (porcentagem_potencia(2) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(2),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~8_combout\);

-- Location: LCCOMB_X50_Y37_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~9_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[44]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~9_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X50_Y37_N30
\Div1|auto_generated|divider|divider|StageOut[20]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\);

-- Location: LCCOMB_X50_Y37_N28
\Div1|auto_generated|divider|divider|StageOut[20]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((porcentagem_potencia(2)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => porcentagem_potencia(2),
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~75_combout\);

-- Location: LCCOMB_X49_Y37_N0
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~75_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~59_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~59_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~75_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X49_Y37_N2
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~58_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~58_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X49_Y37_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~57_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X49_Y37_N6
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~65_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~56_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y37_N8
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y37_N18
\dezena_tmp[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[1]~13_combout\ = !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \dezena_tmp[1]~13_combout\);

-- Location: FF_X50_Y37_N19
\dezena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[1]~13_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(1));

-- Location: LCCOMB_X50_Y37_N4
\dezena_tmp[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[2]~12_combout\ = !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezena_tmp[2]~12_combout\);

-- Location: FF_X50_Y37_N5
\dezena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[2]~12_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(2));

-- Location: LCCOMB_X49_Y37_N30
\Div1|auto_generated|divider|divider|StageOut[28]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~60_combout\);

-- Location: LCCOMB_X49_Y37_N28
\Div1|auto_generated|divider|divider|StageOut[28]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~66_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X49_Y37_N12
\Div1|auto_generated|divider|divider|StageOut[27]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~61_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~61_combout\);

-- Location: LCCOMB_X50_Y37_N10
\Div1|auto_generated|divider|divider|StageOut[27]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~67_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X49_Y37_N26
\Div1|auto_generated|divider|divider|StageOut[26]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~62_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~62_combout\);

-- Location: LCCOMB_X49_Y37_N14
\Div1|auto_generated|divider|divider|StageOut[26]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~75_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[20]~75_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X49_Y37_N10
\Div1|auto_generated|divider|divider|StageOut[25]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~63_combout\ = (porcentagem_potencia(1) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(1),
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~63_combout\);

-- Location: LCCOMB_X50_Y37_N22
\Mod0|auto_generated|divider|divider|StageOut[43]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~11_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & porcentagem_potencia(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => porcentagem_potencia(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~11_combout\);

-- Location: LCCOMB_X50_Y37_N16
\Mod0|auto_generated|divider|divider|StageOut[43]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & porcentagem_potencia(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => porcentagem_potencia(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~10_combout\);

-- Location: LCCOMB_X50_Y37_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~11_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[43]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[43]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X50_Y37_N0
\Div1|auto_generated|divider|divider|StageOut[25]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\);

-- Location: LCCOMB_X49_Y37_N16
\dezena_tmp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~2_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~63_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~64_combout\,
	datad => VCC,
	cout => \dezena_tmp[0]~2_cout\);

-- Location: LCCOMB_X49_Y37_N18
\dezena_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~4_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & !\dezena_tmp[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~2_cout\,
	cout => \dezena_tmp[0]~4_cout\);

-- Location: LCCOMB_X49_Y37_N20
\dezena_tmp[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~6_cout\ = CARRY((!\dezena_tmp[0]~4_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~61_combout\) # (\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~61_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~4_cout\,
	cout => \dezena_tmp[0]~6_cout\);

-- Location: LCCOMB_X49_Y37_N22
\dezena_tmp[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~8_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & !\dezena_tmp[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \dezena_tmp[0]~6_cout\,
	cout => \dezena_tmp[0]~8_cout\);

-- Location: LCCOMB_X49_Y37_N24
\dezena_tmp[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[0]~9_combout\ = !\dezena_tmp[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dezena_tmp[0]~8_cout\,
	combout => \dezena_tmp[0]~9_combout\);

-- Location: FF_X49_Y37_N25
\dezena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[0]~9_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(0));

-- Location: LCCOMB_X58_Y37_N20
\dezena_tmp[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp[3]~11_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \dezena_tmp[3]~11_combout\);

-- Location: FF_X58_Y37_N21
\dezena_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \dezena_tmp[3]~11_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(3));

-- Location: LCCOMB_X62_Y49_N0
\display_dezena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[0]~0_combout\ = (dezena_tmp(1) & (((dezena_tmp(3))))) # (!dezena_tmp(1) & (dezena_tmp(2) $ (((dezena_tmp(0) & !dezena_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[0]~0_combout\);

-- Location: LCCOMB_X62_Y49_N26
\display_dezena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[1]~1_combout\ = (dezena_tmp(2) & ((dezena_tmp(3)) # (dezena_tmp(1) $ (dezena_tmp(0))))) # (!dezena_tmp(2) & (dezena_tmp(1) & ((dezena_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[1]~1_combout\);

-- Location: LCCOMB_X62_Y49_N20
\display_dezena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[2]~2_combout\ = (dezena_tmp(2) & (((!dezena_tmp(3))))) # (!dezena_tmp(2) & (((dezena_tmp(0) & !dezena_tmp(3))) # (!dezena_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[2]~2_combout\);

-- Location: LCCOMB_X62_Y49_N10
\display_dezena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[3]~3_combout\ = (dezena_tmp(1) & ((dezena_tmp(3)) # ((dezena_tmp(2) & dezena_tmp(0))))) # (!dezena_tmp(1) & (dezena_tmp(2) $ (((dezena_tmp(0) & !dezena_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[3]~3_combout\);

-- Location: LCCOMB_X62_Y49_N28
\display_dezena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[4]~4_combout\ = (dezena_tmp(0)) # ((dezena_tmp(1) & ((dezena_tmp(3)))) # (!dezena_tmp(1) & (dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[4]~4_combout\);

-- Location: LCCOMB_X62_Y49_N2
\display_dezena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[5]~5_combout\ = (dezena_tmp(2) & (!dezena_tmp(3) & ((!dezena_tmp(0)) # (!dezena_tmp(1))))) # (!dezena_tmp(2) & (!dezena_tmp(1) & ((dezena_tmp(3)) # (!dezena_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[5]~5_combout\);

-- Location: LCCOMB_X62_Y49_N16
\display_dezena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[6]~6_combout\ = (dezena_tmp(1) & ((dezena_tmp(3)) # ((dezena_tmp(2) & dezena_tmp(0))))) # (!dezena_tmp(1) & (dezena_tmp(2) $ (((!dezena_tmp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(3),
	combout => \display_dezena|out_display[6]~6_combout\);

-- Location: LCCOMB_X46_Y36_N10
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[46]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[46]~4_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X46_Y36_N12
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[47]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[47]~2_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X46_Y36_N14
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X46_Y36_N16
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X49_Y36_N22
\Mod1|auto_generated|divider|divider|StageOut[24]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => porcentagem_potencia(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\);

-- Location: LCCOMB_X49_Y36_N8
\Mod1|auto_generated|divider|divider|StageOut[24]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\);

-- Location: LCCOMB_X49_Y36_N26
\Mod1|auto_generated|divider|divider|StageOut[23]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\);

-- Location: LCCOMB_X49_Y36_N2
\Mod1|auto_generated|divider|divider|StageOut[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\);

-- Location: LCCOMB_X49_Y36_N28
\Mod1|auto_generated|divider|divider|StageOut[22]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => porcentagem_potencia(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\);

-- Location: LCCOMB_X49_Y36_N4
\Mod1|auto_generated|divider|divider|StageOut[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\);

-- Location: LCCOMB_X49_Y36_N30
\Mod1|auto_generated|divider|divider|StageOut[21]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => porcentagem_potencia(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\);

-- Location: LCCOMB_X49_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[21]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => porcentagem_potencia(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\);

-- Location: LCCOMB_X49_Y36_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X49_Y36_N14
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~80_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X49_Y36_N16
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[23]~79_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X49_Y36_N18
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~78_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X49_Y36_N20
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X50_Y36_N26
\Mod1|auto_generated|divider|divider|StageOut[28]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((porcentagem_potencia(2)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => porcentagem_potencia(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\);

-- Location: LCCOMB_X49_Y36_N6
\Mod1|auto_generated|divider|divider|StageOut[28]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (porcentagem_potencia(2))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(2),
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\);

-- Location: LCCOMB_X50_Y36_N2
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X49_Y36_N10
\Mod1|auto_generated|divider|divider|StageOut[32]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\);

-- Location: LCCOMB_X50_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[32]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~103_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\);

-- Location: LCCOMB_X50_Y36_N22
\Mod1|auto_generated|divider|divider|StageOut[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[23]~104_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\);

-- Location: LCCOMB_X49_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[31]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\);

-- Location: LCCOMB_X50_Y36_N28
\Mod1|auto_generated|divider|divider|StageOut[30]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\);

-- Location: LCCOMB_X50_Y36_N16
\Mod1|auto_generated|divider|divider|StageOut[30]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~105_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\);

-- Location: LCCOMB_X50_Y36_N30
\Mod1|auto_generated|divider|divider|StageOut[29]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~106_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[21]~107_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\);

-- Location: LCCOMB_X50_Y36_N20
\Mod1|auto_generated|divider|divider|StageOut[29]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\);

-- Location: LCCOMB_X50_Y36_N4
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[29]~85_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X50_Y36_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X50_Y36_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~82_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X50_Y36_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~81_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X50_Y36_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X50_Y36_N14
\Mod1|auto_generated|divider|divider|StageOut[36]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\);

-- Location: LCCOMB_X52_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[36]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~108_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[28]~109_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\);

-- Location: LCCOMB_X52_Y36_N2
\Mod1|auto_generated|divider|divider|StageOut[35]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\ = (porcentagem_potencia(1) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\);

-- Location: LCCOMB_X52_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[35]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\ = (porcentagem_potencia(1) & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\);

-- Location: LCCOMB_X51_Y36_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X51_Y36_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X51_Y36_N30
\Mod1|auto_generated|divider|divider|StageOut[40]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~90_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~90_combout\);

-- Location: LCCOMB_X51_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[40]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~96_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~100_combout\);

-- Location: LCCOMB_X51_Y36_N6
\Mod1|auto_generated|divider|divider|StageOut[39]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~101_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~101_combout\);

-- Location: LCCOMB_X51_Y36_N24
\Mod1|auto_generated|divider|divider|StageOut[39]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~91_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~91_combout\);

-- Location: LCCOMB_X50_Y36_N0
\Mod1|auto_generated|divider|divider|StageOut[38]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~102_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~102_combout\);

-- Location: LCCOMB_X51_Y36_N2
\Mod1|auto_generated|divider|divider|StageOut[38]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~92_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~92_combout\);

-- Location: LCCOMB_X51_Y36_N26
\Mod1|auto_generated|divider|divider|StageOut[37]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\);

-- Location: LCCOMB_X50_Y36_N18
\Mod1|auto_generated|divider|divider|StageOut[37]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[29]~84_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\);

-- Location: LCCOMB_X51_Y36_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X51_Y36_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[38]~102_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[38]~92_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~102_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~92_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X51_Y36_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[39]~101_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[39]~91_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[39]~101_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[39]~91_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X51_Y36_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[40]~90_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[40]~100_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~100_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X51_Y36_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X51_Y36_N22
\Mod1|auto_generated|divider|divider|StageOut[44]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~94_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~87_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~94_combout\);

-- Location: FF_X51_Y36_N23
\unidade_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[44]~94_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(2));

-- Location: LCCOMB_X51_Y36_N4
\Mod1|auto_generated|divider|divider|StageOut[43]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~110_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~95_combout\);

-- Location: FF_X51_Y36_N5
\unidade_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[43]~95_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(1));

-- Location: LCCOMB_X51_Y36_N28
\Mod1|auto_generated|divider|divider|StageOut[45]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~93_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~99_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[37]~86_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~93_combout\);

-- Location: FF_X51_Y36_N29
\unidade_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[45]~93_combout\,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(3));

-- Location: FF_X51_Y36_N15
\unidade_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => porcentagem_potencia(0),
	sload => VCC,
	ena => \Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(0));

-- Location: LCCOMB_X59_Y50_N0
\display_unidade|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[0]~0_combout\ = (unidade_tmp(1) & (((unidade_tmp(3))))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[0]~0_combout\);

-- Location: LCCOMB_X59_Y50_N22
\display_unidade|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[1]~1_combout\ = (unidade_tmp(2) & ((unidade_tmp(3)) # (unidade_tmp(1) $ (unidade_tmp(0))))) # (!unidade_tmp(2) & (unidade_tmp(1) & (unidade_tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[1]~1_combout\);

-- Location: LCCOMB_X59_Y50_N28
\display_unidade|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[2]~2_combout\ = (unidade_tmp(2) & (((!unidade_tmp(3))))) # (!unidade_tmp(2) & (((!unidade_tmp(3) & unidade_tmp(0))) # (!unidade_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[2]~2_combout\);

-- Location: LCCOMB_X59_Y50_N2
\display_unidade|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[3]~3_combout\ = (unidade_tmp(1) & ((unidade_tmp(3)) # ((unidade_tmp(2) & unidade_tmp(0))))) # (!unidade_tmp(1) & (unidade_tmp(2) $ (((!unidade_tmp(3) & unidade_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[3]~3_combout\);

-- Location: LCCOMB_X59_Y50_N4
\display_unidade|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[4]~4_combout\ = (unidade_tmp(0)) # ((unidade_tmp(1) & ((unidade_tmp(3)))) # (!unidade_tmp(1) & (unidade_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[4]~4_combout\);

-- Location: LCCOMB_X59_Y50_N10
\display_unidade|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[5]~5_combout\ = (unidade_tmp(2) & (!unidade_tmp(3) & ((!unidade_tmp(0)) # (!unidade_tmp(1))))) # (!unidade_tmp(2) & (!unidade_tmp(1) & ((unidade_tmp(3)) # (!unidade_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[5]~5_combout\);

-- Location: LCCOMB_X59_Y50_N24
\display_unidade|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[6]~6_combout\ = (unidade_tmp(2) & ((unidade_tmp(3)) # ((unidade_tmp(1) & unidade_tmp(0))))) # (!unidade_tmp(2) & (unidade_tmp(1) $ ((!unidade_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => unidade_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(0),
	combout => \display_unidade|out_display[6]~6_combout\);

-- Location: FF_X30_Y28_N17
\controlador|count_triac[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(2));

-- Location: FF_X30_Y28_N23
\controlador|count_triac[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(5));

-- Location: LCCOMB_X30_Y28_N16
\controlador|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~4_combout\ = (\controlador|count_triac\(2) & (\controlador|Add1~3\ $ (GND))) # (!\controlador|count_triac\(2) & (!\controlador|Add1~3\ & VCC))
-- \controlador|Add1~5\ = CARRY((\controlador|count_triac\(2) & !\controlador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_triac\(2),
	datad => VCC,
	cin => \controlador|Add1~3\,
	combout => \controlador|Add1~4_combout\,
	cout => \controlador|Add1~5\);

-- Location: LCCOMB_X30_Y28_N18
\controlador|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~6_combout\ = (\controlador|count_triac\(3) & (!\controlador|Add1~5\)) # (!\controlador|count_triac\(3) & ((\controlador|Add1~5\) # (GND)))
-- \controlador|Add1~7\ = CARRY((!\controlador|Add1~5\) # (!\controlador|count_triac\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_triac\(3),
	datad => VCC,
	cin => \controlador|Add1~5\,
	combout => \controlador|Add1~6_combout\,
	cout => \controlador|Add1~7\);

-- Location: FF_X30_Y28_N29
\controlador|count_triac[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(8));

-- Location: LCCOMB_X30_Y28_N22
\controlador|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~10_combout\ = (\controlador|count_triac\(5) & (!\controlador|Add1~9\)) # (!\controlador|count_triac\(5) & ((\controlador|Add1~9\) # (GND)))
-- \controlador|Add1~11\ = CARRY((!\controlador|Add1~9\) # (!\controlador|count_triac\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_triac\(5),
	datad => VCC,
	cin => \controlador|Add1~9\,
	combout => \controlador|Add1~10_combout\,
	cout => \controlador|Add1~11\);

-- Location: LCCOMB_X30_Y28_N24
\controlador|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~12_combout\ = (\controlador|count_triac\(6) & (\controlador|Add1~11\ $ (GND))) # (!\controlador|count_triac\(6) & (!\controlador|Add1~11\ & VCC))
-- \controlador|Add1~13\ = CARRY((\controlador|count_triac\(6) & !\controlador|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_triac\(6),
	datad => VCC,
	cin => \controlador|Add1~11\,
	combout => \controlador|Add1~12_combout\,
	cout => \controlador|Add1~13\);

-- Location: FF_X30_Y28_N25
\controlador|count_triac[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(6));

-- Location: LCCOMB_X30_Y28_N26
\controlador|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~14_combout\ = (\controlador|count_triac\(7) & (!\controlador|Add1~13\)) # (!\controlador|count_triac\(7) & ((\controlador|Add1~13\) # (GND)))
-- \controlador|Add1~15\ = CARRY((!\controlador|Add1~13\) # (!\controlador|count_triac\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_triac\(7),
	datad => VCC,
	cin => \controlador|Add1~13\,
	combout => \controlador|Add1~14_combout\,
	cout => \controlador|Add1~15\);

-- Location: FF_X30_Y28_N27
\controlador|count_triac[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(7));

-- Location: LCCOMB_X30_Y28_N28
\controlador|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~16_combout\ = \controlador|Add1~15\ $ (!\controlador|count_triac\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador|count_triac\(8),
	cin => \controlador|Add1~15\,
	combout => \controlador|Add1~16_combout\);

-- Location: LCCOMB_X30_Y28_N8
\controlador|count_triac~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_triac~1_combout\ = (\controlador|Add1~6_combout\ & (((\controlador|Add1~16_combout\) # (!\controlador|Equal0~1_combout\)) # (!\controlador|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~0_combout\,
	datab => \controlador|Add1~6_combout\,
	datac => \controlador|Equal0~1_combout\,
	datad => \controlador|Add1~16_combout\,
	combout => \controlador|count_triac~1_combout\);

-- Location: FF_X30_Y28_N9
\controlador|count_triac[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_triac~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(3));

-- Location: LCCOMB_X30_Y28_N20
\controlador|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~8_combout\ = (\controlador|count_triac\(4) & (\controlador|Add1~7\ $ (GND))) # (!\controlador|count_triac\(4) & (!\controlador|Add1~7\ & VCC))
-- \controlador|Add1~9\ = CARRY((\controlador|count_triac\(4) & !\controlador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_triac\(4),
	datad => VCC,
	cin => \controlador|Add1~7\,
	combout => \controlador|Add1~8_combout\,
	cout => \controlador|Add1~9\);

-- Location: FF_X30_Y28_N21
\controlador|count_triac[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(4));

-- Location: LCCOMB_X30_Y28_N4
\controlador|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~1_combout\ = (!\controlador|Add1~10_combout\ & (!\controlador|Add1~12_combout\ & (!\controlador|Add1~14_combout\ & !\controlador|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~10_combout\,
	datab => \controlador|Add1~12_combout\,
	datac => \controlador|Add1~14_combout\,
	datad => \controlador|Add1~8_combout\,
	combout => \controlador|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y28_N12
\controlador|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~0_combout\ = (\controlador|count_triac\(0) & (\controlador|disparo_triac~q\ $ (VCC))) # (!\controlador|count_triac\(0) & (\controlador|disparo_triac~q\ & VCC))
-- \controlador|Add1~1\ = CARRY((\controlador|count_triac\(0) & \controlador|disparo_triac~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_triac\(0),
	datab => \controlador|disparo_triac~q\,
	datad => VCC,
	combout => \controlador|Add1~0_combout\,
	cout => \controlador|Add1~1\);

-- Location: FF_X30_Y28_N13
\controlador|count_triac[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(0));

-- Location: LCCOMB_X30_Y28_N14
\controlador|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add1~2_combout\ = (\controlador|count_triac\(1) & (!\controlador|Add1~1\)) # (!\controlador|count_triac\(1) & ((\controlador|Add1~1\) # (GND)))
-- \controlador|Add1~3\ = CARRY((!\controlador|Add1~1\) # (!\controlador|count_triac\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_triac\(1),
	datad => VCC,
	cin => \controlador|Add1~1\,
	combout => \controlador|Add1~2_combout\,
	cout => \controlador|Add1~3\);

-- Location: LCCOMB_X30_Y28_N30
\controlador|count_triac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_triac~0_combout\ = (\controlador|Add1~2_combout\ & (((\controlador|Add1~16_combout\) # (!\controlador|Equal0~1_combout\)) # (!\controlador|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~0_combout\,
	datab => \controlador|Equal0~1_combout\,
	datac => \controlador|Add1~2_combout\,
	datad => \controlador|Add1~16_combout\,
	combout => \controlador|count_triac~0_combout\);

-- Location: FF_X30_Y28_N31
\controlador|count_triac[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_triac~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_triac\(1));

-- Location: LCCOMB_X30_Y28_N10
\controlador|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~0_combout\ = (!\controlador|Add1~4_combout\ & (!\controlador|Add1~0_combout\ & (\controlador|Add1~2_combout\ & \controlador|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add1~4_combout\,
	datab => \controlador|Add1~0_combout\,
	datac => \controlador|Add1~2_combout\,
	datad => \controlador|Add1~6_combout\,
	combout => \controlador|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y28_N6
\controlador|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Equal0~2_combout\ = (\controlador|Equal0~0_combout\ & (\controlador|Equal0~1_combout\ & !\controlador|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~0_combout\,
	datac => \controlador|Equal0~1_combout\,
	datad => \controlador|Add1~16_combout\,
	combout => \controlador|Equal0~2_combout\);

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

-- Location: LCCOMB_X31_Y28_N16
\controlador|rising_passagem_zero~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|rising_passagem_zero~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controlador|rising_passagem_zero~feeder_combout\);

-- Location: FF_X31_Y28_N15
\controlador|reset_passagem_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	asdata => \controlador|rising_passagem_zero~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|reset_passagem_zero~q\);

-- Location: FF_X31_Y28_N17
\controlador|rising_passagem_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \passagem_zero~input_o\,
	d => \controlador|rising_passagem_zero~feeder_combout\,
	clrn => \controlador|ALT_INV_reset_passagem_zero~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|rising_passagem_zero~q\);

-- Location: LCCOMB_X45_Y36_N30
\controlador|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan5~0_combout\ = (porcentagem_potencia(3) & (porcentagem_potencia(2) & porcentagem_potencia(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan5~0_combout\);

-- Location: LCCOMB_X44_Y35_N28
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!porcentagem_potencia(5) & !porcentagem_potencia(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(5),
	datad => porcentagem_potencia(4),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X43_Y35_N28
\controlador|pulsos_potencia[13]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[13]~8_combout\ = (!porcentagem_potencia(6) & (\Equal1~2_combout\ & ((!\controlador|LessThan5~0_combout\) # (!porcentagem_potencia(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => porcentagem_potencia(6),
	datac => \controlador|LessThan5~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \controlador|pulsos_potencia[13]~8_combout\);

-- Location: LCCOMB_X44_Y36_N6
\controlador|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan17~0_combout\ = (!porcentagem_potencia(5) & (((\Equal1~3_combout\) # (!porcentagem_potencia(4))) # (!porcentagem_potencia(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => \Equal1~3_combout\,
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(5),
	combout => \controlador|LessThan17~0_combout\);

-- Location: LCCOMB_X43_Y35_N22
\controlador|pulsos_potencia[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~10_combout\ = (porcentagem_potencia(6) & !\controlador|LessThan17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datad => \controlador|LessThan17~0_combout\,
	combout => \controlador|pulsos_potencia[8]~10_combout\);

-- Location: LCCOMB_X44_Y36_N0
\controlador|LessThan12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan12~0_combout\ = ((porcentagem_potencia(2)) # ((porcentagem_potencia(0)) # (porcentagem_potencia(1)))) # (!\controlador|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~0_combout\,
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(0),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan12~0_combout\);

-- Location: LCCOMB_X44_Y35_N30
\controlador|pulsos_potencia[12]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[12]~9_combout\ = (porcentagem_potencia(6) & ((porcentagem_potencia(5)) # (\controlador|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan12~0_combout\,
	combout => \controlador|pulsos_potencia[12]~9_combout\);

-- Location: LCCOMB_X44_Y36_N30
\controlador|LessThan16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan16~0_combout\ = (!porcentagem_potencia(3) & (((!porcentagem_potencia(0) & !porcentagem_potencia(1))) # (!porcentagem_potencia(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(0),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan16~0_combout\);

-- Location: LCCOMB_X43_Y35_N30
\controlador|pulsos_potencia[12]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[12]~72_combout\ = (\controlador|pulsos_potencia[12]~9_combout\ & ((porcentagem_potencia(5)) # ((porcentagem_potencia(4) & !\controlador|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datab => porcentagem_potencia(5),
	datac => \controlador|pulsos_potencia[12]~9_combout\,
	datad => \controlador|LessThan16~0_combout\,
	combout => \controlador|pulsos_potencia[12]~72_combout\);

-- Location: LCCOMB_X43_Y35_N16
\controlador|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan0~2_combout\ = (!porcentagem_potencia(5) & (!porcentagem_potencia(6) & (!porcentagem_potencia(4) & \controlador|LessThan16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(4),
	datad => \controlador|LessThan16~0_combout\,
	combout => \controlador|LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y35_N4
\controlador|pulsos_potencia[12]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[12]~11_combout\ = (\controlador|pulsos_potencia[12]~72_combout\ & (!\controlador|pulsos_potencia[8]~10_combout\)) # (!\controlador|pulsos_potencia[12]~72_combout\ & (((!\controlador|pulsos_potencia[13]~8_combout\ & 
-- !\controlador|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[8]~10_combout\,
	datab => \controlador|pulsos_potencia[13]~8_combout\,
	datac => \controlador|pulsos_potencia[12]~72_combout\,
	datad => \controlador|LessThan0~2_combout\,
	combout => \controlador|pulsos_potencia[12]~11_combout\);

-- Location: LCCOMB_X44_Y36_N8
\controlador|pulsos_potencia[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~12_combout\ = (porcentagem_potencia(3) & ((porcentagem_potencia(2)) # ((porcentagem_potencia(0) & porcentagem_potencia(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(0),
	datad => porcentagem_potencia(1),
	combout => \controlador|pulsos_potencia[11]~12_combout\);

-- Location: LCCOMB_X44_Y35_N4
\controlador|pulsos_potencia[11]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~70_combout\ = (!porcentagem_potencia(4) & (!porcentagem_potencia(5) & !\controlador|pulsos_potencia[11]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[11]~12_combout\,
	combout => \controlador|pulsos_potencia[11]~70_combout\);

-- Location: LCCOMB_X43_Y35_N6
\controlador|pulsos_potencia[11]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~13_combout\ = (!\controlador|pulsos_potencia[11]~70_combout\ & (!\controlador|LessThan17~0_combout\ & porcentagem_potencia(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[11]~70_combout\,
	datac => \controlador|LessThan17~0_combout\,
	datad => porcentagem_potencia(6),
	combout => \controlador|pulsos_potencia[11]~13_combout\);

-- Location: LCCOMB_X44_Y35_N12
\controlador|pulsos_potencia[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[7]~16_combout\ = (porcentagem_potencia(6) & (((\controlador|pulsos_potencia[11]~12_combout\) # (!\Equal1~2_combout\)))) # (!porcentagem_potencia(6) & (\controlador|LessThan16~0_combout\ & (\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan16~0_combout\,
	datab => porcentagem_potencia(6),
	datac => \Equal1~2_combout\,
	datad => \controlador|pulsos_potencia[11]~12_combout\,
	combout => \controlador|pulsos_potencia[7]~16_combout\);

-- Location: LCCOMB_X43_Y36_N22
\controlador|pulsos_potencia[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~14_combout\ = (!porcentagem_potencia(5) & ((porcentagem_potencia(4)) # ((porcentagem_potencia(0) & \controlador|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => porcentagem_potencia(4),
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan5~0_combout\,
	combout => \controlador|pulsos_potencia[11]~14_combout\);

-- Location: LCCOMB_X43_Y36_N0
\controlador|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan10~0_combout\ = (!porcentagem_potencia(3) & (((!porcentagem_potencia(1)) # (!porcentagem_potencia(2))) # (!porcentagem_potencia(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan10~0_combout\);

-- Location: LCCOMB_X43_Y36_N6
\controlador|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan9~0_combout\ = (porcentagem_potencia(4) & ((porcentagem_potencia(2)) # ((porcentagem_potencia(3)) # (porcentagem_potencia(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(3),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan9~0_combout\);

-- Location: LCCOMB_X43_Y36_N8
\controlador|pulsos_potencia[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~15_combout\ = (\controlador|pulsos_potencia[11]~14_combout\) # ((porcentagem_potencia(5) & ((\controlador|LessThan10~0_combout\) # (!\controlador|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[11]~14_combout\,
	datab => \controlador|LessThan10~0_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan9~0_combout\,
	combout => \controlador|pulsos_potencia[11]~15_combout\);

-- Location: LCCOMB_X43_Y35_N12
\controlador|pulsos_potencia[11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[11]~17_combout\ = (\controlador|pulsos_potencia[11]~13_combout\) # ((!porcentagem_potencia(6) & (!\controlador|pulsos_potencia[7]~16_combout\ & \controlador|pulsos_potencia[11]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[11]~13_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[7]~16_combout\,
	datad => \controlador|pulsos_potencia[11]~15_combout\,
	combout => \controlador|pulsos_potencia[11]~17_combout\);

-- Location: LCCOMB_X46_Y35_N0
\controlador|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan1~0_combout\ = (!porcentagem_potencia(4) & (((!porcentagem_potencia(1) & !porcentagem_potencia(2))) # (!porcentagem_potencia(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(4),
	combout => \controlador|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y35_N8
\controlador|pulsos_potencia[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[9]~19_combout\ = (!\controlador|LessThan1~0_combout\ & ((porcentagem_potencia(4)) # ((\controlador|LessThan5~0_combout\ & porcentagem_potencia(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(4),
	datab => \controlador|LessThan1~0_combout\,
	datac => \controlador|LessThan5~0_combout\,
	datad => porcentagem_potencia(0),
	combout => \controlador|pulsos_potencia[9]~19_combout\);

-- Location: LCCOMB_X44_Y35_N10
\controlador|pulsos_potencia[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[10]~20_combout\ = (!\controlador|pulsos_potencia[7]~16_combout\ & ((porcentagem_potencia(5)) # (\controlador|pulsos_potencia[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datac => \controlador|pulsos_potencia[9]~19_combout\,
	datad => \controlador|pulsos_potencia[7]~16_combout\,
	combout => \controlador|pulsos_potencia[10]~20_combout\);

-- Location: LCCOMB_X45_Y35_N18
\controlador|pulsos_potencia[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[10]~21_combout\ = (!porcentagem_potencia(5) & ((!porcentagem_potencia(4)) # (!\controlador|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datac => \controlador|LessThan5~0_combout\,
	datad => porcentagem_potencia(4),
	combout => \controlador|pulsos_potencia[10]~21_combout\);

-- Location: LCCOMB_X43_Y35_N26
\controlador|pulsos_potencia[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[10]~18_combout\ = (porcentagem_potencia(6) & ((\controlador|pulsos_potencia[11]~70_combout\ & ((!\controlador|LessThan0~2_combout\))) # (!\controlador|pulsos_potencia[11]~70_combout\ & (!\controlador|LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[11]~70_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|LessThan17~0_combout\,
	datad => \controlador|LessThan0~2_combout\,
	combout => \controlador|pulsos_potencia[10]~18_combout\);

-- Location: LCCOMB_X43_Y36_N10
\controlador|pulsos_potencia[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~22_combout\ = (porcentagem_potencia(4) & (porcentagem_potencia(5) & !\controlador|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(4),
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan10~0_combout\,
	combout => \controlador|pulsos_potencia[2]~22_combout\);

-- Location: LCCOMB_X43_Y36_N20
\controlador|porcentagem_to_pulsos~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~14_combout\ = ((!porcentagem_potencia(1) & (!porcentagem_potencia(3) & !porcentagem_potencia(2)))) # (!\controlador|pulsos_potencia[2]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => \controlador|pulsos_potencia[2]~22_combout\,
	combout => \controlador|porcentagem_to_pulsos~14_combout\);

-- Location: LCCOMB_X44_Y35_N20
\controlador|pulsos_potencia[10]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[10]~23_combout\ = (\controlador|pulsos_potencia[10]~18_combout\) # ((\controlador|pulsos_potencia[10]~20_combout\ & ((\controlador|pulsos_potencia[10]~21_combout\) # (!\controlador|porcentagem_to_pulsos~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[10]~20_combout\,
	datab => \controlador|pulsos_potencia[10]~21_combout\,
	datac => \controlador|pulsos_potencia[10]~18_combout\,
	datad => \controlador|porcentagem_to_pulsos~14_combout\,
	combout => \controlador|pulsos_potencia[10]~23_combout\);

-- Location: LCCOMB_X45_Y35_N12
\controlador|pulsos_potencia[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[1]~24_combout\ = (!porcentagem_potencia(6) & (((!porcentagem_potencia(3) & !porcentagem_potencia(4))) # (!porcentagem_potencia(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(6),
	combout => \controlador|pulsos_potencia[1]~24_combout\);

-- Location: LCCOMB_X45_Y35_N4
\controlador|pulsos_potencia[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[9]~27_combout\ = (porcentagem_potencia(5)) # ((porcentagem_potencia(6)) # ((\controlador|LessThan0~2_combout\) # (!\controlador|pulsos_potencia[1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => porcentagem_potencia(6),
	datac => \controlador|LessThan0~2_combout\,
	datad => \controlador|pulsos_potencia[1]~24_combout\,
	combout => \controlador|pulsos_potencia[9]~27_combout\);

-- Location: LCCOMB_X44_Y36_N26
\controlador|pulsos_potencia[9]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[9]~25_combout\ = (porcentagem_potencia(4) & (porcentagem_potencia(3) & ((porcentagem_potencia(0)) # (!\Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => \Equal1~3_combout\,
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(3),
	combout => \controlador|pulsos_potencia[9]~25_combout\);

-- Location: LCCOMB_X46_Y35_N18
\controlador|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan3~0_combout\ = ((!porcentagem_potencia(3) & !porcentagem_potencia(2))) # (!porcentagem_potencia(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(4),
	combout => \controlador|LessThan3~0_combout\);

-- Location: LCCOMB_X45_Y35_N30
\controlador|pulsos_potencia[9]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[9]~26_combout\ = (\controlador|pulsos_potencia[9]~19_combout\ & ((\controlador|LessThan3~0_combout\) # ((\controlador|pulsos_potencia[9]~25_combout\ & \controlador|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[9]~25_combout\,
	datab => \controlador|pulsos_potencia[9]~19_combout\,
	datac => \controlador|LessThan5~0_combout\,
	datad => \controlador|LessThan3~0_combout\,
	combout => \controlador|pulsos_potencia[9]~26_combout\);

-- Location: LCCOMB_X44_Y36_N10
\controlador|porcentagem_to_pulsos~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~11_combout\ = (!porcentagem_potencia(4) & !\controlador|pulsos_potencia[11]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(4),
	datac => \controlador|pulsos_potencia[11]~12_combout\,
	combout => \controlador|porcentagem_to_pulsos~11_combout\);

-- Location: LCCOMB_X44_Y36_N20
\controlador|porcentagem_to_pulsos~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~6_combout\ = (porcentagem_potencia(2) & (porcentagem_potencia(0) & porcentagem_potencia(1))) # (!porcentagem_potencia(2) & ((!porcentagem_potencia(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(0),
	datad => porcentagem_potencia(1),
	combout => \controlador|porcentagem_to_pulsos~6_combout\);

-- Location: LCCOMB_X44_Y36_N22
\controlador|porcentagem_to_pulsos~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~15_combout\ = (porcentagem_potencia(4) & (((\controlador|porcentagem_to_pulsos~6_combout\) # (porcentagem_potencia(5))) # (!porcentagem_potencia(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => \controlador|porcentagem_to_pulsos~6_combout\,
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(5),
	combout => \controlador|porcentagem_to_pulsos~15_combout\);

-- Location: LCCOMB_X44_Y36_N16
\controlador|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan13~0_combout\ = (!porcentagem_potencia(3) & (!porcentagem_potencia(4) & ((!porcentagem_potencia(1)) # (!porcentagem_potencia(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => porcentagem_potencia(2),
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan13~0_combout\);

-- Location: LCCOMB_X44_Y36_N28
\controlador|porcentagem_to_pulsos~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~12_combout\ = (\controlador|LessThan12~0_combout\ & ((\controlador|porcentagem_to_pulsos~11_combout\) # ((\controlador|porcentagem_to_pulsos~15_combout\) # (\controlador|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|porcentagem_to_pulsos~11_combout\,
	datab => \controlador|LessThan12~0_combout\,
	datac => \controlador|porcentagem_to_pulsos~15_combout\,
	datad => \controlador|LessThan13~0_combout\,
	combout => \controlador|porcentagem_to_pulsos~12_combout\);

-- Location: LCCOMB_X44_Y35_N0
\controlador|porcentagem_to_pulsos~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|porcentagem_to_pulsos~13_combout\ = (porcentagem_potencia(6) & ((\controlador|porcentagem_to_pulsos~12_combout\) # ((porcentagem_potencia(5))))) # (!porcentagem_potencia(6) & (((\controlador|porcentagem_to_pulsos~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|porcentagem_to_pulsos~12_combout\,
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(5),
	datad => \controlador|porcentagem_to_pulsos~14_combout\,
	combout => \controlador|porcentagem_to_pulsos~13_combout\);

-- Location: LCCOMB_X45_Y35_N22
\controlador|pulsos_potencia[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[9]~28_combout\ = (\controlador|pulsos_potencia[1]~24_combout\ & ((\controlador|pulsos_potencia[9]~27_combout\) # ((\controlador|pulsos_potencia[9]~26_combout\)))) # (!\controlador|pulsos_potencia[1]~24_combout\ & 
-- (!\controlador|porcentagem_to_pulsos~13_combout\ & ((\controlador|pulsos_potencia[9]~27_combout\) # (\controlador|pulsos_potencia[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[1]~24_combout\,
	datab => \controlador|pulsos_potencia[9]~27_combout\,
	datac => \controlador|pulsos_potencia[9]~26_combout\,
	datad => \controlador|porcentagem_to_pulsos~13_combout\,
	combout => \controlador|pulsos_potencia[9]~28_combout\);

-- Location: LCCOMB_X46_Y35_N26
\controlador|pulsos_potencia[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~34_combout\ = (!porcentagem_potencia(6) & (!porcentagem_potencia(5) & \controlador|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan3~0_combout\,
	combout => \controlador|pulsos_potencia[2]~34_combout\);

-- Location: LCCOMB_X43_Y35_N0
\controlador|pulsos_potencia[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~35_combout\ = (!\controlador|LessThan0~2_combout\ & (!\controlador|pulsos_potencia[12]~72_combout\ & !\controlador|pulsos_potencia[2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|LessThan0~2_combout\,
	datac => \controlador|pulsos_potencia[12]~72_combout\,
	datad => \controlador|pulsos_potencia[2]~34_combout\,
	combout => \controlador|pulsos_potencia[2]~35_combout\);

-- Location: LCCOMB_X43_Y36_N12
\controlador|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan6~1_combout\ = (\controlador|LessThan6~0_combout\ & (!porcentagem_potencia(2) & ((!porcentagem_potencia(1)) # (!porcentagem_potencia(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => \controlador|LessThan6~0_combout\,
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(1),
	combout => \controlador|LessThan6~1_combout\);

-- Location: LCCOMB_X45_Y36_N4
\controlador|pulsos_potencia[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~30_combout\ = (porcentagem_potencia(3) & (((!porcentagem_potencia(2))))) # (!porcentagem_potencia(3) & (porcentagem_potencia(1) & (porcentagem_potencia(2) & porcentagem_potencia(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => porcentagem_potencia(0),
	combout => \controlador|pulsos_potencia[8]~30_combout\);

-- Location: LCCOMB_X44_Y36_N14
\controlador|pulsos_potencia[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~31_combout\ = (\controlador|LessThan6~1_combout\) # ((!\controlador|LessThan6~0_combout\ & ((\controlador|pulsos_potencia[8]~30_combout\) # (!\controlador|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~1_combout\,
	datab => \controlador|LessThan9~0_combout\,
	datac => \controlador|LessThan6~0_combout\,
	datad => \controlador|pulsos_potencia[8]~30_combout\,
	combout => \controlador|pulsos_potencia[8]~31_combout\);

-- Location: LCCOMB_X45_Y35_N0
\controlador|pulsos_potencia[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~29_combout\ = (!porcentagem_potencia(5) & ((\controlador|LessThan5~0_combout\) # (!\controlador|pulsos_potencia[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datac => \controlador|LessThan5~0_combout\,
	datad => \controlador|pulsos_potencia[9]~25_combout\,
	combout => \controlador|pulsos_potencia[8]~29_combout\);

-- Location: LCCOMB_X45_Y35_N26
\controlador|pulsos_potencia[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~32_combout\ = (!porcentagem_potencia(6) & ((\controlador|pulsos_potencia[8]~29_combout\) # ((\controlador|pulsos_potencia[8]~31_combout\ & porcentagem_potencia(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[8]~31_combout\,
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[8]~29_combout\,
	combout => \controlador|pulsos_potencia[8]~32_combout\);

-- Location: LCCOMB_X44_Y35_N18
\controlador|pulsos_potencia[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~33_combout\ = (\controlador|pulsos_potencia[8]~32_combout\) # ((\controlador|pulsos_potencia[12]~9_combout\ & ((\controlador|LessThan13~0_combout\) # (!\controlador|pulsos_potencia[11]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan13~0_combout\,
	datab => \controlador|pulsos_potencia[11]~70_combout\,
	datac => \controlador|pulsos_potencia[12]~9_combout\,
	datad => \controlador|pulsos_potencia[8]~32_combout\,
	combout => \controlador|pulsos_potencia[8]~33_combout\);

-- Location: LCCOMB_X43_Y35_N2
\controlador|pulsos_potencia[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[8]~36_combout\ = (\controlador|pulsos_potencia[8]~10_combout\ & ((\controlador|pulsos_potencia[12]~72_combout\) # ((\controlador|pulsos_potencia[2]~35_combout\ & \controlador|pulsos_potencia[8]~33_combout\)))) # 
-- (!\controlador|pulsos_potencia[8]~10_combout\ & (\controlador|pulsos_potencia[2]~35_combout\ & ((\controlador|pulsos_potencia[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[8]~10_combout\,
	datab => \controlador|pulsos_potencia[2]~35_combout\,
	datac => \controlador|pulsos_potencia[12]~72_combout\,
	datad => \controlador|pulsos_potencia[8]~33_combout\,
	combout => \controlador|pulsos_potencia[8]~36_combout\);

-- Location: LCCOMB_X47_Y36_N28
\controlador|pulsos_potencia[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~37_combout\ = (porcentagem_potencia(3) & porcentagem_potencia(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(3),
	datad => porcentagem_potencia(2),
	combout => \controlador|pulsos_potencia[3]~37_combout\);

-- Location: LCCOMB_X47_Y36_N20
\controlador|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan8~0_combout\ = (!porcentagem_potencia(4) & (((!porcentagem_potencia(1) & !porcentagem_potencia(0))) # (!\controlador|pulsos_potencia[3]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => porcentagem_potencia(4),
	datac => porcentagem_potencia(0),
	datad => \controlador|pulsos_potencia[3]~37_combout\,
	combout => \controlador|LessThan8~0_combout\);

-- Location: LCCOMB_X45_Y35_N20
\controlador|pulsos_potencia[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[7]~38_combout\ = (porcentagem_potencia(4) & (((\controlador|LessThan5~0_combout\) # (\controlador|LessThan3~0_combout\)))) # (!porcentagem_potencia(4) & (porcentagem_potencia(0) & (\controlador|LessThan5~0_combout\ & 
-- \controlador|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => porcentagem_potencia(4),
	datac => \controlador|LessThan5~0_combout\,
	datad => \controlador|LessThan3~0_combout\,
	combout => \controlador|pulsos_potencia[7]~38_combout\);

-- Location: LCCOMB_X45_Y35_N10
\controlador|pulsos_potencia[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[7]~39_combout\ = (porcentagem_potencia(5) & (\controlador|LessThan8~0_combout\)) # (!porcentagem_potencia(5) & (((\controlador|LessThan1~0_combout\) # (\controlador|pulsos_potencia[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan8~0_combout\,
	datab => \controlador|LessThan1~0_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[7]~38_combout\,
	combout => \controlador|pulsos_potencia[7]~39_combout\);

-- Location: LCCOMB_X44_Y35_N24
\controlador|pulsos_potencia[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[7]~40_combout\ = (porcentagem_potencia(6) & (((!\Equal1~2_combout\)))) # (!porcentagem_potencia(6) & (!\controlador|pulsos_potencia[7]~16_combout\ & (\controlador|pulsos_potencia[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[7]~16_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[7]~39_combout\,
	datad => \Equal1~2_combout\,
	combout => \controlador|pulsos_potencia[7]~40_combout\);

-- Location: LCCOMB_X44_Y35_N14
\controlador|LessThan18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan18~0_combout\ = (!porcentagem_potencia(5) & (((!porcentagem_potencia(4)) # (!\controlador|LessThan5~0_combout\)) # (!porcentagem_potencia(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(0),
	datab => \controlador|LessThan5~0_combout\,
	datac => porcentagem_potencia(5),
	datad => porcentagem_potencia(4),
	combout => \controlador|LessThan18~0_combout\);

-- Location: LCCOMB_X47_Y36_N22
\controlador|pulsos_potencia[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[6]~41_combout\ = (porcentagem_potencia(4) & (((\controlador|pulsos_potencia[3]~37_combout\)))) # (!porcentagem_potencia(4) & (((!porcentagem_potencia(1) & !porcentagem_potencia(0))) # 
-- (!\controlador|pulsos_potencia[3]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(1),
	datab => porcentagem_potencia(4),
	datac => porcentagem_potencia(0),
	datad => \controlador|pulsos_potencia[3]~37_combout\,
	combout => \controlador|pulsos_potencia[6]~41_combout\);

-- Location: LCCOMB_X44_Y36_N24
\controlador|pulsos_potencia[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[6]~42_combout\ = (!\controlador|LessThan6~0_combout\ & (porcentagem_potencia(5) & (\controlador|pulsos_potencia[6]~41_combout\ & !\controlador|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~0_combout\,
	datab => porcentagem_potencia(5),
	datac => \controlador|pulsos_potencia[6]~41_combout\,
	datad => \controlador|LessThan6~1_combout\,
	combout => \controlador|pulsos_potencia[6]~42_combout\);

-- Location: LCCOMB_X45_Y35_N24
\controlador|pulsos_potencia[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[6]~43_combout\ = (porcentagem_potencia(5) & (\controlador|pulsos_potencia[10]~21_combout\)) # (!porcentagem_potencia(5) & ((\controlador|LessThan1~0_combout\) # ((\controlador|pulsos_potencia[10]~21_combout\ & 
-- !\controlador|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => \controlador|pulsos_potencia[10]~21_combout\,
	datac => \controlador|LessThan1~0_combout\,
	datad => \controlador|LessThan3~0_combout\,
	combout => \controlador|pulsos_potencia[6]~43_combout\);

-- Location: LCCOMB_X45_Y35_N6
\controlador|pulsos_potencia[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[6]~44_combout\ = (\controlador|LessThan0~2_combout\) # ((porcentagem_potencia(6)) # ((\controlador|pulsos_potencia[6]~42_combout\) # (\controlador|pulsos_potencia[6]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan0~2_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[6]~42_combout\,
	datad => \controlador|pulsos_potencia[6]~43_combout\,
	combout => \controlador|pulsos_potencia[6]~44_combout\);

-- Location: LCCOMB_X44_Y35_N6
\controlador|pulsos_potencia[6]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[6]~71_combout\ = (\controlador|pulsos_potencia[6]~44_combout\ & ((\controlador|LessThan17~0_combout\) # ((\controlador|LessThan18~0_combout\) # (!porcentagem_potencia(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan17~0_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|LessThan18~0_combout\,
	datad => \controlador|pulsos_potencia[6]~44_combout\,
	combout => \controlador|pulsos_potencia[6]~71_combout\);

-- Location: LCCOMB_X43_Y35_N24
\controlador|pulsos_potencia[5]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~45_combout\ = ((\controlador|LessThan17~0_combout\) # (!\controlador|LessThan18~0_combout\)) # (!porcentagem_potencia(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => porcentagem_potencia(6),
	datac => \controlador|LessThan18~0_combout\,
	datad => \controlador|LessThan17~0_combout\,
	combout => \controlador|pulsos_potencia[5]~45_combout\);

-- Location: LCCOMB_X43_Y35_N14
\controlador|pulsos_potencia[5]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~50_combout\ = (\controlador|pulsos_potencia[8]~10_combout\) # ((\controlador|LessThan0~2_combout\) # ((\controlador|pulsos_potencia[9]~19_combout\ & \controlador|pulsos_potencia[2]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[8]~10_combout\,
	datab => \controlador|LessThan0~2_combout\,
	datac => \controlador|pulsos_potencia[9]~19_combout\,
	datad => \controlador|pulsos_potencia[2]~34_combout\,
	combout => \controlador|pulsos_potencia[5]~50_combout\);

-- Location: LCCOMB_X44_Y36_N12
\controlador|pulsos_potencia[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~48_combout\ = (porcentagem_potencia(4) & (porcentagem_potencia(5) & ((porcentagem_potencia(3)) # (!\Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datab => \Equal1~3_combout\,
	datac => porcentagem_potencia(4),
	datad => porcentagem_potencia(5),
	combout => \controlador|pulsos_potencia[2]~48_combout\);

-- Location: LCCOMB_X44_Y36_N2
\controlador|pulsos_potencia[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~46_combout\ = (\controlador|LessThan13~0_combout\) # (((\controlador|LessThan16~0_combout\ & porcentagem_potencia(4))) # (!\controlador|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan16~0_combout\,
	datab => \controlador|LessThan13~0_combout\,
	datac => porcentagem_potencia(4),
	datad => \controlador|LessThan12~0_combout\,
	combout => \controlador|pulsos_potencia[5]~46_combout\);

-- Location: LCCOMB_X43_Y36_N2
\controlador|pulsos_potencia[5]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~47_combout\ = (porcentagem_potencia(6) & (((!porcentagem_potencia(5) & \controlador|pulsos_potencia[5]~46_combout\)))) # (!porcentagem_potencia(6) & (!\controlador|LessThan6~1_combout\ & (porcentagem_potencia(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~1_combout\,
	datab => porcentagem_potencia(6),
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[5]~46_combout\,
	combout => \controlador|pulsos_potencia[5]~47_combout\);

-- Location: LCCOMB_X43_Y36_N24
\controlador|pulsos_potencia[5]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~49_combout\ = (\controlador|pulsos_potencia[5]~47_combout\ & ((porcentagem_potencia(6)) # ((\controlador|pulsos_potencia[2]~48_combout\ & porcentagem_potencia(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(6),
	datab => \controlador|pulsos_potencia[2]~48_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[5]~47_combout\,
	combout => \controlador|pulsos_potencia[5]~49_combout\);

-- Location: LCCOMB_X42_Y35_N8
\controlador|pulsos_potencia[5]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[5]~51_combout\ = (\controlador|pulsos_potencia[5]~45_combout\ & ((\controlador|pulsos_potencia[5]~50_combout\) # (\controlador|pulsos_potencia[5]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|pulsos_potencia[5]~45_combout\,
	datac => \controlador|pulsos_potencia[5]~50_combout\,
	datad => \controlador|pulsos_potencia[5]~49_combout\,
	combout => \controlador|pulsos_potencia[5]~51_combout\);

-- Location: LCCOMB_X46_Y35_N28
\controlador|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan3~1_combout\ = (!porcentagem_potencia(3) & !porcentagem_potencia(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	combout => \controlador|LessThan3~1_combout\);

-- Location: LCCOMB_X45_Y35_N28
\controlador|pulsos_potencia[4]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[4]~53_combout\ = (\controlador|LessThan1~0_combout\) # ((\controlador|pulsos_potencia[9]~25_combout\ & (!\controlador|LessThan5~0_combout\ & !\controlador|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[9]~25_combout\,
	datab => \controlador|LessThan1~0_combout\,
	datac => \controlador|LessThan5~0_combout\,
	datad => \controlador|LessThan3~1_combout\,
	combout => \controlador|pulsos_potencia[4]~53_combout\);

-- Location: LCCOMB_X43_Y36_N18
\controlador|pulsos_potencia[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[4]~52_combout\ = (!\controlador|LessThan6~1_combout\ & (porcentagem_potencia(5) & ((\controlador|LessThan6~0_combout\) # (\controlador|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~1_combout\,
	datab => \controlador|LessThan6~0_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan9~0_combout\,
	combout => \controlador|pulsos_potencia[4]~52_combout\);

-- Location: LCCOMB_X43_Y35_N8
\controlador|pulsos_potencia[4]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[4]~54_combout\ = (porcentagem_potencia(6)) # ((\controlador|pulsos_potencia[4]~52_combout\) # ((!porcentagem_potencia(5) & \controlador|pulsos_potencia[4]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[4]~53_combout\,
	datad => \controlador|pulsos_potencia[4]~52_combout\,
	combout => \controlador|pulsos_potencia[4]~54_combout\);

-- Location: LCCOMB_X43_Y35_N10
\controlador|pulsos_potencia[4]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[4]~55_combout\ = (\controlador|pulsos_potencia[12]~72_combout\ & (!\controlador|pulsos_potencia[5]~45_combout\)) # (!\controlador|pulsos_potencia[12]~72_combout\ & (((\controlador|pulsos_potencia[4]~54_combout\ & 
-- !\controlador|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[12]~72_combout\,
	datab => \controlador|pulsos_potencia[5]~45_combout\,
	datac => \controlador|pulsos_potencia[4]~54_combout\,
	datad => \controlador|LessThan0~2_combout\,
	combout => \controlador|pulsos_potencia[4]~55_combout\);

-- Location: LCCOMB_X43_Y36_N4
\controlador|pulsos_potencia[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~57_combout\ = (\controlador|LessThan8~0_combout\) # ((\controlador|LessThan9~0_combout\ & ((!porcentagem_potencia(2)) # (!porcentagem_potencia(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan9~0_combout\,
	datab => porcentagem_potencia(3),
	datac => porcentagem_potencia(2),
	datad => \controlador|LessThan8~0_combout\,
	combout => \controlador|pulsos_potencia[3]~57_combout\);

-- Location: LCCOMB_X43_Y36_N14
\controlador|pulsos_potencia[3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~58_combout\ = (porcentagem_potencia(5) & ((\controlador|LessThan6~1_combout\) # ((!\controlador|LessThan6~0_combout\ & \controlador|pulsos_potencia[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan6~0_combout\,
	datab => \controlador|pulsos_potencia[3]~57_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan6~1_combout\,
	combout => \controlador|pulsos_potencia[3]~58_combout\);

-- Location: LCCOMB_X45_Y35_N14
\controlador|LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan10~1_combout\ = (porcentagem_potencia(1) & porcentagem_potencia(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => porcentagem_potencia(1),
	datad => porcentagem_potencia(2),
	combout => \controlador|LessThan10~1_combout\);

-- Location: LCCOMB_X44_Y35_N22
\controlador|pulsos_potencia[3]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~56_combout\ = (\controlador|pulsos_potencia[12]~9_combout\ & (((!porcentagem_potencia(3) & !\controlador|LessThan10~1_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => porcentagem_potencia(3),
	datac => \controlador|LessThan10~1_combout\,
	datad => \controlador|pulsos_potencia[12]~9_combout\,
	combout => \controlador|pulsos_potencia[3]~56_combout\);

-- Location: LCCOMB_X45_Y35_N16
\controlador|pulsos_potencia[3]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~59_combout\ = (!\controlador|LessThan1~0_combout\ & ((\controlador|pulsos_potencia[8]~29_combout\) # ((!porcentagem_potencia(5) & \controlador|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => \controlador|pulsos_potencia[8]~29_combout\,
	datac => \controlador|LessThan1~0_combout\,
	datad => \controlador|LessThan3~1_combout\,
	combout => \controlador|pulsos_potencia[3]~59_combout\);

-- Location: LCCOMB_X44_Y35_N8
\controlador|pulsos_potencia[3]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~60_combout\ = (\controlador|pulsos_potencia[3]~56_combout\) # ((!porcentagem_potencia(6) & ((\controlador|pulsos_potencia[3]~58_combout\) # (\controlador|pulsos_potencia[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[3]~58_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[3]~56_combout\,
	datad => \controlador|pulsos_potencia[3]~59_combout\,
	combout => \controlador|pulsos_potencia[3]~60_combout\);

-- Location: LCCOMB_X43_Y35_N20
\controlador|pulsos_potencia[3]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[3]~61_combout\ = (\controlador|pulsos_potencia[12]~72_combout\ & (((\controlador|pulsos_potencia[5]~45_combout\)))) # (!\controlador|pulsos_potencia[12]~72_combout\ & (!\controlador|LessThan0~2_combout\ & 
-- (\controlador|pulsos_potencia[3]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[12]~72_combout\,
	datab => \controlador|LessThan0~2_combout\,
	datac => \controlador|pulsos_potencia[3]~60_combout\,
	datad => \controlador|pulsos_potencia[5]~45_combout\,
	combout => \controlador|pulsos_potencia[3]~61_combout\);

-- Location: LCCOMB_X44_Y36_N18
\controlador|pulsos_potencia[2]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~62_combout\ = (\controlador|LessThan12~0_combout\ & (!\controlador|LessThan13~0_combout\ & ((porcentagem_potencia(4)) # (!\controlador|pulsos_potencia[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan12~0_combout\,
	datab => porcentagem_potencia(4),
	datac => \controlador|pulsos_potencia[11]~12_combout\,
	datad => \controlador|LessThan13~0_combout\,
	combout => \controlador|pulsos_potencia[2]~62_combout\);

-- Location: LCCOMB_X43_Y36_N28
\controlador|pulsos_potencia[2]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~63_combout\ = (porcentagem_potencia(5) & (((\controlador|pulsos_potencia[2]~48_combout\ & \controlador|pulsos_potencia[2]~22_combout\)))) # (!porcentagem_potencia(5) & (\controlador|pulsos_potencia[9]~25_combout\ & 
-- ((!\controlador|pulsos_potencia[2]~22_combout\) # (!\controlador|pulsos_potencia[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[9]~25_combout\,
	datab => \controlador|pulsos_potencia[2]~48_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[2]~22_combout\,
	combout => \controlador|pulsos_potencia[2]~63_combout\);

-- Location: LCCOMB_X43_Y36_N30
\controlador|pulsos_potencia[2]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~64_combout\ = (porcentagem_potencia(6) & (!\controlador|pulsos_potencia[2]~62_combout\ & (!porcentagem_potencia(5)))) # (!porcentagem_potencia(6) & ((porcentagem_potencia(5) $ 
-- (!\controlador|pulsos_potencia[2]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(6),
	datab => \controlador|pulsos_potencia[2]~62_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|pulsos_potencia[2]~63_combout\,
	combout => \controlador|pulsos_potencia[2]~64_combout\);

-- Location: LCCOMB_X43_Y35_N18
\controlador|pulsos_potencia[2]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[2]~65_combout\ = (\controlador|pulsos_potencia[12]~72_combout\ & ((\controlador|pulsos_potencia[5]~45_combout\) # ((\controlador|pulsos_potencia[2]~35_combout\ & \controlador|pulsos_potencia[2]~64_combout\)))) # 
-- (!\controlador|pulsos_potencia[12]~72_combout\ & (\controlador|pulsos_potencia[2]~35_combout\ & (\controlador|pulsos_potencia[2]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[12]~72_combout\,
	datab => \controlador|pulsos_potencia[2]~35_combout\,
	datac => \controlador|pulsos_potencia[2]~64_combout\,
	datad => \controlador|pulsos_potencia[5]~45_combout\,
	combout => \controlador|pulsos_potencia[2]~65_combout\);

-- Location: LCCOMB_X45_Y35_N2
\controlador|pulsos_potencia[1]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[1]~66_combout\ = (!porcentagem_potencia(5) & ((\controlador|pulsos_potencia[9]~25_combout\) # (\controlador|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[9]~25_combout\,
	datac => porcentagem_potencia(5),
	datad => \controlador|LessThan3~0_combout\,
	combout => \controlador|pulsos_potencia[1]~66_combout\);

-- Location: LCCOMB_X44_Y35_N26
\controlador|pulsos_potencia[1]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[1]~67_combout\ = (porcentagem_potencia(5) & ((\controlador|LessThan6~1_combout\) # ((\controlador|pulsos_potencia[1]~66_combout\ & \controlador|pulsos_potencia[9]~19_combout\)))) # (!porcentagem_potencia(5) & 
-- (\controlador|pulsos_potencia[1]~66_combout\ & (\controlador|pulsos_potencia[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => porcentagem_potencia(5),
	datab => \controlador|pulsos_potencia[1]~66_combout\,
	datac => \controlador|pulsos_potencia[9]~19_combout\,
	datad => \controlador|LessThan6~1_combout\,
	combout => \controlador|pulsos_potencia[1]~67_combout\);

-- Location: LCCOMB_X44_Y35_N16
\controlador|pulsos_potencia[1]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[1]~68_combout\ = (!porcentagem_potencia(6) & (\controlador|pulsos_potencia[1]~24_combout\ & ((!\Equal1~2_combout\) # (!\controlador|LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|LessThan16~0_combout\,
	datab => porcentagem_potencia(6),
	datac => \controlador|pulsos_potencia[1]~24_combout\,
	datad => \Equal1~2_combout\,
	combout => \controlador|pulsos_potencia[1]~68_combout\);

-- Location: LCCOMB_X44_Y35_N2
\controlador|pulsos_potencia[1]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|pulsos_potencia[1]~69_combout\ = (\controlador|pulsos_potencia[1]~67_combout\ & ((\controlador|pulsos_potencia[1]~68_combout\) # ((!\controlador|pulsos_potencia[1]~24_combout\ & !\controlador|porcentagem_to_pulsos~13_combout\)))) # 
-- (!\controlador|pulsos_potencia[1]~67_combout\ & (((!\controlador|pulsos_potencia[1]~24_combout\ & !\controlador|porcentagem_to_pulsos~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[1]~67_combout\,
	datab => \controlador|pulsos_potencia[1]~68_combout\,
	datac => \controlador|pulsos_potencia[1]~24_combout\,
	datad => \controlador|porcentagem_to_pulsos~13_combout\,
	combout => \controlador|pulsos_potencia[1]~69_combout\);

-- Location: LCCOMB_X35_Y28_N4
\controlador|LessThan19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~1_cout\ = CARRY((\controlador|pulsos_potencia[1]~69_combout\ & !\controlador|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[1]~69_combout\,
	datab => \controlador|Add0~2_combout\,
	datad => VCC,
	cout => \controlador|LessThan19~1_cout\);

-- Location: LCCOMB_X35_Y28_N6
\controlador|LessThan19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~3_cout\ = CARRY((\controlador|pulsos_potencia[2]~65_combout\ & (\controlador|Add0~4_combout\ & !\controlador|LessThan19~1_cout\)) # (!\controlador|pulsos_potencia[2]~65_combout\ & ((\controlador|Add0~4_combout\) # 
-- (!\controlador|LessThan19~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[2]~65_combout\,
	datab => \controlador|Add0~4_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~1_cout\,
	cout => \controlador|LessThan19~3_cout\);

-- Location: LCCOMB_X35_Y28_N8
\controlador|LessThan19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~5_cout\ = CARRY((\controlador|pulsos_potencia[3]~61_combout\ & ((!\controlador|LessThan19~3_cout\) # (!\controlador|Add0~6_combout\))) # (!\controlador|pulsos_potencia[3]~61_combout\ & (!\controlador|Add0~6_combout\ & 
-- !\controlador|LessThan19~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[3]~61_combout\,
	datab => \controlador|Add0~6_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~3_cout\,
	cout => \controlador|LessThan19~5_cout\);

-- Location: LCCOMB_X35_Y28_N10
\controlador|LessThan19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~7_cout\ = CARRY((\controlador|Add0~8_combout\ & ((!\controlador|LessThan19~5_cout\) # (!\controlador|pulsos_potencia[4]~55_combout\))) # (!\controlador|Add0~8_combout\ & (!\controlador|pulsos_potencia[4]~55_combout\ & 
-- !\controlador|LessThan19~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~8_combout\,
	datab => \controlador|pulsos_potencia[4]~55_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~5_cout\,
	cout => \controlador|LessThan19~7_cout\);

-- Location: LCCOMB_X35_Y28_N12
\controlador|LessThan19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~9_cout\ = CARRY((\controlador|pulsos_potencia[5]~51_combout\ & ((!\controlador|LessThan19~7_cout\) # (!\controlador|Add0~10_combout\))) # (!\controlador|pulsos_potencia[5]~51_combout\ & (!\controlador|Add0~10_combout\ & 
-- !\controlador|LessThan19~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[5]~51_combout\,
	datab => \controlador|Add0~10_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~7_cout\,
	cout => \controlador|LessThan19~9_cout\);

-- Location: LCCOMB_X35_Y28_N14
\controlador|LessThan19~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~11_cout\ = CARRY((\controlador|pulsos_potencia[6]~71_combout\ & (\controlador|Add0~12_combout\ & !\controlador|LessThan19~9_cout\)) # (!\controlador|pulsos_potencia[6]~71_combout\ & ((\controlador|Add0~12_combout\) # 
-- (!\controlador|LessThan19~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[6]~71_combout\,
	datab => \controlador|Add0~12_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~9_cout\,
	cout => \controlador|LessThan19~11_cout\);

-- Location: LCCOMB_X35_Y28_N16
\controlador|LessThan19~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~13_cout\ = CARRY((\controlador|Add0~14_combout\ & (\controlador|pulsos_potencia[7]~40_combout\ & !\controlador|LessThan19~11_cout\)) # (!\controlador|Add0~14_combout\ & ((\controlador|pulsos_potencia[7]~40_combout\) # 
-- (!\controlador|LessThan19~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~14_combout\,
	datab => \controlador|pulsos_potencia[7]~40_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~11_cout\,
	cout => \controlador|LessThan19~13_cout\);

-- Location: LCCOMB_X35_Y28_N18
\controlador|LessThan19~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~15_cout\ = CARRY((\controlador|pulsos_potencia[8]~36_combout\ & (\controlador|Add0~16_combout\ & !\controlador|LessThan19~13_cout\)) # (!\controlador|pulsos_potencia[8]~36_combout\ & ((\controlador|Add0~16_combout\) # 
-- (!\controlador|LessThan19~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[8]~36_combout\,
	datab => \controlador|Add0~16_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~13_cout\,
	cout => \controlador|LessThan19~15_cout\);

-- Location: LCCOMB_X35_Y28_N20
\controlador|LessThan19~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~17_cout\ = CARRY((\controlador|pulsos_potencia[9]~28_combout\ & ((!\controlador|LessThan19~15_cout\) # (!\controlador|Add0~18_combout\))) # (!\controlador|pulsos_potencia[9]~28_combout\ & (!\controlador|Add0~18_combout\ & 
-- !\controlador|LessThan19~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[9]~28_combout\,
	datab => \controlador|Add0~18_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~15_cout\,
	cout => \controlador|LessThan19~17_cout\);

-- Location: LCCOMB_X35_Y28_N22
\controlador|LessThan19~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~19_cout\ = CARRY((\controlador|Add0~20_combout\ & ((!\controlador|LessThan19~17_cout\) # (!\controlador|pulsos_potencia[10]~23_combout\))) # (!\controlador|Add0~20_combout\ & (!\controlador|pulsos_potencia[10]~23_combout\ & 
-- !\controlador|LessThan19~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~20_combout\,
	datab => \controlador|pulsos_potencia[10]~23_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~17_cout\,
	cout => \controlador|LessThan19~19_cout\);

-- Location: LCCOMB_X35_Y28_N24
\controlador|LessThan19~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~21_cout\ = CARRY((\controlador|Add0~22_combout\ & (\controlador|pulsos_potencia[11]~17_combout\ & !\controlador|LessThan19~19_cout\)) # (!\controlador|Add0~22_combout\ & ((\controlador|pulsos_potencia[11]~17_combout\) # 
-- (!\controlador|LessThan19~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~22_combout\,
	datab => \controlador|pulsos_potencia[11]~17_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~19_cout\,
	cout => \controlador|LessThan19~21_cout\);

-- Location: LCCOMB_X35_Y28_N26
\controlador|LessThan19~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~23_cout\ = CARRY((\controlador|Add0~24_combout\ & ((!\controlador|LessThan19~21_cout\) # (!\controlador|pulsos_potencia[12]~11_combout\))) # (!\controlador|Add0~24_combout\ & (!\controlador|pulsos_potencia[12]~11_combout\ & 
-- !\controlador|LessThan19~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~24_combout\,
	datab => \controlador|pulsos_potencia[12]~11_combout\,
	datad => VCC,
	cin => \controlador|LessThan19~21_cout\,
	cout => \controlador|LessThan19~23_cout\);

-- Location: LCCOMB_X35_Y28_N28
\controlador|LessThan19~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|LessThan19~24_combout\ = (\controlador|pulsos_potencia[13]~8_combout\ & ((!\controlador|LessThan19~23_cout\) # (!\controlador|Add0~26_combout\))) # (!\controlador|pulsos_potencia[13]~8_combout\ & (!\controlador|Add0~26_combout\ & 
-- !\controlador|LessThan19~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|pulsos_potencia[13]~8_combout\,
	datab => \controlador|Add0~26_combout\,
	cin => \controlador|LessThan19~23_cout\,
	combout => \controlador|LessThan19~24_combout\);

-- Location: LCCOMB_X31_Y28_N26
\controlador|delay_ativacao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|delay_ativacao~0_combout\ = (!\controlador|Add0~28_combout\ & (\controlador|LessThan19~24_combout\ & ((\controlador|rising_passagem_zero~q\) # (\controlador|delay_ativacao~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|rising_passagem_zero~q\,
	datab => \controlador|Add0~28_combout\,
	datac => \controlador|delay_ativacao~q\,
	datad => \controlador|LessThan19~24_combout\,
	combout => \controlador|delay_ativacao~0_combout\);

-- Location: FF_X31_Y28_N27
\controlador|delay_ativacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|delay_ativacao~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|delay_ativacao~q\);

-- Location: LCCOMB_X32_Y28_N0
\controlador|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~0_combout\ = (\controlador|delay_ativacao~q\ & (\controlador|count_ativacao\(0) $ (VCC))) # (!\controlador|delay_ativacao~q\ & (\controlador|count_ativacao\(0) & VCC))
-- \controlador|Add0~1\ = CARRY((\controlador|delay_ativacao~q\ & \controlador|count_ativacao\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|delay_ativacao~q\,
	datab => \controlador|count_ativacao\(0),
	datad => VCC,
	combout => \controlador|Add0~0_combout\,
	cout => \controlador|Add0~1\);

-- Location: LCCOMB_X31_Y28_N24
\controlador|count_ativacao~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~13_combout\ = (\controlador|Add0~0_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~0_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~13_combout\);

-- Location: FF_X31_Y28_N25
\controlador|count_ativacao[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(0));

-- Location: LCCOMB_X32_Y28_N2
\controlador|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~2_combout\ = (\controlador|count_ativacao\(1) & (!\controlador|Add0~1\)) # (!\controlador|count_ativacao\(1) & ((\controlador|Add0~1\) # (GND)))
-- \controlador|Add0~3\ = CARRY((!\controlador|Add0~1\) # (!\controlador|count_ativacao\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(1),
	datad => VCC,
	cin => \controlador|Add0~1\,
	combout => \controlador|Add0~2_combout\,
	cout => \controlador|Add0~3\);

-- Location: LCCOMB_X32_Y28_N30
\controlador|count_ativacao~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~12_combout\ = (\controlador|Add0~2_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~2_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~12_combout\);

-- Location: FF_X32_Y28_N31
\controlador|count_ativacao[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(1));

-- Location: LCCOMB_X32_Y28_N4
\controlador|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~4_combout\ = (\controlador|count_ativacao\(2) & (\controlador|Add0~3\ $ (GND))) # (!\controlador|count_ativacao\(2) & (!\controlador|Add0~3\ & VCC))
-- \controlador|Add0~5\ = CARRY((\controlador|count_ativacao\(2) & !\controlador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(2),
	datad => VCC,
	cin => \controlador|Add0~3\,
	combout => \controlador|Add0~4_combout\,
	cout => \controlador|Add0~5\);

-- Location: LCCOMB_X31_Y28_N22
\controlador|count_ativacao~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~11_combout\ = (\controlador|Add0~4_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~4_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~11_combout\);

-- Location: FF_X31_Y28_N23
\controlador|count_ativacao[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(2));

-- Location: LCCOMB_X32_Y28_N6
\controlador|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~6_combout\ = (\controlador|count_ativacao\(3) & (!\controlador|Add0~5\)) # (!\controlador|count_ativacao\(3) & ((\controlador|Add0~5\) # (GND)))
-- \controlador|Add0~7\ = CARRY((!\controlador|Add0~5\) # (!\controlador|count_ativacao\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(3),
	datad => VCC,
	cin => \controlador|Add0~5\,
	combout => \controlador|Add0~6_combout\,
	cout => \controlador|Add0~7\);

-- Location: LCCOMB_X31_Y28_N8
\controlador|count_ativacao~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~10_combout\ = (\controlador|Add0~6_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~6_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~10_combout\);

-- Location: FF_X31_Y28_N9
\controlador|count_ativacao[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(3));

-- Location: LCCOMB_X32_Y28_N8
\controlador|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~8_combout\ = (\controlador|count_ativacao\(4) & (\controlador|Add0~7\ $ (GND))) # (!\controlador|count_ativacao\(4) & (!\controlador|Add0~7\ & VCC))
-- \controlador|Add0~9\ = CARRY((\controlador|count_ativacao\(4) & !\controlador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(4),
	datad => VCC,
	cin => \controlador|Add0~7\,
	combout => \controlador|Add0~8_combout\,
	cout => \controlador|Add0~9\);

-- Location: LCCOMB_X31_Y28_N6
\controlador|count_ativacao~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~9_combout\ = (\controlador|Add0~8_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~8_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~9_combout\);

-- Location: FF_X31_Y28_N7
\controlador|count_ativacao[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(4));

-- Location: LCCOMB_X32_Y28_N10
\controlador|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~10_combout\ = (\controlador|count_ativacao\(5) & (!\controlador|Add0~9\)) # (!\controlador|count_ativacao\(5) & ((\controlador|Add0~9\) # (GND)))
-- \controlador|Add0~11\ = CARRY((!\controlador|Add0~9\) # (!\controlador|count_ativacao\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(5),
	datad => VCC,
	cin => \controlador|Add0~9\,
	combout => \controlador|Add0~10_combout\,
	cout => \controlador|Add0~11\);

-- Location: LCCOMB_X31_Y28_N12
\controlador|count_ativacao~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~8_combout\ = (\controlador|Add0~10_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~10_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~8_combout\);

-- Location: FF_X31_Y28_N13
\controlador|count_ativacao[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(5));

-- Location: LCCOMB_X32_Y28_N12
\controlador|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~12_combout\ = (\controlador|count_ativacao\(6) & (\controlador|Add0~11\ $ (GND))) # (!\controlador|count_ativacao\(6) & (!\controlador|Add0~11\ & VCC))
-- \controlador|Add0~13\ = CARRY((\controlador|count_ativacao\(6) & !\controlador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(6),
	datad => VCC,
	cin => \controlador|Add0~11\,
	combout => \controlador|Add0~12_combout\,
	cout => \controlador|Add0~13\);

-- Location: LCCOMB_X31_Y28_N18
\controlador|count_ativacao~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~7_combout\ = (\controlador|Add0~12_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~12_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~7_combout\);

-- Location: FF_X31_Y28_N19
\controlador|count_ativacao[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(6));

-- Location: LCCOMB_X32_Y28_N14
\controlador|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~14_combout\ = (\controlador|count_ativacao\(7) & (!\controlador|Add0~13\)) # (!\controlador|count_ativacao\(7) & ((\controlador|Add0~13\) # (GND)))
-- \controlador|Add0~15\ = CARRY((!\controlador|Add0~13\) # (!\controlador|count_ativacao\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(7),
	datad => VCC,
	cin => \controlador|Add0~13\,
	combout => \controlador|Add0~14_combout\,
	cout => \controlador|Add0~15\);

-- Location: LCCOMB_X31_Y28_N0
\controlador|count_ativacao~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~6_combout\ = (\controlador|Add0~14_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~14_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~6_combout\);

-- Location: FF_X31_Y28_N1
\controlador|count_ativacao[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(7));

-- Location: LCCOMB_X32_Y28_N16
\controlador|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~16_combout\ = (\controlador|count_ativacao\(8) & (\controlador|Add0~15\ $ (GND))) # (!\controlador|count_ativacao\(8) & (!\controlador|Add0~15\ & VCC))
-- \controlador|Add0~17\ = CARRY((\controlador|count_ativacao\(8) & !\controlador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(8),
	datad => VCC,
	cin => \controlador|Add0~15\,
	combout => \controlador|Add0~16_combout\,
	cout => \controlador|Add0~17\);

-- Location: LCCOMB_X31_Y28_N2
\controlador|count_ativacao~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~5_combout\ = (\controlador|Add0~16_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~16_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~5_combout\);

-- Location: FF_X31_Y28_N3
\controlador|count_ativacao[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(8));

-- Location: LCCOMB_X32_Y28_N18
\controlador|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~18_combout\ = (\controlador|count_ativacao\(9) & (!\controlador|Add0~17\)) # (!\controlador|count_ativacao\(9) & ((\controlador|Add0~17\) # (GND)))
-- \controlador|Add0~19\ = CARRY((!\controlador|Add0~17\) # (!\controlador|count_ativacao\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(9),
	datad => VCC,
	cin => \controlador|Add0~17\,
	combout => \controlador|Add0~18_combout\,
	cout => \controlador|Add0~19\);

-- Location: LCCOMB_X31_Y28_N28
\controlador|count_ativacao~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~4_combout\ = (\controlador|Add0~18_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~18_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~4_combout\);

-- Location: FF_X31_Y28_N29
\controlador|count_ativacao[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(9));

-- Location: LCCOMB_X32_Y28_N20
\controlador|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~20_combout\ = (\controlador|count_ativacao\(10) & (\controlador|Add0~19\ $ (GND))) # (!\controlador|count_ativacao\(10) & (!\controlador|Add0~19\ & VCC))
-- \controlador|Add0~21\ = CARRY((\controlador|count_ativacao\(10) & !\controlador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|count_ativacao\(10),
	datad => VCC,
	cin => \controlador|Add0~19\,
	combout => \controlador|Add0~20_combout\,
	cout => \controlador|Add0~21\);

-- Location: LCCOMB_X31_Y28_N10
\controlador|count_ativacao~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~3_combout\ = (\controlador|Add0~20_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Add0~20_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~3_combout\);

-- Location: FF_X31_Y28_N11
\controlador|count_ativacao[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(10));

-- Location: LCCOMB_X32_Y28_N22
\controlador|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~22_combout\ = (\controlador|count_ativacao\(11) & (!\controlador|Add0~21\)) # (!\controlador|count_ativacao\(11) & ((\controlador|Add0~21\) # (GND)))
-- \controlador|Add0~23\ = CARRY((!\controlador|Add0~21\) # (!\controlador|count_ativacao\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(11),
	datad => VCC,
	cin => \controlador|Add0~21\,
	combout => \controlador|Add0~22_combout\,
	cout => \controlador|Add0~23\);

-- Location: LCCOMB_X31_Y28_N4
\controlador|count_ativacao~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~2_combout\ = (\controlador|Add0~22_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~22_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~2_combout\);

-- Location: FF_X31_Y28_N5
\controlador|count_ativacao[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(11));

-- Location: LCCOMB_X32_Y28_N24
\controlador|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~24_combout\ = (\controlador|count_ativacao\(12) & (\controlador|Add0~23\ $ (GND))) # (!\controlador|count_ativacao\(12) & (!\controlador|Add0~23\ & VCC))
-- \controlador|Add0~25\ = CARRY((\controlador|count_ativacao\(12) & !\controlador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(12),
	datad => VCC,
	cin => \controlador|Add0~23\,
	combout => \controlador|Add0~24_combout\,
	cout => \controlador|Add0~25\);

-- Location: LCCOMB_X31_Y28_N30
\controlador|count_ativacao~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~1_combout\ = (\controlador|Add0~24_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~24_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~1_combout\);

-- Location: FF_X31_Y28_N31
\controlador|count_ativacao[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(12));

-- Location: LCCOMB_X32_Y28_N26
\controlador|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~26_combout\ = (\controlador|count_ativacao\(13) & (!\controlador|Add0~25\)) # (!\controlador|count_ativacao\(13) & ((\controlador|Add0~25\) # (GND)))
-- \controlador|Add0~27\ = CARRY((!\controlador|Add0~25\) # (!\controlador|count_ativacao\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador|count_ativacao\(13),
	datad => VCC,
	cin => \controlador|Add0~25\,
	combout => \controlador|Add0~26_combout\,
	cout => \controlador|Add0~27\);

-- Location: LCCOMB_X31_Y28_N20
\controlador|count_ativacao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|count_ativacao~0_combout\ = (\controlador|Add0~26_combout\ & (\controlador|LessThan19~24_combout\ & !\controlador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador|Add0~26_combout\,
	datac => \controlador|LessThan19~24_combout\,
	datad => \controlador|Add0~28_combout\,
	combout => \controlador|count_ativacao~0_combout\);

-- Location: FF_X31_Y28_N21
\controlador|count_ativacao[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|count_ativacao~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|count_ativacao\(13));

-- Location: LCCOMB_X32_Y28_N28
\controlador|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|Add0~28_combout\ = !\controlador|Add0~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \controlador|Add0~27\,
	combout => \controlador|Add0~28_combout\);

-- Location: LCCOMB_X30_Y28_N0
\controlador|disparo_triac~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controlador|disparo_triac~0_combout\ = (!\controlador|Equal0~2_combout\ & ((\controlador|Add0~28_combout\) # ((\controlador|disparo_triac~q\) # (!\controlador|LessThan19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|Equal0~2_combout\,
	datab => \controlador|Add0~28_combout\,
	datac => \controlador|disparo_triac~q\,
	datad => \controlador|LessThan19~24_combout\,
	combout => \controlador|disparo_triac~0_combout\);

-- Location: FF_X30_Y28_N1
\controlador|disparo_triac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor_50x|out_clk_tmp~clkctrl_outclk\,
	d => \controlador|disparo_triac~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|disparo_triac~q\);

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

ww_disparo_triac <= \disparo_triac~output_o\;
END structure;


