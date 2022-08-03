-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "02/05/2018 13:38:03"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sim1 IS
    PORT (
	WSDBusy : OUT std_logic;
	refclk : IN std_logic;
	reset : IN std_logic;
	newWordHPS : IN std_logic;
	wrfull : OUT std_logic;
	OKIn : IN std_logic;
	data : IN std_logic_vector(19 DOWNTO 0);
	DATA_OUT : OUT std_logic;
	SYNC : OUT std_logic;
	RESET6 : OUT std_logic;
	CLR : OUT std_logic;
	SCKOUT : OUT std_logic;
	LDAC : OUT std_logic;
	wrusedw : OUT std_logic_vector(2 DOWNTO 0)
	);
END Sim1;

-- Design Ports Information
-- WSDBusy	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wrfull	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYNC	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET6	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCKOUT	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAC	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wrusedw[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wrusedw[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wrusedw[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- refclk	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OKIn	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newWordHPS	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sim1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WSDBusy : std_logic;
SIGNAL ww_refclk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_newWordHPS : std_logic;
SIGNAL ww_wrfull : std_logic;
SIGNAL ww_OKIn : std_logic;
SIGNAL ww_data : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic;
SIGNAL ww_SYNC : std_logic;
SIGNAL ww_RESET6 : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_SCKOUT : std_logic;
SIGNAL ww_LDAC : std_logic;
SIGNAL ww_wrusedw : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \refclk~input_o\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \newWordHPS~input_o\ : std_logic;
SIGNAL \inst3|ff1~feeder_combout\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst3|ff1~q\ : std_logic;
SIGNAL \inst3|ff2~q\ : std_logic;
SIGNAL \inst3|sync_out~q\ : std_logic;
SIGNAL \inst|state~14_combout\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst|state.s3~q\ : std_logic;
SIGNAL \inst|state.s4~q\ : std_logic;
SIGNAL \inst|state~12_combout\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|latch~0_combout\ : std_logic;
SIGNAL \inst|latch~q\ : std_logic;
SIGNAL \inst|state~13_combout\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst|busy~0_combout\ : std_logic;
SIGNAL \inst|wclock~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst1|configCounter[0]~0_combout\ : std_logic;
SIGNAL \inst1|currentState.PRESYNCLOW~feeder_combout\ : std_logic;
SIGNAL \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ : std_logic;
SIGNAL \OKIn~input_o\ : std_logic;
SIGNAL \inst4|ff1~feeder_combout\ : std_logic;
SIGNAL \inst4|ff1~q\ : std_logic;
SIGNAL \inst4|ff2~q\ : std_logic;
SIGNAL \inst4|sync_out~q\ : std_logic;
SIGNAL \inst1|latch~q\ : std_logic;
SIGNAL \inst1|currentState~14_combout\ : std_logic;
SIGNAL \inst1|currentState.s2~q\ : std_logic;
SIGNAL \inst1|currentState.s3~q\ : std_logic;
SIGNAL \inst1|currentState.s4~q\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|currentState.SYNCLOW~q\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Selector43~0_combout\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Selector42~0_combout\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Selector41~0_combout\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Selector40~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Selector39~0_combout\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Selector38~0_combout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Selector37~0_combout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|Selector36~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|currentState.WRITEDATABIT~q\ : std_logic;
SIGNAL \inst1|currentState.CLOCKDOWN~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|currentState.SYNCHIGH~q\ : std_logic;
SIGNAL \inst1|Add1~5_sumout\ : std_logic;
SIGNAL \inst1|Add1~6\ : std_logic;
SIGNAL \inst1|Add1~1_sumout\ : std_logic;
SIGNAL \inst1|Selector34~0_combout\ : std_logic;
SIGNAL \inst1|Selector35~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~2\ : std_logic;
SIGNAL \inst1|Add1~29_sumout\ : std_logic;
SIGNAL \inst1|Selector33~0_combout\ : std_logic;
SIGNAL \inst1|Add1~30\ : std_logic;
SIGNAL \inst1|Add1~25_sumout\ : std_logic;
SIGNAL \inst1|Selector32~0_combout\ : std_logic;
SIGNAL \inst1|Add1~26\ : std_logic;
SIGNAL \inst1|Add1~21_sumout\ : std_logic;
SIGNAL \inst1|Selector31~0_combout\ : std_logic;
SIGNAL \inst1|Add1~22\ : std_logic;
SIGNAL \inst1|Add1~17_sumout\ : std_logic;
SIGNAL \inst1|Selector30~0_combout\ : std_logic;
SIGNAL \inst1|Add1~18\ : std_logic;
SIGNAL \inst1|Add1~13_sumout\ : std_logic;
SIGNAL \inst1|Selector29~0_combout\ : std_logic;
SIGNAL \inst1|Add1~14\ : std_logic;
SIGNAL \inst1|Add1~9_sumout\ : std_logic;
SIGNAL \inst1|Selector28~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Add2~10\ : std_logic;
SIGNAL \inst1|Add2~5_sumout\ : std_logic;
SIGNAL \inst1|Add2~6\ : std_logic;
SIGNAL \inst1|Add2~1_sumout\ : std_logic;
SIGNAL \inst1|Add2~2\ : std_logic;
SIGNAL \inst1|Add2~53_sumout\ : std_logic;
SIGNAL \inst1|Add2~54\ : std_logic;
SIGNAL \inst1|Add2~49_sumout\ : std_logic;
SIGNAL \inst1|Add2~50\ : std_logic;
SIGNAL \inst1|Add2~45_sumout\ : std_logic;
SIGNAL \inst1|Add2~46\ : std_logic;
SIGNAL \inst1|Add2~41_sumout\ : std_logic;
SIGNAL \inst1|Add2~42\ : std_logic;
SIGNAL \inst1|Add2~37_sumout\ : std_logic;
SIGNAL \inst1|Add2~38\ : std_logic;
SIGNAL \inst1|Add2~33_sumout\ : std_logic;
SIGNAL \inst1|Add2~34\ : std_logic;
SIGNAL \inst1|Add2~29_sumout\ : std_logic;
SIGNAL \inst1|Add2~30\ : std_logic;
SIGNAL \inst1|Add2~25_sumout\ : std_logic;
SIGNAL \inst1|Add2~26\ : std_logic;
SIGNAL \inst1|Add2~21_sumout\ : std_logic;
SIGNAL \inst1|Add2~22\ : std_logic;
SIGNAL \inst1|Add2~17_sumout\ : std_logic;
SIGNAL \inst1|Add2~18\ : std_logic;
SIGNAL \inst1|Add2~13_sumout\ : std_logic;
SIGNAL \inst1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Add2~9_sumout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|currentState~15_combout\ : std_logic;
SIGNAL \inst1|currentState.s1~q\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|currentState.s0~q\ : std_logic;
SIGNAL \inst1|WideOr9~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \inst1|RDREQ~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~8_combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst1|Selector45~0_combout\ : std_logic;
SIGNAL \inst1|Selector25~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~0_combout\ : std_logic;
SIGNAL \inst1|Selector26~0_combout\ : std_logic;
SIGNAL \inst1|outputWord[18]~0_combout\ : std_logic;
SIGNAL \inst1|Selector23~0_combout\ : std_logic;
SIGNAL \inst1|Selector22~0_combout\ : std_logic;
SIGNAL \inst1|Selector21~0_combout\ : std_logic;
SIGNAL \inst1|Selector20~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~13_combout\ : std_logic;
SIGNAL \inst1|currentState.PRESYNCLOW~q\ : std_logic;
SIGNAL \inst1|Selector24~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector13~0_combout\ : std_logic;
SIGNAL \inst1|Selector12~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~9_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Selector45~1_combout\ : std_logic;
SIGNAL \inst1|DATA_OUT~combout\ : std_logic;
SIGNAL \inst1|WideOr7~combout\ : std_logic;
SIGNAL \inst1|Selector46~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|incrementer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_reg|dffe19a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|outputWord\ : std_logic_vector(0 TO 23);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|configCounter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|SyncHighCounter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|newpll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_incrementer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_newWordHPS~input_o\ : std_logic;
SIGNAL \ALT_INV_OKIn~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_DATA_OUT~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_delayed_wrptr_g\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe12a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe14a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe21a\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe22a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe23a\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_parity6~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_RDREQ~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe24a\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst1|ALT_INV_configCounter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \inst1|ALT_INV_outputWord\ : std_logic_vector(23 DOWNTO 2);
SIGNAL \inst1|ALT_INV_currentState.s3~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_parity8~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.s4~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_SyncHighCounter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.SYNCHIGH~q\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector45~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a2~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a1~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\ : std_logic;
SIGNAL \inst|ALT_INV_state.s3~q\ : std_logic;
SIGNAL \inst|ALT_INV_state.s2~q\ : std_logic;
SIGNAL \inst3|ALT_INV_sync_out~q\ : std_logic;
SIGNAL \inst|ALT_INV_latch~q\ : std_logic;
SIGNAL \inst|ALT_INV_state.s4~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_op_1~0_combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|ALT_INV_sync_out~q\ : std_logic;
SIGNAL \inst1|ALT_INV_latch~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.s0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.s1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.s2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.PRESYNCLOW~q\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.CLOCKDOWN~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.WRITEDATABIT~q\ : std_logic;
SIGNAL \inst1|ALT_INV_currentState.SYNCLOW~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \inst|ALT_INV_busy~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.s1~q\ : std_logic;
SIGNAL \inst|ALT_INV_state.s0~q\ : std_logic;
SIGNAL \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\ : std_logic_vector(19 DOWNTO 0);

BEGIN

WSDBusy <= ww_WSDBusy;
ww_refclk <= refclk;
ww_reset <= reset;
ww_newWordHPS <= newWordHPS;
wrfull <= ww_wrfull;
ww_OKIn <= OKIn;
ww_data <= data;
DATA_OUT <= ww_DATA_OUT;
SYNC <= ww_SYNC;
RESET6 <= ww_RESET6;
CLR <= ww_CLR;
SCKOUT <= ww_SCKOUT;
LDAC <= ww_LDAC;
wrusedw <= ww_wrusedw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data[19]~input_o\ & \data[18]~input_o\ & 
\data[17]~input_o\ & \data[16]~input_o\ & \data[15]~input_o\ & \data[14]~input_o\ & \data[13]~input_o\ & \data[12]~input_o\ & \data[11]~input_o\ & \data[10]~input_o\ & \data[9]~input_o\ & \data[8]~input_o\ & \data[7]~input_o\ & \data[6]~input_o\ & 
\data[5]~input_o\ & \data[4]~input_o\ & \data[3]~input_o\ & \data[2]~input_o\ & \data[1]~input_o\ & \data[0]~input_o\);

\inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ <= (\inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ & \inst2|dcfifo_component|auto_generated|wrptr_g\(0));

\inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ <= (\inst2|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ & \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(0);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(1);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(2);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(3);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(4);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(5);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(6);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(7);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(8);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(9);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(10);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(11);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(12);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(13);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(14);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(15);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(16) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(16);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(17) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(17);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(18) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(18);
\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(19) <= \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(19);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \refclk~input_o\);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ <= \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(2);

\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\inst1|ALT_INV_Add1~29_sumout\ <= NOT \inst1|Add1~29_sumout\;
\inst1|ALT_INV_Add1~25_sumout\ <= NOT \inst1|Add1~25_sumout\;
\inst1|ALT_INV_Add1~21_sumout\ <= NOT \inst1|Add1~21_sumout\;
\inst1|ALT_INV_Add1~17_sumout\ <= NOT \inst1|Add1~17_sumout\;
\inst1|ALT_INV_Add1~13_sumout\ <= NOT \inst1|Add1~13_sumout\;
\inst1|ALT_INV_Add1~9_sumout\ <= NOT \inst1|Add1~9_sumout\;
\inst1|ALT_INV_Add1~5_sumout\ <= NOT \inst1|Add1~5_sumout\;
\inst1|ALT_INV_Add1~1_sumout\ <= NOT \inst1|Add1~1_sumout\;
\inst1|ALT_INV_Mux0~13_combout\ <= NOT \inst1|Mux0~13_combout\;
\inst1|ALT_INV_Mux0~9_combout\ <= NOT \inst1|Mux0~9_combout\;
\inst1|ALT_INV_incrementer\(5) <= NOT \inst1|incrementer\(5);
\inst1|ALT_INV_incrementer\(6) <= NOT \inst1|incrementer\(6);
\inst1|ALT_INV_incrementer\(7) <= NOT \inst1|incrementer\(7);
\inst1|ALT_INV_incrementer\(0) <= NOT \inst1|incrementer\(0);
\inst1|ALT_INV_incrementer\(1) <= NOT \inst1|incrementer\(1);
\inst1|ALT_INV_incrementer\(2) <= NOT \inst1|incrementer\(2);
\inst1|ALT_INV_Mux0~4_combout\ <= NOT \inst1|Mux0~4_combout\;
\inst1|ALT_INV_incrementer\(4) <= NOT \inst1|incrementer\(4);
\inst1|ALT_INV_incrementer\(3) <= NOT \inst1|incrementer\(3);
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a[1]~DUPLICATE_q\ <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE_q\;
\inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\ <= NOT \inst1|currentState.PRESYNCLOW~DUPLICATE_q\;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
\ALT_INV_newWordHPS~input_o\ <= NOT \newWordHPS~input_o\;
\ALT_INV_OKIn~input_o\ <= NOT \OKIn~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst1|ALT_INV_DATA_OUT~combout\ <= NOT \inst1|DATA_OUT~combout\;
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~2_combout\ <= NOT \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\;
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\;
\inst2|dcfifo_component|auto_generated|ALT_INV_delayed_wrptr_g\(1) <= NOT \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(1);
\inst2|dcfifo_component|auto_generated|ALT_INV_delayed_wrptr_g\(0) <= NOT \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(0);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(2) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(1) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(0) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe12a\(1) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe12a\(0) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(2) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(2);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(1) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(1);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(0) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(0);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe14a\(0) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(0);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(2);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(1);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(0);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe21a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(2);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe21a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(1);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe22a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(2);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe22a\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(0);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe23a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(2);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe23a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(1);
\inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_parity6~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(2) <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g\(2);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(2) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2);
\inst1|ALT_INV_RDREQ~combout\ <= NOT \inst1|RDREQ~combout\;
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\;
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\;
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(1) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1);
\inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(1) <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g\(1);
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(0) <= NOT \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0);
\inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(0) <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g\(0);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe24a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(2);
\inst1|ALT_INV_configCounter\(0) <= NOT \inst1|configCounter\(0);
\inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\;
\inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\;
\inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ <= NOT \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\;
\inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\ <= NOT \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\;
\inst1|ALT_INV_outputWord\(18) <= NOT \inst1|outputWord\(18);
\inst1|ALT_INV_outputWord\(16) <= NOT \inst1|outputWord\(16);
\inst1|ALT_INV_outputWord\(19) <= NOT \inst1|outputWord\(19);
\inst1|ALT_INV_outputWord\(17) <= NOT \inst1|outputWord\(17);
\inst1|ALT_INV_outputWord\(10) <= NOT \inst1|outputWord\(10);
\inst1|ALT_INV_outputWord\(8) <= NOT \inst1|outputWord\(8);
\inst1|ALT_INV_outputWord\(11) <= NOT \inst1|outputWord\(11);
\inst1|ALT_INV_outputWord\(9) <= NOT \inst1|outputWord\(9);
\inst1|ALT_INV_currentState.s3~q\ <= NOT \inst1|currentState.s3~q\;
\inst1|ALT_INV_outputWord\(22) <= NOT \inst1|outputWord\(22);
\inst1|ALT_INV_outputWord\(20) <= NOT \inst1|outputWord\(20);
\inst1|ALT_INV_outputWord\(23) <= NOT \inst1|outputWord\(23);
\inst1|ALT_INV_outputWord\(21) <= NOT \inst1|outputWord\(21);
\inst1|ALT_INV_outputWord\(14) <= NOT \inst1|outputWord\(14);
\inst1|ALT_INV_outputWord\(12) <= NOT \inst1|outputWord\(12);
\inst1|ALT_INV_outputWord\(15) <= NOT \inst1|outputWord\(15);
\inst1|ALT_INV_outputWord\(13) <= NOT \inst1|outputWord\(13);
\inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_parity8~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(0);
\inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1);
\inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2);
\inst1|ALT_INV_Selector0~0_combout\ <= NOT \inst1|Selector0~0_combout\;
\inst1|ALT_INV_LessThan0~0_combout\ <= NOT \inst1|LessThan0~0_combout\;
\inst1|ALT_INV_currentState.s4~q\ <= NOT \inst1|currentState.s4~q\;
\inst1|ALT_INV_Selector1~0_combout\ <= NOT \inst1|Selector1~0_combout\;
\inst1|ALT_INV_LessThan2~2_combout\ <= NOT \inst1|LessThan2~2_combout\;
\inst1|ALT_INV_configCounter\(4) <= NOT \inst1|configCounter\(4);
\inst1|ALT_INV_configCounter\(5) <= NOT \inst1|configCounter\(5);
\inst1|ALT_INV_configCounter\(6) <= NOT \inst1|configCounter\(6);
\inst1|ALT_INV_configCounter\(7) <= NOT \inst1|configCounter\(7);
\inst1|ALT_INV_configCounter\(8) <= NOT \inst1|configCounter\(8);
\inst1|ALT_INV_LessThan2~1_combout\ <= NOT \inst1|LessThan2~1_combout\;
\inst1|ALT_INV_configCounter\(9) <= NOT \inst1|configCounter\(9);
\inst1|ALT_INV_configCounter\(10) <= NOT \inst1|configCounter\(10);
\inst1|ALT_INV_configCounter\(11) <= NOT \inst1|configCounter\(11);
\inst1|ALT_INV_configCounter\(12) <= NOT \inst1|configCounter\(12);
\inst1|ALT_INV_configCounter\(13) <= NOT \inst1|configCounter\(13);
\inst1|ALT_INV_configCounter\(14) <= NOT \inst1|configCounter\(14);
\inst1|ALT_INV_LessThan1~1_combout\ <= NOT \inst1|LessThan1~1_combout\;
\inst1|ALT_INV_SyncHighCounter\(2) <= NOT \inst1|SyncHighCounter\(2);
\inst1|ALT_INV_SyncHighCounter\(3) <= NOT \inst1|SyncHighCounter\(3);
\inst1|ALT_INV_SyncHighCounter\(4) <= NOT \inst1|SyncHighCounter\(4);
\inst1|ALT_INV_SyncHighCounter\(5) <= NOT \inst1|SyncHighCounter\(5);
\inst1|ALT_INV_SyncHighCounter\(6) <= NOT \inst1|SyncHighCounter\(6);
\inst1|ALT_INV_SyncHighCounter\(7) <= NOT \inst1|SyncHighCounter\(7);
\inst1|ALT_INV_LessThan1~0_combout\ <= NOT \inst1|LessThan1~0_combout\;
\inst1|ALT_INV_SyncHighCounter\(0) <= NOT \inst1|SyncHighCounter\(0);
\inst1|ALT_INV_SyncHighCounter\(1) <= NOT \inst1|SyncHighCounter\(1);
\inst1|ALT_INV_currentState.SYNCHIGH~q\ <= NOT \inst1|currentState.SYNCHIGH~q\;
\inst1|ALT_INV_LessThan2~0_combout\ <= NOT \inst1|LessThan2~0_combout\;
\inst1|ALT_INV_configCounter\(1) <= NOT \inst1|configCounter\(1);
\inst1|ALT_INV_configCounter\(2) <= NOT \inst1|configCounter\(2);
\inst1|ALT_INV_configCounter\(3) <= NOT \inst1|configCounter\(3);
\inst1|ALT_INV_Selector45~1_combout\ <= NOT \inst1|Selector45~1_combout\;
\inst1|ALT_INV_Selector45~0_combout\ <= NOT \inst1|Selector45~0_combout\;
\inst1|ALT_INV_outputWord\(3) <= NOT \inst1|outputWord\(3);
\inst1|ALT_INV_outputWord\(2) <= NOT \inst1|outputWord\(2);
\inst1|ALT_INV_Mux0~8_combout\ <= NOT \inst1|Mux0~8_combout\;
\inst1|ALT_INV_outputWord\(7) <= NOT \inst1|outputWord\(7);
\inst1|ALT_INV_outputWord\(6) <= NOT \inst1|outputWord\(6);
\inst1|ALT_INV_outputWord\(5) <= NOT \inst1|outputWord\(5);
\inst1|ALT_INV_outputWord\(4) <= NOT \inst1|outputWord\(4);
\inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(2) <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g\(2);
\inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a2~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\;
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(2) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2);
\inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(1) <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g\(1);
\inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(0) <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g\(0);
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1);
\inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a1~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\;
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0);
\inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\;
\inst|ALT_INV_state.s3~q\ <= NOT \inst|state.s3~q\;
\inst|ALT_INV_state.s2~q\ <= NOT \inst|state.s2~q\;
\inst3|ALT_INV_sync_out~q\ <= NOT \inst3|sync_out~q\;
\inst|ALT_INV_latch~q\ <= NOT \inst|latch~q\;
\inst|ALT_INV_state.s4~q\ <= NOT \inst|state.s4~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_op_1~0_combout\ <= NOT \inst2|dcfifo_component|auto_generated|op_1~0_combout\;
\inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0);
\inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\(0) <= NOT \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(0);
\inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(1);
\inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\(1) <= NOT \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(1);
\inst4|ALT_INV_sync_out~q\ <= NOT \inst4|sync_out~q\;
\inst1|ALT_INV_latch~q\ <= NOT \inst1|latch~q\;
\inst1|ALT_INV_currentState.s0~q\ <= NOT \inst1|currentState.s0~q\;
\inst1|ALT_INV_currentState.s1~q\ <= NOT \inst1|currentState.s1~q\;
\inst1|ALT_INV_currentState.s2~q\ <= NOT \inst1|currentState.s2~q\;
\inst1|ALT_INV_currentState.PRESYNCLOW~q\ <= NOT \inst1|currentState.PRESYNCLOW~q\;
\inst1|ALT_INV_WideOr7~combout\ <= NOT \inst1|WideOr7~combout\;
\inst1|ALT_INV_currentState.CLOCKDOWN~q\ <= NOT \inst1|currentState.CLOCKDOWN~q\;
\inst1|ALT_INV_currentState.WRITEDATABIT~q\ <= NOT \inst1|currentState.WRITEDATABIT~q\;
\inst1|ALT_INV_currentState.SYNCLOW~q\ <= NOT \inst1|currentState.SYNCLOW~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\ <= NOT \inst2|dcfifo_component|auto_generated|int_wrfull~combout\;
\inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\;
\inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\ <= NOT \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\;
\inst|ALT_INV_busy~0_combout\ <= NOT \inst|busy~0_combout\;
\inst|ALT_INV_state.s1~q\ <= NOT \inst|state.s1~q\;
\inst|ALT_INV_state.s0~q\ <= NOT \inst|state.s0~q\;
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(1) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(1);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(2) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(2);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(3) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(3);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(4) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(4);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(5) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(5);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(6) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(6);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(7) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(7);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(8) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(8);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(9) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(9);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(10) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(10);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(11) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(11);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(12) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(12);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(13) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(13);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(14) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(14);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(15) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(15);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(16) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(16);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(17) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(17);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(18) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(18);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(19) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(19);
\inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(0) <= NOT \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(0);

