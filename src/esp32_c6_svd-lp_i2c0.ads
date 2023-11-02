pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_I2C0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype I2C_SCL_LOW_PERIOD_I2C_SCL_LOW_PERIOD_Field is HAL.UInt9;

   --  Configures the low level width of the SCL Clock
   type I2C_SCL_LOW_PERIOD_Register is record
      --  This register is used to configure for how long SCL remains low in
      --  master mode, in I2C module clock cycles.
      I2C_SCL_LOW_PERIOD : I2C_SCL_LOW_PERIOD_I2C_SCL_LOW_PERIOD_Field :=
                            16#0#;
      --  unspecified
      Reserved_9_31      : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_LOW_PERIOD_Register use record
      I2C_SCL_LOW_PERIOD at 0 range 0 .. 8;
      Reserved_9_31      at 0 range 9 .. 31;
   end record;

   --  Transmission setting
   type I2C_CTR_Register is record
      --  1: direct output, 0: open drain output.
      I2C_SDA_FORCE_OUT     : Boolean := False;
      --  1: direct output, 0: open drain output.
      I2C_SCL_FORCE_OUT     : Boolean := False;
      --  This register is used to select the sample mode. 1: sample SDA data
      --  on the SCL low level. 0: sample SDA data on the SCL high level.
      I2C_SAMPLE_SCL_LEVEL  : Boolean := False;
      --  This register is used to configure the ACK value that need to sent by
      --  master when the rx_fifo_cnt has reached the threshold.
      I2C_RX_FULL_ACK_LEVEL : Boolean := True;
      --  unspecified
      Reserved_4_4          : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to start sending the data in txfifo.
      I2C_TRANS_START       : Boolean := False;
      --  This bit is used to control the sending mode for data needing to be
      --  sent. 1: send data from the least significant bit, 0: send data from
      --  the most significant bit.
      I2C_TX_LSB_FIRST      : Boolean := False;
      --  This bit is used to control the storage mode for received data. 1:
      --  receive data from the least significant bit, 0: receive data from the
      --  most significant bit.
      I2C_RX_LSB_FIRST      : Boolean := False;
      --  Reserved
      I2C_CLK_EN            : Boolean := False;
      --  This is the enable bit for arbitration_lost.
      I2C_ARBITRATION_EN    : Boolean := True;
      --  Write-only. This register is used to reset the scl FMS.
      I2C_FSM_RST           : Boolean := False;
      --  Write-only. synchronization bit
      I2C_CONF_UPGATE       : Boolean := False;
      --  unspecified
      Reserved_12_31        : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_CTR_Register use record
      I2C_SDA_FORCE_OUT     at 0 range 0 .. 0;
      I2C_SCL_FORCE_OUT     at 0 range 1 .. 1;
      I2C_SAMPLE_SCL_LEVEL  at 0 range 2 .. 2;
      I2C_RX_FULL_ACK_LEVEL at 0 range 3 .. 3;
      Reserved_4_4          at 0 range 4 .. 4;
      I2C_TRANS_START       at 0 range 5 .. 5;
      I2C_TX_LSB_FIRST      at 0 range 6 .. 6;
      I2C_RX_LSB_FIRST      at 0 range 7 .. 7;
      I2C_CLK_EN            at 0 range 8 .. 8;
      I2C_ARBITRATION_EN    at 0 range 9 .. 9;
      I2C_FSM_RST           at 0 range 10 .. 10;
      I2C_CONF_UPGATE       at 0 range 11 .. 11;
      Reserved_12_31        at 0 range 12 .. 31;
   end record;

   subtype I2C_SR_I2C_RXFIFO_CNT_Field is HAL.UInt5;
   subtype I2C_SR_I2C_TXFIFO_CNT_Field is HAL.UInt5;
   subtype I2C_SR_I2C_SCL_MAIN_STATE_LAST_Field is HAL.UInt3;
   subtype I2C_SR_I2C_SCL_STATE_LAST_Field is HAL.UInt3;

   --  Describe I2C work status.
   type I2C_SR_Register is record
      --  Read-only. The received ACK value in master mode or slave mode. 0:
      --  ACK, 1: NACK.
      I2C_RESP_REC            : Boolean;
      --  unspecified
      Reserved_1_2            : HAL.UInt2;
      --  Read-only. When the I2C controller loses control of SCL line, this
      --  register changes to 1.
      I2C_ARB_LOST            : Boolean;
      --  Read-only. 1: the I2C bus is busy transferring data, 0: the I2C bus
      --  is in idle state.
      I2C_BUS_BUSY            : Boolean;
      --  unspecified
      Reserved_5_7            : HAL.UInt3;
      --  Read-only. This field represents the amount of data needed to be
      --  sent.
      I2C_RXFIFO_CNT          : I2C_SR_I2C_RXFIFO_CNT_Field;
      --  unspecified
      Reserved_13_17          : HAL.UInt5;
      --  Read-only. This field stores the amount of received data in RAM.
      I2C_TXFIFO_CNT          : I2C_SR_I2C_TXFIFO_CNT_Field;
      --  unspecified
      Reserved_23_23          : HAL.Bit;
      --  Read-only. This field indicates the states of the I2C module state
      --  machine. 0: Idle, 1: Address shift, 2: ACK address, 3: Rx data, 4: Tx
      --  data, 5: Send ACK, 6: Wait ACK
      I2C_SCL_MAIN_STATE_LAST : I2C_SR_I2C_SCL_MAIN_STATE_LAST_Field;
      --  unspecified
      Reserved_27_27          : HAL.Bit;
      --  Read-only. This field indicates the states of the state machine used
      --  to produce SCL. 0: Idle, 1: Start, 2: Negative edge, 3: Low, 4:
      --  Positive edge, 5: High, 6: Stop
      I2C_SCL_STATE_LAST      : I2C_SR_I2C_SCL_STATE_LAST_Field;
      --  unspecified
      Reserved_31_31          : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SR_Register use record
      I2C_RESP_REC            at 0 range 0 .. 0;
      Reserved_1_2            at 0 range 1 .. 2;
      I2C_ARB_LOST            at 0 range 3 .. 3;
      I2C_BUS_BUSY            at 0 range 4 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
      I2C_RXFIFO_CNT          at 0 range 8 .. 12;
      Reserved_13_17          at 0 range 13 .. 17;
      I2C_TXFIFO_CNT          at 0 range 18 .. 22;
      Reserved_23_23          at 0 range 23 .. 23;
      I2C_SCL_MAIN_STATE_LAST at 0 range 24 .. 26;
      Reserved_27_27          at 0 range 27 .. 27;
      I2C_SCL_STATE_LAST      at 0 range 28 .. 30;
      Reserved_31_31          at 0 range 31 .. 31;
   end record;

   subtype I2C_TO_I2C_TIME_OUT_VALUE_Field is HAL.UInt5;

   --  Setting time out control for receiving data.
   type I2C_TO_Register is record
      --  This register is used to configure the timeout for receiving a data
      --  bit in APB clock cycles.
      I2C_TIME_OUT_VALUE : I2C_TO_I2C_TIME_OUT_VALUE_Field := 16#10#;
      --  This is the enable bit for time out control.
      I2C_TIME_OUT_EN    : Boolean := False;
      --  unspecified
      Reserved_6_31      : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_TO_Register use record
      I2C_TIME_OUT_VALUE at 0 range 0 .. 4;
      I2C_TIME_OUT_EN    at 0 range 5 .. 5;
      Reserved_6_31      at 0 range 6 .. 31;
   end record;

   subtype I2C_FIFO_ST_I2C_RXFIFO_RADDR_Field is HAL.UInt4;
   subtype I2C_FIFO_ST_I2C_RXFIFO_WADDR_Field is HAL.UInt4;
   subtype I2C_FIFO_ST_I2C_TXFIFO_RADDR_Field is HAL.UInt4;
   subtype I2C_FIFO_ST_I2C_TXFIFO_WADDR_Field is HAL.UInt4;

   --  FIFO status register.
   type I2C_FIFO_ST_Register is record
      --  Read-only. This is the offset address of the APB reading from rxfifo
      I2C_RXFIFO_RADDR : I2C_FIFO_ST_I2C_RXFIFO_RADDR_Field;
      --  unspecified
      Reserved_4_4     : HAL.Bit;
      --  Read-only. This is the offset address of i2c module receiving data
      --  and writing to rxfifo.
      I2C_RXFIFO_WADDR : I2C_FIFO_ST_I2C_RXFIFO_WADDR_Field;
      --  unspecified
      Reserved_9_9     : HAL.Bit;
      --  Read-only. This is the offset address of i2c module reading from
      --  txfifo.
      I2C_TXFIFO_RADDR : I2C_FIFO_ST_I2C_TXFIFO_RADDR_Field;
      --  unspecified
      Reserved_14_14   : HAL.Bit;
      --  Read-only. This is the offset address of APB bus writing to txfifo.
      I2C_TXFIFO_WADDR : I2C_FIFO_ST_I2C_TXFIFO_WADDR_Field;
      --  unspecified
      Reserved_19_31   : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_FIFO_ST_Register use record
      I2C_RXFIFO_RADDR at 0 range 0 .. 3;
      Reserved_4_4     at 0 range 4 .. 4;
      I2C_RXFIFO_WADDR at 0 range 5 .. 8;
      Reserved_9_9     at 0 range 9 .. 9;
      I2C_TXFIFO_RADDR at 0 range 10 .. 13;
      Reserved_14_14   at 0 range 14 .. 14;
      I2C_TXFIFO_WADDR at 0 range 15 .. 18;
      Reserved_19_31   at 0 range 19 .. 31;
   end record;

   subtype FIFO_CONF_RXFIFO_WM_THRHD_Field is HAL.UInt4;
   subtype FIFO_CONF_TXFIFO_WM_THRHD_Field is HAL.UInt4;

   --  FIFO configuration register.
   type FIFO_CONF_Register is record
      --  The water mark threshold of rx FIFO in nonfifo access mode. When
      --  reg_reg_fifo_prt_en is 1 and rx FIFO counter is bigger than
      --  reg_rxfifo_wm_thrhd[3:0], reg_rxfifo_wm_int_raw bit will be valid.
      RXFIFO_WM_THRHD : FIFO_CONF_RXFIFO_WM_THRHD_Field := 16#6#;
      --  unspecified
      Reserved_4_4    : HAL.Bit := 16#0#;
      --  The water mark threshold of tx FIFO in nonfifo access mode. When
      --  reg_reg_fifo_prt_en is 1 and tx FIFO counter is smaller than
      --  reg_txfifo_wm_thrhd[3:0], reg_txfifo_wm_int_raw bit will be valid.
      TXFIFO_WM_THRHD : FIFO_CONF_TXFIFO_WM_THRHD_Field := 16#2#;
      --  unspecified
      Reserved_9_9    : HAL.Bit := 16#0#;
      --  Set this bit to enable APB nonfifo access.
      NONFIFO_EN      : Boolean := False;
      --  unspecified
      Reserved_11_11  : HAL.Bit := 16#0#;
      --  Set this bit to reset rx-fifo.
      RX_FIFO_RST     : Boolean := False;
      --  Set this bit to reset tx-fifo.
      TX_FIFO_RST     : Boolean := False;
      --  The control enable bit of FIFO pointer in non-fifo access mode. This
      --  bit controls the valid bits and the interrupts of tx/rx_fifo
      --  overflow, underflow, full and empty.
      FIFO_PRT_EN     : Boolean := True;
      --  unspecified
      Reserved_15_31  : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_CONF_Register use record
      RXFIFO_WM_THRHD at 0 range 0 .. 3;
      Reserved_4_4    at 0 range 4 .. 4;
      TXFIFO_WM_THRHD at 0 range 5 .. 8;
      Reserved_9_9    at 0 range 9 .. 9;
      NONFIFO_EN      at 0 range 10 .. 10;
      Reserved_11_11  at 0 range 11 .. 11;
      RX_FIFO_RST     at 0 range 12 .. 12;
      TX_FIFO_RST     at 0 range 13 .. 13;
      FIFO_PRT_EN     at 0 range 14 .. 14;
      Reserved_15_31  at 0 range 15 .. 31;
   end record;

   subtype I2C_DATA_I2C_FIFO_RDATA_Field is HAL.UInt8;

   --  Rx FIFO read data.
   type I2C_DATA_Register is record
      --  Read-only. The value of rx FIFO read data.
      I2C_FIFO_RDATA : I2C_DATA_I2C_FIFO_RDATA_Field;
      --  unspecified
      Reserved_8_31  : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_DATA_Register use record
      I2C_FIFO_RDATA at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Raw interrupt status
   type I2C_INT_RAW_Register is record
      --  Read-only. The raw interrupt bit for I2C_RXFIFO_WM_INT interrupt.
      I2C_RXFIFO_WM_INT_RAW        : Boolean;
      --  Read-only. The raw interrupt bit for I2C_TXFIFO_WM_INT interrupt.
      I2C_TXFIFO_WM_INT_RAW        : Boolean;
      --  Read-only. The raw interrupt bit for I2C_RXFIFO_OVF_INT interrupt.
      I2C_RXFIFO_OVF_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_END_DETECT_INT
      --  interrupt.
      I2C_END_DETECT_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_END_DETECT_INT
      --  interrupt.
      I2C_BYTE_TRANS_DONE_INT_RAW  : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_ARBITRATION_LOST_INT
      --  interrupt.
      I2C_ARBITRATION_LOST_INT_RAW : Boolean;
      --  Read-only. The raw interrupt bit for I2C_TRANS_COMPLETE_INT
      --  interrupt.
      I2C_MST_TXFIFO_UDF_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_TRANS_COMPLETE_INT
      --  interrupt.
      I2C_TRANS_COMPLETE_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_TIME_OUT_INT interrupt.
      I2C_TIME_OUT_INT_RAW         : Boolean;
      --  Read-only. The raw interrupt bit for the I2C_TRANS_START_INT
      --  interrupt.
      I2C_TRANS_START_INT_RAW      : Boolean;
      --  Read-only. The raw interrupt bit for I2C_SLAVE_STRETCH_INT interrupt.
      I2C_NACK_INT_RAW             : Boolean;
      --  Read-only. The raw interrupt bit for I2C_TXFIFO_OVF_INT interrupt.
      I2C_TXFIFO_OVF_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit for I2C_RXFIFO_UDF_INT interrupt.
      I2C_RXFIFO_UDF_INT_RAW       : Boolean;
      --  Read-only. The raw interrupt bit for I2C_SCL_ST_TO_INT interrupt.
      I2C_SCL_ST_TO_INT_RAW        : Boolean;
      --  Read-only. The raw interrupt bit for I2C_SCL_MAIN_ST_TO_INT
      --  interrupt.
      I2C_SCL_MAIN_ST_TO_INT_RAW   : Boolean;
      --  Read-only. The raw interrupt bit for I2C_DET_START_INT interrupt.
      I2C_DET_START_INT_RAW        : Boolean;
      --  unspecified
      Reserved_16_31               : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_INT_RAW_Register use record
      I2C_RXFIFO_WM_INT_RAW        at 0 range 0 .. 0;
      I2C_TXFIFO_WM_INT_RAW        at 0 range 1 .. 1;
      I2C_RXFIFO_OVF_INT_RAW       at 0 range 2 .. 2;
      I2C_END_DETECT_INT_RAW       at 0 range 3 .. 3;
      I2C_BYTE_TRANS_DONE_INT_RAW  at 0 range 4 .. 4;
      I2C_ARBITRATION_LOST_INT_RAW at 0 range 5 .. 5;
      I2C_MST_TXFIFO_UDF_INT_RAW   at 0 range 6 .. 6;
      I2C_TRANS_COMPLETE_INT_RAW   at 0 range 7 .. 7;
      I2C_TIME_OUT_INT_RAW         at 0 range 8 .. 8;
      I2C_TRANS_START_INT_RAW      at 0 range 9 .. 9;
      I2C_NACK_INT_RAW             at 0 range 10 .. 10;
      I2C_TXFIFO_OVF_INT_RAW       at 0 range 11 .. 11;
      I2C_RXFIFO_UDF_INT_RAW       at 0 range 12 .. 12;
      I2C_SCL_ST_TO_INT_RAW        at 0 range 13 .. 13;
      I2C_SCL_MAIN_ST_TO_INT_RAW   at 0 range 14 .. 14;
      I2C_DET_START_INT_RAW        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   --  Interrupt clear bits
   type I2C_INT_CLR_Register is record
      --  Write-only. Set this bit to clear I2C_RXFIFO_WM_INT interrupt.
      I2C_RXFIFO_WM_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear I2C_TXFIFO_WM_INT interrupt.
      I2C_TXFIFO_WM_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear I2C_RXFIFO_OVF_INT interrupt.
      I2C_RXFIFO_OVF_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_END_DETECT_INT interrupt.
      I2C_END_DETECT_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_END_DETECT_INT interrupt.
      I2C_BYTE_TRANS_DONE_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_ARBITRATION_LOST_INT
      --  interrupt.
      I2C_ARBITRATION_LOST_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear I2C_TRANS_COMPLETE_INT interrupt.
      I2C_MST_TXFIFO_UDF_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_TRANS_COMPLETE_INT
      --  interrupt.
      I2C_TRANS_COMPLETE_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_TIME_OUT_INT interrupt.
      I2C_TIME_OUT_INT_CLR         : Boolean := False;
      --  Write-only. Set this bit to clear the I2C_TRANS_START_INT interrupt.
      I2C_TRANS_START_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear I2C_SLAVE_STRETCH_INT interrupt.
      I2C_NACK_INT_CLR             : Boolean := False;
      --  Write-only. Set this bit to clear I2C_TXFIFO_OVF_INT interrupt.
      I2C_TXFIFO_OVF_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear I2C_RXFIFO_UDF_INT interrupt.
      I2C_RXFIFO_UDF_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear I2C_SCL_ST_TO_INT interrupt.
      I2C_SCL_ST_TO_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear I2C_SCL_MAIN_ST_TO_INT interrupt.
      I2C_SCL_MAIN_ST_TO_INT_CLR   : Boolean := False;
      --  Write-only. Set this bit to clear I2C_DET_START_INT interrupt.
      I2C_DET_START_INT_CLR        : Boolean := False;
      --  unspecified
      Reserved_16_31               : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_INT_CLR_Register use record
      I2C_RXFIFO_WM_INT_CLR        at 0 range 0 .. 0;
      I2C_TXFIFO_WM_INT_CLR        at 0 range 1 .. 1;
      I2C_RXFIFO_OVF_INT_CLR       at 0 range 2 .. 2;
      I2C_END_DETECT_INT_CLR       at 0 range 3 .. 3;
      I2C_BYTE_TRANS_DONE_INT_CLR  at 0 range 4 .. 4;
      I2C_ARBITRATION_LOST_INT_CLR at 0 range 5 .. 5;
      I2C_MST_TXFIFO_UDF_INT_CLR   at 0 range 6 .. 6;
      I2C_TRANS_COMPLETE_INT_CLR   at 0 range 7 .. 7;
      I2C_TIME_OUT_INT_CLR         at 0 range 8 .. 8;
      I2C_TRANS_START_INT_CLR      at 0 range 9 .. 9;
      I2C_NACK_INT_CLR             at 0 range 10 .. 10;
      I2C_TXFIFO_OVF_INT_CLR       at 0 range 11 .. 11;
      I2C_RXFIFO_UDF_INT_CLR       at 0 range 12 .. 12;
      I2C_SCL_ST_TO_INT_CLR        at 0 range 13 .. 13;
      I2C_SCL_MAIN_ST_TO_INT_CLR   at 0 range 14 .. 14;
      I2C_DET_START_INT_CLR        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   --  Interrupt enable bits
   type I2C_INT_ENA_Register is record
      --  The interrupt enable bit for I2C_RXFIFO_WM_INT interrupt.
      I2C_RXFIFO_WM_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for I2C_TXFIFO_WM_INT interrupt.
      I2C_TXFIFO_WM_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for I2C_RXFIFO_OVF_INT interrupt.
      I2C_RXFIFO_OVF_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the I2C_END_DETECT_INT interrupt.
      I2C_END_DETECT_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the I2C_END_DETECT_INT interrupt.
      I2C_BYTE_TRANS_DONE_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the I2C_ARBITRATION_LOST_INT interrupt.
      I2C_ARBITRATION_LOST_INT_ENA : Boolean := False;
      --  The interrupt enable bit for I2C_TRANS_COMPLETE_INT interrupt.
      I2C_MST_TXFIFO_UDF_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the I2C_TRANS_COMPLETE_INT interrupt.
      I2C_TRANS_COMPLETE_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for the I2C_TIME_OUT_INT interrupt.
      I2C_TIME_OUT_INT_ENA         : Boolean := False;
      --  The interrupt enable bit for the I2C_TRANS_START_INT interrupt.
      I2C_TRANS_START_INT_ENA      : Boolean := False;
      --  The interrupt enable bit for I2C_SLAVE_STRETCH_INT interrupt.
      I2C_NACK_INT_ENA             : Boolean := False;
      --  The interrupt enable bit for I2C_TXFIFO_OVF_INT interrupt.
      I2C_TXFIFO_OVF_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for I2C_RXFIFO_UDF_INT interrupt.
      I2C_RXFIFO_UDF_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for I2C_SCL_ST_TO_INT interrupt.
      I2C_SCL_ST_TO_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for I2C_SCL_MAIN_ST_TO_INT interrupt.
      I2C_SCL_MAIN_ST_TO_INT_ENA   : Boolean := False;
      --  The interrupt enable bit for I2C_DET_START_INT interrupt.
      I2C_DET_START_INT_ENA        : Boolean := False;
      --  unspecified
      Reserved_16_31               : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_INT_ENA_Register use record
      I2C_RXFIFO_WM_INT_ENA        at 0 range 0 .. 0;
      I2C_TXFIFO_WM_INT_ENA        at 0 range 1 .. 1;
      I2C_RXFIFO_OVF_INT_ENA       at 0 range 2 .. 2;
      I2C_END_DETECT_INT_ENA       at 0 range 3 .. 3;
      I2C_BYTE_TRANS_DONE_INT_ENA  at 0 range 4 .. 4;
      I2C_ARBITRATION_LOST_INT_ENA at 0 range 5 .. 5;
      I2C_MST_TXFIFO_UDF_INT_ENA   at 0 range 6 .. 6;
      I2C_TRANS_COMPLETE_INT_ENA   at 0 range 7 .. 7;
      I2C_TIME_OUT_INT_ENA         at 0 range 8 .. 8;
      I2C_TRANS_START_INT_ENA      at 0 range 9 .. 9;
      I2C_NACK_INT_ENA             at 0 range 10 .. 10;
      I2C_TXFIFO_OVF_INT_ENA       at 0 range 11 .. 11;
      I2C_RXFIFO_UDF_INT_ENA       at 0 range 12 .. 12;
      I2C_SCL_ST_TO_INT_ENA        at 0 range 13 .. 13;
      I2C_SCL_MAIN_ST_TO_INT_ENA   at 0 range 14 .. 14;
      I2C_DET_START_INT_ENA        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   --  Status of captured I2C communication events
   type I2C_INT_STATUS_Register is record
      --  Read-only. The masked interrupt status bit for I2C_RXFIFO_WM_INT
      --  interrupt.
      I2C_RXFIFO_WM_INT_ST        : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_TXFIFO_WM_INT
      --  interrupt.
      I2C_TXFIFO_WM_INT_ST        : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_RXFIFO_OVF_INT
      --  interrupt.
      I2C_RXFIFO_OVF_INT_ST       : Boolean;
      --  Read-only. The masked interrupt status bit for the I2C_END_DETECT_INT
      --  interrupt.
      I2C_END_DETECT_INT_ST       : Boolean;
      --  Read-only. The masked interrupt status bit for the I2C_END_DETECT_INT
      --  interrupt.
      I2C_BYTE_TRANS_DONE_INT_ST  : Boolean;
      --  Read-only. The masked interrupt status bit for the
      --  I2C_ARBITRATION_LOST_INT interrupt.
      I2C_ARBITRATION_LOST_INT_ST : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_TRANS_COMPLETE_INT
      --  interrupt.
      I2C_MST_TXFIFO_UDF_INT_ST   : Boolean;
      --  Read-only. The masked interrupt status bit for the
      --  I2C_TRANS_COMPLETE_INT interrupt.
      I2C_TRANS_COMPLETE_INT_ST   : Boolean;
      --  Read-only. The masked interrupt status bit for the I2C_TIME_OUT_INT
      --  interrupt.
      I2C_TIME_OUT_INT_ST         : Boolean;
      --  Read-only. The masked interrupt status bit for the
      --  I2C_TRANS_START_INT interrupt.
      I2C_TRANS_START_INT_ST      : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_SLAVE_STRETCH_INT
      --  interrupt.
      I2C_NACK_INT_ST             : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_TXFIFO_OVF_INT
      --  interrupt.
      I2C_TXFIFO_OVF_INT_ST       : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_RXFIFO_UDF_INT
      --  interrupt.
      I2C_RXFIFO_UDF_INT_ST       : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_SCL_ST_TO_INT
      --  interrupt.
      I2C_SCL_ST_TO_INT_ST        : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_SCL_MAIN_ST_TO_INT
      --  interrupt.
      I2C_SCL_MAIN_ST_TO_INT_ST   : Boolean;
      --  Read-only. The masked interrupt status bit for I2C_DET_START_INT
      --  interrupt.
      I2C_DET_START_INT_ST        : Boolean;
      --  unspecified
      Reserved_16_31              : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_INT_STATUS_Register use record
      I2C_RXFIFO_WM_INT_ST        at 0 range 0 .. 0;
      I2C_TXFIFO_WM_INT_ST        at 0 range 1 .. 1;
      I2C_RXFIFO_OVF_INT_ST       at 0 range 2 .. 2;
      I2C_END_DETECT_INT_ST       at 0 range 3 .. 3;
      I2C_BYTE_TRANS_DONE_INT_ST  at 0 range 4 .. 4;
      I2C_ARBITRATION_LOST_INT_ST at 0 range 5 .. 5;
      I2C_MST_TXFIFO_UDF_INT_ST   at 0 range 6 .. 6;
      I2C_TRANS_COMPLETE_INT_ST   at 0 range 7 .. 7;
      I2C_TIME_OUT_INT_ST         at 0 range 8 .. 8;
      I2C_TRANS_START_INT_ST      at 0 range 9 .. 9;
      I2C_NACK_INT_ST             at 0 range 10 .. 10;
      I2C_TXFIFO_OVF_INT_ST       at 0 range 11 .. 11;
      I2C_RXFIFO_UDF_INT_ST       at 0 range 12 .. 12;
      I2C_SCL_ST_TO_INT_ST        at 0 range 13 .. 13;
      I2C_SCL_MAIN_ST_TO_INT_ST   at 0 range 14 .. 14;
      I2C_DET_START_INT_ST        at 0 range 15 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   subtype I2C_SDA_HOLD_TIME_Field is HAL.UInt9;

   --  Configures the hold time after a negative SCL edge.
   type I2C_SDA_HOLD_Register is record
      --  This register is used to configure the time to hold the data after
      --  the negative edge of SCL, in I2C module clock cycles.
      TIME          : I2C_SDA_HOLD_TIME_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SDA_HOLD_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_SDA_SAMPLE_TIME_Field is HAL.UInt9;

   --  Configures the sample time after a positive SCL edge.
   type I2C_SDA_SAMPLE_Register is record
      --  This register is used to configure for how long SDA is sampled, in
      --  I2C module clock cycles.
      TIME          : I2C_SDA_SAMPLE_TIME_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SDA_SAMPLE_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_SCL_HIGH_PERIOD_I2C_SCL_HIGH_PERIOD_Field is HAL.UInt9;
   subtype I2C_SCL_HIGH_PERIOD_I2C_SCL_WAIT_HIGH_PERIOD_Field is HAL.UInt7;

   --  Configures the high level width of SCL
   type I2C_SCL_HIGH_PERIOD_Register is record
      --  This register is used to configure for how long SCL setup to high
      --  level and remains high in master mode, in I2C module clock cycles.
      I2C_SCL_HIGH_PERIOD      : I2C_SCL_HIGH_PERIOD_I2C_SCL_HIGH_PERIOD_Field :=
                                  16#0#;
      --  This register is used to configure for the SCL_FSM's waiting period
      --  for SCL high level in master mode, in I2C module clock cycles.
      I2C_SCL_WAIT_HIGH_PERIOD : I2C_SCL_HIGH_PERIOD_I2C_SCL_WAIT_HIGH_PERIOD_Field :=
                                  16#0#;
      --  unspecified
      Reserved_16_31           : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_HIGH_PERIOD_Register use record
      I2C_SCL_HIGH_PERIOD      at 0 range 0 .. 8;
      I2C_SCL_WAIT_HIGH_PERIOD at 0 range 9 .. 15;
      Reserved_16_31           at 0 range 16 .. 31;
   end record;

   subtype I2C_SCL_START_HOLD_TIME_Field is HAL.UInt9;

   --  Configures the delay between the SDA and SCL negative edge for a start
   --  condition
   type I2C_SCL_START_HOLD_Register is record
      --  This register is used to configure the time between the negative edge
      --  of SDA and the negative edge of SCL for a START condition, in I2C
      --  module clock cycles.
      TIME          : I2C_SCL_START_HOLD_TIME_Field := 16#8#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_START_HOLD_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_SCL_RSTART_SETUP_TIME_Field is HAL.UInt9;

   --  Configures the delay between the positive edge of SCL and the negative
   --  edge of SDA
   type I2C_SCL_RSTART_SETUP_Register is record
      --  This register is used to configure the time between the positive edge
      --  of SCL and the negative edge of SDA for a RESTART condition, in I2C
      --  module clock cycles.
      TIME          : I2C_SCL_RSTART_SETUP_TIME_Field := 16#8#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_RSTART_SETUP_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_SCL_STOP_HOLD_TIME_Field is HAL.UInt9;

   --  Configures the delay after the SCL clock edge for a stop condition
   type I2C_SCL_STOP_HOLD_Register is record
      --  This register is used to configure the delay after the STOP
      --  condition, in I2C module clock cycles.
      TIME          : I2C_SCL_STOP_HOLD_TIME_Field := 16#8#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_STOP_HOLD_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_SCL_STOP_SETUP_TIME_Field is HAL.UInt9;

   --  Configures the delay between the SDA and SCL positive edge for a stop
   --  condition
   type I2C_SCL_STOP_SETUP_Register is record
      --  This register is used to configure the time between the positive edge
      --  of SCL and the positive edge of SDA, in I2C module clock cycles.
      TIME          : I2C_SCL_STOP_SETUP_TIME_Field := 16#8#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_STOP_SETUP_Register use record
      TIME          at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype I2C_FILTER_CFG_I2C_SCL_FILTER_THRES_Field is HAL.UInt4;
   subtype I2C_FILTER_CFG_I2C_SDA_FILTER_THRES_Field is HAL.UInt4;

   --  SCL and SDA filter configuration register
   type I2C_FILTER_CFG_Register is record
      --  When a pulse on the SCL input has smaller width than this register
      --  value in I2C module clock cycles, the I2C controller will ignore that
      --  pulse.
      I2C_SCL_FILTER_THRES : I2C_FILTER_CFG_I2C_SCL_FILTER_THRES_Field :=
                              16#0#;
      --  When a pulse on the SDA input has smaller width than this register
      --  value in I2C module clock cycles, the I2C controller will ignore that
      --  pulse.
      I2C_SDA_FILTER_THRES : I2C_FILTER_CFG_I2C_SDA_FILTER_THRES_Field :=
                              16#0#;
      --  This is the filter enable bit for SCL.
      I2C_SCL_FILTER_EN    : Boolean := True;
      --  This is the filter enable bit for SDA.
      I2C_SDA_FILTER_EN    : Boolean := True;
      --  unspecified
      Reserved_10_31       : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_FILTER_CFG_Register use record
      I2C_SCL_FILTER_THRES at 0 range 0 .. 3;
      I2C_SDA_FILTER_THRES at 0 range 4 .. 7;
      I2C_SCL_FILTER_EN    at 0 range 8 .. 8;
      I2C_SDA_FILTER_EN    at 0 range 9 .. 9;
      Reserved_10_31       at 0 range 10 .. 31;
   end record;

   subtype I2C_CLK_CONF_I2C_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype I2C_CLK_CONF_I2C_SCLK_DIV_A_Field is HAL.UInt6;
   subtype I2C_CLK_CONF_I2C_SCLK_DIV_B_Field is HAL.UInt6;

   --  I2C CLK configuration register
   type I2C_CLK_CONF_Register is record
      --  the integral part of the fractional divisor for i2c module
      I2C_SCLK_DIV_NUM : I2C_CLK_CONF_I2C_SCLK_DIV_NUM_Field := 16#0#;
      --  the numerator of the fractional part of the fractional divisor for
      --  i2c module
      I2C_SCLK_DIV_A   : I2C_CLK_CONF_I2C_SCLK_DIV_A_Field := 16#0#;
      --  the denominator of the fractional part of the fractional divisor for
      --  i2c module
      I2C_SCLK_DIV_B   : I2C_CLK_CONF_I2C_SCLK_DIV_B_Field := 16#0#;
      --  The clock selection for i2c module:0-XTAL,1-CLK_8MHz.
      I2C_SCLK_SEL     : Boolean := False;
      --  The clock switch for i2c module
      I2C_SCLK_ACTIVE  : Boolean := True;
      --  unspecified
      Reserved_22_31   : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_CLK_CONF_Register use record
      I2C_SCLK_DIV_NUM at 0 range 0 .. 7;
      I2C_SCLK_DIV_A   at 0 range 8 .. 13;
      I2C_SCLK_DIV_B   at 0 range 14 .. 19;
      I2C_SCLK_SEL     at 0 range 20 .. 20;
      I2C_SCLK_ACTIVE  at 0 range 21 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   subtype I2C_COMD0_I2C_COMMAND0_Field is HAL.UInt14;

   --  I2C command register 0
   type I2C_COMD0_Register is record
      --  This is the content of command 0. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND0      : I2C_COMD0_I2C_COMMAND0_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 0 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND0_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD0_Register use record
      I2C_COMMAND0      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND0_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD1_I2C_COMMAND1_Field is HAL.UInt14;

   --  I2C command register 1
   type I2C_COMD1_Register is record
      --  This is the content of command 1. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND1      : I2C_COMD1_I2C_COMMAND1_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 1 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND1_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD1_Register use record
      I2C_COMMAND1      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND1_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD2_I2C_COMMAND2_Field is HAL.UInt14;

   --  I2C command register 2
   type I2C_COMD2_Register is record
      --  This is the content of command 2. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND2      : I2C_COMD2_I2C_COMMAND2_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 2 is done in I2C Master mode, this bit changes to high
      --  Level.
      I2C_COMMAND2_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD2_Register use record
      I2C_COMMAND2      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND2_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD3_I2C_COMMAND3_Field is HAL.UInt14;

   --  I2C command register 3
   type I2C_COMD3_Register is record
      --  This is the content of command 3. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND3      : I2C_COMD3_I2C_COMMAND3_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 3 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND3_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD3_Register use record
      I2C_COMMAND3      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND3_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD4_I2C_COMMAND4_Field is HAL.UInt14;

   --  I2C command register 4
   type I2C_COMD4_Register is record
      --  This is the content of command 4. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND4      : I2C_COMD4_I2C_COMMAND4_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 4 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND4_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD4_Register use record
      I2C_COMMAND4      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND4_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD5_I2C_COMMAND5_Field is HAL.UInt14;

   --  I2C command register 5
   type I2C_COMD5_Register is record
      --  This is the content of command 5. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND5      : I2C_COMD5_I2C_COMMAND5_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 5 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND5_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD5_Register use record
      I2C_COMMAND5      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND5_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD6_I2C_COMMAND6_Field is HAL.UInt14;

   --  I2C command register 6
   type I2C_COMD6_Register is record
      --  This is the content of command 6. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND6      : I2C_COMD6_I2C_COMMAND6_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 6 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND6_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD6_Register use record
      I2C_COMMAND6      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND6_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_COMD7_I2C_COMMAND7_Field is HAL.UInt14;

   --  I2C command register 7
   type I2C_COMD7_Register is record
      --  This is the content of command 7. It consists of three parts: op_code
      --  is the command, 0: RSTART, 1: WRITE, 2: READ, 3: STOP, 4: END.
      --  Byte_num represents the number of bytes that need to be sent or
      --  received. ack_check_en, ack_exp and ack are used to control the ACK
      --  bit. See I2C cmd structure for more Information.
      I2C_COMMAND7      : I2C_COMD7_I2C_COMMAND7_Field := 16#0#;
      --  unspecified
      Reserved_14_30    : HAL.UInt17 := 16#0#;
      --  When command 7 is done in I2C Master mode, this bit changes to high
      --  level.
      I2C_COMMAND7_DONE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_COMD7_Register use record
      I2C_COMMAND7      at 0 range 0 .. 13;
      Reserved_14_30    at 0 range 14 .. 30;
      I2C_COMMAND7_DONE at 0 range 31 .. 31;
   end record;

   subtype I2C_SCL_ST_TIME_OUT_I2C_SCL_ST_TO_I2C_Field is HAL.UInt5;

   --  SCL status time out register
   type I2C_SCL_ST_TIME_OUT_Register is record
      --  The threshold value of SCL_FSM state unchanged period. It should be o
      --  more than 23
      I2C_SCL_ST_TO_I2C : I2C_SCL_ST_TIME_OUT_I2C_SCL_ST_TO_I2C_Field :=
                           16#10#;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_ST_TIME_OUT_Register use record
      I2C_SCL_ST_TO_I2C at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype I2C_SCL_MAIN_ST_TIME_OUT_I2C_SCL_MAIN_ST_TO_I2C_Field is HAL.UInt5;

   --  SCL main status time out register
   type I2C_SCL_MAIN_ST_TIME_OUT_Register is record
      --  The threshold value of SCL_MAIN_FSM state unchanged period.nIt should
      --  be o more than 23
      I2C_SCL_MAIN_ST_TO_I2C : I2C_SCL_MAIN_ST_TIME_OUT_I2C_SCL_MAIN_ST_TO_I2C_Field :=
                                16#10#;
      --  unspecified
      Reserved_5_31          : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_MAIN_ST_TIME_OUT_Register use record
      I2C_SCL_MAIN_ST_TO_I2C at 0 range 0 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   subtype I2C_SCL_SP_CONF_I2C_SCL_RST_SLV_NUM_Field is HAL.UInt5;

   --  Power configuration register
   type I2C_SCL_SP_CONF_Register is record
      --  When I2C master is IDLE, set this bit to send out SCL pulses. The
      --  number of pulses equals to reg_scl_rst_slv_num[4:0].
      I2C_SCL_RST_SLV_EN  : Boolean := False;
      --  Configure the pulses of SCL generated in I2C master mode. Valid when
      --  reg_scl_rst_slv_en is 1.
      I2C_SCL_RST_SLV_NUM : I2C_SCL_SP_CONF_I2C_SCL_RST_SLV_NUM_Field :=
                             16#0#;
      --  The power down enable bit for the I2C output SCL line. 1: Power down.
      --  0: Not power down. Set reg_scl_force_out and reg_scl_pd_en to 1 to
      --  stretch SCL low.
      I2C_SCL_PD_EN       : Boolean := False;
      --  The power down enable bit for the I2C output SDA line. 1: Power down.
      --  0: Not power down. Set reg_sda_force_out and reg_sda_pd_en to 1 to
      --  stretch SDA low.
      I2C_SDA_PD_EN       : Boolean := False;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCL_SP_CONF_Register use record
      I2C_SCL_RST_SLV_EN  at 0 range 0 .. 0;
      I2C_SCL_RST_SLV_NUM at 0 range 1 .. 5;
      I2C_SCL_PD_EN       at 0 range 6 .. 6;
      I2C_SDA_PD_EN       at 0 range 7 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power I2C (Inter-Integrated Circuit) Controller 0
   type LP_I2C0_Peripheral is record
      --  Configures the low level width of the SCL Clock
      I2C_SCL_LOW_PERIOD       : aliased I2C_SCL_LOW_PERIOD_Register;
      --  Transmission setting
      I2C_CTR                  : aliased I2C_CTR_Register;
      --  Describe I2C work status.
      I2C_SR                   : aliased I2C_SR_Register;
      --  Setting time out control for receiving data.
      I2C_TO                   : aliased I2C_TO_Register;
      --  FIFO status register.
      I2C_FIFO_ST              : aliased I2C_FIFO_ST_Register;
      --  FIFO configuration register.
      FIFO_CONF                : aliased FIFO_CONF_Register;
      --  Rx FIFO read data.
      I2C_DATA                 : aliased I2C_DATA_Register;
      --  Raw interrupt status
      I2C_INT_RAW              : aliased I2C_INT_RAW_Register;
      --  Interrupt clear bits
      I2C_INT_CLR              : aliased I2C_INT_CLR_Register;
      --  Interrupt enable bits
      I2C_INT_ENA              : aliased I2C_INT_ENA_Register;
      --  Status of captured I2C communication events
      I2C_INT_STATUS           : aliased I2C_INT_STATUS_Register;
      --  Configures the hold time after a negative SCL edge.
      I2C_SDA_HOLD             : aliased I2C_SDA_HOLD_Register;
      --  Configures the sample time after a positive SCL edge.
      I2C_SDA_SAMPLE           : aliased I2C_SDA_SAMPLE_Register;
      --  Configures the high level width of SCL
      I2C_SCL_HIGH_PERIOD      : aliased I2C_SCL_HIGH_PERIOD_Register;
      --  Configures the delay between the SDA and SCL negative edge for a
      --  start condition
      I2C_SCL_START_HOLD       : aliased I2C_SCL_START_HOLD_Register;
      --  Configures the delay between the positive edge of SCL and the
      --  negative edge of SDA
      I2C_SCL_RSTART_SETUP     : aliased I2C_SCL_RSTART_SETUP_Register;
      --  Configures the delay after the SCL clock edge for a stop condition
      I2C_SCL_STOP_HOLD        : aliased I2C_SCL_STOP_HOLD_Register;
      --  Configures the delay between the SDA and SCL positive edge for a stop
      --  condition
      I2C_SCL_STOP_SETUP       : aliased I2C_SCL_STOP_SETUP_Register;
      --  SCL and SDA filter configuration register
      I2C_FILTER_CFG           : aliased I2C_FILTER_CFG_Register;
      --  I2C CLK configuration register
      I2C_CLK_CONF             : aliased I2C_CLK_CONF_Register;
      --  I2C command register 0
      I2C_COMD0                : aliased I2C_COMD0_Register;
      --  I2C command register 1
      I2C_COMD1                : aliased I2C_COMD1_Register;
      --  I2C command register 2
      I2C_COMD2                : aliased I2C_COMD2_Register;
      --  I2C command register 3
      I2C_COMD3                : aliased I2C_COMD3_Register;
      --  I2C command register 4
      I2C_COMD4                : aliased I2C_COMD4_Register;
      --  I2C command register 5
      I2C_COMD5                : aliased I2C_COMD5_Register;
      --  I2C command register 6
      I2C_COMD6                : aliased I2C_COMD6_Register;
      --  I2C command register 7
      I2C_COMD7                : aliased I2C_COMD7_Register;
      --  SCL status time out register
      I2C_SCL_ST_TIME_OUT      : aliased I2C_SCL_ST_TIME_OUT_Register;
      --  SCL main status time out register
      I2C_SCL_MAIN_ST_TIME_OUT : aliased I2C_SCL_MAIN_ST_TIME_OUT_Register;
      --  Power configuration register
      I2C_SCL_SP_CONF          : aliased I2C_SCL_SP_CONF_Register;
      --  Version register
      I2C_DATE                 : aliased HAL.UInt32;
      --  I2C TXFIFO base address register
      I2C_TXFIFO_START_ADDR    : aliased HAL.UInt32;
      --  I2C RXFIFO base address register
      I2C_RXFIFO_START_ADDR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for LP_I2C0_Peripheral use record
      I2C_SCL_LOW_PERIOD       at 16#0# range 0 .. 31;
      I2C_CTR                  at 16#4# range 0 .. 31;
      I2C_SR                   at 16#8# range 0 .. 31;
      I2C_TO                   at 16#C# range 0 .. 31;
      I2C_FIFO_ST              at 16#14# range 0 .. 31;
      FIFO_CONF                at 16#18# range 0 .. 31;
      I2C_DATA                 at 16#1C# range 0 .. 31;
      I2C_INT_RAW              at 16#20# range 0 .. 31;
      I2C_INT_CLR              at 16#24# range 0 .. 31;
      I2C_INT_ENA              at 16#28# range 0 .. 31;
      I2C_INT_STATUS           at 16#2C# range 0 .. 31;
      I2C_SDA_HOLD             at 16#30# range 0 .. 31;
      I2C_SDA_SAMPLE           at 16#34# range 0 .. 31;
      I2C_SCL_HIGH_PERIOD      at 16#38# range 0 .. 31;
      I2C_SCL_START_HOLD       at 16#40# range 0 .. 31;
      I2C_SCL_RSTART_SETUP     at 16#44# range 0 .. 31;
      I2C_SCL_STOP_HOLD        at 16#48# range 0 .. 31;
      I2C_SCL_STOP_SETUP       at 16#4C# range 0 .. 31;
      I2C_FILTER_CFG           at 16#50# range 0 .. 31;
      I2C_CLK_CONF             at 16#54# range 0 .. 31;
      I2C_COMD0                at 16#58# range 0 .. 31;
      I2C_COMD1                at 16#5C# range 0 .. 31;
      I2C_COMD2                at 16#60# range 0 .. 31;
      I2C_COMD3                at 16#64# range 0 .. 31;
      I2C_COMD4                at 16#68# range 0 .. 31;
      I2C_COMD5                at 16#6C# range 0 .. 31;
      I2C_COMD6                at 16#70# range 0 .. 31;
      I2C_COMD7                at 16#74# range 0 .. 31;
      I2C_SCL_ST_TIME_OUT      at 16#78# range 0 .. 31;
      I2C_SCL_MAIN_ST_TIME_OUT at 16#7C# range 0 .. 31;
      I2C_SCL_SP_CONF          at 16#80# range 0 .. 31;
      I2C_DATE                 at 16#F8# range 0 .. 31;
      I2C_TXFIFO_START_ADDR    at 16#100# range 0 .. 31;
      I2C_RXFIFO_START_ADDR    at 16#180# range 0 .. 31;
   end record;

   --  Low-power I2C (Inter-Integrated Circuit) Controller 0
   LP_I2C0_Periph : aliased LP_I2C0_Peripheral
     with Import, Address => LP_I2C0_Base;

end ESP32_C6_SVD.LP_I2C0;
