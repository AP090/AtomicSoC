// ============================================================================
// Copyright (c) 2014 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Tue Dec  2 09:28:38 2014
// ============================================================================

`define ENABLE_HPS
//`define ENABLE_CLK

module ghrd(

      ///////// ADC /////////
      output             ADC_CONVST,
      output             ADC_SCK,
      output             ADC_SDI,
      input              ADC_SDO,

      ///////// ARDUINO /////////
      inout       [15:0] ARDUINO_IO,
      inout              ARDUINO_RESET_N,

`ifdef ENABLE_CLK
      ///////// CLK /////////
      output             CLK_I2C_SCL,
      inout              CLK_I2C_SDA,
`endif /*ENABLE_CLK*/

      ///////// FPGA /////////
      input              FPGA_CLK1_50,
      input              FPGA_CLK2_50,
      input              FPGA_CLK3_50,

      ///////// GPIO /////////
      inout       [35:0] GPIO_0,
      inout       [35:0] GPIO_1,

`ifdef ENABLE_HPS
      ///////// HPS /////////
      inout              HPS_CONV_USB_N,
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_N,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C0_SCLK,
      inout              HPS_I2C0_SDAT,
      inout              HPS_I2C1_SCLK,
      inout              HPS_I2C1_SDAT,
      inout              HPS_KEY,
      inout              HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

      ///////// KEY /////////
      input       [1:0]  KEY,

      ///////// LED /////////
      output      [7:0]  LED,

      ///////// SW /////////
      input       [3:0]  SW
);


//=======================================================
//  REG/WIRE declarations
//=======================================================
// internal wires and registers declaration
  wire [1:0]  fpga_debounced_buttons;
  wire [7:0]  fpga_led_internal;
  wire        hps_fpga_reset_n;
  wire [2:0]  hps_reset_req;
  wire        hps_cold_reset;
  wire        hps_warm_reset;
  wire        hps_debug_reset;
  wire [27:0] stm_hw_events;
  
  wire [19:0] HPS_to_FIFO;
  wire [19:0] FIFO_to_RSD;
  wire [19:0] LEDTest;
  
  wire		  clock_post_pll;
  
  wire 		  fifo_wrfull;
  wire	     fifo_rdempty;
  wire		  fifo_rdreq;
  wire		  fifo_wrreq;
  wire 		  WSD_busy;
  wire        system_reset;
  wire        hps_new_word;
  wire		  hps_new_word_synced;
  wire        fake_ok;
  wire 		  OK_synced;
  wire		  ored_clock;
  
  wire		  RSD_FIFO_clk;
  wire		  WSD_FIFO_clk;



// connection of internal logics
  assign stm_hw_events    = {{13{1'b0}},SW, fpga_led_internal, fpga_debounced_buttons};


//=======================================================
//  Structural coding
//=======================================================


 soc_system u0 (
 
		//LED
		.led_pio_external_connection_export		(),
		//Clock&Reset
	  .clk_clk                               (FPGA_CLK1_50 ),                        //  clk.clk
	  .reset_reset_n                         (1'b1         ),                        //  reset.reset_n
	  //HPS ddr3
	  .memory_mem_a                          ( HPS_DDR3_ADDR),                       //  memory.mem_a
	  .memory_mem_ba                         ( HPS_DDR3_BA),                         // .mem_ba
	  .memory_mem_ck                         ( HPS_DDR3_CK_P),                       // .mem_ck
	  .memory_mem_ck_n                       ( HPS_DDR3_CK_N),                       // .mem_ck_n
	  .memory_mem_cke                        ( HPS_DDR3_CKE),                        // .mem_cke
	  .memory_mem_cs_n                       ( HPS_DDR3_CS_N),                       // .mem_cs_n
	  .memory_mem_ras_n                      ( HPS_DDR3_RAS_N),                      // .mem_ras_n
	  .memory_mem_cas_n                      ( HPS_DDR3_CAS_N),                      // .mem_cas_n
	  .memory_mem_we_n                       ( HPS_DDR3_WE_N),                       // .mem_we_n
	  .memory_mem_reset_n                    ( HPS_DDR3_RESET_N),                    // .mem_reset_n
	  .memory_mem_dq                         ( HPS_DDR3_DQ),                         // .mem_dq
	  .memory_mem_dqs                        ( HPS_DDR3_DQS_P),                      // .mem_dqs
	  .memory_mem_dqs_n                      ( HPS_DDR3_DQS_N),                      // .mem_dqs_n
	  .memory_mem_odt                        ( HPS_DDR3_ODT),                        // .mem_odt
	  .memory_mem_dm                         ( HPS_DDR3_DM),                         // .mem_dm
	  .memory_oct_rzqin                      ( HPS_DDR3_RZQ),                        // .oct_rzqin                                  
	  //HPS ethernet		
	  .hps_0_hps_io_hps_io_emac1_inst_TX_CLK ( HPS_ENET_GTX_CLK),       					//  hps_0_hps_io.hps_io_emac1_inst_TX_CLK
	  .hps_0_hps_io_hps_io_emac1_inst_TXD0   ( HPS_ENET_TX_DATA[0] ),   					// .hps_io_emac1_inst_TXD0
	  .hps_0_hps_io_hps_io_emac1_inst_TXD1   ( HPS_ENET_TX_DATA[1] ),  					// .hps_io_emac1_inst_TXD1
	  .hps_0_hps_io_hps_io_emac1_inst_TXD2   ( HPS_ENET_TX_DATA[2] ),   					// .hps_io_emac1_inst_TXD2
	  .hps_0_hps_io_hps_io_emac1_inst_TXD3   ( HPS_ENET_TX_DATA[3] ),   					// .hps_io_emac1_inst_TXD3
	  .hps_0_hps_io_hps_io_emac1_inst_RXD0   ( HPS_ENET_RX_DATA[0] ),   					// .hps_io_emac1_inst_RXD0
	  .hps_0_hps_io_hps_io_emac1_inst_MDIO   ( HPS_ENET_MDIO ),         					// .hps_io_emac1_inst_MDIO
	  .hps_0_hps_io_hps_io_emac1_inst_MDC    ( HPS_ENET_MDC  ),         					// .hps_io_emac1_inst_MDC
	  .hps_0_hps_io_hps_io_emac1_inst_RX_CTL ( HPS_ENET_RX_DV),         					// .hps_io_emac1_inst_RX_CTL
	  .hps_0_hps_io_hps_io_emac1_inst_TX_CTL ( HPS_ENET_TX_EN),         					// .hps_io_emac1_inst_TX_CTL
	  .hps_0_hps_io_hps_io_emac1_inst_RX_CLK ( HPS_ENET_RX_CLK),        					// .hps_io_emac1_inst_RX_CLK
	  .hps_0_hps_io_hps_io_emac1_inst_RXD1   ( HPS_ENET_RX_DATA[1] ),   					// .hps_io_emac1_inst_RXD1
	  .hps_0_hps_io_hps_io_emac1_inst_RXD2   ( HPS_ENET_RX_DATA[2] ),   					// .hps_io_emac1_inst_RXD2
	  .hps_0_hps_io_hps_io_emac1_inst_RXD3   ( HPS_ENET_RX_DATA[3] ),   					// .hps_io_emac1_inst_RXD3		  
	  //HPS SD card 
	  .hps_0_hps_io_hps_io_sdio_inst_CMD     ( HPS_SD_CMD    ),           				// .hps_io_sdio_inst_CMD
	  .hps_0_hps_io_hps_io_sdio_inst_D0      ( HPS_SD_DATA[0]     ),      				// .hps_io_sdio_inst_D0
	  .hps_0_hps_io_hps_io_sdio_inst_D1      ( HPS_SD_DATA[1]     ),      				// .hps_io_sdio_inst_D1
	  .hps_0_hps_io_hps_io_sdio_inst_CLK     ( HPS_SD_CLK   ),            				// .hps_io_sdio_inst_CLK
	  .hps_0_hps_io_hps_io_sdio_inst_D2      ( HPS_SD_DATA[2]     ),      				// .hps_io_sdio_inst_D2
	  .hps_0_hps_io_hps_io_sdio_inst_D3      ( HPS_SD_DATA[3]     ),      				// .hps_io_sdio_inst_D3
	  //HPS USB 		  
	  .hps_0_hps_io_hps_io_usb1_inst_D0      ( HPS_USB_DATA[0]    ),      				// .hps_io_usb1_inst_D0
	  .hps_0_hps_io_hps_io_usb1_inst_D1      ( HPS_USB_DATA[1]    ),      				// .hps_io_usb1_inst_D1
	  .hps_0_hps_io_hps_io_usb1_inst_D2      ( HPS_USB_DATA[2]    ),      				// .hps_io_usb1_inst_D2
	  .hps_0_hps_io_hps_io_usb1_inst_D3      ( HPS_USB_DATA[3]    ),      				// .hps_io_usb1_inst_D3
	  .hps_0_hps_io_hps_io_usb1_inst_D4      ( HPS_USB_DATA[4]    ),      				// .hps_io_usb1_inst_D4
	  .hps_0_hps_io_hps_io_usb1_inst_D5      ( HPS_USB_DATA[5]    ),      				// .hps_io_usb1_inst_D5
	  .hps_0_hps_io_hps_io_usb1_inst_D6      ( HPS_USB_DATA[6]    ),      				// .hps_io_usb1_inst_D6
	  .hps_0_hps_io_hps_io_usb1_inst_D7      ( HPS_USB_DATA[7]    ),      				// .hps_io_usb1_inst_D7
	  .hps_0_hps_io_hps_io_usb1_inst_CLK     ( HPS_USB_CLKOUT    ),       				// .hps_io_usb1_inst_CLK
	  .hps_0_hps_io_hps_io_usb1_inst_STP     ( HPS_USB_STP    ),          				// .hps_io_usb1_inst_STP
	  .hps_0_hps_io_hps_io_usb1_inst_DIR     ( HPS_USB_DIR    ),          				// .hps_io_usb1_inst_DIR
	  .hps_0_hps_io_hps_io_usb1_inst_NXT     ( HPS_USB_NXT    ),          				// .hps_io_usb1_inst_NXT
		//HPS SPI 		  
	  .hps_0_hps_io_hps_io_spim1_inst_CLK    ( HPS_SPIM_CLK  ),           				// .hps_io_spim1_inst_CLK
	  .hps_0_hps_io_hps_io_spim1_inst_MOSI   ( HPS_SPIM_MOSI ),           				// .hps_io_spim1_inst_MOSI
	  .hps_0_hps_io_hps_io_spim1_inst_MISO   ( HPS_SPIM_MISO ),           				// .hps_io_spim1_inst_MISO
	  .hps_0_hps_io_hps_io_spim1_inst_SS0    ( HPS_SPIM_SS   ),             			// .hps_io_spim1_inst_SS0
		//HPS UART		
	  .hps_0_hps_io_hps_io_uart0_inst_RX     ( HPS_UART_RX   ),          				// .hps_io_uart0_inst_RX
	  .hps_0_hps_io_hps_io_uart0_inst_TX     ( HPS_UART_TX   ),          				// .hps_io_uart0_inst_TX
		//HPS I2C1
	  .hps_0_hps_io_hps_io_i2c0_inst_SDA     ( HPS_I2C0_SDAT  ),        					//  .hps_io_i2c0_inst_SDA
	  .hps_0_hps_io_hps_io_i2c0_inst_SCL     ( HPS_I2C0_SCLK  ),        					// .hps_io_i2c0_inst_SCL
		//HPS I2C2
	  .hps_0_hps_io_hps_io_i2c1_inst_SDA     ( HPS_I2C1_SDAT  ),        					// .hps_io_i2c1_inst_SDA
	  .hps_0_hps_io_hps_io_i2c1_inst_SCL     ( HPS_I2C1_SCLK  ),        					// .hps_io_i2c1_inst_SCL
		//GPIO 
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO09  ( HPS_CONV_USB_N ),  							// .hps_io_gpio_inst_GPIO09
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO35  ( HPS_ENET_INT_N ),  							// .hps_io_gpio_inst_GPIO35
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO40  ( HPS_LTC_GPIO   ),  							// .hps_io_gpio_inst_GPIO40
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO53  ( HPS_LED   ),  								// .hps_io_gpio_inst_GPIO53
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO54  ( HPS_KEY   ),  								// .hps_io_gpio_inst_GPIO54
	  .hps_0_hps_io_hps_io_gpio_inst_GPIO61  ( HPS_GSENSOR_INT ),  						// .hps_io_gpio_inst_GPIO61
    
	  .hps_0_f2h_stm_hw_events_stm_hwevents  (stm_hw_events),  								//  hps_0_f2h_stm_hw_events.stm_hwevents
	  .hps_0_h2f_reset_reset_n               (hps_fpga_reset_n),   							//  hps_0_h2f_reset.reset_n
     .hps_0_f2h_warm_reset_req_reset_n      (~hps_warm_reset),      						//  hps_0_f2h_warm_reset_req.reset_n	
	  .hps_0_f2h_debug_reset_req_reset_n     (~hps_debug_reset),     						//  hps_0_f2h_debug_reset_req.reset_n  
	  .hps_0_f2h_cold_reset_req_reset_n      (~hps_cold_reset),      						//  hps_0_f2h_cold_reset_req.reset_n
	  
	  .dac_pio_external_connection_export        (HPS_to_FIFO),        					//dac_pio_external_connection.export
     .fake_ok_external_connection_export        (fake_ok),        //        fake_ok_external_connection.export
     .new_word_ready_external_connection_export (hps_new_word), // new_word_ready_external_connection.export
     .system_reset_external_connection_export   (system_reset),   //   system_reset_external_connection.export
     .fifo_wrfull_external_connection_export    (fifo_wrfull),    //    fifo_wrfull_external_connection.export
     .busy_in_external_connection_export        (WSD_busy)         //        busy_in_external_connection.export
 );


// Source/Probe megawizard instance
hps_reset hps_reset_inst (
  .source_clk (FPGA_CLK1_50),
  .source     (hps_reset_req)
);

altera_edge_detector pulse_cold_reset (
  .clk       (FPGA_CLK1_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[0]),
  .pulse_out (hps_cold_reset)
);
  defparam pulse_cold_reset.PULSE_EXT = 6;
  defparam pulse_cold_reset.EDGE_TYPE = 1;
  defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_warm_reset (
  .clk       (FPGA_CLK1_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[1]),
  .pulse_out (hps_warm_reset)
);
  defparam pulse_warm_reset.PULSE_EXT = 2;
  defparam pulse_warm_reset.EDGE_TYPE = 1;
  defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;
  
altera_edge_detector pulse_debug_reset (
  .clk       (FPGA_CLK1_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[2]),
  .pulse_out (hps_debug_reset)
);
  defparam pulse_debug_reset.PULSE_EXT = 32;
  defparam pulse_debug_reset.EDGE_TYPE = 1;
  defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;

newpll u3 (
.refclk (FPGA_CLK1_50),
.rst(1'b0),
.outclk_0(clock_post_pll)
);

FIFo1 u4 (
.aclr (system_reset),
.data (HPS_to_FIFO),
.rdclk (RSD_FIFO_clk),
.rdreq (fifo_rdreq),
.wrclk (WSD_FIFO_clk),
.wrreq	(fifo_wrreq),
.q (FIFO_to_RSD),
.rdempty (fifo_rdempty),
.wrfull (fifo_wrfull),
.wrusedw ()
);

writeSideDriver u5(
.clk (clock_post_pll),
.hps_input (hps_new_word_synced),
.reset (system_reset),
.busy  (WSD_busy),
.wclock (WSD_FIFO_clk),
.wreq (fifo_wrreq)
);

readSideDriver u6(
.DRIVER_RESET (system_reset),
.SCKIN (clock_post_pll),
.DATA_IN (FIFO_to_RSD),
.RDEMPTY (fifo_rdempty),
.OPALKELLY (OK_synced),
.RDCLOCK (RSD_FIFO_clk),
.RDREQ (fifo_rdreq),
.DATA_OUT (GPIO_0[3]),
.SYNC (GPIO_0[0]),
.RESET (GPIO_0[8]),
.CLR (GPIO_0[6]),
.SCKOUT (GPIO_0[1]),
.LDAC (GPIO_0[4])
);

sync_2ff newWordSync(
.async_in(hps_new_word),
.clk(clock_post_pll),
.rst(system_reset),
.sync_out(hps_new_word_synced)
);

sync_2ff OKSync(
.async_in(fake_ok||GPIO_0[10]),
.clk(clock_post_pll),
.rst(system_reset),
.sync_out(OK_synced)
);

clock_OR ORgate(
.clock1_in(GPIO_0[10]),
.clock2_in(fake_ok),
.or_out(ored_clock)
);
 
assign GPIO_0[2] = 1'b0;
assign GPIO_0[7] = 1'b0;
assign GPIO_0[5] = 1'b1; 

assign LED[0] = fake_ok;
assign LED[1] = GPIO_0[10];
assign LED[2] = ored_clock;
assign LED[3] = ored_clock;

//assign LED[7:0] = FIFO_to_RSD[14:7];

//assign LED[0] = fifo_rdreq;
//assign LED[7] = fifo_rdempty;
//assign LED[2] = WSD_busy;
//assign LED[3] = hps_new_word;
//assign LED[4] = fifo_wrfull;
//assign LED[5] = fifo_wrreq;


  
endmodule