-- Location: IOOBUF_X89_Y38_N22
\WSDBusy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_busy~0_combout\,
	devoe => ww_devoe,
	o => ww_WSDBusy);

-- Location: IOOBUF_X89_Y36_N5
\wrfull~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dcfifo_component|auto_generated|int_wrfull~combout\,
	devoe => ww_devoe,
	o => ww_wrfull);

-- Location: IOOBUF_X89_Y36_N56
\DATA_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DATA_OUT~combout\,
	devoe => ww_devoe,
	o => ww_DATA_OUT);

-- Location: IOOBUF_X89_Y9_N5
\SYNC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_SYNC);

-- Location: IOOBUF_X89_Y38_N39
\RESET6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|currentState.PRESYNCLOW~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_RESET6);

-- Location: IOOBUF_X32_Y81_N2
\CLR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_CLR);

-- Location: IOOBUF_X89_Y9_N56
\SCKOUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_currentState.CLOCKDOWN~q\,
	devoe => ww_devoe,
	o => ww_SCKOUT);

-- Location: IOOBUF_X78_Y81_N53
\LDAC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Selector46~0_combout\,
	devoe => ww_devoe,
	o => ww_LDAC);

-- Location: IOOBUF_X89_Y36_N22
\wrusedw[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dcfifo_component|auto_generated|wrfull_reg|dffe19a\(0),
	devoe => ww_devoe,
	o => ww_wrusedw(2));

-- Location: IOOBUF_X89_Y8_N39
\wrusedw[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dcfifo_component|auto_generated|ALT_INV_op_1~0_combout\,
	devoe => ww_devoe,
	o => ww_wrusedw(1));

-- Location: IOOBUF_X74_Y81_N42
\wrusedw[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dcfifo_component|auto_generated|op_1~1_combout\,
	devoe => ww_devoe,
	o => ww_wrusedw(0));

-- Location: IOIBUF_X56_Y81_N1
\refclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_refclk,
	o => \refclk~input_o\);

-- Location: PLLREFCLKSELECT_X89_Y80_N0
\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X89_Y35_N44
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FRACTIONALPLL_X89_Y74_N0
\inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 2000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 3,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 3,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "100.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \inst5|newpll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \reset~input_o\,
	refclkin => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \inst5|newpll_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X89_Y78_N0
\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X89_Y79_N1
\inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 2,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "60.0 mhz",
	phase_shift => "0 ps",
	fractional_pll_index => 0,
	output_counter_index => 2)
-- pragma translate_on
PORT MAP (
	nen0 => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\,
	tclk0 => \inst5|newpll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \inst5|newpll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \inst5|newpll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G9
\inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|newpll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N55
\newWordHPS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newWordHPS,
	o => \newWordHPS~input_o\);

-- Location: LABCELL_X75_Y50_N48
\inst3|ff1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ff1~feeder_combout\ = ( \newWordHPS~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_newWordHPS~input_o\,
	combout => \inst3|ff1~feeder_combout\);

-- Location: CLKCTRL_G10
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: FF_X75_Y50_N50
\inst3|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst3|ff1~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff1~q\);

-- Location: FF_X75_Y50_N1
\inst3|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst3|ff1~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff2~q\);

-- Location: FF_X77_Y51_N35
\inst3|sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst3|ff2~q\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sync_out~q\);

-- Location: LABCELL_X75_Y51_N15
\inst|state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|state~14_combout\ = ( !\inst|state.s0~q\ & ( (!\inst|latch~q\ & \inst3|sync_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_latch~q\,
	datac => \inst3|ALT_INV_sync_out~q\,
	dataf => \inst|ALT_INV_state.s0~q\,
	combout => \inst|state~14_combout\);

-- Location: FF_X75_Y51_N17
\inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|state~14_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s2~q\);

-- Location: FF_X75_Y51_N14
\inst|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|state.s2~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s3~q\);

-- Location: FF_X75_Y50_N29
\inst|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|state.s3~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s4~q\);

-- Location: LABCELL_X75_Y50_N21
\inst|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|state~12_combout\ = ( !\inst|state.s4~q\ & ( !\inst|state.s1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_state.s1~q\,
	dataf => \inst|ALT_INV_state.s4~q\,
	combout => \inst|state~12_combout\);

-- Location: FF_X75_Y50_N23
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|state~12_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LABCELL_X75_Y50_N57
\inst|latch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|latch~0_combout\ = ( \inst|latch~q\ & ( \inst|state.s0~q\ ) ) # ( \inst|latch~q\ & ( !\inst|state.s0~q\ & ( \inst3|sync_out~q\ ) ) ) # ( !\inst|latch~q\ & ( !\inst|state.s0~q\ & ( \inst3|sync_out~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_sync_out~q\,
	datae => \inst|ALT_INV_latch~q\,
	dataf => \inst|ALT_INV_state.s0~q\,
	combout => \inst|latch~0_combout\);

