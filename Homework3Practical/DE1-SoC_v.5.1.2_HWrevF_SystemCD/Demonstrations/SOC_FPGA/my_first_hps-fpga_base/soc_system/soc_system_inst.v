	soc_system u0 (
		.clk_clk                               (<connected-to-clk_clk>),                               //                       clk.clk
		.reset_reset_n                         (<connected-to-reset_reset_n>),                         //                     reset.reset_n
		.memory_mem_a                          (<connected-to-memory_mem_a>),                          //                    memory.mem_a
		.memory_mem_ba                         (<connected-to-memory_mem_ba>),                         //                          .mem_ba
		.memory_mem_ck                         (<connected-to-memory_mem_ck>),                         //                          .mem_ck
		.memory_mem_ck_n                       (<connected-to-memory_mem_ck_n>),                       //                          .mem_ck_n
		.memory_mem_cke                        (<connected-to-memory_mem_cke>),                        //                          .mem_cke
		.memory_mem_cs_n                       (<connected-to-memory_mem_cs_n>),                       //                          .mem_cs_n
		.memory_mem_ras_n                      (<connected-to-memory_mem_ras_n>),                      //                          .mem_ras_n
		.memory_mem_cas_n                      (<connected-to-memory_mem_cas_n>),                      //                          .mem_cas_n
		.memory_mem_we_n                       (<connected-to-memory_mem_we_n>),                       //                          .mem_we_n
		.memory_mem_reset_n                    (<connected-to-memory_mem_reset_n>),                    //                          .mem_reset_n
		.memory_mem_dq                         (<connected-to-memory_mem_dq>),                         //                          .mem_dq
		.memory_mem_dqs                        (<connected-to-memory_mem_dqs>),                        //                          .mem_dqs
		.memory_mem_dqs_n                      (<connected-to-memory_mem_dqs_n>),                      //                          .mem_dqs_n
		.memory_mem_odt                        (<connected-to-memory_mem_odt>),                        //                          .mem_odt
		.memory_mem_dm                         (<connected-to-memory_mem_dm>),                         //                          .mem_dm
		.memory_oct_rzqin                      (<connected-to-memory_oct_rzqin>),                      //                          .oct_rzqin
		.hps_0_hps_io_hps_io_emac1_inst_TX_CLK (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TX_CLK>), //              hps_0_hps_io.hps_io_emac1_inst_TX_CLK
		.hps_0_hps_io_hps_io_emac1_inst_TXD0   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TXD0>),   //                          .hps_io_emac1_inst_TXD0
		.hps_0_hps_io_hps_io_emac1_inst_TXD1   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TXD1>),   //                          .hps_io_emac1_inst_TXD1
		.hps_0_hps_io_hps_io_emac1_inst_TXD2   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TXD2>),   //                          .hps_io_emac1_inst_TXD2
		.hps_0_hps_io_hps_io_emac1_inst_TXD3   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TXD3>),   //                          .hps_io_emac1_inst_TXD3
		.hps_0_hps_io_hps_io_emac1_inst_RXD0   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RXD0>),   //                          .hps_io_emac1_inst_RXD0
		.hps_0_hps_io_hps_io_emac1_inst_MDIO   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_MDIO>),   //                          .hps_io_emac1_inst_MDIO
		.hps_0_hps_io_hps_io_emac1_inst_MDC    (<connected-to-hps_0_hps_io_hps_io_emac1_inst_MDC>),    //                          .hps_io_emac1_inst_MDC
		.hps_0_hps_io_hps_io_emac1_inst_RX_CTL (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RX_CTL>), //                          .hps_io_emac1_inst_RX_CTL
		.hps_0_hps_io_hps_io_emac1_inst_TX_CTL (<connected-to-hps_0_hps_io_hps_io_emac1_inst_TX_CTL>), //                          .hps_io_emac1_inst_TX_CTL
		.hps_0_hps_io_hps_io_emac1_inst_RX_CLK (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RX_CLK>), //                          .hps_io_emac1_inst_RX_CLK
		.hps_0_hps_io_hps_io_emac1_inst_RXD1   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RXD1>),   //                          .hps_io_emac1_inst_RXD1
		.hps_0_hps_io_hps_io_emac1_inst_RXD2   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RXD2>),   //                          .hps_io_emac1_inst_RXD2
		.hps_0_hps_io_hps_io_emac1_inst_RXD3   (<connected-to-hps_0_hps_io_hps_io_emac1_inst_RXD3>),   //                          .hps_io_emac1_inst_RXD3
		.hps_0_hps_io_hps_io_qspi_inst_IO0     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_IO0>),     //                          .hps_io_qspi_inst_IO0
		.hps_0_hps_io_hps_io_qspi_inst_IO1     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_IO1>),     //                          .hps_io_qspi_inst_IO1
		.hps_0_hps_io_hps_io_qspi_inst_IO2     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_IO2>),     //                          .hps_io_qspi_inst_IO2
		.hps_0_hps_io_hps_io_qspi_inst_IO3     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_IO3>),     //                          .hps_io_qspi_inst_IO3
		.hps_0_hps_io_hps_io_qspi_inst_SS0     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_SS0>),     //                          .hps_io_qspi_inst_SS0
		.hps_0_hps_io_hps_io_qspi_inst_CLK     (<connected-to-hps_0_hps_io_hps_io_qspi_inst_CLK>),     //                          .hps_io_qspi_inst_CLK
		.hps_0_hps_io_hps_io_sdio_inst_CMD     (<connected-to-hps_0_hps_io_hps_io_sdio_inst_CMD>),     //                          .hps_io_sdio_inst_CMD
		.hps_0_hps_io_hps_io_sdio_inst_D0      (<connected-to-hps_0_hps_io_hps_io_sdio_inst_D0>),      //                          .hps_io_sdio_inst_D0
		.hps_0_hps_io_hps_io_sdio_inst_D1      (<connected-to-hps_0_hps_io_hps_io_sdio_inst_D1>),      //                          .hps_io_sdio_inst_D1
		.hps_0_hps_io_hps_io_sdio_inst_CLK     (<connected-to-hps_0_hps_io_hps_io_sdio_inst_CLK>),     //                          .hps_io_sdio_inst_CLK
		.hps_0_hps_io_hps_io_sdio_inst_D2      (<connected-to-hps_0_hps_io_hps_io_sdio_inst_D2>),      //                          .hps_io_sdio_inst_D2
		.hps_0_hps_io_hps_io_sdio_inst_D3      (<connected-to-hps_0_hps_io_hps_io_sdio_inst_D3>),      //                          .hps_io_sdio_inst_D3
		.hps_0_hps_io_hps_io_usb1_inst_D0      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D0>),      //                          .hps_io_usb1_inst_D0
		.hps_0_hps_io_hps_io_usb1_inst_D1      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D1>),      //                          .hps_io_usb1_inst_D1
		.hps_0_hps_io_hps_io_usb1_inst_D2      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D2>),      //                          .hps_io_usb1_inst_D2
		.hps_0_hps_io_hps_io_usb1_inst_D3      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D3>),      //                          .hps_io_usb1_inst_D3
		.hps_0_hps_io_hps_io_usb1_inst_D4      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D4>),      //                          .hps_io_usb1_inst_D4
		.hps_0_hps_io_hps_io_usb1_inst_D5      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D5>),      //                          .hps_io_usb1_inst_D5
		.hps_0_hps_io_hps_io_usb1_inst_D6      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D6>),      //                          .hps_io_usb1_inst_D6
		.hps_0_hps_io_hps_io_usb1_inst_D7      (<connected-to-hps_0_hps_io_hps_io_usb1_inst_D7>),      //                          .hps_io_usb1_inst_D7
		.hps_0_hps_io_hps_io_usb1_inst_CLK     (<connected-to-hps_0_hps_io_hps_io_usb1_inst_CLK>),     //                          .hps_io_usb1_inst_CLK
		.hps_0_hps_io_hps_io_usb1_inst_STP     (<connected-to-hps_0_hps_io_hps_io_usb1_inst_STP>),     //                          .hps_io_usb1_inst_STP
		.hps_0_hps_io_hps_io_usb1_inst_DIR     (<connected-to-hps_0_hps_io_hps_io_usb1_inst_DIR>),     //                          .hps_io_usb1_inst_DIR
		.hps_0_hps_io_hps_io_usb1_inst_NXT     (<connected-to-hps_0_hps_io_hps_io_usb1_inst_NXT>),     //                          .hps_io_usb1_inst_NXT
		.hps_0_hps_io_hps_io_spim1_inst_CLK    (<connected-to-hps_0_hps_io_hps_io_spim1_inst_CLK>),    //                          .hps_io_spim1_inst_CLK
		.hps_0_hps_io_hps_io_spim1_inst_MOSI   (<connected-to-hps_0_hps_io_hps_io_spim1_inst_MOSI>),   //                          .hps_io_spim1_inst_MOSI
		.hps_0_hps_io_hps_io_spim1_inst_MISO   (<connected-to-hps_0_hps_io_hps_io_spim1_inst_MISO>),   //                          .hps_io_spim1_inst_MISO
		.hps_0_hps_io_hps_io_spim1_inst_SS0    (<connected-to-hps_0_hps_io_hps_io_spim1_inst_SS0>),    //                          .hps_io_spim1_inst_SS0
		.hps_0_hps_io_hps_io_uart0_inst_RX     (<connected-to-hps_0_hps_io_hps_io_uart0_inst_RX>),     //                          .hps_io_uart0_inst_RX
		.hps_0_hps_io_hps_io_uart0_inst_TX     (<connected-to-hps_0_hps_io_hps_io_uart0_inst_TX>),     //                          .hps_io_uart0_inst_TX
		.hps_0_hps_io_hps_io_i2c0_inst_SDA     (<connected-to-hps_0_hps_io_hps_io_i2c0_inst_SDA>),     //                          .hps_io_i2c0_inst_SDA
		.hps_0_hps_io_hps_io_i2c0_inst_SCL     (<connected-to-hps_0_hps_io_hps_io_i2c0_inst_SCL>),     //                          .hps_io_i2c0_inst_SCL
		.hps_0_hps_io_hps_io_i2c1_inst_SDA     (<connected-to-hps_0_hps_io_hps_io_i2c1_inst_SDA>),     //                          .hps_io_i2c1_inst_SDA
		.hps_0_hps_io_hps_io_i2c1_inst_SCL     (<connected-to-hps_0_hps_io_hps_io_i2c1_inst_SCL>),     //                          .hps_io_i2c1_inst_SCL
		.hps_0_hps_io_hps_io_gpio_inst_GPIO09  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO09>),  //                          .hps_io_gpio_inst_GPIO09
		.hps_0_hps_io_hps_io_gpio_inst_GPIO35  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO35>),  //                          .hps_io_gpio_inst_GPIO35
		.hps_0_hps_io_hps_io_gpio_inst_GPIO40  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO40>),  //                          .hps_io_gpio_inst_GPIO40
		.hps_0_hps_io_hps_io_gpio_inst_GPIO48  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO48>),  //                          .hps_io_gpio_inst_GPIO48
		.hps_0_hps_io_hps_io_gpio_inst_GPIO53  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO53>),  //                          .hps_io_gpio_inst_GPIO53
		.hps_0_hps_io_hps_io_gpio_inst_GPIO54  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO54>),  //                          .hps_io_gpio_inst_GPIO54
		.hps_0_hps_io_hps_io_gpio_inst_GPIO61  (<connected-to-hps_0_hps_io_hps_io_gpio_inst_GPIO61>),  //                          .hps_io_gpio_inst_GPIO61
		.hps_0_h2f_reset_reset_n               (<connected-to-hps_0_h2f_reset_reset_n>),               //           hps_0_h2f_reset.reset_n
		.hps_0_f2h_stm_hw_events_stm_hwevents  (<connected-to-hps_0_f2h_stm_hw_events_stm_hwevents>),  //   hps_0_f2h_stm_hw_events.stm_hwevents
		.hps_0_f2h_warm_reset_req_reset_n      (<connected-to-hps_0_f2h_warm_reset_req_reset_n>),      //  hps_0_f2h_warm_reset_req.reset_n
		.hps_0_f2h_debug_reset_req_reset_n     (<connected-to-hps_0_f2h_debug_reset_req_reset_n>),     // hps_0_f2h_debug_reset_req.reset_n
		.hps_0_f2h_cold_reset_req_reset_n      (<connected-to-hps_0_f2h_cold_reset_req_reset_n>)       //  hps_0_f2h_cold_reset_req.reset_n
	);

