pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FIFO_RXFIFO_RD_BYTE_Field is HAL.UInt8;

   --  FIFO data register
   type FIFO_Register is record
      --  UART 0 accesses FIFO via this register.
      RXFIFO_RD_BYTE : FIFO_RXFIFO_RD_BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31  : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      RXFIFO_RD_BYTE at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Raw interrupt status
   type INT_RAW_Register is record
      --  This interrupt raw bit turns to high level when receiver receives
      --  more data than what rxfifo_full_thrhd specifies.
      RXFIFO_FULL_INT_RAW      : Boolean := False;
      --  This interrupt raw bit turns to high level when the amount of data in
      --  Tx-FIFO is less than what txfifo_empty_thrhd specifies .
      TXFIFO_EMPTY_INT_RAW     : Boolean := True;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  parity error in the data.
      PARITY_ERR_INT_RAW       : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  data frame error .
      FRM_ERR_INT_RAW          : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver receives
      --  more data than the FIFO can store.
      RXFIFO_OVF_INT_RAW       : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  edge change of DSRn signal.
      DSR_CHG_INT_RAW          : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  edge change of CTSn signal.
      CTS_CHG_INT_RAW          : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver detects a 0
      --  after the stop bit.
      BRK_DET_INT_RAW          : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver takes more
      --  time than rx_tout_thrhd to receive a byte.
      RXFIFO_TOUT_INT_RAW      : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver recevies Xon
      --  char when uart_sw_flow_con_en is set to 1.
      SW_XON_INT_RAW           : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver receives
      --  Xoff char when uart_sw_flow_con_en is set to 1.
      SW_XOFF_INT_RAW          : Boolean := False;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  glitch in the middle of a start bit.
      GLITCH_DET_INT_RAW       : Boolean := False;
      --  This interrupt raw bit turns to high level when transmitter completes
      --  sending NULL characters after all data in Tx-FIFO are sent.
      TX_BRK_DONE_INT_RAW      : Boolean := False;
      --  This interrupt raw bit turns to high level when transmitter has kept
      --  the shortest duration after sending the last data.
      TX_BRK_IDLE_DONE_INT_RAW : Boolean := False;
      --  This interrupt raw bit turns to high level when transmitter has send
      --  out all data in FIFO.
      TX_DONE_INT_RAW          : Boolean := False;
      --  unspecified
      Reserved_15_17           : HAL.UInt3 := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  configured at_cmd char.
      AT_CMD_CHAR_DET_INT_RAW  : Boolean := False;
      --  This interrupt raw bit turns to high level when input rxd edge
      --  changes more times than what reg_active_threshold specifies in light
      --  sleeping mode.
      WAKEUP_INT_RAW           : Boolean := False;
      --  unspecified
      Reserved_20_31           : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      RXFIFO_FULL_INT_RAW      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_RAW     at 0 range 1 .. 1;
      PARITY_ERR_INT_RAW       at 0 range 2 .. 2;
      FRM_ERR_INT_RAW          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_RAW       at 0 range 4 .. 4;
      DSR_CHG_INT_RAW          at 0 range 5 .. 5;
      CTS_CHG_INT_RAW          at 0 range 6 .. 6;
      BRK_DET_INT_RAW          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_RAW      at 0 range 8 .. 8;
      SW_XON_INT_RAW           at 0 range 9 .. 9;
      SW_XOFF_INT_RAW          at 0 range 10 .. 10;
      GLITCH_DET_INT_RAW       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_RAW      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_RAW at 0 range 13 .. 13;
      TX_DONE_INT_RAW          at 0 range 14 .. 14;
      Reserved_15_17           at 0 range 15 .. 17;
      AT_CMD_CHAR_DET_INT_RAW  at 0 range 18 .. 18;
      WAKEUP_INT_RAW           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   --  Masked interrupt status
   type INT_ST_Register is record
      --  Read-only. This is the status bit for rxfifo_full_int_raw when
      --  rxfifo_full_int_ena is set to 1.
      RXFIFO_FULL_INT_ST      : Boolean;
      --  Read-only. This is the status bit for txfifo_empty_int_raw when
      --  txfifo_empty_int_ena is set to 1.
      TXFIFO_EMPTY_INT_ST     : Boolean;
      --  Read-only. This is the status bit for parity_err_int_raw when
      --  parity_err_int_ena is set to 1.
      PARITY_ERR_INT_ST       : Boolean;
      --  Read-only. This is the status bit for frm_err_int_raw when
      --  frm_err_int_ena is set to 1.
      FRM_ERR_INT_ST          : Boolean;
      --  Read-only. This is the status bit for rxfifo_ovf_int_raw when
      --  rxfifo_ovf_int_ena is set to 1.
      RXFIFO_OVF_INT_ST       : Boolean;
      --  Read-only. This is the status bit for dsr_chg_int_raw when
      --  dsr_chg_int_ena is set to 1.
      DSR_CHG_INT_ST          : Boolean;
      --  Read-only. This is the status bit for cts_chg_int_raw when
      --  cts_chg_int_ena is set to 1.
      CTS_CHG_INT_ST          : Boolean;
      --  Read-only. This is the status bit for brk_det_int_raw when
      --  brk_det_int_ena is set to 1.
      BRK_DET_INT_ST          : Boolean;
      --  Read-only. This is the status bit for rxfifo_tout_int_raw when
      --  rxfifo_tout_int_ena is set to 1.
      RXFIFO_TOUT_INT_ST      : Boolean;
      --  Read-only. This is the status bit for sw_xon_int_raw when
      --  sw_xon_int_ena is set to 1.
      SW_XON_INT_ST           : Boolean;
      --  Read-only. This is the status bit for sw_xoff_int_raw when
      --  sw_xoff_int_ena is set to 1.
      SW_XOFF_INT_ST          : Boolean;
      --  Read-only. This is the status bit for glitch_det_int_raw when
      --  glitch_det_int_ena is set to 1.
      GLITCH_DET_INT_ST       : Boolean;
      --  Read-only. This is the status bit for tx_brk_done_int_raw when
      --  tx_brk_done_int_ena is set to 1.
      TX_BRK_DONE_INT_ST      : Boolean;
      --  Read-only. This is the stauts bit for tx_brk_idle_done_int_raw when
      --  tx_brk_idle_done_int_ena is set to 1.
      TX_BRK_IDLE_DONE_INT_ST : Boolean;
      --  Read-only. This is the status bit for tx_done_int_raw when
      --  tx_done_int_ena is set to 1.
      TX_DONE_INT_ST          : Boolean;
      --  unspecified
      Reserved_15_17          : HAL.UInt3;
      --  Read-only. This is the status bit for at_cmd_det_int_raw when
      --  at_cmd_char_det_int_ena is set to 1.
      AT_CMD_CHAR_DET_INT_ST  : Boolean;
      --  Read-only. This is the status bit for uart_wakeup_int_raw when
      --  uart_wakeup_int_ena is set to 1.
      WAKEUP_INT_ST           : Boolean;
      --  unspecified
      Reserved_20_31          : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      RXFIFO_FULL_INT_ST      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_ST     at 0 range 1 .. 1;
      PARITY_ERR_INT_ST       at 0 range 2 .. 2;
      FRM_ERR_INT_ST          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_ST       at 0 range 4 .. 4;
      DSR_CHG_INT_ST          at 0 range 5 .. 5;
      CTS_CHG_INT_ST          at 0 range 6 .. 6;
      BRK_DET_INT_ST          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_ST      at 0 range 8 .. 8;
      SW_XON_INT_ST           at 0 range 9 .. 9;
      SW_XOFF_INT_ST          at 0 range 10 .. 10;
      GLITCH_DET_INT_ST       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_ST      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_ST at 0 range 13 .. 13;
      TX_DONE_INT_ST          at 0 range 14 .. 14;
      Reserved_15_17          at 0 range 15 .. 17;
      AT_CMD_CHAR_DET_INT_ST  at 0 range 18 .. 18;
      WAKEUP_INT_ST           at 0 range 19 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENA_Register is record
      --  This is the enable bit for rxfifo_full_int_st register.
      RXFIFO_FULL_INT_ENA      : Boolean := False;
      --  This is the enable bit for txfifo_empty_int_st register.
      TXFIFO_EMPTY_INT_ENA     : Boolean := False;
      --  This is the enable bit for parity_err_int_st register.
      PARITY_ERR_INT_ENA       : Boolean := False;
      --  This is the enable bit for frm_err_int_st register.
      FRM_ERR_INT_ENA          : Boolean := False;
      --  This is the enable bit for rxfifo_ovf_int_st register.
      RXFIFO_OVF_INT_ENA       : Boolean := False;
      --  This is the enable bit for dsr_chg_int_st register.
      DSR_CHG_INT_ENA          : Boolean := False;
      --  This is the enable bit for cts_chg_int_st register.
      CTS_CHG_INT_ENA          : Boolean := False;
      --  This is the enable bit for brk_det_int_st register.
      BRK_DET_INT_ENA          : Boolean := False;
      --  This is the enable bit for rxfifo_tout_int_st register.
      RXFIFO_TOUT_INT_ENA      : Boolean := False;
      --  This is the enable bit for sw_xon_int_st register.
      SW_XON_INT_ENA           : Boolean := False;
      --  This is the enable bit for sw_xoff_int_st register.
      SW_XOFF_INT_ENA          : Boolean := False;
      --  This is the enable bit for glitch_det_int_st register.
      GLITCH_DET_INT_ENA       : Boolean := False;
      --  This is the enable bit for tx_brk_done_int_st register.
      TX_BRK_DONE_INT_ENA      : Boolean := False;
      --  This is the enable bit for tx_brk_idle_done_int_st register.
      TX_BRK_IDLE_DONE_INT_ENA : Boolean := False;
      --  This is the enable bit for tx_done_int_st register.
      TX_DONE_INT_ENA          : Boolean := False;
      --  unspecified
      Reserved_15_17           : HAL.UInt3 := 16#0#;
      --  This is the enable bit for at_cmd_char_det_int_st register.
      AT_CMD_CHAR_DET_INT_ENA  : Boolean := False;
      --  This is the enable bit for uart_wakeup_int_st register.
      WAKEUP_INT_ENA           : Boolean := False;
      --  unspecified
      Reserved_20_31           : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      RXFIFO_FULL_INT_ENA      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_ENA     at 0 range 1 .. 1;
      PARITY_ERR_INT_ENA       at 0 range 2 .. 2;
      FRM_ERR_INT_ENA          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_ENA       at 0 range 4 .. 4;
      DSR_CHG_INT_ENA          at 0 range 5 .. 5;
      CTS_CHG_INT_ENA          at 0 range 6 .. 6;
      BRK_DET_INT_ENA          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_ENA      at 0 range 8 .. 8;
      SW_XON_INT_ENA           at 0 range 9 .. 9;
      SW_XOFF_INT_ENA          at 0 range 10 .. 10;
      GLITCH_DET_INT_ENA       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_ENA      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_ENA at 0 range 13 .. 13;
      TX_DONE_INT_ENA          at 0 range 14 .. 14;
      Reserved_15_17           at 0 range 15 .. 17;
      AT_CMD_CHAR_DET_INT_ENA  at 0 range 18 .. 18;
      WAKEUP_INT_ENA           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   --  Interrupt clear bits
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear the rxfifo_full_int_raw interrupt.
      RXFIFO_FULL_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear txfifo_empty_int_raw interrupt.
      TXFIFO_EMPTY_INT_CLR     : Boolean := False;
      --  Write-only. Set this bit to clear parity_err_int_raw interrupt.
      PARITY_ERR_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear frm_err_int_raw interrupt.
      FRM_ERR_INT_CLR          : Boolean := False;
      --  Write-only. Set this bit to clear rxfifo_ovf_int_raw interrupt.
      RXFIFO_OVF_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the dsr_chg_int_raw interrupt.
      DSR_CHG_INT_CLR          : Boolean := False;
      --  Write-only. Set this bit to clear the cts_chg_int_raw interrupt.
      CTS_CHG_INT_CLR          : Boolean := False;
      --  Write-only. Set this bit to clear the brk_det_int_raw interrupt.
      BRK_DET_INT_CLR          : Boolean := False;
      --  Write-only. Set this bit to clear the rxfifo_tout_int_raw interrupt.
      RXFIFO_TOUT_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the sw_xon_int_raw interrupt.
      SW_XON_INT_CLR           : Boolean := False;
      --  Write-only. Set this bit to clear the sw_xoff_int_raw interrupt.
      SW_XOFF_INT_CLR          : Boolean := False;
      --  Write-only. Set this bit to clear the glitch_det_int_raw interrupt.
      GLITCH_DET_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the tx_brk_done_int_raw interrupt..
      TX_BRK_DONE_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the tx_brk_idle_done_int_raw
      --  interrupt.
      TX_BRK_IDLE_DONE_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the tx_done_int_raw interrupt.
      TX_DONE_INT_CLR          : Boolean := False;
      --  unspecified
      Reserved_15_17           : HAL.UInt3 := 16#0#;
      --  Write-only. Set this bit to clear the at_cmd_char_det_int_raw
      --  interrupt.
      AT_CMD_CHAR_DET_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the uart_wakeup_int_raw interrupt.
      WAKEUP_INT_CLR           : Boolean := False;
      --  unspecified
      Reserved_20_31           : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      RXFIFO_FULL_INT_CLR      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_CLR     at 0 range 1 .. 1;
      PARITY_ERR_INT_CLR       at 0 range 2 .. 2;
      FRM_ERR_INT_CLR          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_CLR       at 0 range 4 .. 4;
      DSR_CHG_INT_CLR          at 0 range 5 .. 5;
      CTS_CHG_INT_CLR          at 0 range 6 .. 6;
      BRK_DET_INT_CLR          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_CLR      at 0 range 8 .. 8;
      SW_XON_INT_CLR           at 0 range 9 .. 9;
      SW_XOFF_INT_CLR          at 0 range 10 .. 10;
      GLITCH_DET_INT_CLR       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_CLR      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_CLR at 0 range 13 .. 13;
      TX_DONE_INT_CLR          at 0 range 14 .. 14;
      Reserved_15_17           at 0 range 15 .. 17;
      AT_CMD_CHAR_DET_INT_CLR  at 0 range 18 .. 18;
      WAKEUP_INT_CLR           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   subtype CLKDIV_CLKDIV_Field is HAL.UInt12;
   subtype CLKDIV_FRAG_Field is HAL.UInt4;

   --  Clock divider configuration
   type CLKDIV_Register is record
      --  The integral part of the frequency divider factor.
      CLKDIV         : CLKDIV_CLKDIV_Field := 16#2B6#;
      --  unspecified
      Reserved_12_19 : HAL.UInt8 := 16#0#;
      --  The decimal part of the frequency divider factor.
      FRAG           : CLKDIV_FRAG_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      CLKDIV         at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      FRAG           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RX_FILT_GLITCH_FILT_Field is HAL.UInt8;

   --  Rx Filter configuration
   type RX_FILT_Register is record
      --  when input pulse width is lower than this value the pulse is ignored.
      GLITCH_FILT    : RX_FILT_GLITCH_FILT_Field := 16#8#;
      --  Set this bit to enable Rx signal filter.
      GLITCH_FILT_EN : Boolean := False;
      --  unspecified
      Reserved_9_31  : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_FILT_Register use record
      GLITCH_FILT    at 0 range 0 .. 7;
      GLITCH_FILT_EN at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   subtype STATUS_RXFIFO_CNT_Field is HAL.UInt5;
   subtype STATUS_TXFIFO_CNT_Field is HAL.UInt5;

   --  UART status register
   type STATUS_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. Stores the byte number of valid data in Rx-FIFO.
      RXFIFO_CNT     : STATUS_RXFIFO_CNT_Field;
      --  unspecified
      Reserved_8_12  : HAL.UInt5;
      --  Read-only. The register represent the level value of the internal
      --  uart dsr signal.
      DSRN           : Boolean;
      --  Read-only. This register represent the level value of the internal
      --  uart cts signal.
      CTSN           : Boolean;
      --  Read-only. This register represent the level value of the internal
      --  uart rxd signal.
      RXD            : Boolean;
      --  unspecified
      Reserved_16_18 : HAL.UInt3;
      --  Read-only. Stores the byte number of data in Tx-FIFO.
      TXFIFO_CNT     : STATUS_TXFIFO_CNT_Field;
      --  unspecified
      Reserved_24_28 : HAL.UInt5;
      --  Read-only. This bit represents the level of the internal uart dtr
      --  signal.
      DTRN           : Boolean;
      --  Read-only. This bit represents the level of the internal uart rts
      --  signal.
      RTSN           : Boolean;
      --  Read-only. This bit represents the level of the internal uart txd
      --  signal.
      TXD            : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      RXFIFO_CNT     at 0 range 3 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      DSRN           at 0 range 13 .. 13;
      CTSN           at 0 range 14 .. 14;
      RXD            at 0 range 15 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      TXFIFO_CNT     at 0 range 19 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DTRN           at 0 range 29 .. 29;
      RTSN           at 0 range 30 .. 30;
      TXD            at 0 range 31 .. 31;
   end record;

   subtype CONF0_BIT_NUM_Field is HAL.UInt2;
   subtype CONF0_STOP_BIT_NUM_Field is HAL.UInt2;

   --  Configuration register 0
   type CONF0_Register is record
      --  This register is used to configure the parity check mode.
      PARITY         : Boolean := False;
      --  Set this bit to enable uart parity check.
      PARITY_EN      : Boolean := False;
      --  This register is used to set the length of data.
      BIT_NUM        : CONF0_BIT_NUM_Field := 16#3#;
      --  This register is used to set the length of stop bit.
      STOP_BIT_NUM   : CONF0_STOP_BIT_NUM_Field := 16#1#;
      --  Set this bit to enbale transmitter to send NULL when the process of
      --  sending data is done.
      TXD_BRK        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Set this bit to enable uart loopback test mode.
      LOOPBACK       : Boolean := False;
      --  Set this bit to enable flow control function for transmitter.
      TX_FLOW_EN     : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart rxd signal.
      RXD_INV        : Boolean := False;
      --  Set this bit to inverse the level value of uart txd signal.
      TXD_INV        : Boolean := False;
      --  Disable UART Rx data overflow detect.
      DIS_RX_DAT_OVF : Boolean := False;
      --  1'h1: Receiver stops storing data into FIFO when data is wrong. 1'h0:
      --  Receiver stores the data even if the received data is wrong.
      ERR_WR_MASK    : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  UART memory clock gate enable signal.
      MEM_CLK_EN     : Boolean := True;
      --  This register is used to configure the software rts signal which is
      --  used in software flow control.
      SW_RTS         : Boolean := False;
      --  Set this bit to reset the uart receive-FIFO.
      RXFIFO_RST     : Boolean := False;
      --  Set this bit to reset the uart transmit-FIFO.
      TXFIFO_RST     : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0_Register use record
      PARITY         at 0 range 0 .. 0;
      PARITY_EN      at 0 range 1 .. 1;
      BIT_NUM        at 0 range 2 .. 3;
      STOP_BIT_NUM   at 0 range 4 .. 5;
      TXD_BRK        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      LOOPBACK       at 0 range 12 .. 12;
      TX_FLOW_EN     at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      RXD_INV        at 0 range 15 .. 15;
      TXD_INV        at 0 range 16 .. 16;
      DIS_RX_DAT_OVF at 0 range 17 .. 17;
      ERR_WR_MASK    at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MEM_CLK_EN     at 0 range 20 .. 20;
      SW_RTS         at 0 range 21 .. 21;
      RXFIFO_RST     at 0 range 22 .. 22;
      TXFIFO_RST     at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CONF1_RXFIFO_FULL_THRHD_Field is HAL.UInt5;
   subtype CONF1_TXFIFO_EMPTY_THRHD_Field is HAL.UInt5;

   --  Configuration register 1
   type CONF1_Register is record
      --  unspecified
      Reserved_0_2       : HAL.UInt3 := 16#0#;
      --  It will produce rxfifo_full_int interrupt when receiver receives more
      --  data than this register value.
      RXFIFO_FULL_THRHD  : CONF1_RXFIFO_FULL_THRHD_Field := 16#C#;
      --  unspecified
      Reserved_8_10      : HAL.UInt3 := 16#0#;
      --  It will produce txfifo_empty_int interrupt when the data amount in
      --  Tx-FIFO is less than this register value.
      TXFIFO_EMPTY_THRHD : CONF1_TXFIFO_EMPTY_THRHD_Field := 16#C#;
      --  Set this bit to inverse the level value of uart cts signal.
      CTS_INV            : Boolean := False;
      --  Set this bit to inverse the level value of uart dsr signal.
      DSR_INV            : Boolean := False;
      --  Set this bit to inverse the level value of uart rts signal.
      RTS_INV            : Boolean := False;
      --  Set this bit to inverse the level value of uart dtr signal.
      DTR_INV            : Boolean := False;
      --  This register is used to configure the software dtr signal which is
      --  used in software flow control.
      SW_DTR             : Boolean := False;
      --  1'h1: Force clock on for register. 1'h0: Support clock only when
      --  application writes registers.
      CLK_EN             : Boolean := False;
      --  unspecified
      Reserved_22_31     : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF1_Register use record
      Reserved_0_2       at 0 range 0 .. 2;
      RXFIFO_FULL_THRHD  at 0 range 3 .. 7;
      Reserved_8_10      at 0 range 8 .. 10;
      TXFIFO_EMPTY_THRHD at 0 range 11 .. 15;
      CTS_INV            at 0 range 16 .. 16;
      DSR_INV            at 0 range 17 .. 17;
      RTS_INV            at 0 range 18 .. 18;
      DTR_INV            at 0 range 19 .. 19;
      SW_DTR             at 0 range 20 .. 20;
      CLK_EN             at 0 range 21 .. 21;
      Reserved_22_31     at 0 range 22 .. 31;
   end record;

   subtype HWFC_CONF_RX_FLOW_THRHD_Field is HAL.UInt5;

   --  Hardware flow-control configuration
   type HWFC_CONF_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#0#;
      --  This register is used to configure the maximum amount of data that
      --  can be received when hardware flow control works.
      RX_FLOW_THRHD : HWFC_CONF_RX_FLOW_THRHD_Field := 16#0#;
      --  This is the flow enable bit for UART receiver.
      RX_FLOW_EN    : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HWFC_CONF_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      RX_FLOW_THRHD at 0 range 3 .. 7;
      RX_FLOW_EN    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SLEEP_CONF0_WK_CHAR array element
   subtype SLEEP_CONF0_WK_CHAR_Element is HAL.UInt8;

   --  SLEEP_CONF0_WK_CHAR array
   type SLEEP_CONF0_WK_CHAR_Field_Array is array (1 .. 4)
     of SLEEP_CONF0_WK_CHAR_Element
     with Component_Size => 8, Size => 32;

   --  UART sleep configure register 0
   type SLEEP_CONF0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WK_CHAR as a value
            Val : HAL.UInt32;
         when True =>
            --  WK_CHAR as an array
            Arr : SLEEP_CONF0_WK_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLEEP_CONF0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype SLEEP_CONF1_WK_CHAR0_Field is HAL.UInt8;

   --  UART sleep configure register 1
   type SLEEP_CONF1_Register is record
      --  This register restores the specified char0 to wake up
      WK_CHAR0      : SLEEP_CONF1_WK_CHAR0_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLEEP_CONF1_Register use record
      WK_CHAR0      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SLEEP_CONF2_ACTIVE_THRESHOLD_Field is HAL.UInt10;
   subtype SLEEP_CONF2_RX_WAKE_UP_THRHD_Field is HAL.UInt5;
   subtype SLEEP_CONF2_WK_CHAR_NUM_Field is HAL.UInt3;
   subtype SLEEP_CONF2_WK_CHAR_MASK_Field is HAL.UInt5;
   subtype SLEEP_CONF2_WK_MODE_SEL_Field is HAL.UInt2;

   --  UART sleep configure register 2
   type SLEEP_CONF2_Register is record
      --  The uart is activated from light sleeping mode when the input rxd
      --  edge changes more times than this register value.
      ACTIVE_THRESHOLD : SLEEP_CONF2_ACTIVE_THRESHOLD_Field := 16#F0#;
      --  unspecified
      Reserved_10_12   : HAL.UInt3 := 16#0#;
      --  In wake up mode 1 this field is used to set the received data number
      --  threshold to wake up chip.
      RX_WAKE_UP_THRHD : SLEEP_CONF2_RX_WAKE_UP_THRHD_Field := 16#1#;
      --  This register is used to select number of wake up char.
      WK_CHAR_NUM      : SLEEP_CONF2_WK_CHAR_NUM_Field := 16#5#;
      --  This register is used to mask wake up char.
      WK_CHAR_MASK     : SLEEP_CONF2_WK_CHAR_MASK_Field := 16#0#;
      --  This register is used to select wake up mode. 0: RXD toggling to wake
      --  up. 1: received data number larger than
      WK_MODE_SEL      : SLEEP_CONF2_WK_MODE_SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLEEP_CONF2_Register use record
      ACTIVE_THRESHOLD at 0 range 0 .. 9;
      Reserved_10_12   at 0 range 10 .. 12;
      RX_WAKE_UP_THRHD at 0 range 13 .. 17;
      WK_CHAR_NUM      at 0 range 18 .. 20;
      WK_CHAR_MASK     at 0 range 21 .. 25;
      WK_MODE_SEL      at 0 range 26 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype SWFC_CONF0_XON_CHAR_Field is HAL.UInt8;
   subtype SWFC_CONF0_XOFF_CHAR_Field is HAL.UInt8;

   --  Software flow-control character configuration
   type SWFC_CONF0_Register is record
      --  This register stores the Xon flow control char.
      XON_CHAR            : SWFC_CONF0_XON_CHAR_Field := 16#11#;
      --  This register stores the Xoff flow control char.
      XOFF_CHAR           : SWFC_CONF0_XOFF_CHAR_Field := 16#13#;
      --  In software flow control mode, UART Tx is disabled once UART Rx
      --  receives XOFF. In this status, UART Tx can not transmit XOFF even the
      --  received data number is larger than UART_XOFF_THRESHOLD. Set this bit
      --  to enable UART Tx can transmit XON/XOFF when UART Tx is disabled.
      XON_XOFF_STILL_SEND : Boolean := False;
      --  Set this bit to enable software flow control. It is used with
      --  register sw_xon or sw_xoff.
      SW_FLOW_CON_EN      : Boolean := False;
      --  Set this bit to remove flow control char from the received data.
      XONOFF_DEL          : Boolean := False;
      --  Set this bit to enable the transmitter to go on sending data.
      FORCE_XON           : Boolean := False;
      --  Set this bit to stop the transmitter from sending data.
      FORCE_XOFF          : Boolean := False;
      --  Set this bit to send Xon char. It is cleared by hardware
      --  automatically.
      SEND_XON            : Boolean := False;
      --  Set this bit to send Xoff char. It is cleared by hardware
      --  automatically.
      SEND_XOFF           : Boolean := False;
      --  unspecified
      Reserved_23_31      : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWFC_CONF0_Register use record
      XON_CHAR            at 0 range 0 .. 7;
      XOFF_CHAR           at 0 range 8 .. 15;
      XON_XOFF_STILL_SEND at 0 range 16 .. 16;
      SW_FLOW_CON_EN      at 0 range 17 .. 17;
      XONOFF_DEL          at 0 range 18 .. 18;
      FORCE_XON           at 0 range 19 .. 19;
      FORCE_XOFF          at 0 range 20 .. 20;
      SEND_XON            at 0 range 21 .. 21;
      SEND_XOFF           at 0 range 22 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   subtype SWFC_CONF1_XON_THRESHOLD_Field is HAL.UInt5;
   subtype SWFC_CONF1_XOFF_THRESHOLD_Field is HAL.UInt5;

   --  Software flow-control character configuration
   type SWFC_CONF1_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  When the data amount in Rx-FIFO is less than this register value with
      --  uart_sw_flow_con_en set to 1 it will send a Xon char.
      XON_THRESHOLD  : SWFC_CONF1_XON_THRESHOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_10  : HAL.UInt3 := 16#0#;
      --  When the data amount in Rx-FIFO is more than this register value with
      --  uart_sw_flow_con_en set to 1 it will send a Xoff char.
      XOFF_THRESHOLD : SWFC_CONF1_XOFF_THRESHOLD_Field := 16#C#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWFC_CONF1_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      XON_THRESHOLD  at 0 range 3 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      XOFF_THRESHOLD at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXBRK_CONF_TX_BRK_NUM_Field is HAL.UInt8;

   --  Tx Break character configuration
   type TXBRK_CONF_Register is record
      --  This register is used to configure the number of 0 to be sent after
      --  the process of sending data is done. It is active when txd_brk is set
      --  to 1.
      TX_BRK_NUM    : TXBRK_CONF_TX_BRK_NUM_Field := 16#A#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXBRK_CONF_Register use record
      TX_BRK_NUM    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IDLE_CONF_RX_IDLE_THRHD_Field is HAL.UInt10;
   subtype IDLE_CONF_TX_IDLE_NUM_Field is HAL.UInt10;

   --  Frame-end idle configuration
   type IDLE_CONF_Register is record
      --  It will produce frame end signal when receiver takes more time to
      --  receive one byte data than this register value.
      RX_IDLE_THRHD  : IDLE_CONF_RX_IDLE_THRHD_Field := 16#100#;
      --  This register is used to configure the duration time between
      --  transfers.
      TX_IDLE_NUM    : IDLE_CONF_TX_IDLE_NUM_Field := 16#100#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDLE_CONF_Register use record
      RX_IDLE_THRHD  at 0 range 0 .. 9;
      TX_IDLE_NUM    at 0 range 10 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RS485 mode configuration
   type RS485_CONF_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Set this bit to delay the stop bit by 1 bit.
      DL0_EN        : Boolean := False;
      --  Set this bit to delay the stop bit by 1 bit.
      DL1_EN        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485_CONF_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DL0_EN        at 0 range 1 .. 1;
      DL1_EN        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype AT_CMD_PRECNT_PRE_IDLE_NUM_Field is HAL.UInt16;

   --  Pre-sequence timing configuration
   type AT_CMD_PRECNT_Register is record
      --  This register is used to configure the idle duration time before the
      --  first at_cmd is received by receiver.
      PRE_IDLE_NUM   : AT_CMD_PRECNT_PRE_IDLE_NUM_Field := 16#901#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_PRECNT_Register use record
      PRE_IDLE_NUM   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AT_CMD_POSTCNT_POST_IDLE_NUM_Field is HAL.UInt16;

   --  Post-sequence timing configuration
   type AT_CMD_POSTCNT_Register is record
      --  This register is used to configure the duration time between the last
      --  at_cmd and the next data.
      POST_IDLE_NUM  : AT_CMD_POSTCNT_POST_IDLE_NUM_Field := 16#901#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_POSTCNT_Register use record
      POST_IDLE_NUM  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AT_CMD_GAPTOUT_RX_GAP_TOUT_Field is HAL.UInt16;

   --  Timeout configuration
   type AT_CMD_GAPTOUT_Register is record
      --  This register is used to configure the duration time between the
      --  at_cmd chars.
      RX_GAP_TOUT    : AT_CMD_GAPTOUT_RX_GAP_TOUT_Field := 16#B#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_GAPTOUT_Register use record
      RX_GAP_TOUT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AT_CMD_CHAR_AT_CMD_CHAR_Field is HAL.UInt8;
   subtype AT_CMD_CHAR_CHAR_NUM_Field is HAL.UInt8;

   --  AT escape sequence detection configuration
   type AT_CMD_CHAR_Register is record
      --  This register is used to configure the content of at_cmd char.
      AT_CMD_CHAR    : AT_CMD_CHAR_AT_CMD_CHAR_Field := 16#2B#;
      --  This register is used to configure the num of continuous at_cmd chars
      --  received by receiver.
      CHAR_NUM       : AT_CMD_CHAR_CHAR_NUM_Field := 16#3#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_CHAR_Register use record
      AT_CMD_CHAR    at 0 range 0 .. 7;
      CHAR_NUM       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  UART memory power configuration
   type MEM_CONF_Register is record
      --  unspecified
      Reserved_0_24  : HAL.UInt25 := 16#0#;
      --  Set this bit to force power down UART memory.
      MEM_FORCE_PD   : Boolean := False;
      --  Set this bit to force power up UART memory.
      MEM_FORCE_PU   : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CONF_Register use record
      Reserved_0_24  at 0 range 0 .. 24;
      MEM_FORCE_PD   at 0 range 25 .. 25;
      MEM_FORCE_PU   at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TOUT_CONF_RX_TOUT_THRHD_Field is HAL.UInt10;

   --  UART threshold and allocation configuration
   type TOUT_CONF_Register is record
      --  This is the enble bit for uart receiver's timeout function.
      RX_TOUT_EN       : Boolean := False;
      --  Set this bit to stop accumulating idle_cnt when hardware flow control
      --  works.
      RX_TOUT_FLOW_DIS : Boolean := False;
      --  This register is used to configure the threshold time that receiver
      --  takes to receive one byte. The rxfifo_tout_int interrupt will be
      --  trigger when the receiver takes more time to receive one byte with
      --  rx_tout_en set to 1.
      RX_TOUT_THRHD    : TOUT_CONF_RX_TOUT_THRHD_Field := 16#A#;
      --  unspecified
      Reserved_12_31   : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUT_CONF_Register use record
      RX_TOUT_EN       at 0 range 0 .. 0;
      RX_TOUT_FLOW_DIS at 0 range 1 .. 1;
      RX_TOUT_THRHD    at 0 range 2 .. 11;
      Reserved_12_31   at 0 range 12 .. 31;
   end record;

   subtype MEM_TX_STATUS_TX_SRAM_WADDR_Field is HAL.UInt5;
   subtype MEM_TX_STATUS_TX_SRAM_RADDR_Field is HAL.UInt5;

   --  Tx-SRAM write and read offset address.
   type MEM_TX_STATUS_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. This register stores the offset write address in Tx-SRAM.
      TX_SRAM_WADDR  : MEM_TX_STATUS_TX_SRAM_WADDR_Field;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. This register stores the offset read address in Tx-SRAM.
      TX_SRAM_RADDR  : MEM_TX_STATUS_TX_SRAM_RADDR_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_TX_STATUS_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TX_SRAM_WADDR  at 0 range 3 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      TX_SRAM_RADDR  at 0 range 12 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype MEM_RX_STATUS_RX_SRAM_RADDR_Field is HAL.UInt5;
   subtype MEM_RX_STATUS_RX_SRAM_WADDR_Field is HAL.UInt5;

   --  Rx-SRAM write and read offset address.
   type MEM_RX_STATUS_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. This register stores the offset read address in RX-SRAM.
      RX_SRAM_RADDR  : MEM_RX_STATUS_RX_SRAM_RADDR_Field;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. This register stores the offset write address in Rx-SRAM.
      RX_SRAM_WADDR  : MEM_RX_STATUS_RX_SRAM_WADDR_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_RX_STATUS_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      RX_SRAM_RADDR  at 0 range 3 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      RX_SRAM_WADDR  at 0 range 12 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype FSM_STATUS_ST_URX_OUT_Field is HAL.UInt4;
   subtype FSM_STATUS_ST_UTX_OUT_Field is HAL.UInt4;

   --  UART transmit and receive status.
   type FSM_STATUS_Register is record
      --  Read-only. This is the status register of receiver.
      ST_URX_OUT    : FSM_STATUS_ST_URX_OUT_Field;
      --  Read-only. This is the status register of transmitter.
      ST_UTX_OUT    : FSM_STATUS_ST_UTX_OUT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSM_STATUS_Register use record
      ST_URX_OUT    at 0 range 0 .. 3;
      ST_UTX_OUT    at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CLK_CONF_SCLK_DIV_B_Field is HAL.UInt6;
   subtype CLK_CONF_SCLK_DIV_A_Field is HAL.UInt6;
   subtype CLK_CONF_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype CLK_CONF_SCLK_SEL_Field is HAL.UInt2;

   --  UART core clock configuration
   type CLK_CONF_Register is record
      --  The denominator of the frequency divider factor.
      SCLK_DIV_B     : CLK_CONF_SCLK_DIV_B_Field := 16#0#;
      --  The numerator of the frequency divider factor.
      SCLK_DIV_A     : CLK_CONF_SCLK_DIV_A_Field := 16#0#;
      --  The integral part of the frequency divider factor.
      SCLK_DIV_NUM   : CLK_CONF_SCLK_DIV_NUM_Field := 16#1#;
      --  UART clock source select. 1: 80Mhz. 2: 8Mhz. 3: XTAL.
      SCLK_SEL       : CLK_CONF_SCLK_SEL_Field := 16#3#;
      --  Set this bit to enable UART Tx/Rx clock.
      SCLK_EN        : Boolean := True;
      --  Write 1 then write 0 to this bit to reset UART Tx/Rx.
      RST_CORE       : Boolean := False;
      --  Set this bit to enable UART Tx clock.
      TX_SCLK_EN     : Boolean := True;
      --  Set this bit to enable UART Rx clock.
      RX_SCLK_EN     : Boolean := True;
      --  Write 1 then write 0 to this bit to reset UART Tx.
      TX_RST_CORE    : Boolean := False;
      --  Write 1 then write 0 to this bit to reset UART Rx.
      RX_RST_CORE    : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      SCLK_DIV_B     at 0 range 0 .. 5;
      SCLK_DIV_A     at 0 range 6 .. 11;
      SCLK_DIV_NUM   at 0 range 12 .. 19;
      SCLK_SEL       at 0 range 20 .. 21;
      SCLK_EN        at 0 range 22 .. 22;
      RST_CORE       at 0 range 23 .. 23;
      TX_SCLK_EN     at 0 range 24 .. 24;
      RX_SCLK_EN     at 0 range 25 .. 25;
      TX_RST_CORE    at 0 range 26 .. 26;
      RX_RST_CORE    at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  UART AFIFO Status
   type AFIFO_STATUS_Register is record
      --  Read-only. Full signal of APB TX AFIFO.
      TX_AFIFO_FULL  : Boolean;
      --  Read-only. Empty signal of APB TX AFIFO.
      TX_AFIFO_EMPTY : Boolean;
      --  Read-only. Full signal of APB RX AFIFO.
      RX_AFIFO_FULL  : Boolean;
      --  Read-only. Empty signal of APB RX AFIFO.
      RX_AFIFO_EMPTY : Boolean;
      --  unspecified
      Reserved_4_31  : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFIFO_STATUS_Register use record
      TX_AFIFO_FULL  at 0 range 0 .. 0;
      TX_AFIFO_EMPTY at 0 range 1 .. 1;
      RX_AFIFO_FULL  at 0 range 2 .. 2;
      RX_AFIFO_EMPTY at 0 range 3 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   --  UART Registers Configuration Update register
   type REG_UPDATE_Register is record
      --  Software write 1 would synchronize registers into UART Core clock
      --  domain and would be cleared by hardware after synchronization is
      --  done.
      REG_UPDATE    : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REG_UPDATE_Register use record
      REG_UPDATE    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power UART (Universal Asynchronous Receiver-Transmitter) Controller
   type LP_UART_Peripheral is record
      --  FIFO data register
      FIFO           : aliased FIFO_Register;
      --  Raw interrupt status
      INT_RAW        : aliased INT_RAW_Register;
      --  Masked interrupt status
      INT_ST         : aliased INT_ST_Register;
      --  Interrupt enable bits
      INT_ENA        : aliased INT_ENA_Register;
      --  Interrupt clear bits
      INT_CLR        : aliased INT_CLR_Register;
      --  Clock divider configuration
      CLKDIV         : aliased CLKDIV_Register;
      --  Rx Filter configuration
      RX_FILT        : aliased RX_FILT_Register;
      --  UART status register
      STATUS         : aliased STATUS_Register;
      --  Configuration register 0
      CONF0          : aliased CONF0_Register;
      --  Configuration register 1
      CONF1          : aliased CONF1_Register;
      --  Hardware flow-control configuration
      HWFC_CONF      : aliased HWFC_CONF_Register;
      --  UART sleep configure register 0
      SLEEP_CONF0    : aliased SLEEP_CONF0_Register;
      --  UART sleep configure register 1
      SLEEP_CONF1    : aliased SLEEP_CONF1_Register;
      --  UART sleep configure register 2
      SLEEP_CONF2    : aliased SLEEP_CONF2_Register;
      --  Software flow-control character configuration
      SWFC_CONF0     : aliased SWFC_CONF0_Register;
      --  Software flow-control character configuration
      SWFC_CONF1     : aliased SWFC_CONF1_Register;
      --  Tx Break character configuration
      TXBRK_CONF     : aliased TXBRK_CONF_Register;
      --  Frame-end idle configuration
      IDLE_CONF      : aliased IDLE_CONF_Register;
      --  RS485 mode configuration
      RS485_CONF     : aliased RS485_CONF_Register;
      --  Pre-sequence timing configuration
      AT_CMD_PRECNT  : aliased AT_CMD_PRECNT_Register;
      --  Post-sequence timing configuration
      AT_CMD_POSTCNT : aliased AT_CMD_POSTCNT_Register;
      --  Timeout configuration
      AT_CMD_GAPTOUT : aliased AT_CMD_GAPTOUT_Register;
      --  AT escape sequence detection configuration
      AT_CMD_CHAR    : aliased AT_CMD_CHAR_Register;
      --  UART memory power configuration
      MEM_CONF       : aliased MEM_CONF_Register;
      --  UART threshold and allocation configuration
      TOUT_CONF      : aliased TOUT_CONF_Register;
      --  Tx-SRAM write and read offset address.
      MEM_TX_STATUS  : aliased MEM_TX_STATUS_Register;
      --  Rx-SRAM write and read offset address.
      MEM_RX_STATUS  : aliased MEM_RX_STATUS_Register;
      --  UART transmit and receive status.
      FSM_STATUS     : aliased FSM_STATUS_Register;
      --  UART core clock configuration
      CLK_CONF       : aliased CLK_CONF_Register;
      --  UART Version register
      DATE           : aliased HAL.UInt32;
      --  UART AFIFO Status
      AFIFO_STATUS   : aliased AFIFO_STATUS_Register;
      --  UART Registers Configuration Update register
      REG_UPDATE     : aliased REG_UPDATE_Register;
      --  UART ID register
      ID             : aliased HAL.UInt32;
   end record
     with Volatile;

   for LP_UART_Peripheral use record
      FIFO           at 16#0# range 0 .. 31;
      INT_RAW        at 16#4# range 0 .. 31;
      INT_ST         at 16#8# range 0 .. 31;
      INT_ENA        at 16#C# range 0 .. 31;
      INT_CLR        at 16#10# range 0 .. 31;
      CLKDIV         at 16#14# range 0 .. 31;
      RX_FILT        at 16#18# range 0 .. 31;
      STATUS         at 16#1C# range 0 .. 31;
      CONF0          at 16#20# range 0 .. 31;
      CONF1          at 16#24# range 0 .. 31;
      HWFC_CONF      at 16#2C# range 0 .. 31;
      SLEEP_CONF0    at 16#30# range 0 .. 31;
      SLEEP_CONF1    at 16#34# range 0 .. 31;
      SLEEP_CONF2    at 16#38# range 0 .. 31;
      SWFC_CONF0     at 16#3C# range 0 .. 31;
      SWFC_CONF1     at 16#40# range 0 .. 31;
      TXBRK_CONF     at 16#44# range 0 .. 31;
      IDLE_CONF      at 16#48# range 0 .. 31;
      RS485_CONF     at 16#4C# range 0 .. 31;
      AT_CMD_PRECNT  at 16#50# range 0 .. 31;
      AT_CMD_POSTCNT at 16#54# range 0 .. 31;
      AT_CMD_GAPTOUT at 16#58# range 0 .. 31;
      AT_CMD_CHAR    at 16#5C# range 0 .. 31;
      MEM_CONF       at 16#60# range 0 .. 31;
      TOUT_CONF      at 16#64# range 0 .. 31;
      MEM_TX_STATUS  at 16#68# range 0 .. 31;
      MEM_RX_STATUS  at 16#6C# range 0 .. 31;
      FSM_STATUS     at 16#70# range 0 .. 31;
      CLK_CONF       at 16#88# range 0 .. 31;
      DATE           at 16#8C# range 0 .. 31;
      AFIFO_STATUS   at 16#90# range 0 .. 31;
      REG_UPDATE     at 16#98# range 0 .. 31;
      ID             at 16#9C# range 0 .. 31;
   end record;

   --  Low-power UART (Universal Asynchronous Receiver-Transmitter) Controller
   LP_UART_Periph : aliased LP_UART_Peripheral
     with Import, Address => LP_UART_Base;

end ESP32_C6_SVD.LP_UART;