-- Location: FF_X75_Y50_N59
\inst|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|latch~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|latch~q\);

-- Location: LABCELL_X75_Y50_N42
\inst|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|state~13_combout\ = ( \inst3|sync_out~q\ & ( !\inst|state.s0~q\ & ( \inst|latch~q\ ) ) ) # ( !\inst3|sync_out~q\ & ( !\inst|state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_latch~q\,
	datae => \inst3|ALT_INV_sync_out~q\,
	dataf => \inst|ALT_INV_state.s0~q\,
	combout => \inst|state~13_combout\);

-- Location: FF_X75_Y50_N44
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|state~13_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: LABCELL_X75_Y50_N18
\inst|busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|busy~0_combout\ = (!\inst|state.s0~q\) # (\inst|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.s1~q\,
	datac => \inst|ALT_INV_state.s0~q\,
	combout => \inst|busy~0_combout\);

-- Location: LABCELL_X75_Y51_N24
\inst|wclock\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|wclock~combout\ = LCELL(( \inst|state.s3~q\ ) # ( !\inst|state.s3~q\ & ( !\inst|state.s0~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_state.s0~q\,
	dataf => \inst|ALT_INV_state.s3~q\,
	combout => \inst|wclock~combout\);

-- Location: LABCELL_X75_Y51_N54
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~0_combout\ = ( \inst|state.s2~q\ & ( \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ ) ) ) # ( !\inst|state.s2~q\ & ( 
-- \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ ) ) ) # ( \inst|state.s2~q\ & ( !\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( 
-- !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ $ (((\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\) # (\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\))) ) ) ) # ( !\inst|state.s2~q\ & ( 
-- !\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ $ ((((!\inst|state.s3~q\) # (\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\)) # 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110000111100001111000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_parity8~q\,
	datac => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a1~q\,
	datad => \inst|ALT_INV_state.s3~q\,
	datae => \inst|ALT_INV_state.s2~q\,
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\,
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~0_combout\);

-- Location: FF_X75_Y51_N53
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\);

-- Location: LABCELL_X75_Y51_N42
\inst2|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ 
-- (!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	datac => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a1~q\,
	dataf => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a2~q\,
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LABCELL_X75_Y50_N12
\inst1|configCounter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|configCounter[0]~0_combout\ = ( !\inst1|configCounter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_configCounter\(0),
	combout => \inst1|configCounter[0]~0_combout\);

-- Location: LABCELL_X79_Y51_N27
\inst1|currentState.PRESYNCLOW~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentState.PRESYNCLOW~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst1|currentState.PRESYNCLOW~feeder_combout\);

-- Location: FF_X79_Y51_N28
\inst1|currentState.PRESYNCLOW~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|currentState.PRESYNCLOW~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.PRESYNCLOW~DUPLICATE_q\);

-- Location: IOIBUF_X70_Y81_N52
\OKIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OKIn,
	o => \OKIn~input_o\);

-- Location: LABCELL_X73_Y53_N42
\inst4|ff1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ff1~feeder_combout\ = ( \OKIn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OKIn~input_o\,
	combout => \inst4|ff1~feeder_combout\);

-- Location: FF_X73_Y53_N44
\inst4|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst4|ff1~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff1~q\);

-- Location: FF_X73_Y53_N26
\inst4|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst4|ff1~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff2~q\);

-- Location: FF_X74_Y51_N20
\inst4|sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst4|ff2~q\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sync_out~q\);

-- Location: FF_X75_Y52_N34
\inst1|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst4|sync_out~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst1|currentState.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|latch~q\);

-- Location: LABCELL_X79_Y52_N12
\inst1|currentState~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentState~14_combout\ = ( \inst4|sync_out~q\ & ( (\inst1|currentState.s0~q\ & !\inst1|latch~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datae => \inst4|ALT_INV_sync_out~q\,
	combout => \inst1|currentState~14_combout\);

-- Location: FF_X77_Y52_N35
\inst1|currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|currentState~14_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.s2~q\);

-- Location: FF_X77_Y52_N32
\inst1|currentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|currentState.s2~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.s3~q\);

-- Location: FF_X75_Y50_N31
\inst1|currentState.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|currentState.s3~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.s4~q\);

-- Location: LABCELL_X75_Y50_N33
\inst1|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = ( \inst1|currentState.s4~q\ ) # ( !\inst1|currentState.s4~q\ & ( (!\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|Selector1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datac => \inst1|ALT_INV_Selector1~0_combout\,
	dataf => \inst1|ALT_INV_currentState.s4~q\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X75_Y50_N34
\inst1|currentState.SYNCLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.SYNCLOW~q\);

