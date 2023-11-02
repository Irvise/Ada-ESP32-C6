pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.RMT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  The read and write data register for CHANNEL%s by apb fifo access.

   --  The read and write data register for CHANNEL%s by apb fifo access.
   type CHDATA_Registers is array (0 .. 3) of HAL.UInt32;

   subtype CH_TX_CONF0_DIV_CNT_Field is HAL.UInt8;
   subtype CH_TX_CONF0_MEM_SIZE_Field is HAL.UInt3;

   --  Channel %s configure register 0
   type CH_TX_CONF0_Register is record
      --  Write-only. Set this bit to start sending data on CHANNEL%s.
      TX_START       : Boolean := False;
      --  Write-only. Set this bit to reset read ram address for CHANNEL%s by
      --  accessing transmitter.
      MEM_RD_RST     : Boolean := False;
      --  Write-only. Set this bit to reset W/R ram address for CHANNEL%s by
      --  accessing apb fifo.
      APB_MEM_RST    : Boolean := False;
      --  Set this bit to restart transmission from the first data to the last
      --  data in CHANNEL%s.
      TX_CONTI_MODE  : Boolean := False;
      --  This is the channel %s enable bit for wraparound mode: it will resume
      --  sending at the start when the data to be sent is more than its memory
      --  size.
      MEM_TX_WRAP_EN : Boolean := False;
      --  This bit configures the level of output signal in CHANNEL%s when the
      --  latter is in IDLE state.
      IDLE_OUT_LV    : Boolean := False;
      --  This is the output enable-control bit for CHANNEL%s in IDLE state.
      IDLE_OUT_EN    : Boolean := False;
      --  Set this bit to stop the transmitter of CHANNEL%s sending data out.
      TX_STOP        : Boolean := False;
      --  This register is used to configure the divider for clock of
      --  CHANNEL%s.
      DIV_CNT        : CH_TX_CONF0_DIV_CNT_Field := 16#2#;
      --  This register is used to configure the maximum size of memory
      --  allocated to CHANNEL%s.
      MEM_SIZE       : CH_TX_CONF0_MEM_SIZE_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  1: Add carrier modulation on the output signal only at the send data
      --  state for CHANNEL%s. 0: Add carrier modulation on the output signal
      --  at all state for CHANNEL%s. Only valid when RMT_CARRIER_EN_CH%s is 1.
      CARRIER_EFF_EN : Boolean := True;
      --  This is the carrier modulation enable-control bit for CHANNEL%s. 1:
      --  Add carrier modulation in the output signal. 0: No carrier modulation
      --  in sig_out.
      CARRIER_EN     : Boolean := True;
      --  This bit is used to configure the position of carrier wave for
      --  CHANNEL%s. 1'h0: add carrier wave on low level. 1'h1: add carrier
      --  wave on high level.
      CARRIER_OUT_LV : Boolean := True;
      --  Write-only. Reserved
      AFIFO_RST      : Boolean := False;
      --  Write-only. synchronization bit for CHANNEL%s
      CONF_UPDATE    : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_TX_CONF0_Register use record
      TX_START       at 0 range 0 .. 0;
      MEM_RD_RST     at 0 range 1 .. 1;
      APB_MEM_RST    at 0 range 2 .. 2;
      TX_CONTI_MODE  at 0 range 3 .. 3;
      MEM_TX_WRAP_EN at 0 range 4 .. 4;
      IDLE_OUT_LV    at 0 range 5 .. 5;
      IDLE_OUT_EN    at 0 range 6 .. 6;
      TX_STOP        at 0 range 7 .. 7;
      DIV_CNT        at 0 range 8 .. 15;
      MEM_SIZE       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CARRIER_EFF_EN at 0 range 20 .. 20;
      CARRIER_EN     at 0 range 21 .. 21;
      CARRIER_OUT_LV at 0 range 22 .. 22;
      AFIFO_RST      at 0 range 23 .. 23;
      CONF_UPDATE    at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Channel %s configure register 0
   type CH_TX_CONF0_Registers is array (0 .. 1) of CH_TX_CONF0_Register;

   subtype CH_RX_CONF_DIV_CNT_Field is HAL.UInt8;
   subtype CH_RX_CONF_IDLE_THRES_Field is HAL.UInt15;
   subtype CH_RX_CONF_MEM_SIZE_Field is HAL.UInt3;

   --  Channel %s configure register 0
   type CH_RX_CONF_Register is record
      --  This register is used to configure the divider for clock of
      --  CHANNEL%s.
      DIV_CNT        : CH_RX_CONF_DIV_CNT_Field := 16#2#;
      --  When no edge is detected on the input signal and continuous clock
      --  cycles is longer than this register value, received process is
      --  finished.
      IDLE_THRES     : CH_RX_CONF_IDLE_THRES_Field := 16#7FFF#;
      --  This register is used to configure the maximum size of memory
      --  allocated to CHANNEL%s.
      MEM_SIZE       : CH_RX_CONF_MEM_SIZE_Field := 16#1#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  This is the carrier modulation enable-control bit for CHANNEL%s. 1:
      --  Add carrier modulation in the output signal. 0: No carrier modulation
      --  in sig_out.
      CARRIER_EN     : Boolean := True;
      --  This bit is used to configure the position of carrier wave for
      --  CHANNEL%s. 1'h0: add carrier wave on low level. 1'h1: add carrier
      --  wave on high level.
      CARRIER_OUT_LV : Boolean := True;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_CONF_Register use record
      DIV_CNT        at 0 range 0 .. 7;
      IDLE_THRES     at 0 range 8 .. 22;
      MEM_SIZE       at 0 range 23 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CARRIER_EN     at 0 range 28 .. 28;
      CARRIER_OUT_LV at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CH_RX_CONF_RX_FILTER_THRES_Field is HAL.UInt8;

   --  Channel %s configure register 1
   type CH_RX_CONF_Register_1 is record
      --  Set this bit to enable receiver to receive data on CHANNEL%s.
      RX_EN           : Boolean := False;
      --  Write-only. Set this bit to reset write ram address for CHANNEL%s by
      --  accessing receiver.
      MEM_WR_RST      : Boolean := False;
      --  Write-only. Set this bit to reset W/R ram address for CHANNEL%s by
      --  accessing apb fifo.
      APB_MEM_RST     : Boolean := False;
      --  This register marks the ownership of CHANNEL%s's ram block. 1'h1:
      --  Receiver is using the ram. 1'h0: APB bus is using the ram.
      MEM_OWNER       : Boolean := True;
      --  This is the receive filter's enable bit for CHANNEL%s.
      RX_FILTER_EN    : Boolean := False;
      --  Ignores the input pulse when its width is smaller than this register
      --  value in APB clock periods (in receive mode).
      RX_FILTER_THRES : CH_RX_CONF_RX_FILTER_THRES_Field := 16#F#;
      --  This is the channel %s enable bit for wraparound mode: it will resume
      --  receiving at the start when the data to be received is more than its
      --  memory size.
      MEM_RX_WRAP_EN  : Boolean := False;
      --  Write-only. Reserved
      AFIFO_RST       : Boolean := False;
      --  Write-only. synchronization bit for CHANNEL%s
      CONF_UPDATE     : Boolean := False;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_CONF_Register_1 use record
      RX_EN           at 0 range 0 .. 0;
      MEM_WR_RST      at 0 range 1 .. 1;
      APB_MEM_RST     at 0 range 2 .. 2;
      MEM_OWNER       at 0 range 3 .. 3;
      RX_FILTER_EN    at 0 range 4 .. 4;
      RX_FILTER_THRES at 0 range 5 .. 12;
      MEM_RX_WRAP_EN  at 0 range 13 .. 13;
      AFIFO_RST       at 0 range 14 .. 14;
      CONF_UPDATE     at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype CH_TX_STATUS_MEM_RADDR_EX_Field is HAL.UInt9;
   subtype CH_TX_STATUS_STATE_Field is HAL.UInt3;
   subtype CH_TX_STATUS_APB_MEM_WADDR_Field is HAL.UInt9;
   subtype CH_TX_STATUS_APB_MEM_RADDR_Field is HAL.UInt8;

   --  Channel %s status register
   type CH_TX_STATUS_Register is record
      --  Read-only. This register records the memory address offset when
      --  transmitter of CHANNEL%s is using the RAM.
      MEM_RADDR_EX   : CH_TX_STATUS_MEM_RADDR_EX_Field;
      --  Read-only. This register records the FSM status of CHANNEL%s.
      STATE          : CH_TX_STATUS_STATE_Field;
      --  Read-only. This register records the memory address offset when
      --  writes RAM over APB bus.
      APB_MEM_WADDR  : CH_TX_STATUS_APB_MEM_WADDR_Field;
      --  Read-only. This status bit will be set if the offset address out of
      --  memory size when reading via APB bus.
      APB_MEM_RD_ERR : Boolean;
      --  Read-only. This status bit will be set when the data to be set is
      --  more than memory size and the wraparound mode is disabled.
      MEM_EMPTY      : Boolean;
      --  Read-only. This status bit will be set if the offset address out of
      --  memory size when writes via APB bus.
      APB_MEM_WR_ERR : Boolean;
      --  Read-only. This register records the memory address offset when
      --  reading RAM over APB bus.
      APB_MEM_RADDR  : CH_TX_STATUS_APB_MEM_RADDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_TX_STATUS_Register use record
      MEM_RADDR_EX   at 0 range 0 .. 8;
      STATE          at 0 range 9 .. 11;
      APB_MEM_WADDR  at 0 range 12 .. 20;
      APB_MEM_RD_ERR at 0 range 21 .. 21;
      MEM_EMPTY      at 0 range 22 .. 22;
      APB_MEM_WR_ERR at 0 range 23 .. 23;
      APB_MEM_RADDR  at 0 range 24 .. 31;
   end record;

   --  Channel %s status register
   type CH_TX_STATUS_Registers is array (0 .. 1) of CH_TX_STATUS_Register;

   subtype CH_RX_STATUS_MEM_WADDR_EX_Field is HAL.UInt9;
   subtype CH_RX_STATUS_APB_MEM_RADDR_Field is HAL.UInt9;
   subtype CH_RX_STATUS_STATE_Field is HAL.UInt3;

   --  Channel %s status register
   type CH_RX_STATUS_Register is record
      --  Read-only. This register records the memory address offset when
      --  receiver of CHANNEL%s is using the RAM.
      MEM_WADDR_EX   : CH_RX_STATUS_MEM_WADDR_EX_Field;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. This register records the memory address offset when reads
      --  RAM over APB bus.
      APB_MEM_RADDR  : CH_RX_STATUS_APB_MEM_RADDR_Field;
      --  unspecified
      Reserved_21_21 : HAL.Bit;
      --  Read-only. This register records the FSM status of CHANNEL%s.
      STATE          : CH_RX_STATUS_STATE_Field;
      --  Read-only. This status bit will be set when the ownership of memory
      --  block is wrong.
      MEM_OWNER_ERR  : Boolean;
      --  Read-only. This status bit will be set if the receiver receives more
      --  data than the memory size.
      MEM_FULL       : Boolean;
      --  Read-only. This status bit will be set if the offset address out of
      --  memory size when reads via APB bus.
      APB_MEM_RD_ERR : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_STATUS_Register use record
      MEM_WADDR_EX   at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      APB_MEM_RADDR  at 0 range 12 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      STATE          at 0 range 22 .. 24;
      MEM_OWNER_ERR  at 0 range 25 .. 25;
      MEM_FULL       at 0 range 26 .. 26;
      APB_MEM_RD_ERR at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Channel %s status register
   type CH_RX_STATUS_Registers is array (0 .. 1) of CH_RX_STATUS_Register;

   --  Raw interrupt status
   type INT_RAW_Register is record
      --  The interrupt raw bit for CHANNEL%s. Triggered when transmission
      --  done.
      CH%s_TX_END       : Boolean := False;
      --  unspecified
      Reserved_1_1      : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL2. Triggered when reception done.
      CH%s_RX_END       : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL4. Triggered when error occurs.
      CH%s_TX_ERR       : Boolean := False;
      --  unspecified
      Reserved_5_5      : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL6. Triggered when error occurs.
      CH%s_RX_ERR       : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL%s. Triggered when transmitter sent
      --  more data than configured value.
      CH%s_TX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_9_9      : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL2. Triggered when receiver receive
      --  more data than configured value.
      CH%s_RX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_11_11    : HAL.Bit := 16#0#;
      --  The interrupt raw bit for CHANNEL%s. Triggered when the loop count
      --  reaches the configured threshold value.
      CH%s_TX_LOOP      : Boolean := False;
      --  unspecified
      Reserved_13_31    : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      CH%s_TX_END       at 0 range 0 .. 0;
      Reserved_1_1      at 0 range 1 .. 1;
      CH%s_RX_END       at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      CH%s_TX_ERR       at 0 range 4 .. 4;
      Reserved_5_5      at 0 range 5 .. 5;
      CH%s_RX_ERR       at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT at 0 range 8 .. 8;
      Reserved_9_9      at 0 range 9 .. 9;
      CH%s_RX_THR_EVENT at 0 range 10 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      CH%s_TX_LOOP      at 0 range 12 .. 12;
      Reserved_13_31    at 0 range 13 .. 31;
   end record;

   --  Masked interrupt status
   type INT_ST_Register is record
      --  Read-only. The masked interrupt status bit for CH%s_TX_END_INT.
      CH%s_TX_END       : Boolean;
      --  unspecified
      Reserved_1_1      : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH2_RX_END_INT.
      CH%s_RX_END       : Boolean;
      --  unspecified
      Reserved_3_3      : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH4_ERR_INT.
      CH%s_TX_ERR       : Boolean;
      --  unspecified
      Reserved_5_5      : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH6_ERR_INT.
      CH%s_RX_ERR       : Boolean;
      --  unspecified
      Reserved_7_7      : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH%s_TX_THR_EVENT_INT.
      CH%s_TX_THR_EVENT : Boolean;
      --  unspecified
      Reserved_9_9      : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH2_RX_THR_EVENT_INT.
      CH%s_RX_THR_EVENT : Boolean;
      --  unspecified
      Reserved_11_11    : HAL.Bit;
      --  Read-only. The masked interrupt status bit for CH%s_TX_LOOP_INT.
      CH%s_X_LOOP       : Boolean;
      --  unspecified
      Reserved_13_31    : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      CH%s_TX_END       at 0 range 0 .. 0;
      Reserved_1_1      at 0 range 1 .. 1;
      CH%s_RX_END       at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      CH%s_TX_ERR       at 0 range 4 .. 4;
      Reserved_5_5      at 0 range 5 .. 5;
      CH%s_RX_ERR       at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT at 0 range 8 .. 8;
      Reserved_9_9      at 0 range 9 .. 9;
      CH%s_RX_THR_EVENT at 0 range 10 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      CH%s_X_LOOP       at 0 range 12 .. 12;
      Reserved_13_31    at 0 range 13 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENA_Register is record
      --  The interrupt enable bit for CH%s_TX_END_INT.
      CH%s_TX_END       : Boolean := False;
      --  unspecified
      Reserved_1_1      : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH2_RX_END_INT.
      CH%s_RX_END       : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH4_ERR_INT.
      CH%s_TX_ERR       : Boolean := False;
      --  unspecified
      Reserved_5_5      : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH6_ERR_INT.
      CH%s_RX_ERR       : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH%s_TX_THR_EVENT_INT.
      CH%s_TX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_9_9      : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH2_RX_THR_EVENT_INT.
      CH%s_RX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_11_11    : HAL.Bit := 16#0#;
      --  The interrupt enable bit for CH%s_TX_LOOP_INT.
      CH%s_X_LOOP       : Boolean := False;
      --  unspecified
      Reserved_13_31    : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      CH%s_TX_END       at 0 range 0 .. 0;
      Reserved_1_1      at 0 range 1 .. 1;
      CH%s_RX_END       at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      CH%s_TX_ERR       at 0 range 4 .. 4;
      Reserved_5_5      at 0 range 5 .. 5;
      CH%s_RX_ERR       at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT at 0 range 8 .. 8;
      Reserved_9_9      at 0 range 9 .. 9;
      CH%s_RX_THR_EVENT at 0 range 10 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      CH%s_X_LOOP       at 0 range 12 .. 12;
      Reserved_13_31    at 0 range 13 .. 31;
   end record;

   --  Interrupt clear bits
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear theCH%s_TX_END_INT interrupt.
      CH%s_TX_END       : Boolean := False;
      --  unspecified
      Reserved_1_1      : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH2_RX_END_INT interrupt.
      CH%s_RX_END       : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH4_ERR_INT interrupt.
      CH%s_TX_ERR       : Boolean := False;
      --  unspecified
      Reserved_5_5      : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH6_ERR_INT interrupt.
      CH%s_RX_ERR       : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH%s_TX_THR_EVENT_INT interrupt.
      CH%s_TX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_9_9      : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH2_RX_THR_EVENT_INT interrupt.
      CH%s_RX_THR_EVENT : Boolean := False;
      --  unspecified
      Reserved_11_11    : HAL.Bit := 16#0#;
      --  Write-only. Set this bit to clear theCH%s_TX_LOOP_INT interrupt.
      CH%s_TX_LOOP      : Boolean := False;
      --  unspecified
      Reserved_13_31    : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      CH%s_TX_END       at 0 range 0 .. 0;
      Reserved_1_1      at 0 range 1 .. 1;
      CH%s_RX_END       at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      CH%s_TX_ERR       at 0 range 4 .. 4;
      Reserved_5_5      at 0 range 5 .. 5;
      CH%s_RX_ERR       at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      CH%s_TX_THR_EVENT at 0 range 8 .. 8;
      Reserved_9_9      at 0 range 9 .. 9;
      CH%s_RX_THR_EVENT at 0 range 10 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      CH%s_TX_LOOP      at 0 range 12 .. 12;
      Reserved_13_31    at 0 range 13 .. 31;
   end record;

   subtype CHCARRIER_DUTY_CARRIER_LOW_Field is HAL.UInt16;
   subtype CHCARRIER_DUTY_CARRIER_HIGH_Field is HAL.UInt16;

   --  Channel %s duty cycle configuration register
   type CHCARRIER_DUTY_Register is record
      --  This register is used to configure carrier wave 's low level clock
      --  period for CHANNEL%s.
      CARRIER_LOW  : CHCARRIER_DUTY_CARRIER_LOW_Field := 16#40#;
      --  This register is used to configure carrier wave 's high level clock
      --  period for CHANNEL%s.
      CARRIER_HIGH : CHCARRIER_DUTY_CARRIER_HIGH_Field := 16#40#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCARRIER_DUTY_Register use record
      CARRIER_LOW  at 0 range 0 .. 15;
      CARRIER_HIGH at 0 range 16 .. 31;
   end record;

   --  Channel %s duty cycle configuration register
   type CHCARRIER_DUTY_Registers is array (0 .. 1) of CHCARRIER_DUTY_Register;

   subtype CH_RX_CARRIER_RM_CARRIER_LOW_THRES_Field is HAL.UInt16;
   subtype CH_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field is HAL.UInt16;

   --  Channel %s carrier remove register
   type CH_RX_CARRIER_RM_Register is record
      --  The low level period in a carrier modulation mode is
      --  (REG_RMT_REG_CARRIER_LOW_THRES_CH%s + 1) for channel %s.
      CARRIER_LOW_THRES  : CH_RX_CARRIER_RM_CARRIER_LOW_THRES_Field := 16#0#;
      --  The high level period in a carrier modulation mode is
      --  (REG_RMT_REG_CARRIER_HIGH_THRES_CH%s + 1) for channel %s.
      CARRIER_HIGH_THRES : CH_RX_CARRIER_RM_CARRIER_HIGH_THRES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_CARRIER_RM_Register use record
      CARRIER_LOW_THRES  at 0 range 0 .. 15;
      CARRIER_HIGH_THRES at 0 range 16 .. 31;
   end record;

   --  Channel %s carrier remove register
   type CH_RX_CARRIER_RM_Registers is array (0 .. 1)
     of CH_RX_CARRIER_RM_Register;

   subtype CH_TX_LIM_TX_LIM_Field is HAL.UInt9;
   subtype CH_TX_LIM_TX_LOOP_NUM_Field is HAL.UInt10;

   --  Channel %s Tx event configuration register
   type CH_TX_LIM_Register is record
      --  This register is used to configure the maximum entries that CHANNEL%s
      --  can send out.
      TX_LIM           : CH_TX_LIM_TX_LIM_Field := 16#80#;
      --  This register is used to configure the maximum loop count when
      --  tx_conti_mode is valid.
      TX_LOOP_NUM      : CH_TX_LIM_TX_LOOP_NUM_Field := 16#0#;
      --  This register is the enabled bit for loop count.
      TX_LOOP_CNT_EN   : Boolean := False;
      --  Write-only. This register is used to reset the loop count when
      --  tx_conti_mode is valid.
      LOOP_COUNT_RESET : Boolean := False;
      --  This bit is used to enable the loop send stop function after the loop
      --  counter counts to loop number for CHANNEL%s.
      LOOP_STOP_EN     : Boolean := False;
      --  unspecified
      Reserved_22_31   : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_TX_LIM_Register use record
      TX_LIM           at 0 range 0 .. 8;
      TX_LOOP_NUM      at 0 range 9 .. 18;
      TX_LOOP_CNT_EN   at 0 range 19 .. 19;
      LOOP_COUNT_RESET at 0 range 20 .. 20;
      LOOP_STOP_EN     at 0 range 21 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   --  Channel %s Tx event configuration register
   type CH_TX_LIM_Registers is array (0 .. 1) of CH_TX_LIM_Register;

   subtype CH_RX_LIM_RMT_RX_LIM_Field is HAL.UInt9;

   --  Channel %s Rx event configuration register
   type CH_RX_LIM_Register is record
      --  This register is used to configure the maximum entries that CHANNEL%s
      --  can receive.
      RMT_RX_LIM    : CH_RX_LIM_RMT_RX_LIM_Field := 16#80#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_RX_LIM_Register use record
      RMT_RX_LIM    at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Channel %s Rx event configuration register
   type CH_RX_LIM_Registers is array (0 .. 1) of CH_RX_LIM_Register;

   subtype SYS_CONF_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype SYS_CONF_SCLK_DIV_A_Field is HAL.UInt6;
   subtype SYS_CONF_SCLK_DIV_B_Field is HAL.UInt6;
   subtype SYS_CONF_SCLK_SEL_Field is HAL.UInt2;

   --  RMT apb configuration register
   type SYS_CONF_Register is record
      --  1'h1: access memory directly. 1'h0: access memory by FIFO.
      APB_FIFO_MASK    : Boolean := False;
      --  Set this bit to enable the clock for RMT memory.
      MEM_CLK_FORCE_ON : Boolean := False;
      --  Set this bit to power down RMT memory.
      MEM_FORCE_PD     : Boolean := False;
      --  1: Disable RMT memory light sleep power down function. 0: Power down
      --  RMT memory when RMT is in light sleep mode.
      MEM_FORCE_PU     : Boolean := False;
      --  the integral part of the fractional divisor
      SCLK_DIV_NUM     : SYS_CONF_SCLK_DIV_NUM_Field := 16#1#;
      --  the numerator of the fractional part of the fractional divisor
      SCLK_DIV_A       : SYS_CONF_SCLK_DIV_A_Field := 16#0#;
      --  the denominator of the fractional part of the fractional divisor
      SCLK_DIV_B       : SYS_CONF_SCLK_DIV_B_Field := 16#0#;
      --  choose the clock source of rmt_sclk. 1:CLK_80Mhz,2:CLK_FOSC, 3:XTAL
      SCLK_SEL         : SYS_CONF_SCLK_SEL_Field := 16#1#;
      --  rmt_sclk switch
      SCLK_ACTIVE      : Boolean := True;
      --  unspecified
      Reserved_27_30   : HAL.UInt4 := 16#0#;
      --  RMT register clock gate enable signal. 1: Power up the drive clock of
      --  registers. 0: Power down the drive clock of registers
      CLK_EN           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYS_CONF_Register use record
      APB_FIFO_MASK    at 0 range 0 .. 0;
      MEM_CLK_FORCE_ON at 0 range 1 .. 1;
      MEM_FORCE_PD     at 0 range 2 .. 2;
      MEM_FORCE_PU     at 0 range 3 .. 3;
      SCLK_DIV_NUM     at 0 range 4 .. 11;
      SCLK_DIV_A       at 0 range 12 .. 17;
      SCLK_DIV_B       at 0 range 18 .. 23;
      SCLK_SEL         at 0 range 24 .. 25;
      SCLK_ACTIVE      at 0 range 26 .. 26;
      Reserved_27_30   at 0 range 27 .. 30;
      CLK_EN           at 0 range 31 .. 31;
   end record;

   --  TX_SIM_CH array
   type TX_SIM_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TX_SIM_CH
   type TX_SIM_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : HAL.UInt2;
         when True =>
            --  CH as an array
            Arr : TX_SIM_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TX_SIM_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RMT TX synchronous register
   type TX_SIM_Register is record
      --  Set this bit to enable CHANNEL0 to start sending data synchronously
      --  with other enabled channels.
      CH            : TX_SIM_CH_Field := (As_Array => False, Val => 16#0#);
      --  This register is used to enable multiple of channels to start sending
      --  data synchronously.
      EN            : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_SIM_Register use record
      CH            at 0 range 0 .. 1;
      EN            at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  REF_CNT_RST_RX_REF_CNT_RST_CH array
   type REF_CNT_RST_RX_REF_CNT_RST_CH_Field_Array is array (2 .. 3)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for REF_CNT_RST_RX_REF_CNT_RST_CH
   type REF_CNT_RST_RX_REF_CNT_RST_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RX_REF_CNT_RST_CH as a value
            Val : HAL.UInt2;
         when True =>
            --  RX_REF_CNT_RST_CH as an array
            Arr : REF_CNT_RST_RX_REF_CNT_RST_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for REF_CNT_RST_RX_REF_CNT_RST_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RMT clock divider reset register
   type REF_CNT_RST_Register is record
      --  Write-only. This register is used to reset the clock divider of
      --  CHANNEL0.
      TX_REF_CNT_RST     : Boolean := False;
      --  Write-only. This register is used to reset the clock divider of
      --  CHANNEL1.
      TX_REF_CNT_RST_CH1 : Boolean := False;
      --  Write-only. This register is used to reset the clock divider of
      --  CHANNEL2.
      RX_REF_CNT_RST_CH  : REF_CNT_RST_RX_REF_CNT_RST_CH_Field :=
                            (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31      : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REF_CNT_RST_Register use record
      TX_REF_CNT_RST     at 0 range 0 .. 0;
      TX_REF_CNT_RST_CH1 at 0 range 1 .. 1;
      RX_REF_CNT_RST_CH  at 0 range 2 .. 3;
      Reserved_4_31      at 0 range 4 .. 31;
   end record;

   subtype DATE_RMT_DATE_Field is HAL.UInt28;

   --  RMT version register
   type DATE_Register is record
      --  This is the version register.
      RMT_DATE       : DATE_RMT_DATE_Field := 16#2108213#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      RMT_DATE       at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Remote Control
   type RMT_Peripheral is record
      --  The read and write data register for CHANNEL%s by apb fifo access.
      CHDATA           : aliased CHDATA_Registers;
      --  Channel %s configure register 0
      CH_TX_CONF0      : aliased CH_TX_CONF0_Registers;
      --  Channel %s configure register 0
      CH_RX_CONF00     : aliased CH_RX_CONF_Register;
      --  Channel %s configure register 1
      CH_RX_CONF10     : aliased CH_RX_CONF_Register_1;
      --  Channel %s configure register 0
      CH_RX_CONF01     : aliased CH_RX_CONF_Register;
      --  Channel %s configure register 1
      CH_RX_CONF11     : aliased CH_RX_CONF_Register_1;
      --  Channel %s status register
      CH_TX_STATUS     : aliased CH_TX_STATUS_Registers;
      --  Channel %s status register
      CH_RX_STATUS     : aliased CH_RX_STATUS_Registers;
      --  Raw interrupt status
      INT_RAW          : aliased INT_RAW_Register;
      --  Masked interrupt status
      INT_ST           : aliased INT_ST_Register;
      --  Interrupt enable bits
      INT_ENA          : aliased INT_ENA_Register;
      --  Interrupt clear bits
      INT_CLR          : aliased INT_CLR_Register;
      --  Channel %s duty cycle configuration register
      CHCARRIER_DUTY   : aliased CHCARRIER_DUTY_Registers;
      --  Channel %s carrier remove register
      CH_RX_CARRIER_RM : aliased CH_RX_CARRIER_RM_Registers;
      --  Channel %s Tx event configuration register
      CH_TX_LIM        : aliased CH_TX_LIM_Registers;
      --  Channel %s Rx event configuration register
      CH_RX_LIM        : aliased CH_RX_LIM_Registers;
      --  RMT apb configuration register
      SYS_CONF         : aliased SYS_CONF_Register;
      --  RMT TX synchronous register
      TX_SIM           : aliased TX_SIM_Register;
      --  RMT clock divider reset register
      REF_CNT_RST      : aliased REF_CNT_RST_Register;
      --  RMT version register
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for RMT_Peripheral use record
      CHDATA           at 16#0# range 0 .. 127;
      CH_TX_CONF0      at 16#10# range 0 .. 63;
      CH_RX_CONF00     at 16#18# range 0 .. 31;
      CH_RX_CONF10     at 16#1C# range 0 .. 31;
      CH_RX_CONF01     at 16#20# range 0 .. 31;
      CH_RX_CONF11     at 16#24# range 0 .. 31;
      CH_TX_STATUS     at 16#28# range 0 .. 63;
      CH_RX_STATUS     at 16#30# range 0 .. 63;
      INT_RAW          at 16#38# range 0 .. 31;
      INT_ST           at 16#3C# range 0 .. 31;
      INT_ENA          at 16#40# range 0 .. 31;
      INT_CLR          at 16#44# range 0 .. 31;
      CHCARRIER_DUTY   at 16#48# range 0 .. 63;
      CH_RX_CARRIER_RM at 16#50# range 0 .. 63;
      CH_TX_LIM        at 16#58# range 0 .. 63;
      CH_RX_LIM        at 16#60# range 0 .. 63;
      SYS_CONF         at 16#68# range 0 .. 31;
      TX_SIM           at 16#6C# range 0 .. 31;
      REF_CNT_RST      at 16#70# range 0 .. 31;
      DATE             at 16#CC# range 0 .. 31;
   end record;

   --  Remote Control
   RMT_Periph : aliased RMT_Peripheral
     with Import, Address => RMT_Base;

end ESP32_C6_SVD.RMT;