-- Location: MLABCELL_X78_Y51_N0
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \inst1|incrementer\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add0~18\ = CARRY(( \inst1|incrementer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(0),
	cin => GND,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: LABCELL_X79_Y51_N0
\inst1|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector43~0_combout\ = ( \inst1|incrementer\(0) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datae => \inst1|ALT_INV_incrementer\(0),
	combout => \inst1|Selector43~0_combout\);

-- Location: FF_X78_Y51_N2
\inst1|incrementer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~17_sumout\,
	asdata => \inst1|Selector43~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(0));

-- Location: MLABCELL_X78_Y51_N3
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \inst1|incrementer\(1) ) + ( GND ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~14\ = CARRY(( \inst1|incrementer\(1) ) + ( GND ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(1),
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: LABCELL_X79_Y51_N18
\inst1|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector42~0_combout\ = ( \inst1|incrementer\(1) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	dataf => \inst1|ALT_INV_incrementer\(1),
	combout => \inst1|Selector42~0_combout\);

-- Location: FF_X78_Y51_N5
\inst1|incrementer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~13_sumout\,
	asdata => \inst1|Selector42~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(1));

-- Location: MLABCELL_X78_Y51_N6
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \inst1|incrementer\(2) ) + ( GND ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~10\ = CARRY(( \inst1|incrementer\(2) ) + ( GND ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(2),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: LABCELL_X75_Y52_N39
\inst1|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector41~0_combout\ = ( \inst1|incrementer\(2) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_incrementer\(2),
	dataf => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	combout => \inst1|Selector41~0_combout\);

-- Location: FF_X78_Y51_N8
\inst1|incrementer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~9_sumout\,
	asdata => \inst1|Selector41~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(2));

-- Location: MLABCELL_X78_Y51_N9
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \inst1|incrementer\(3) ) + ( GND ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~2\ = CARRY(( \inst1|incrementer\(3) ) + ( GND ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(3),
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~1_sumout\,
	cout => \inst1|Add0~2\);

-- Location: LABCELL_X79_Y51_N51
\inst1|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector40~0_combout\ = ( !\inst1|currentState.SYNCHIGH~q\ & ( \inst1|incrementer\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	dataf => \inst1|ALT_INV_incrementer\(3),
	combout => \inst1|Selector40~0_combout\);

-- Location: FF_X78_Y51_N11
\inst1|incrementer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~1_sumout\,
	asdata => \inst1|Selector40~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(3));

-- Location: MLABCELL_X78_Y51_N12
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \inst1|incrementer\(4) ) + ( GND ) + ( \inst1|Add0~2\ ))
-- \inst1|Add0~6\ = CARRY(( \inst1|incrementer\(4) ) + ( GND ) + ( \inst1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(4),
	cin => \inst1|Add0~2\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: LABCELL_X79_Y51_N45
\inst1|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector39~0_combout\ = ( \inst1|incrementer\(4) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datae => \inst1|ALT_INV_incrementer\(4),
	combout => \inst1|Selector39~0_combout\);

-- Location: FF_X78_Y51_N14
\inst1|incrementer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~5_sumout\,
	asdata => \inst1|Selector39~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(4));

-- Location: MLABCELL_X78_Y51_N15
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \inst1|incrementer\(5) ) + ( GND ) + ( \inst1|Add0~6\ ))
-- \inst1|Add0~30\ = CARRY(( \inst1|incrementer\(5) ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(5),
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: LABCELL_X79_Y51_N15
\inst1|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector38~0_combout\ = ( !\inst1|currentState.SYNCHIGH~q\ & ( \inst1|incrementer\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	dataf => \inst1|ALT_INV_incrementer\(5),
	combout => \inst1|Selector38~0_combout\);

-- Location: FF_X78_Y51_N17
\inst1|incrementer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~29_sumout\,
	asdata => \inst1|Selector38~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(5));

-- Location: MLABCELL_X78_Y51_N18
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \inst1|incrementer\(6) ) + ( GND ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~26\ = CARRY(( \inst1|incrementer\(6) ) + ( GND ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(6),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: LABCELL_X79_Y51_N6
\inst1|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector37~0_combout\ = ( \inst1|incrementer\(6) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datae => \inst1|ALT_INV_incrementer\(6),
	combout => \inst1|Selector37~0_combout\);

-- Location: FF_X78_Y51_N20
\inst1|incrementer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~25_sumout\,
	asdata => \inst1|Selector37~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(6));

-- Location: MLABCELL_X78_Y51_N21
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \inst1|incrementer\(7) ) + ( GND ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_incrementer\(7),
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~21_sumout\);

-- Location: LABCELL_X79_Y51_N24
\inst1|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector36~0_combout\ = ( \inst1|incrementer\(7) & ( !\inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	dataf => \inst1|ALT_INV_incrementer\(7),
	combout => \inst1|Selector36~0_combout\);

-- Location: FF_X78_Y51_N23
\inst1|incrementer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add0~21_sumout\,
	asdata => \inst1|Selector36~0_combout\,
	sload => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|incrementer\(7));

-- Location: LABCELL_X79_Y51_N57
\inst1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ( !\inst1|incrementer\(6) & ( \inst1|incrementer\(3) & ( (!\inst1|incrementer\(7) & (!\inst1|incrementer\(5) & !\inst1|incrementer\(4))) ) ) ) # ( !\inst1|incrementer\(6) & ( !\inst1|incrementer\(3) & ( 
-- (!\inst1|incrementer\(7) & !\inst1|incrementer\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incrementer\(7),
	datac => \inst1|ALT_INV_incrementer\(5),
	datad => \inst1|ALT_INV_incrementer\(4),
	datae => \inst1|ALT_INV_incrementer\(6),
	dataf => \inst1|ALT_INV_incrementer\(3),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LABCELL_X74_Y51_N27
\inst1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ( \inst1|currentState.CLOCKDOWN~q\ & ( (\inst1|LessThan0~0_combout\) # (\inst1|currentState.SYNCLOW~q\) ) ) # ( !\inst1|currentState.CLOCKDOWN~q\ & ( \inst1|currentState.SYNCLOW~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.SYNCLOW~q\,
	datac => \inst1|ALT_INV_LessThan0~0_combout\,
	dataf => \inst1|ALT_INV_currentState.CLOCKDOWN~q\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X77_Y51_N56
\inst1|currentState.WRITEDATABIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.WRITEDATABIT~q\);

-- Location: FF_X77_Y51_N2
\inst1|currentState.CLOCKDOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|currentState.WRITEDATABIT~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.CLOCKDOWN~q\);

-- Location: LABCELL_X77_Y51_N57
\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( \inst1|LessThan1~0_combout\ & ( (\inst1|currentState.CLOCKDOWN~q\ & !\inst1|LessThan0~0_combout\) ) ) # ( !\inst1|LessThan1~0_combout\ & ( (!\inst1|currentState.CLOCKDOWN~q\ & (\inst1|LessThan1~1_combout\ & 
-- ((\inst1|currentState.SYNCHIGH~q\)))) # (\inst1|currentState.CLOCKDOWN~q\ & ((!\inst1|LessThan0~0_combout\) # ((\inst1|LessThan1~1_combout\ & \inst1|currentState.SYNCHIGH~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110011010100000111001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.CLOCKDOWN~q\,
	datab => \inst1|ALT_INV_LessThan1~1_combout\,
	datac => \inst1|ALT_INV_LessThan0~0_combout\,
	datad => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	dataf => \inst1|ALT_INV_LessThan1~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X77_Y51_N59
\inst1|currentState.SYNCHIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.SYNCHIGH~q\);

-- Location: LABCELL_X77_Y53_N30
\inst1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~5_sumout\ = SUM(( \inst1|SyncHighCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add1~6\ = CARRY(( \inst1|SyncHighCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_SyncHighCounter\(0),
	cin => GND,
	sumout => \inst1|Add1~5_sumout\,
	cout => \inst1|Add1~6\);

-- Location: LABCELL_X77_Y53_N33
\inst1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~1_sumout\ = SUM(( \inst1|SyncHighCounter\(1) ) + ( GND ) + ( \inst1|Add1~6\ ))
-- \inst1|Add1~2\ = CARRY(( \inst1|SyncHighCounter\(1) ) + ( GND ) + ( \inst1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_SyncHighCounter\(1),
	cin => \inst1|Add1~6\,
	sumout => \inst1|Add1~1_sumout\,
	cout => \inst1|Add1~2\);

-- Location: LABCELL_X77_Y53_N12
\inst1|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector34~0_combout\ = ( \inst1|SyncHighCounter\(1) & ( \inst1|SyncHighCounter\(0) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) ) # ( !\inst1|SyncHighCounter\(1) & ( \inst1|SyncHighCounter\(0) & ( 
-- (\inst1|currentState.SYNCHIGH~q\ & (\inst1|Add1~1_sumout\ & \inst1|LessThan1~1_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(1) & ( !\inst1|SyncHighCounter\(0) & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # 
-- (\inst1|currentState.SYNCHIGH~q\ & (((\inst1|Add1~1_sumout\ & \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(1) & ( !\inst1|SyncHighCounter\(0) & ( (\inst1|currentState.SYNCHIGH~q\ & (\inst1|Add1~1_sumout\ & 
-- \inst1|LessThan1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010001000100011100000000000000110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datac => \inst1|ALT_INV_Add1~1_sumout\,
	datad => \inst1|ALT_INV_LessThan1~1_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(1),
	dataf => \inst1|ALT_INV_SyncHighCounter\(0),
	combout => \inst1|Selector34~0_combout\);

-- Location: FF_X77_Y53_N14
\inst1|SyncHighCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector34~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(1));

-- Location: LABCELL_X77_Y53_N54
\inst1|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector35~0_combout\ = ( \inst1|SyncHighCounter\(0) & ( \inst1|SyncHighCounter\(1) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) ) # ( !\inst1|SyncHighCounter\(0) & ( \inst1|SyncHighCounter\(1) & ( 
-- (\inst1|currentState.SYNCHIGH~q\ & (\inst1|Add1~5_sumout\ & \inst1|LessThan1~1_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(0) & ( !\inst1|SyncHighCounter\(1) & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # 
-- (\inst1|currentState.SYNCHIGH~q\ & (((\inst1|Add1~5_sumout\ & \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(0) & ( !\inst1|SyncHighCounter\(1) & ( (\inst1|currentState.SYNCHIGH~q\ & (\inst1|Add1~5_sumout\ & 
-- \inst1|LessThan1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010001000100011100000000000000110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datac => \inst1|ALT_INV_Add1~5_sumout\,
	datad => \inst1|ALT_INV_LessThan1~1_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(0),
	dataf => \inst1|ALT_INV_SyncHighCounter\(1),
	combout => \inst1|Selector35~0_combout\);

-- Location: FF_X77_Y53_N56
\inst1|SyncHighCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector35~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(0));

-- Location: LABCELL_X75_Y53_N3
\inst1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ( \inst1|SyncHighCounter\(0) & ( \inst1|SyncHighCounter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_SyncHighCounter\(0),
	dataf => \inst1|ALT_INV_SyncHighCounter\(1),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LABCELL_X77_Y53_N36
\inst1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_sumout\ = SUM(( \inst1|SyncHighCounter\(2) ) + ( GND ) + ( \inst1|Add1~2\ ))
-- \inst1|Add1~30\ = CARRY(( \inst1|SyncHighCounter\(2) ) + ( GND ) + ( \inst1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_SyncHighCounter\(2),
	cin => \inst1|Add1~2\,
	sumout => \inst1|Add1~29_sumout\,
	cout => \inst1|Add1~30\);

-- Location: LABCELL_X77_Y53_N24
\inst1|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector33~0_combout\ = ( \inst1|SyncHighCounter\(2) & ( \inst1|Add1~29_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((!\inst1|LessThan1~0_combout\ & 
-- \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(2) & ( \inst1|Add1~29_sumout\ & ( (!\inst1|LessThan1~0_combout\ & (\inst1|LessThan1~1_combout\ & \inst1|currentState.SYNCHIGH~q\)) ) ) ) # ( \inst1|SyncHighCounter\(2) & ( 
-- !\inst1|Add1~29_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_LessThan1~0_combout\,
	datac => \inst1|ALT_INV_LessThan1~1_combout\,
	datad => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datae => \inst1|ALT_INV_SyncHighCounter\(2),
	dataf => \inst1|ALT_INV_Add1~29_sumout\,
	combout => \inst1|Selector33~0_combout\);

-- Location: FF_X77_Y53_N26
\inst1|SyncHighCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector33~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(2));

-- Location: LABCELL_X77_Y53_N39
\inst1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~25_sumout\ = SUM(( \inst1|SyncHighCounter\(3) ) + ( GND ) + ( \inst1|Add1~30\ ))
-- \inst1|Add1~26\ = CARRY(( \inst1|SyncHighCounter\(3) ) + ( GND ) + ( \inst1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_SyncHighCounter\(3),
	cin => \inst1|Add1~30\,
	sumout => \inst1|Add1~25_sumout\,
	cout => \inst1|Add1~26\);

-- Location: LABCELL_X77_Y53_N21
\inst1|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector32~0_combout\ = ( \inst1|SyncHighCounter\(3) & ( \inst1|Add1~25_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((!\inst1|LessThan1~0_combout\ & 
-- \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(3) & ( \inst1|Add1~25_sumout\ & ( (\inst1|currentState.SYNCHIGH~q\ & (!\inst1|LessThan1~0_combout\ & \inst1|LessThan1~1_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(3) & ( 
-- !\inst1|Add1~25_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000001100000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datac => \inst1|ALT_INV_LessThan1~0_combout\,
	datad => \inst1|ALT_INV_LessThan1~1_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(3),
	dataf => \inst1|ALT_INV_Add1~25_sumout\,
	combout => \inst1|Selector32~0_combout\);

-- Location: FF_X77_Y53_N23
\inst1|SyncHighCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector32~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(3));

-- Location: LABCELL_X77_Y53_N42
\inst1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~21_sumout\ = SUM(( \inst1|SyncHighCounter\(4) ) + ( GND ) + ( \inst1|Add1~26\ ))
-- \inst1|Add1~22\ = CARRY(( \inst1|SyncHighCounter\(4) ) + ( GND ) + ( \inst1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_SyncHighCounter\(4),
	cin => \inst1|Add1~26\,
	sumout => \inst1|Add1~21_sumout\,
	cout => \inst1|Add1~22\);

-- Location: LABCELL_X77_Y53_N27
\inst1|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector31~0_combout\ = ( \inst1|SyncHighCounter\(4) & ( \inst1|Add1~21_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((!\inst1|LessThan1~0_combout\ & 
-- \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(4) & ( \inst1|Add1~21_sumout\ & ( (!\inst1|LessThan1~0_combout\ & (\inst1|currentState.SYNCHIGH~q\ & \inst1|LessThan1~1_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(4) & ( 
-- !\inst1|Add1~21_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000011000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_LessThan1~0_combout\,
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datad => \inst1|ALT_INV_LessThan1~1_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(4),
	dataf => \inst1|ALT_INV_Add1~21_sumout\,
	combout => \inst1|Selector31~0_combout\);

-- Location: FF_X77_Y53_N29
\inst1|SyncHighCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector31~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(4));

-- Location: LABCELL_X77_Y53_N45
\inst1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~17_sumout\ = SUM(( \inst1|SyncHighCounter\(5) ) + ( GND ) + ( \inst1|Add1~22\ ))
-- \inst1|Add1~18\ = CARRY(( \inst1|SyncHighCounter\(5) ) + ( GND ) + ( \inst1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_SyncHighCounter\(5),
	cin => \inst1|Add1~22\,
	sumout => \inst1|Add1~17_sumout\,
	cout => \inst1|Add1~18\);

-- Location: LABCELL_X77_Y53_N18
\inst1|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector30~0_combout\ = ( \inst1|SyncHighCounter\(5) & ( \inst1|Add1~17_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((\inst1|LessThan1~1_combout\ & 
-- !\inst1|LessThan1~0_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(5) & ( \inst1|Add1~17_sumout\ & ( (\inst1|currentState.SYNCHIGH~q\ & (\inst1|LessThan1~1_combout\ & !\inst1|LessThan1~0_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(5) & ( 
-- !\inst1|Add1~17_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000011000000000100011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datac => \inst1|ALT_INV_LessThan1~1_combout\,
	datad => \inst1|ALT_INV_LessThan1~0_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(5),
	dataf => \inst1|ALT_INV_Add1~17_sumout\,
	combout => \inst1|Selector30~0_combout\);

-- Location: FF_X77_Y53_N20
\inst1|SyncHighCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector30~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(5));

-- Location: LABCELL_X77_Y53_N48
\inst1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_sumout\ = SUM(( \inst1|SyncHighCounter\(6) ) + ( GND ) + ( \inst1|Add1~18\ ))
-- \inst1|Add1~14\ = CARRY(( \inst1|SyncHighCounter\(6) ) + ( GND ) + ( \inst1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_SyncHighCounter\(6),
	cin => \inst1|Add1~18\,
	sumout => \inst1|Add1~13_sumout\,
	cout => \inst1|Add1~14\);

-- Location: LABCELL_X77_Y53_N3
\inst1|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector29~0_combout\ = ( \inst1|SyncHighCounter\(6) & ( \inst1|Add1~13_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((!\inst1|LessThan1~0_combout\ & 
-- \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(6) & ( \inst1|Add1~13_sumout\ & ( (!\inst1|LessThan1~0_combout\ & (\inst1|currentState.SYNCHIGH~q\ & \inst1|LessThan1~1_combout\)) ) ) ) # ( \inst1|SyncHighCounter\(6) & ( 
-- !\inst1|Add1~13_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000011000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_LessThan1~0_combout\,
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datad => \inst1|ALT_INV_LessThan1~1_combout\,
	datae => \inst1|ALT_INV_SyncHighCounter\(6),
	dataf => \inst1|ALT_INV_Add1~13_sumout\,
	combout => \inst1|Selector29~0_combout\);

-- Location: FF_X77_Y53_N5
\inst1|SyncHighCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector29~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(6));

-- Location: LABCELL_X77_Y53_N51
\inst1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add1~9_sumout\ = SUM(( \inst1|SyncHighCounter\(7) ) + ( GND ) + ( \inst1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_SyncHighCounter\(7),
	cin => \inst1|Add1~14\,
	sumout => \inst1|Add1~9_sumout\);

-- Location: LABCELL_X77_Y53_N0
\inst1|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector28~0_combout\ = ( \inst1|SyncHighCounter\(7) & ( \inst1|Add1~9_sumout\ & ( (!\inst1|currentState.SYNCHIGH~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.SYNCHIGH~q\ & (((!\inst1|LessThan1~0_combout\ & 
-- \inst1|LessThan1~1_combout\)))) ) ) ) # ( !\inst1|SyncHighCounter\(7) & ( \inst1|Add1~9_sumout\ & ( (!\inst1|LessThan1~0_combout\ & (\inst1|LessThan1~1_combout\ & \inst1|currentState.SYNCHIGH~q\)) ) ) ) # ( \inst1|SyncHighCounter\(7) & ( 
-- !\inst1|Add1~9_sumout\ & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & !\inst1|currentState.SYNCHIGH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_LessThan1~0_combout\,
	datac => \inst1|ALT_INV_LessThan1~1_combout\,
	datad => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datae => \inst1|ALT_INV_SyncHighCounter\(7),
	dataf => \inst1|ALT_INV_Add1~9_sumout\,
	combout => \inst1|Selector28~0_combout\);

-- Location: FF_X77_Y53_N2
\inst1|SyncHighCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector28~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SyncHighCounter\(7));

-- Location: LABCELL_X77_Y53_N9
\inst1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ( !\inst1|SyncHighCounter\(7) & ( !\inst1|SyncHighCounter\(5) & ( (!\inst1|SyncHighCounter\(2) & (!\inst1|SyncHighCounter\(4) & (!\inst1|SyncHighCounter\(3) & !\inst1|SyncHighCounter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_SyncHighCounter\(2),
	datab => \inst1|ALT_INV_SyncHighCounter\(4),
	datac => \inst1|ALT_INV_SyncHighCounter\(3),
	datad => \inst1|ALT_INV_SyncHighCounter\(6),
	datae => \inst1|ALT_INV_SyncHighCounter\(7),
	dataf => \inst1|ALT_INV_SyncHighCounter\(5),
	combout => \inst1|LessThan1~1_combout\);

-- Location: MLABCELL_X78_Y52_N0
\inst1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~9_sumout\ = SUM(( \inst1|configCounter\(1) ) + ( \inst1|configCounter\(0) ) + ( !VCC ))
-- \inst1|Add2~10\ = CARRY(( \inst1|configCounter\(1) ) + ( \inst1|configCounter\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_configCounter\(0),
	datad => \inst1|ALT_INV_configCounter\(1),
	cin => GND,
	sumout => \inst1|Add2~9_sumout\,
	cout => \inst1|Add2~10\);

-- Location: MLABCELL_X78_Y52_N3
\inst1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~5_sumout\ = SUM(( \inst1|configCounter\(2) ) + ( GND ) + ( \inst1|Add2~10\ ))
-- \inst1|Add2~6\ = CARRY(( \inst1|configCounter\(2) ) + ( GND ) + ( \inst1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(2),
	cin => \inst1|Add2~10\,
	sumout => \inst1|Add2~5_sumout\,
	cout => \inst1|Add2~6\);

-- Location: FF_X78_Y52_N5
\inst1|configCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~5_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(2));

-- Location: MLABCELL_X78_Y52_N6
\inst1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_sumout\ = SUM(( \inst1|configCounter\(3) ) + ( GND ) + ( \inst1|Add2~6\ ))
-- \inst1|Add2~2\ = CARRY(( \inst1|configCounter\(3) ) + ( GND ) + ( \inst1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(3),
	cin => \inst1|Add2~6\,
	sumout => \inst1|Add2~1_sumout\,
	cout => \inst1|Add2~2\);

-- Location: FF_X78_Y52_N8
\inst1|configCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~1_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(3));

-- Location: MLABCELL_X78_Y52_N9
\inst1|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~53_sumout\ = SUM(( \inst1|configCounter\(4) ) + ( GND ) + ( \inst1|Add2~2\ ))
-- \inst1|Add2~54\ = CARRY(( \inst1|configCounter\(4) ) + ( GND ) + ( \inst1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(4),
	cin => \inst1|Add2~2\,
	sumout => \inst1|Add2~53_sumout\,
	cout => \inst1|Add2~54\);

-- Location: FF_X78_Y52_N10
\inst1|configCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~53_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(4));

-- Location: MLABCELL_X78_Y52_N12
\inst1|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~49_sumout\ = SUM(( \inst1|configCounter\(5) ) + ( GND ) + ( \inst1|Add2~54\ ))
-- \inst1|Add2~50\ = CARRY(( \inst1|configCounter\(5) ) + ( GND ) + ( \inst1|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(5),
	cin => \inst1|Add2~54\,
	sumout => \inst1|Add2~49_sumout\,
	cout => \inst1|Add2~50\);

-- Location: FF_X78_Y52_N13
\inst1|configCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~49_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(5));

-- Location: MLABCELL_X78_Y52_N15
\inst1|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~45_sumout\ = SUM(( \inst1|configCounter\(6) ) + ( GND ) + ( \inst1|Add2~50\ ))
-- \inst1|Add2~46\ = CARRY(( \inst1|configCounter\(6) ) + ( GND ) + ( \inst1|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(6),
	cin => \inst1|Add2~50\,
	sumout => \inst1|Add2~45_sumout\,
	cout => \inst1|Add2~46\);

-- Location: FF_X78_Y52_N17
\inst1|configCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~45_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(6));

-- Location: MLABCELL_X78_Y52_N18
\inst1|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~41_sumout\ = SUM(( \inst1|configCounter\(7) ) + ( GND ) + ( \inst1|Add2~46\ ))
-- \inst1|Add2~42\ = CARRY(( \inst1|configCounter\(7) ) + ( GND ) + ( \inst1|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(7),
	cin => \inst1|Add2~46\,
	sumout => \inst1|Add2~41_sumout\,
	cout => \inst1|Add2~42\);

-- Location: FF_X78_Y52_N19
\inst1|configCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~41_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(7));

-- Location: MLABCELL_X78_Y52_N21
\inst1|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~37_sumout\ = SUM(( \inst1|configCounter\(8) ) + ( GND ) + ( \inst1|Add2~42\ ))
-- \inst1|Add2~38\ = CARRY(( \inst1|configCounter\(8) ) + ( GND ) + ( \inst1|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(8),
	cin => \inst1|Add2~42\,
	sumout => \inst1|Add2~37_sumout\,
	cout => \inst1|Add2~38\);

-- Location: FF_X78_Y52_N23
\inst1|configCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~37_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(8));

-- Location: MLABCELL_X78_Y52_N24
\inst1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~33_sumout\ = SUM(( \inst1|configCounter\(9) ) + ( GND ) + ( \inst1|Add2~38\ ))
-- \inst1|Add2~34\ = CARRY(( \inst1|configCounter\(9) ) + ( GND ) + ( \inst1|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(9),
	cin => \inst1|Add2~38\,
	sumout => \inst1|Add2~33_sumout\,
	cout => \inst1|Add2~34\);

-- Location: FF_X78_Y52_N25
\inst1|configCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~33_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(9));

-- Location: MLABCELL_X78_Y52_N27
\inst1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~29_sumout\ = SUM(( \inst1|configCounter\(10) ) + ( GND ) + ( \inst1|Add2~34\ ))
-- \inst1|Add2~30\ = CARRY(( \inst1|configCounter\(10) ) + ( GND ) + ( \inst1|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(10),
	cin => \inst1|Add2~34\,
	sumout => \inst1|Add2~29_sumout\,
	cout => \inst1|Add2~30\);

-- Location: FF_X78_Y52_N29
\inst1|configCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~29_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(10));

-- Location: MLABCELL_X78_Y52_N30
\inst1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~25_sumout\ = SUM(( \inst1|configCounter\(11) ) + ( GND ) + ( \inst1|Add2~30\ ))
-- \inst1|Add2~26\ = CARRY(( \inst1|configCounter\(11) ) + ( GND ) + ( \inst1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(11),
	cin => \inst1|Add2~30\,
	sumout => \inst1|Add2~25_sumout\,
	cout => \inst1|Add2~26\);

-- Location: FF_X78_Y52_N31
\inst1|configCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~25_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(11));

-- Location: MLABCELL_X78_Y52_N33
\inst1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~21_sumout\ = SUM(( \inst1|configCounter\(12) ) + ( GND ) + ( \inst1|Add2~26\ ))
-- \inst1|Add2~22\ = CARRY(( \inst1|configCounter\(12) ) + ( GND ) + ( \inst1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(12),
	cin => \inst1|Add2~26\,
	sumout => \inst1|Add2~21_sumout\,
	cout => \inst1|Add2~22\);

-- Location: FF_X78_Y52_N35
\inst1|configCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~21_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(12));

-- Location: MLABCELL_X78_Y52_N36
\inst1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~17_sumout\ = SUM(( \inst1|configCounter\(13) ) + ( GND ) + ( \inst1|Add2~22\ ))
-- \inst1|Add2~18\ = CARRY(( \inst1|configCounter\(13) ) + ( GND ) + ( \inst1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(13),
	cin => \inst1|Add2~22\,
	sumout => \inst1|Add2~17_sumout\,
	cout => \inst1|Add2~18\);

-- Location: FF_X78_Y52_N38
\inst1|configCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~17_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(13));

-- Location: MLABCELL_X78_Y52_N39
\inst1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~13_sumout\ = SUM(( \inst1|configCounter\(14) ) + ( GND ) + ( \inst1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_configCounter\(14),
	cin => \inst1|Add2~18\,
	sumout => \inst1|Add2~13_sumout\);

-- Location: FF_X78_Y52_N41
\inst1|configCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~13_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(14));

-- Location: MLABCELL_X78_Y52_N42
\inst1|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_combout\ = ( !\inst1|configCounter\(13) & ( !\inst1|configCounter\(11) & ( (!\inst1|configCounter\(12) & (!\inst1|configCounter\(9) & (!\inst1|configCounter\(10) & !\inst1|configCounter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_configCounter\(12),
	datab => \inst1|ALT_INV_configCounter\(9),
	datac => \inst1|ALT_INV_configCounter\(10),
	datad => \inst1|ALT_INV_configCounter\(14),
	datae => \inst1|ALT_INV_configCounter\(13),
	dataf => \inst1|ALT_INV_configCounter\(11),
	combout => \inst1|LessThan2~1_combout\);

-- Location: MLABCELL_X78_Y52_N48
\inst1|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~2_combout\ = ( !\inst1|configCounter\(5) & ( (!\inst1|configCounter\(7) & (!\inst1|configCounter\(6) & (!\inst1|configCounter\(8) & !\inst1|configCounter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_configCounter\(7),
	datab => \inst1|ALT_INV_configCounter\(6),
	datac => \inst1|ALT_INV_configCounter\(8),
	datad => \inst1|ALT_INV_configCounter\(4),
	dataf => \inst1|ALT_INV_configCounter\(5),
	combout => \inst1|LessThan2~2_combout\);

-- Location: MLABCELL_X78_Y52_N57
\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ( \inst1|LessThan1~0_combout\ & ( !\inst1|LessThan2~0_combout\ & ( (\inst1|LessThan2~1_combout\ & (\inst1|currentState.SYNCHIGH~q\ & \inst1|LessThan2~2_combout\)) ) ) ) # ( !\inst1|LessThan1~0_combout\ & ( 
-- !\inst1|LessThan2~0_combout\ & ( (!\inst1|LessThan1~1_combout\ & (\inst1|LessThan2~1_combout\ & (\inst1|currentState.SYNCHIGH~q\ & \inst1|LessThan2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_LessThan1~1_combout\,
	datab => \inst1|ALT_INV_LessThan2~1_combout\,
	datac => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datad => \inst1|ALT_INV_LessThan2~2_combout\,
	datae => \inst1|ALT_INV_LessThan1~0_combout\,
	dataf => \inst1|ALT_INV_LessThan2~0_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X75_Y50_N13
\inst1|configCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|configCounter[0]~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(0));

-- Location: FF_X78_Y52_N1
\inst1|configCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Add2~9_sumout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|configCounter\(1));

-- Location: MLABCELL_X78_Y52_N51
\inst1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = ( \inst1|configCounter\(3) & ( (\inst1|configCounter\(2)) # (\inst1|configCounter\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_configCounter\(1),
	datad => \inst1|ALT_INV_configCounter\(2),
	dataf => \inst1|ALT_INV_configCounter\(3),
	combout => \inst1|LessThan2~0_combout\);

-- Location: LABCELL_X75_Y52_N15
\inst1|currentState~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|currentState~15_combout\ = ( \inst1|latch~q\ & ( \inst1|currentState.s0~q\ ) ) # ( !\inst1|latch~q\ & ( (\inst1|currentState.s0~q\ & !\inst4|sync_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	dataf => \inst1|ALT_INV_latch~q\,
	combout => \inst1|currentState~15_combout\);

-- Location: FF_X75_Y52_N17
\inst1|currentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|currentState~15_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.s1~q\);

-- Location: LABCELL_X75_Y52_N42
\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ( \inst1|LessThan1~1_combout\ & ( (\inst1|currentState.SYNCHIGH~q\ & \inst1|LessThan1~0_combout\) ) ) # ( !\inst1|LessThan1~1_combout\ & ( \inst1|currentState.SYNCHIGH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_currentState.SYNCHIGH~q\,
	datac => \inst1|ALT_INV_LessThan1~0_combout\,
	dataf => \inst1|ALT_INV_LessThan1~1_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LABCELL_X75_Y52_N12
\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = ( \inst1|Selector0~0_combout\ & ( (((!\inst1|LessThan2~2_combout\) # (!\inst1|LessThan2~1_combout\)) # (\inst1|currentState.s1~q\)) # (\inst1|LessThan2~0_combout\) ) ) # ( !\inst1|Selector0~0_combout\ & ( 
-- \inst1|currentState.s1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_LessThan2~0_combout\,
	datab => \inst1|ALT_INV_currentState.s1~q\,
	datac => \inst1|ALT_INV_LessThan2~2_combout\,
	datad => \inst1|ALT_INV_LessThan2~1_combout\,
	dataf => \inst1|ALT_INV_Selector0~0_combout\,
	combout => \inst1|Selector0~1_combout\);

-- Location: FF_X78_Y52_N56
\inst1|currentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.s0~q\);

-- Location: LABCELL_X77_Y52_N30
\inst1|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr9~combout\ = LCELL(( \inst1|currentState.WRITEDATABIT~q\ ) # ( !\inst1|currentState.WRITEDATABIT~q\ & ( (\inst1|currentState.s3~q\) # (\inst1|currentState.s0~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst1|ALT_INV_currentState.s3~q\,
	dataf => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	combout => \inst1|WideOr9~combout\);

-- Location: FF_X74_Y51_N17
\inst2|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: FF_X79_Y52_N10
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2));

-- Location: LABCELL_X79_Y52_N21
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(2),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\);

-- Location: FF_X79_Y52_N22
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2));

-- Location: FF_X79_Y52_N16
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(2));

-- Location: LABCELL_X79_Y52_N0
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(2),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]~feeder_combout\);

-- Location: FF_X79_Y52_N1
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(2));

-- Location: FF_X78_Y52_N43
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(2));

-- Location: FF_X77_Y52_N8
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(2));

-- Location: FF_X77_Y52_N4
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(2));

-- Location: FF_X77_Y52_N23
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2));

-- Location: LABCELL_X77_Y52_N33
\inst2|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	datac => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	dataf => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LABCELL_X77_Y52_N36
\inst2|dcfifo_component|auto_generated|valid_rdreq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = ( \inst1|currentState.s3~q\ & ( (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\) ) ) # ( 
-- !\inst1|currentState.s3~q\ & ( (\inst1|currentState.s2~q\ & ((\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.s2~q\,
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	dataf => \inst1|ALT_INV_currentState.s3~q\,
	combout => \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: FF_X77_Y52_N50
\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\);

-- Location: LABCELL_X77_Y52_N39
\inst1|RDREQ\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|RDREQ~combout\ = ( !\inst1|currentState.s2~q\ & ( !\inst1|currentState.s3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.s3~q\,
	dataf => \inst1|ALT_INV_currentState.s2~q\,
	combout => \inst1|RDREQ~combout\);

-- Location: LABCELL_X77_Y52_N21
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( \inst1|RDREQ~combout\ & ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ ) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( \inst1|RDREQ~combout\ & ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ ) ) ) # ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( !\inst1|RDREQ~combout\ & ( 
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( !\inst1|RDREQ~combout\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ $ 
-- (((!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) # ((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ & !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datac => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datad => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datae => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	dataf => \inst1|ALT_INV_RDREQ~combout\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\);

-- Location: FF_X77_Y52_N11
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\);

-- Location: FF_X77_Y52_N14
\inst2|dcfifo_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LABCELL_X77_Y52_N6
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g\(2) & ( \inst1|RDREQ~combout\ & ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2) ) ) ) # 
-- ( !\inst2|dcfifo_component|auto_generated|rdptr_g\(2) & ( \inst1|RDREQ~combout\ & ( \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2) ) ) ) # ( \inst2|dcfifo_component|auto_generated|rdptr_g\(2) & ( !\inst1|RDREQ~combout\ & ( 
-- !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2) $ (((!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & ((\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # 
-- (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\))))) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g\(2) & ( !\inst1|RDREQ~combout\ & ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(2) $ 
-- (((!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\) # ((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110101001100110011001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(2),
	datab => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datad => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datae => \inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(2),
	dataf => \inst1|ALT_INV_RDREQ~combout\,
	combout => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X77_Y52_N59
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: LABCELL_X77_Y52_N45
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & ( \inst1|RDREQ~combout\ ) ) # ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & ( 
-- !\inst1|RDREQ~combout\ & ( (((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ & !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\)) # (\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\)) # 
-- (\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & ( !\inst1|RDREQ~combout\ & ( (!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- (!\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ((\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\) # (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000110111110101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datac => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	datad => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datae => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	dataf => \inst1|ALT_INV_RDREQ~combout\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\);

-- Location: FF_X77_Y52_N29
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\);

-- Location: LABCELL_X75_Y51_N27
\inst2|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X75_Y51_N29
\inst2|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: LABCELL_X75_Y52_N54
\inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(0),
	combout => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: FF_X75_Y52_N55
\inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: LABCELL_X79_Y52_N36
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_delayed_wrptr_g\(0),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]~feeder_combout\);

-- Location: FF_X79_Y52_N37
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0));

-- Location: LABCELL_X79_Y52_N42
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(0),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\);

-- Location: FF_X79_Y52_N43
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0));

-- Location: LABCELL_X79_Y52_N54
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe12a\(0),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]~feeder_combout\);

-- Location: FF_X79_Y52_N55
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(0));

-- Location: LABCELL_X79_Y52_N24
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(0),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]~feeder_combout\);

-- Location: FF_X79_Y52_N25
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(0));

-- Location: LABCELL_X79_Y52_N45
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe14a\(0),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]~feeder_combout\);

-- Location: FF_X79_Y52_N46
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(0));

-- Location: FF_X77_Y52_N40
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(0));

-- Location: FF_X77_Y52_N38
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(0));

-- Location: FF_X77_Y52_N2
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0));

-- Location: FF_X75_Y51_N11
\inst2|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: LABCELL_X75_Y52_N27
\inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(1),
	combout => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\);

-- Location: FF_X75_Y52_N28
\inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LABCELL_X79_Y52_N18
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|delayed_wrptr_g\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_delayed_wrptr_g\(1),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]~feeder_combout\);

-- Location: FF_X79_Y52_N19
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1));

-- Location: LABCELL_X79_Y52_N30
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe11a\(1),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]~feeder_combout\);

-- Location: FF_X79_Y52_N31
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1));

-- Location: LABCELL_X79_Y52_N48
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe12a\(1),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]~feeder_combout\);

-- Location: FF_X79_Y52_N50
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(1));

-- Location: LABCELL_X79_Y52_N33
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe13a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe13a\(1),
	combout => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]~feeder_combout\);

-- Location: FF_X79_Y52_N34
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(1));

-- Location: FF_X78_Y52_N46
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe14a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(1));

-- Location: FF_X77_Y52_N55
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe15a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(1));

-- Location: FF_X77_Y52_N47
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe16a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(1));

-- Location: FF_X77_Y52_N20
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1));

-- Location: LABCELL_X77_Y52_N48
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ = ( \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0) & ( \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1) & ( 
-- (\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0) & ( 
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1) & ( (\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) ) ) ) # ( 
-- \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0) & ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1) & ( (!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & 
-- !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0) & ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(1) & ( 
-- (!\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	datac => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datae => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(0),
	dataf => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(1),
	combout => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\);

-- Location: FF_X77_Y52_N53
\inst2|dcfifo_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: FF_X77_Y52_N19
\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe17a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y52_N0
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE_q\ & ( (\inst2|dcfifo_component|auto_generated|rdptr_g\(1) & 
-- (!\inst2|dcfifo_component|auto_generated|rdptr_g\(0) $ (\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0)))) ) ) # ( !\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a[1]~DUPLICATE_q\ & ( 
-- (!\inst2|dcfifo_component|auto_generated|rdptr_g\(1) & (!\inst2|dcfifo_component|auto_generated|rdptr_g\(0) $ (\inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|dffe18a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(0),
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(1),
	datad => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a\(0),
	dataf => \inst2|dcfifo_component|auto_generated|rs_dgwp|dffpipe10|ALT_INV_dffe18a[1]~DUPLICATE_q\,
	combout => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X77_Y52_N54
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ = ( \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ( (!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ & ((\inst1|currentState.s3~q\) # (\inst1|currentState.s2~q\))) ) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ & ( \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ( 
-- (!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\) # ((!\inst1|currentState.s2~q\ & !\inst1|currentState.s3~q\)) ) ) ) # ( 
-- \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ( 
-- (!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ & (\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ & ((\inst1|currentState.s3~q\) # (\inst1|currentState.s2~q\)))) ) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & ( 
-- (!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\) # ((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\) # ((!\inst1|currentState.s2~q\ & !\inst1|currentState.s3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101110000000100010001011111010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datac => \inst1|ALT_INV_currentState.s2~q\,
	datad => \inst1|ALT_INV_currentState.s3~q\,
	datae => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\);

-- Location: FF_X77_Y52_N44
\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LABCELL_X77_Y52_N27
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( \inst1|currentState.s3~q\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\))) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( \inst1|currentState.s3~q\ & ( 
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ ) ) ) # ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( !\inst1|currentState.s3~q\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (((!\inst1|currentState.s2~q\) # ((!\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ & !\inst2|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\)))) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & ( 
-- !\inst1|currentState.s3~q\ & ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000101011110101000000000111111110011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.s2~q\,
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_lsb_aeb~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_rdemp_eq_comp_msb_aeb~q\,
	datad => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	datae => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_parity6~q\,
	dataf => \inst1|ALT_INV_currentState.s3~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~0_combout\);

-- Location: FF_X77_Y52_N26
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\);

-- Location: LABCELL_X77_Y52_N15
\inst2|dcfifo_component|auto_generated|rdptr_g[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ = ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X77_Y52_N17
\inst2|dcfifo_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|WideOr9~combout\,
	d => \inst2|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst2|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: FF_X74_Y52_N25
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(0));

-- Location: LABCELL_X74_Y52_N48
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(0),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]~feeder_combout\);

-- Location: FF_X74_Y52_N49
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(0));

-- Location: FF_X74_Y51_N28
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(0));

-- Location: LABCELL_X74_Y51_N6
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe22a\(0),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]~feeder_combout\);

-- Location: FF_X74_Y51_N7
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(0));

-- Location: FF_X74_Y51_N38
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(0));

-- Location: FF_X75_Y51_N55
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(0));

-- Location: FF_X75_Y51_N23
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(0));

-- Location: FF_X75_Y51_N59
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(0),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0));

-- Location: LABCELL_X74_Y52_N27
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_rdptr_g\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]~feeder_combout\);

-- Location: FF_X74_Y52_N29
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(1));

-- Location: LABCELL_X74_Y52_N21
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]~feeder_combout\);

-- Location: FF_X74_Y52_N22
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(1));

-- Location: LABCELL_X74_Y52_N0
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe21a\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]~feeder_combout\);

-- Location: FF_X74_Y52_N2
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(1));

-- Location: FF_X74_Y51_N2
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(1));

-- Location: LABCELL_X74_Y51_N9
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe23a\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]~feeder_combout\);

-- Location: FF_X74_Y51_N10
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(1));

-- Location: FF_X74_Y51_N56
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(1));

-- Location: FF_X75_Y51_N2
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(1));

-- Location: FF_X75_Y51_N41
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1));

-- Location: LABCELL_X75_Y51_N0
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1) & ( (!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ & 
-- (!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ (!\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0)))) ) ) # ( !\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1) & ( 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a1~q\ & (!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ (!\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(0),
	datac => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a1~q\,
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(1),
	combout => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X75_Y51_N30
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1) & ( (!\inst2|dcfifo_component|auto_generated|wrptr_g\(1) & 
-- (!\inst2|dcfifo_component|auto_generated|wrptr_g\(0) $ (\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0)))) ) ) # ( !\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1) & ( 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g\(1) & (!\inst2|dcfifo_component|auto_generated|wrptr_g\(0) $ (\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(1),
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(0),
	datad => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(0),
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(1),
	combout => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X75_Y51_N6
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ ) ) # ( !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ & ( 
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ & ( (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & (!\inst|state.s2~q\ & ((!\inst|state.s3~q\)))) # 
-- (\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & (((!\inst|state.s2~q\ & !\inst|state.s3~q\)) # (\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\))) ) ) ) # ( 
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~1_combout\ & ( !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~2_combout\ & ( 
-- (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & (((\inst|state.s3~q\)) # (\inst|state.s2~q\))) # (\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & 
-- (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ((\inst|state.s3~q\) # (\inst|state.s2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100101111101011001101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\,
	datab => \inst|ALT_INV_state.s2~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\,
	datad => \inst|ALT_INV_state.s3~q\,
	datae => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	dataf => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|ALT_INV_l1_w0_n0_mux_dataout~2_combout\,
	combout => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y51_N38
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: LABCELL_X75_Y51_N45
\inst2|dcfifo_component|auto_generated|valid_wrreq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = ( \inst|state.s3~q\ & ( (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\) ) ) # ( 
-- !\inst|state.s3~q\ & ( (\inst|state.s2~q\ & ((!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # (!\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\,
	datac => \inst|ALT_INV_state.s2~q\,
	datad => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\,
	dataf => \inst|ALT_INV_state.s3~q\,
	combout => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: FF_X75_Y51_N44
\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\);

-- Location: LABCELL_X75_Y51_N39
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~0_combout\ = ( \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & ( \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ( 
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ ) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & ( \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ( 
-- !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ (((!\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\) # ((!\inst|state.s2~q\ & !\inst|state.s3~q\)))) ) ) ) # ( 
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & ( !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ 
-- (((!\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\) # ((!\inst|state.s2~q\ & !\inst|state.s3~q\)))) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ & ( 
-- !\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\ $ (((!\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\) # ((!\inst|state.s2~q\ & !\inst|state.s3~q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110010101100110011001010110011001100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_parity8~q\,
	datac => \inst|ALT_INV_state.s2~q\,
	datad => \inst|ALT_INV_state.s3~q\,
	datae => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\,
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\,
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~0_combout\);

-- Location: FF_X75_Y51_N20
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\);

-- Location: LABCELL_X75_Y51_N21
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~0_combout\ = ( \inst|state.s2~q\ & ( \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ ) ) ) # ( !\inst|state.s2~q\ & ( 
-- \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ ) ) ) # ( \inst|state.s2~q\ & ( !\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( 
-- !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ $ (((!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\) # (\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\))) ) ) ) # ( !\inst|state.s2~q\ & ( 
-- !\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ $ (((!\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a0~q\) # ((!\inst|state.s3~q\) # 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g1p|parity8~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011010001001011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a0~q\,
	datab => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_parity8~q\,
	datac => \inst|ALT_INV_state.s3~q\,
	datad => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a2~q\,
	datae => \inst|ALT_INV_state.s2~q\,
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\,
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~0_combout\);

-- Location: FF_X75_Y51_N32
\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\);

-- Location: FF_X75_Y51_N26
\inst2|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: FF_X74_Y52_N43
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|rdptr_g\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(2));

-- Location: LABCELL_X74_Y52_N54
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe20a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe20a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]~feeder_combout\);

-- Location: FF_X74_Y52_N55
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(2));

-- Location: LABCELL_X74_Y52_N33
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe21a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe21a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]~feeder_combout\);

-- Location: FF_X74_Y52_N34
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(2));

-- Location: LABCELL_X74_Y52_N6
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe22a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe22a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]~feeder_combout\);

-- Location: FF_X74_Y52_N8
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(2));

-- Location: LABCELL_X74_Y52_N15
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe23a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe23a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]~feeder_combout\);

-- Location: FF_X74_Y52_N17
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(2));

-- Location: LABCELL_X74_Y52_N36
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]~feeder_combout\ = \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe24a\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe24a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]~feeder_combout\);

-- Location: FF_X74_Y52_N37
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(2));

-- Location: FF_X74_Y51_N25
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe25a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(2));

-- Location: FF_X74_Y51_N5
\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe26a\(2),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2));

-- Location: LABCELL_X75_Y51_N48
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\ = ( \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2) & ( 
-- (!\inst2|dcfifo_component|auto_generated|wrptr_g\(2) & (((!\inst|state.s3~q\ & !\inst|state.s2~q\)) # (\inst2|dcfifo_component|auto_generated|int_wrfull~combout\))) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( 
-- \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2) & ( (!\inst2|dcfifo_component|auto_generated|wrptr_g\(2)) # ((!\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ((\inst|state.s2~q\) # (\inst|state.s3~q\)))) ) ) ) # ( 
-- \inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( !\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2) & ( ((!\inst2|dcfifo_component|auto_generated|int_wrfull~combout\ & ((\inst|state.s2~q\) # (\inst|state.s3~q\)))) # 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g\(2)) ) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrptr_g1p|counter7a2~q\ & ( !\inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2) & ( 
-- (\inst2|dcfifo_component|auto_generated|wrptr_g\(2) & (((!\inst|state.s3~q\ & !\inst|state.s2~q\)) # (\inst2|dcfifo_component|auto_generated|int_wrfull~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000101011101011111010110111010111110101000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(2),
	datab => \inst|ALT_INV_state.s3~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_int_wrfull~combout\,
	datad => \inst|ALT_INV_state.s2~q\,
	datae => \inst2|dcfifo_component|auto_generated|wrptr_g1p|ALT_INV_counter7a2~q\,
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(2),
	combout => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X75_Y51_N50
\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|l1_w0_n0_mux_dataout~0_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: LABCELL_X75_Y51_N33
\inst2|dcfifo_component|auto_generated|int_wrfull\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|int_wrfull~combout\ = (\inst2|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ & \inst2|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_msb_mux_reg~q\,
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrfull_eq_comp_lsb_mux_reg~q\,
	combout => \inst2|dcfifo_component|auto_generated|int_wrfull~combout\);

-- Location: MLABCELL_X78_Y51_N54
\inst1|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = ( \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( ((\inst1|currentState.s0~q\ & (!\inst1|latch~q\ & \inst4|sync_out~q\))) # (\inst1|outputWord\(2)) ) ) # ( !\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( 
-- (\inst1|currentState.s0~q\ & (((!\inst1|latch~q\ & \inst4|sync_out~q\)) # (\inst1|outputWord\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010101000001000101010100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.s0~q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst4|ALT_INV_sync_out~q\,
	datad => \inst1|ALT_INV_outputWord\(2),
	dataf => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: FF_X78_Y51_N56
\inst1|outputWord[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector6~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(2));

-- Location: IOIBUF_X78_Y81_N1
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LABCELL_X75_Y51_N3
\inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\ = ( \inst2|dcfifo_component|auto_generated|wrptr_g\(1) & ( !\inst2|dcfifo_component|auto_generated|wrptr_g\(2) ) ) # ( !\inst2|dcfifo_component|auto_generated|wrptr_g\(1) & ( 
-- \inst2|dcfifo_component|auto_generated|wrptr_g\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(2),
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(1),
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\);

-- Location: LABCELL_X77_Y52_N3
\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a0~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

-- Location: LABCELL_X77_Y52_N12
\inst2|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & ( !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & ( \inst2|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a1~q\,
	dataf => \inst2|dcfifo_component|auto_generated|rdptr_g1p|ALT_INV_counter5a2~q\,
	combout => \inst2|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LABCELL_X75_Y50_N36
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOIBUF_X76_Y81_N35
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X76_Y81_N52
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X76_Y81_N18
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X80_Y81_N52
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: M10K_X76_Y51_N0
\inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFo1:inst2|dcfifo:dcfifo_component|dcfifo_svs1:auto_generated|altsyncram_di71:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 4,
	port_a_logical_ram_width => 20,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 4,
	port_b_logical_ram_width => 20,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \inst2|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \inst|wclock~combout\,
	clk1 => \inst1|WideOr9~combout\,
	clr1 => \reset~inputCLKENA0_outclk\,
	portadatain => \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\,
	portaaddr => \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\,
	portbaddr => \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst2|dcfifo_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y51_N36
\inst1|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = ( \inst1|outputWord\(5) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(18) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) ) ) ) # ( !\inst1|outputWord\(5) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(18) & ( (!\inst1|latch~q\ & (\inst4|sync_out~q\ & \inst1|currentState.s0~q\)) ) ) ) # ( \inst1|outputWord\(5) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(18) & ( 
-- (!\inst1|currentState.s0~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111001100000000000011000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst4|ALT_INV_sync_out~q\,
	datad => \inst1|ALT_INV_currentState.s0~q\,
	datae => \inst1|ALT_INV_outputWord\(5),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(18),
	combout => \inst1|Selector9~0_combout\);

-- Location: FF_X77_Y51_N38
\inst1|outputWord[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector9~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(5));

-- Location: LABCELL_X77_Y51_N9
\inst1|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector8~0_combout\ = ( \inst1|outputWord\(4) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(19) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(4) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(19) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(4) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(19) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000111110111100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(4),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(19),
	combout => \inst1|Selector8~0_combout\);

-- Location: FF_X77_Y51_N11
\inst1|outputWord[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector8~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(4));

-- Location: LABCELL_X77_Y51_N45
\inst1|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = ( \inst1|outputWord\(6) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(17) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(6) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(17) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(6) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(17) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000111110111100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(6),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(17),
	combout => \inst1|Selector10~0_combout\);

-- Location: FF_X77_Y51_N47
\inst1|outputWord[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector10~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(6));

-- Location: LABCELL_X74_Y51_N21
\inst1|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = ( \inst1|outputWord\(7) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(16) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) ) ) ) # ( !\inst1|outputWord\(7) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(16) & ( (!\inst1|latch~q\ & (\inst1|currentState.s0~q\ & \inst4|sync_out~q\)) ) ) ) # ( \inst1|outputWord\(7) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(16) & ( 
-- (!\inst1|currentState.s0~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101001100000000000011000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	datae => \inst1|ALT_INV_outputWord\(7),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(16),
	combout => \inst1|Selector11~0_combout\);

-- Location: FF_X74_Y51_N22
\inst1|outputWord[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector11~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(7));

-- Location: LABCELL_X77_Y51_N15
\inst1|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~8_combout\ = ( \inst1|incrementer\(1) & ( \inst1|outputWord\(7) & ( (\inst1|incrementer\(0)) # (\inst1|outputWord\(6)) ) ) ) # ( !\inst1|incrementer\(1) & ( \inst1|outputWord\(7) & ( (!\inst1|incrementer\(0) & ((\inst1|outputWord\(4)))) # 
-- (\inst1|incrementer\(0) & (\inst1|outputWord\(5))) ) ) ) # ( \inst1|incrementer\(1) & ( !\inst1|outputWord\(7) & ( (\inst1|outputWord\(6) & !\inst1|incrementer\(0)) ) ) ) # ( !\inst1|incrementer\(1) & ( !\inst1|outputWord\(7) & ( (!\inst1|incrementer\(0) 
-- & ((\inst1|outputWord\(4)))) # (\inst1|incrementer\(0) & (\inst1|outputWord\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_outputWord\(5),
	datab => \inst1|ALT_INV_outputWord\(4),
	datac => \inst1|ALT_INV_outputWord\(6),
	datad => \inst1|ALT_INV_incrementer\(0),
	datae => \inst1|ALT_INV_incrementer\(1),
	dataf => \inst1|ALT_INV_outputWord\(7),
	combout => \inst1|Mux0~8_combout\);

-- Location: MLABCELL_X78_Y51_N57
\inst1|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = ( \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( ((\inst1|currentState.s0~q\ & (!\inst1|latch~q\ & \inst4|sync_out~q\))) # (\inst1|outputWord\(3)) ) ) # ( !\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( 
-- (\inst1|currentState.s0~q\ & (((!\inst1|latch~q\ & \inst4|sync_out~q\)) # (\inst1|outputWord\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101000001010100010100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.s0~q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_outputWord\(3),
	datad => \inst4|ALT_INV_sync_out~q\,
	dataf => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	combout => \inst1|Selector7~0_combout\);

-- Location: FF_X77_Y51_N32
\inst1|outputWord[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst1|Selector7~0_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(3));

-- Location: LABCELL_X77_Y51_N3
\inst1|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector45~0_combout\ = ( \inst1|incrementer\(2) & ( \inst1|outputWord\(3) & ( \inst1|Mux0~8_combout\ ) ) ) # ( !\inst1|incrementer\(2) & ( \inst1|outputWord\(3) & ( (\inst1|incrementer\(1) & ((!\inst1|outputWord\(2)) # (\inst1|incrementer\(0)))) ) 
-- ) ) # ( \inst1|incrementer\(2) & ( !\inst1|outputWord\(3) & ( \inst1|Mux0~8_combout\ ) ) ) # ( !\inst1|incrementer\(2) & ( !\inst1|outputWord\(3) & ( (!\inst1|incrementer\(0) & (!\inst1|outputWord\(2) & \inst1|incrementer\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000011110000111100000000110111010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incrementer\(0),
	datab => \inst1|ALT_INV_outputWord\(2),
	datac => \inst1|ALT_INV_Mux0~8_combout\,
	datad => \inst1|ALT_INV_incrementer\(1),
	datae => \inst1|ALT_INV_incrementer\(2),
	dataf => \inst1|ALT_INV_outputWord\(3),
	combout => \inst1|Selector45~0_combout\);

-- Location: LABCELL_X77_Y51_N18
\inst1|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector25~0_combout\ = ( \inst1|outputWord\(21) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(2) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(21) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(2) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(21) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(2) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100011111100010001000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(21),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(2),
	combout => \inst1|Selector25~0_combout\);

-- Location: FF_X77_Y51_N19
\inst1|outputWord[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector25~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(21));

-- Location: LABCELL_X77_Y51_N42
\inst1|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector27~0_combout\ = ( \inst1|outputWord\(23) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(0) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(23) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(0) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(23) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(0) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100011111100010001000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(23),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(0),
	combout => \inst1|Selector27~0_combout\);

-- Location: FF_X77_Y51_N43
\inst1|outputWord[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector27~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(23));

-- Location: LABCELL_X77_Y51_N48
\inst1|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector26~0_combout\ = ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(1) & ( \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(1),
	combout => \inst1|Selector26~0_combout\);

-- Location: LABCELL_X79_Y51_N21
\inst1|outputWord[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|outputWord[18]~0_combout\ = ( \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( (!\inst1|latch~q\ & (\inst1|currentState.s0~q\ & (!\reset~input_o\ & \inst4|sync_out~q\))) ) ) # ( !\inst1|currentState.PRESYNCLOW~DUPLICATE_q\ & ( (!\reset~input_o\ & 
-- ((!\inst1|currentState.s0~q\) # ((!\inst1|latch~q\ & \inst4|sync_out~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011100000110000001110000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_latch~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \inst4|ALT_INV_sync_out~q\,
	dataf => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	combout => \inst1|outputWord[18]~0_combout\);

-- Location: FF_X77_Y51_N50
\inst1|outputWord[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector26~0_combout\,
	ena => \inst1|outputWord[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(22));

-- Location: MLABCELL_X78_Y51_N30
\inst1|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector23~0_combout\ = ( \inst1|outputWord\(19) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(19) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & ( (\inst4|sync_out~q\ & (!\inst1|latch~q\ & \inst1|currentState.s0~q\)) ) ) ) # ( \inst1|outputWord\(19) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(4) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111101100000100000001000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(19),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(4),
	combout => \inst1|Selector23~0_combout\);

-- Location: FF_X78_Y51_N32
\inst1|outputWord[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector23~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(19));

-- Location: LABCELL_X77_Y51_N51
\inst1|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector22~0_combout\ = ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(5) & ( \inst1|currentState.PRESYNCLOW~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(5),
	combout => \inst1|Selector22~0_combout\);

-- Location: FF_X77_Y51_N52
\inst1|outputWord[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector22~0_combout\,
	ena => \inst1|outputWord[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(18));

-- Location: MLABCELL_X78_Y51_N33
\inst1|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector21~0_combout\ = ( \inst1|outputWord\(17) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(6) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) ) ) ) # ( !\inst1|outputWord\(17) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(6) & ( (\inst4|sync_out~q\ & (!\inst1|latch~q\ & \inst1|currentState.s0~q\)) ) ) ) # ( \inst1|outputWord\(17) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(6) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111011101100000000010001000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_currentState.s0~q\,
	datae => \inst1|ALT_INV_outputWord\(17),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(6),
	combout => \inst1|Selector21~0_combout\);

-- Location: FF_X78_Y51_N35
\inst1|outputWord[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector21~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(17));

-- Location: LABCELL_X77_Y51_N21
\inst1|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector20~0_combout\ = ( \inst1|outputWord\(16) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(16) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(16) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(7) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000111110111100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(16),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(7),
	combout => \inst1|Selector20~0_combout\);

-- Location: FF_X77_Y51_N22
\inst1|outputWord[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector20~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(16));

-- Location: MLABCELL_X78_Y51_N48
\inst1|Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~13_combout\ = ( !\inst1|incrementer\(1) & ( (!\inst1|incrementer\(0) & (((\inst1|outputWord\(16) & (!\inst1|incrementer\(2)))))) # (\inst1|incrementer\(0) & ((((\inst1|outputWord\(17)) # (\inst1|incrementer\(2)))))) ) ) # ( 
-- \inst1|incrementer\(1) & ( (!\inst1|incrementer\(0) & (((!\inst1|outputWord\(18) & (!\inst1|incrementer\(2)))))) # (\inst1|incrementer\(0) & ((((\inst1|incrementer\(2)))) # (\inst1|outputWord\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101101100010101010101011111010101011011000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incrementer\(0),
	datab => \inst1|ALT_INV_outputWord\(19),
	datac => \inst1|ALT_INV_outputWord\(18),
	datad => \inst1|ALT_INV_incrementer\(2),
	datae => \inst1|ALT_INV_incrementer\(1),
	dataf => \inst1|ALT_INV_outputWord\(17),
	datag => \inst1|ALT_INV_outputWord\(16),
	combout => \inst1|Mux0~13_combout\);

-- Location: FF_X79_Y51_N29
\inst1|currentState.PRESYNCLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|currentState.PRESYNCLOW~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|currentState.PRESYNCLOW~q\);

-- Location: LABCELL_X79_Y51_N36
\inst1|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector24~0_combout\ = ( \inst1|outputWord\(20) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~q\) ) ) ) # ( !\inst1|outputWord\(20) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & ( (\inst1|currentState.s0~q\ & (!\inst1|latch~q\ & \inst4|sync_out~q\)) ) ) ) # ( \inst1|outputWord\(20) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(3) & ( (!\inst1|currentState.s0~q\ 
-- & (\inst1|currentState.PRESYNCLOW~q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110100011100000000001100000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	datae => \inst1|ALT_INV_outputWord\(20),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(3),
	combout => \inst1|Selector24~0_combout\);

-- Location: FF_X79_Y51_N38
\inst1|outputWord[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector24~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(20));

-- Location: MLABCELL_X78_Y51_N36
\inst1|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~4_combout\ = ( !\inst1|incrementer\(1) & ( ((!\inst1|incrementer\(2) & (((\inst1|Mux0~13_combout\)))) # (\inst1|incrementer\(2) & ((!\inst1|Mux0~13_combout\ & ((\inst1|outputWord\(20)))) # (\inst1|Mux0~13_combout\ & 
-- (\inst1|outputWord\(21)))))) ) ) # ( \inst1|incrementer\(1) & ( ((!\inst1|incrementer\(2) & (((\inst1|Mux0~13_combout\)))) # (\inst1|incrementer\(2) & ((!\inst1|Mux0~13_combout\ & ((!\inst1|outputWord\(22)))) # (\inst1|Mux0~13_combout\ & 
-- (\inst1|outputWord\(23)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001111000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_outputWord\(21),
	datab => \inst1|ALT_INV_outputWord\(23),
	datac => \inst1|ALT_INV_outputWord\(22),
	datad => \inst1|ALT_INV_incrementer\(2),
	datae => \inst1|ALT_INV_incrementer\(1),
	dataf => \inst1|ALT_INV_Mux0~13_combout\,
	datag => \inst1|ALT_INV_outputWord\(20),
	combout => \inst1|Mux0~4_combout\);

-- Location: LABCELL_X77_Y51_N39
\inst1|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = ( \inst1|outputWord\(15) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(8) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) ) ) ) # ( !\inst1|outputWord\(15) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(8) & ( (!\inst1|latch~q\ & (\inst1|currentState.s0~q\ & \inst4|sync_out~q\)) ) ) ) # ( \inst1|outputWord\(15) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(8) & ( (!\inst1|currentState.s0~q\ 
-- & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101001100000000000011000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	datae => \inst1|ALT_INV_outputWord\(15),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(8),
	combout => \inst1|Selector19~0_combout\);

-- Location: FF_X77_Y51_N40
\inst1|outputWord[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector19~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(15));

-- Location: LABCELL_X74_Y51_N30
\inst1|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = ( \inst1|outputWord\(14) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(14) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(14) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(9) & ( (!\inst1|currentState.s0~q\ 
-- & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100011111100010001000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(14),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(9),
	combout => \inst1|Selector18~0_combout\);

-- Location: FF_X74_Y51_N31
\inst1|outputWord[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector18~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(14));

-- Location: LABCELL_X74_Y51_N45
\inst1|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = ( \inst1|outputWord\(13) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(10) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) ) ) ) # ( !\inst1|outputWord\(13) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(10) & ( (!\inst1|latch~q\ & (\inst1|currentState.s0~q\ & \inst4|sync_out~q\)) ) ) ) # ( \inst1|outputWord\(13) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(10) & ( 
-- (!\inst1|currentState.s0~q\ & (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101001100000000000011000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datab => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	datae => \inst1|ALT_INV_outputWord\(13),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(10),
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X74_Y51_N47
\inst1|outputWord[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector17~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(13));

-- Location: LABCELL_X77_Y51_N6
\inst1|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = ( \inst1|outputWord\(10) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(13) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(10) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(13) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(10) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(13) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100011111100010001000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(10),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(13),
	combout => \inst1|Selector14~0_combout\);

-- Location: FF_X77_Y51_N7
\inst1|outputWord[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector14~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(10));

-- Location: LABCELL_X77_Y51_N24
\inst1|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = ( \inst1|outputWord\(11) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(11) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(11) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(12) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011100011111100010001000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(11),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(12),
	combout => \inst1|Selector15~0_combout\);

-- Location: FF_X77_Y51_N25
\inst1|outputWord[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector15~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(11));

-- Location: LABCELL_X79_Y51_N33
\inst1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector13~0_combout\ = ( \inst1|outputWord\(9) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & ( (\inst1|currentState.s0~q\) # (\inst1|currentState.PRESYNCLOW~q\) ) ) ) # ( !\inst1|outputWord\(9) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(9) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(14) & ( 
-- (!\inst1|currentState.s0~q\ & (\inst1|currentState.PRESYNCLOW~q\)) # (\inst1|currentState.s0~q\ & (((!\inst4|sync_out~q\) # (\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111000101111100000011000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.PRESYNCLOW~q\,
	datab => \inst4|ALT_INV_sync_out~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst1|ALT_INV_latch~q\,
	datae => \inst1|ALT_INV_outputWord\(9),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(14),
	combout => \inst1|Selector13~0_combout\);

-- Location: FF_X79_Y51_N35
\inst1|outputWord[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector13~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(9));

-- Location: LABCELL_X77_Y51_N27
\inst1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector12~0_combout\ = ( \inst1|outputWord\(8) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(8) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(8) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(15) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000111110111100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(8),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(15),
	combout => \inst1|Selector12~0_combout\);

-- Location: FF_X77_Y51_N29
\inst1|outputWord[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector12~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(8));

-- Location: MLABCELL_X78_Y51_N42
\inst1|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~9_combout\ = ( !\inst1|incrementer\(1) & ( (!\inst1|incrementer\(0) & (!\inst1|incrementer\(2) & (\inst1|outputWord\(8)))) # (\inst1|incrementer\(0) & ((((\inst1|outputWord\(9)))) # (\inst1|incrementer\(2)))) ) ) # ( \inst1|incrementer\(1) & ( 
-- (!\inst1|incrementer\(0) & (!\inst1|incrementer\(2) & (\inst1|outputWord\(10)))) # (\inst1|incrementer\(0) & ((((\inst1|outputWord\(11)))) # (\inst1|incrementer\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incrementer\(0),
	datab => \inst1|ALT_INV_incrementer\(2),
	datac => \inst1|ALT_INV_outputWord\(10),
	datad => \inst1|ALT_INV_outputWord\(11),
	datae => \inst1|ALT_INV_incrementer\(1),
	dataf => \inst1|ALT_INV_outputWord\(9),
	datag => \inst1|ALT_INV_outputWord\(8),
	combout => \inst1|Mux0~9_combout\);

-- Location: LABCELL_X74_Y51_N33
\inst1|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = ( \inst1|outputWord\(12) & ( \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & ( (\inst1|currentState.PRESYNCLOW~DUPLICATE_q\) # (\inst1|currentState.s0~q\) ) ) ) # ( !\inst1|outputWord\(12) & ( 
-- \inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & ( (\inst4|sync_out~q\ & (\inst1|currentState.s0~q\ & !\inst1|latch~q\)) ) ) ) # ( \inst1|outputWord\(12) & ( !\inst2|dcfifo_component|auto_generated|fifo_ram|q_b\(11) & ( 
-- (!\inst1|currentState.s0~q\ & (((\inst1|currentState.PRESYNCLOW~DUPLICATE_q\)))) # (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # ((\inst1|latch~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000111110111100010000000100000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sync_out~q\,
	datab => \inst1|ALT_INV_currentState.s0~q\,
	datac => \inst1|ALT_INV_latch~q\,
	datad => \inst1|ALT_INV_currentState.PRESYNCLOW~DUPLICATE_q\,
	datae => \inst1|ALT_INV_outputWord\(12),
	dataf => \inst2|dcfifo_component|auto_generated|fifo_ram|ALT_INV_q_b\(11),
	combout => \inst1|Selector16~0_combout\);

-- Location: FF_X74_Y51_N35
\inst1|outputWord[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|newpll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst1|Selector16~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|outputWord\(12));

-- Location: MLABCELL_X78_Y51_N24
\inst1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = ( !\inst1|incrementer\(1) & ( ((!\inst1|incrementer\(2) & (((\inst1|Mux0~9_combout\)))) # (\inst1|incrementer\(2) & ((!\inst1|Mux0~9_combout\ & (\inst1|outputWord\(12))) # (\inst1|Mux0~9_combout\ & ((\inst1|outputWord\(13))))))) ) 
-- ) # ( \inst1|incrementer\(1) & ( (!\inst1|incrementer\(2) & ((((\inst1|Mux0~9_combout\))))) # (\inst1|incrementer\(2) & (((!\inst1|Mux0~9_combout\ & ((\inst1|outputWord\(14)))) # (\inst1|Mux0~9_combout\ & (\inst1|outputWord\(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_outputWord\(15),
	datab => \inst1|ALT_INV_incrementer\(2),
	datac => \inst1|ALT_INV_outputWord\(14),
	datad => \inst1|ALT_INV_outputWord\(13),
	datae => \inst1|ALT_INV_incrementer\(1),
	dataf => \inst1|ALT_INV_Mux0~9_combout\,
	datag => \inst1|ALT_INV_outputWord\(12),
	combout => \inst1|Mux0~0_combout\);

-- Location: LABCELL_X77_Y51_N33
\inst1|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector45~1_combout\ = ( \inst1|Mux0~4_combout\ & ( \inst1|Mux0~0_combout\ & ( (\inst1|currentState.WRITEDATABIT~q\ & ((!\inst1|incrementer\(3) & ((\inst1|Selector45~0_combout\) # (\inst1|incrementer\(4)))) # (\inst1|incrementer\(3) & 
-- (!\inst1|incrementer\(4))))) ) ) ) # ( !\inst1|Mux0~4_combout\ & ( \inst1|Mux0~0_combout\ & ( (\inst1|currentState.WRITEDATABIT~q\ & (!\inst1|incrementer\(4) & ((\inst1|Selector45~0_combout\) # (\inst1|incrementer\(3))))) ) ) ) # ( \inst1|Mux0~4_combout\ 
-- & ( !\inst1|Mux0~0_combout\ & ( (!\inst1|incrementer\(3) & (\inst1|currentState.WRITEDATABIT~q\ & ((\inst1|Selector45~0_combout\) # (\inst1|incrementer\(4))))) ) ) ) # ( !\inst1|Mux0~4_combout\ & ( !\inst1|Mux0~0_combout\ & ( (!\inst1|incrementer\(3) & 
-- (\inst1|currentState.WRITEDATABIT~q\ & (!\inst1|incrementer\(4) & \inst1|Selector45~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000100010001000010000001100000001001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incrementer\(3),
	datab => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	datac => \inst1|ALT_INV_incrementer\(4),
	datad => \inst1|ALT_INV_Selector45~0_combout\,
	datae => \inst1|ALT_INV_Mux0~4_combout\,
	dataf => \inst1|ALT_INV_Mux0~0_combout\,
	combout => \inst1|Selector45~1_combout\);

-- Location: LABCELL_X77_Y51_N54
\inst1|DATA_OUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|DATA_OUT~combout\ = ( \inst1|Selector45~1_combout\ & ( (!\inst1|currentState.CLOCKDOWN~q\) # (\inst1|DATA_OUT~combout\) ) ) # ( !\inst1|Selector45~1_combout\ & ( (\inst1|currentState.CLOCKDOWN~q\ & \inst1|DATA_OUT~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_currentState.CLOCKDOWN~q\,
	datac => \inst1|ALT_INV_DATA_OUT~combout\,
	dataf => \inst1|ALT_INV_Selector45~1_combout\,
	combout => \inst1|DATA_OUT~combout\);

-- Location: LABCELL_X74_Y51_N54
\inst1|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr7~combout\ = ( \inst1|currentState.WRITEDATABIT~q\ & ( \inst1|currentState.SYNCLOW~q\ ) ) # ( !\inst1|currentState.WRITEDATABIT~q\ & ( \inst1|currentState.SYNCLOW~q\ ) ) # ( \inst1|currentState.WRITEDATABIT~q\ & ( 
-- !\inst1|currentState.SYNCLOW~q\ ) ) # ( !\inst1|currentState.WRITEDATABIT~q\ & ( !\inst1|currentState.SYNCLOW~q\ & ( \inst1|currentState.CLOCKDOWN~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_currentState.CLOCKDOWN~q\,
	datae => \inst1|ALT_INV_currentState.WRITEDATABIT~q\,
	dataf => \inst1|ALT_INV_currentState.SYNCLOW~q\,
	combout => \inst1|WideOr7~combout\);

-- Location: LABCELL_X75_Y52_N51
\inst1|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector46~0_combout\ = ( \inst1|currentState.s2~q\ & ( \inst1|currentState.s1~q\ & ( (!\inst4|sync_out~q\) # (\inst1|latch~q\) ) ) ) # ( !\inst1|currentState.s2~q\ & ( \inst1|currentState.s1~q\ & ( (!\inst4|sync_out~q\) # (\inst1|latch~q\) ) ) ) # 
-- ( \inst1|currentState.s2~q\ & ( !\inst1|currentState.s1~q\ & ( (\inst1|currentState.s0~q\ & ((!\inst4|sync_out~q\) # (\inst1|latch~q\))) ) ) ) # ( !\inst1|currentState.s2~q\ & ( !\inst1|currentState.s1~q\ & ( ((!\inst1|currentState.s0~q\) # 
-- (!\inst4|sync_out~q\)) # (\inst1|latch~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101000011110000010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_latch~q\,
	datac => \inst1|ALT_INV_currentState.s0~q\,
	datad => \inst4|ALT_INV_sync_out~q\,
	datae => \inst1|ALT_INV_currentState.s2~q\,
	dataf => \inst1|ALT_INV_currentState.s1~q\,
	combout => \inst1|Selector46~0_combout\);

-- Location: FF_X75_Y51_N34
\inst2|dcfifo_component|auto_generated|wrfull_reg|dffe19a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|int_wrfull~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|wrfull_reg|dffe19a\(0));

-- Location: LABCELL_X74_Y51_N51
\inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(2),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]~feeder_combout\);

-- Location: FF_X74_Y51_N52
\inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2));

-- Location: FF_X74_Y51_N59
\inst2|dcfifo_component|auto_generated|ws_dgrp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(1),
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1));

-- Location: LABCELL_X74_Y51_N12
\inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1) & ( !\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2) ) ) # ( !\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1) & 
-- ( \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(2),
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\);

-- Location: FF_X74_Y51_N13
\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor1~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(1));

-- Location: LABCELL_X74_Y51_N48
\inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]~feeder_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|dffe27a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|dcfifo_component|auto_generated|ws_dgrp|dffpipe19|ALT_INV_dffe27a\(0),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]~feeder_combout\);

-- Location: FF_X74_Y51_N50
\inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(0));

-- Location: LABCELL_X74_Y51_N39
\inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\ = ( \inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1) & ( !\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2) $ (\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(0)) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(1) & ( !\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(2) $ (!\inst2|dcfifo_component|auto_generated|ws_dgrp_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(2),
	datad => \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(0),
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_ws_dgrp_reg\(1),
	combout => \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\);

-- Location: FF_X74_Y51_N41
\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|ws_dgrp_gray2bin|xor0~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(0));

-- Location: FF_X75_Y51_N5
\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	d => \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor1~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(1));

-- Location: LABCELL_X75_Y51_N12
\inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\ = ( \inst2|dcfifo_component|auto_generated|wrptr_g\(0) & ( !\inst2|dcfifo_component|auto_generated|wrptr_g\(1) $ (\inst2|dcfifo_component|auto_generated|wrptr_g\(2)) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|wrptr_g\(0) & ( !\inst2|dcfifo_component|auto_generated|wrptr_g\(1) $ (!\inst2|dcfifo_component|auto_generated|wrptr_g\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(1),
	datac => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(2),
	dataf => \inst2|dcfifo_component|auto_generated|ALT_INV_wrptr_g\(0),
	combout => \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\);

-- Location: FF_X74_Y52_N4
\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|wclock~combout\,
	asdata => \inst2|dcfifo_component|auto_generated|wrptr_g_gray2bin|xor0~combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0));

-- Location: LABCELL_X74_Y51_N36
\inst2|dcfifo_component|auto_generated|op_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|op_1~0_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0) & ( !\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(1) $ (\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(1)) ) ) # ( 
-- !\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0) & ( !\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(1) $ (!\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(0) $ (!\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\(1),
	datab => \inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\(0),
	datac => \inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\(1),
	dataf => \inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\(0),
	combout => \inst2|dcfifo_component|auto_generated|op_1~0_combout\);

-- Location: LABCELL_X74_Y51_N24
\inst2|dcfifo_component|auto_generated|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|dcfifo_component|auto_generated|op_1~1_combout\ = ( \inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(0) & ( !\inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0) ) ) # ( !\inst2|dcfifo_component|auto_generated|ws_brp|dffe20a\(0) & ( 
-- \inst2|dcfifo_component|auto_generated|ws_bwp|dffe20a\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dcfifo_component|auto_generated|ws_bwp|ALT_INV_dffe20a\(0),
	dataf => \inst2|dcfifo_component|auto_generated|ws_brp|ALT_INV_dffe20a\(0),
	combout => \inst2|dcfifo_component|auto_generated|op_1~1_combout\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
		number_of_fplls => 1);
-- pragma translate_on
END structure;


