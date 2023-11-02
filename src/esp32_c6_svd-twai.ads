pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.TWAI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  TWAI mode register.
   type MODE_Register is record
      --  1: reset, detection of a set reset mode bit results in aborting the
      --  current transmission/reception of a message and entering the reset
      --  mode. 0: normal, on the '1-to-0' transition of the reset mode bit,
      --  the TWAI controller returns to the operating mode.
      RESET_MODE       : Boolean := True;
      --  1: listen only, in this mode the TWAI controller would give no
      --  acknowledge to the TWAI-bus, even if a message is received
      --  successfully. The error counters are stopped at the current value. 0:
      --  normal.
      LISTEN_ONLY_MODE : Boolean := False;
      --  1: self test, in this mode a full node test is possible without any
      --  other active node on the bus using the self reception request
      --  command. The TWAI controller will perform a successful transmission,
      --  even if there is no acknowledge received. 0: normal, an acknowledge
      --  is required for successful transmission.
      SELF_TEST_MODE   : Boolean := False;
      --  1:single, the single acceptance filter option is enabled (one filter
      --  with the length of 32 bit is active). 0:dual, the dual acceptance
      --  filter option is enabled (two filters, each with the length of 16 bit
      --  are active).
      RX_FILTER_MODE   : Boolean := False;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      RESET_MODE       at 0 range 0 .. 0;
      LISTEN_ONLY_MODE at 0 range 1 .. 1;
      SELF_TEST_MODE   at 0 range 2 .. 2;
      RX_FILTER_MODE   at 0 range 3 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   --  TWAI command register.
   type CMD_Register is record
      --  Write-only. 1: present, a message shall be transmitted. 0: absent
      TX_REQ             : Boolean := False;
      --  Write-only. 1: present, if not already in progress, a pending
      --  transmission request is cancelled. 0: absent
      ABORT_TX           : Boolean := False;
      --  Write-only. 1: released, the receive buffer, representing the message
      --  memory space in the RXFIFO is released. 0: no action
      RELEASE_BUF        : Boolean := False;
      --  Write-only. 1: clear, the data overrun status bit is cleared. 0: no
      --  action.
      CLEAR_DATA_OVERRUN : Boolean := False;
      --  Write-only. 1: present, a message shall be transmitted and received
      --  simultaneously. 0: absent.
      SELF_RX_REQUEST    : Boolean := False;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      TX_REQ             at 0 range 0 .. 0;
      ABORT_TX           at 0 range 1 .. 1;
      RELEASE_BUF        at 0 range 2 .. 2;
      CLEAR_DATA_OVERRUN at 0 range 3 .. 3;
      SELF_RX_REQUEST    at 0 range 4 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   --  TWAI status register.
   type STATUS_Register is record
      --  Read-only. 1: full, one or more complete messages are available in
      --  the RXFIFO. 0: empty, no message is available
      RX_BUF_ST             : Boolean;
      --  Read-only. 1: overrun, a message was lost because there was not
      --  enough space for that message in the RXFIFO. 0: absent, no data
      --  overrun has occurred since the last clear data overrun command was
      --  given
      OVERRUN               : Boolean;
      --  Read-only. 1: released, the CPU may write a message into the transmit
      --  buffer. 0: locked, the CPU cannot access the transmit buffer, a
      --  message is either waiting for transmission or is in the process of
      --  being transmitted
      TX_BUF_ST             : Boolean;
      --  Read-only. 1: complete, last requested transmission has been
      --  successfully completed. 0: incomplete, previously requested
      --  transmission is not yet completed
      TRANSMISSION_COMPLETE : Boolean;
      --  Read-only. 1: receive, the TWAI controller is receiving a message. 0:
      --  idle
      RECEIVE               : Boolean;
      --  Read-only. 1: transmit, the TWAI controller is transmitting a
      --  message. 0: idle
      TRANSMIT              : Boolean;
      --  Read-only. 1: error, at least one of the error counters has reached
      --  or exceeded the CPU warning limit defined by the Error Warning Limit
      --  Register (EWLR). 0: ok, both error counters are below the warning
      --  limit
      ERR                   : Boolean;
      --  Read-only. 1: bus-off, the TWAI controller is not involved in bus
      --  activities. 0: bus-on, the TWAI controller is involved in bus
      --  activities
      BUS_OFF_ST            : Boolean;
      --  Read-only. 1: current message is destroyed because of FIFO overflow.
      MISS_ST               : Boolean;
      --  unspecified
      Reserved_9_31         : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RX_BUF_ST             at 0 range 0 .. 0;
      OVERRUN               at 0 range 1 .. 1;
      TX_BUF_ST             at 0 range 2 .. 2;
      TRANSMISSION_COMPLETE at 0 range 3 .. 3;
      RECEIVE               at 0 range 4 .. 4;
      TRANSMIT              at 0 range 5 .. 5;
      ERR                   at 0 range 6 .. 6;
      BUS_OFF_ST            at 0 range 7 .. 7;
      MISS_ST               at 0 range 8 .. 8;
      Reserved_9_31         at 0 range 9 .. 31;
   end record;

   --  Interrupt signals' register.
   type INTERRUPT_Register is record
      --  Read-only. 1: this bit is set while the receive FIFO is not empty and
      --  the RIE bit is set within the interrupt enable register. 0: reset
      RECEIVE_INT_ST          : Boolean;
      --  Read-only. 1: this bit is set whenever the transmit buffer status
      --  changes from '0-to-1' (released) and the TIE bit is set within the
      --  interrupt enable register. 0: reset
      TRANSMIT_INT_ST         : Boolean;
      --  Read-only. 1: this bit is set on every change (set and clear) of
      --  either the error status or bus status bits and the EIE bit is set
      --  within the interrupt enable register. 0: reset
      ERR_WARNING_INT_ST      : Boolean;
      --  Read-only. 1: this bit is set on a '0-to-1' transition of the data
      --  overrun status bit and the DOIE bit is set within the interrupt
      --  enable register. 0: reset
      DATA_OVERRUN_INT_ST     : Boolean;
      --  unspecified
      Reserved_4_4            : HAL.Bit;
      --  Read-only. 1: this bit is set whenever the TWAI controller has
      --  reached the error passive status (at least one error counter exceeds
      --  the protocol-defined level of 127) or if the TWAI controller is in
      --  the error passive status and enters the error active status again and
      --  the EPIE bit is set within the interrupt enable register. 0: reset
      ERR_PASSIVE_INT_ST      : Boolean;
      --  Read-only. 1: this bit is set when the TWAI controller lost the
      --  arbitration and becomes a receiver and the ALIE bit is set within the
      --  interrupt enable register. 0: reset
      ARBITRATION_LOST_INT_ST : Boolean;
      --  Read-only. 1: this bit is set when the TWAI controller detects an
      --  error on the TWAI-bus and the BEIE bit is set within the interrupt
      --  enable register. 0: reset
      BUS_ERR_INT_ST          : Boolean;
      --  Read-only. 1: this bit is set when the TWAI controller detects state
      --  of TWAI become IDLE and this interrupt enable bit is set within the
      --  interrupt enable register. 0: reset
      IDLE_INT_ST             : Boolean;
      --  unspecified
      Reserved_9_31           : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRUPT_Register use record
      RECEIVE_INT_ST          at 0 range 0 .. 0;
      TRANSMIT_INT_ST         at 0 range 1 .. 1;
      ERR_WARNING_INT_ST      at 0 range 2 .. 2;
      DATA_OVERRUN_INT_ST     at 0 range 3 .. 3;
      Reserved_4_4            at 0 range 4 .. 4;
      ERR_PASSIVE_INT_ST      at 0 range 5 .. 5;
      ARBITRATION_LOST_INT_ST at 0 range 6 .. 6;
      BUS_ERR_INT_ST          at 0 range 7 .. 7;
      IDLE_INT_ST             at 0 range 8 .. 8;
      Reserved_9_31           at 0 range 9 .. 31;
   end record;

   --  Interrupt enable register.
   type INTERRUPT_ENABLE_Register is record
      --  1: enabled, when the receive buffer status is 'full' the TWAI
      --  controller requests the respective interrupt. 0: disable
      EXT_RECEIVE_INT_ENA      : Boolean := False;
      --  1: enabled, when a message has been successfully transmitted or the
      --  transmit buffer is accessible again (e.g. after an abort transmission
      --  command), the TWAI controller requests the respective interrupt. 0:
      --  disable
      EXT_TRANSMIT_INT_ENA     : Boolean := False;
      --  1: enabled, if the error or bus status change (see status register.
      --  Table 14), the TWAI controllerrequests the respective interrupt. 0:
      --  disable
      EXT_ERR_WARNING_INT_ENA  : Boolean := False;
      --  1: enabled, if the data overrun status bit is set (see status
      --  register. Table 14), the TWAI controllerrequests the respective
      --  interrupt. 0: disable
      EXT_DATA_OVERRUN_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_4_4             : HAL.Bit := 16#0#;
      --  1: enabled, if the error status of the TWAI controller changes from
      --  error active to error passive or vice versa, the respective interrupt
      --  is requested. 0: disable
      ERR_PASSIVE_INT_ENA      : Boolean := False;
      --  1: enabled, if the TWAI controller has lost arbitration, the
      --  respective interrupt is requested. 0: disable
      ARBITRATION_LOST_INT_ENA : Boolean := False;
      --  1: enabled, if an bus error has been detected, the TWAI controller
      --  requests the respective interrupt. 0: disable
      BUS_ERR_INT_ENA          : Boolean := False;
      --  Read-only. 1: enabled, if state of TWAI become IDLE, the TWAI
      --  controller requests the respective interrupt. 0: disable
      IDLE_INT_ENA             : Boolean := False;
      --  unspecified
      Reserved_9_31            : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRUPT_ENABLE_Register use record
      EXT_RECEIVE_INT_ENA      at 0 range 0 .. 0;
      EXT_TRANSMIT_INT_ENA     at 0 range 1 .. 1;
      EXT_ERR_WARNING_INT_ENA  at 0 range 2 .. 2;
      EXT_DATA_OVERRUN_INT_ENA at 0 range 3 .. 3;
      Reserved_4_4             at 0 range 4 .. 4;
      ERR_PASSIVE_INT_ENA      at 0 range 5 .. 5;
      ARBITRATION_LOST_INT_ENA at 0 range 6 .. 6;
      BUS_ERR_INT_ENA          at 0 range 7 .. 7;
      IDLE_INT_ENA             at 0 range 8 .. 8;
      Reserved_9_31            at 0 range 9 .. 31;
   end record;

   subtype BUS_TIMING_0_BAUD_PRESC_Field is HAL.UInt14;
   subtype BUS_TIMING_0_SYNC_JUMP_WIDTH_Field is HAL.UInt2;

   --  Bit timing configuration register 0.
   type BUS_TIMING_0_Register is record
      --  The period of the TWAI system clock is programmable and determines
      --  the individual bit timing. Software has R/W permission in reset mode
      --  and RO permission in operation mode.
      BAUD_PRESC      : BUS_TIMING_0_BAUD_PRESC_Field := 16#0#;
      --  The synchronization jump width defines the maximum number of clock
      --  cycles a bit period may be shortened or lengthened. Software has R/W
      --  permission in reset mode and RO in operation mode.
      SYNC_JUMP_WIDTH : BUS_TIMING_0_SYNC_JUMP_WIDTH_Field := 16#0#;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMING_0_Register use record
      BAUD_PRESC      at 0 range 0 .. 13;
      SYNC_JUMP_WIDTH at 0 range 14 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype BUS_TIMING_1_TIME_SEG1_Field is HAL.UInt4;
   subtype BUS_TIMING_1_TIME_SEG2_Field is HAL.UInt3;

   --  Bit timing configuration register 1.
   type BUS_TIMING_1_Register is record
      --  The number of clock cycles in TSEG1 per bit timing. Software has R/W
      --  permission in reset mode and RO in operation mode.
      TIME_SEG1     : BUS_TIMING_1_TIME_SEG1_Field := 16#0#;
      --  The number of clock cycles in TSEG2 per bit timing. Software has R/W
      --  permission in reset mode and RO in operation mode.
      TIME_SEG2     : BUS_TIMING_1_TIME_SEG2_Field := 16#0#;
      --  1: triple, the bus is sampled three times. 0: single, the bus is
      --  sampled once. Software has R/W permission in reset mode and RO in
      --  operation mode.
      TIME_SAMP     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMING_1_Register use record
      TIME_SEG1     at 0 range 0 .. 3;
      TIME_SEG2     at 0 range 4 .. 6;
      TIME_SAMP     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ARB_LOST_CAP_ARBITRATION_LOST_CAPTURE_Field is HAL.UInt5;

   --  TWAI arbiter lost capture register.
   type ARB_LOST_CAP_Register is record
      --  Read-only. This register contains information about the bit position
      --  of losing arbitration.
      ARBITRATION_LOST_CAPTURE : ARB_LOST_CAP_ARBITRATION_LOST_CAPTURE_Field;
      --  unspecified
      Reserved_5_31            : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARB_LOST_CAP_Register use record
      ARBITRATION_LOST_CAPTURE at 0 range 0 .. 4;
      Reserved_5_31            at 0 range 5 .. 31;
   end record;

   subtype ERR_CODE_CAP_ERR_CAPTURE_CODE_SEGMENT_Field is HAL.UInt5;
   subtype ERR_CODE_CAP_ERR_CAPTURE_CODE_TYPE_Field is HAL.UInt2;

   --  TWAI error info capture register.
   type ERR_CODE_CAP_Register is record
      --  Read-only. This register contains information about the location of
      --  errors on the bus.
      ERR_CAPTURE_CODE_SEGMENT   : ERR_CODE_CAP_ERR_CAPTURE_CODE_SEGMENT_Field;
      --  Read-only. 1: RX, error occurred during reception. 0: TX, error
      --  occurred during transmission.
      ERR_CAPTURE_CODE_DIRECTION : Boolean;
      --  Read-only. 00: bit error. 01: form error. 10:stuff error. 11:other
      --  type of error.
      ERR_CAPTURE_CODE_TYPE      : ERR_CODE_CAP_ERR_CAPTURE_CODE_TYPE_Field;
      --  unspecified
      Reserved_8_31              : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_CODE_CAP_Register use record
      ERR_CAPTURE_CODE_SEGMENT   at 0 range 0 .. 4;
      ERR_CAPTURE_CODE_DIRECTION at 0 range 5 .. 5;
      ERR_CAPTURE_CODE_TYPE      at 0 range 6 .. 7;
      Reserved_8_31              at 0 range 8 .. 31;
   end record;

   subtype ERR_WARNING_LIMIT_ERR_WARNING_LIMIT_Field is HAL.UInt8;

   --  TWAI error threshold configuration register.
   type ERR_WARNING_LIMIT_Register is record
      --  The threshold that trigger error warning interrupt when this
      --  interrupt is enabled. Software has R/W permission in reset mode and
      --  RO in operation mode.
      ERR_WARNING_LIMIT : ERR_WARNING_LIMIT_ERR_WARNING_LIMIT_Field := 16#60#;
      --  unspecified
      Reserved_8_31     : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_WARNING_LIMIT_Register use record
      ERR_WARNING_LIMIT at 0 range 0 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   subtype RX_ERR_CNT_RX_ERR_CNT_Field is HAL.UInt8;

   --  Rx error counter register.
   type RX_ERR_CNT_Register is record
      --  The RX error counter register reflects the current value of the
      --  transmit error counter. Software has R/W permission in reset mode and
      --  RO in operation mode.
      RX_ERR_CNT    : RX_ERR_CNT_RX_ERR_CNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_ERR_CNT_Register use record
      RX_ERR_CNT    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TX_ERR_CNT_TX_ERR_CNT_Field is HAL.UInt8;

   --  Tx error counter register.
   type TX_ERR_CNT_Register is record
      --  The TX error counter register reflects the current value of the
      --  transmit error counter. Software has R/W permission in reset mode and
      --  RO in operation mode.
      TX_ERR_CNT    : TX_ERR_CNT_TX_ERR_CNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_ERR_CNT_Register use record
      TX_ERR_CNT    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_0_TX_BYTE_0_Field is HAL.UInt8;

   --  Data register 0.
   type DATA_0_Register is record
      --  In reset mode, it is acceptance code register 0 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 0 and when software initiate read operation, it is rx
      --  data register 0.
      TX_BYTE_0     : DATA_0_TX_BYTE_0_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_0_Register use record
      TX_BYTE_0     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_1_TX_BYTE_1_Field is HAL.UInt8;

   --  Data register 1.
   type DATA_1_Register is record
      --  In reset mode, it is acceptance code register 1 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 1 and when software initiate read operation, it is rx
      --  data register 1.
      TX_BYTE_1     : DATA_1_TX_BYTE_1_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_1_Register use record
      TX_BYTE_1     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_2_TX_BYTE_2_Field is HAL.UInt8;

   --  Data register 2.
   type DATA_2_Register is record
      --  In reset mode, it is acceptance code register 2 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 2 and when software initiate read operation, it is rx
      --  data register 2.
      TX_BYTE_2     : DATA_2_TX_BYTE_2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_2_Register use record
      TX_BYTE_2     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_3_TX_BYTE_3_Field is HAL.UInt8;

   --  Data register 3.
   type DATA_3_Register is record
      --  In reset mode, it is acceptance code register 3 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 3 and when software initiate read operation, it is rx
      --  data register 3.
      TX_BYTE_3     : DATA_3_TX_BYTE_3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_3_Register use record
      TX_BYTE_3     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_4_TX_BYTE_4_Field is HAL.UInt8;

   --  Data register 4.
   type DATA_4_Register is record
      --  In reset mode, it is acceptance mask register 0 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 4 and when software initiate read operation, it is rx
      --  data register 4.
      TX_BYTE_4     : DATA_4_TX_BYTE_4_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_4_Register use record
      TX_BYTE_4     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_5_TX_BYTE_5_Field is HAL.UInt8;

   --  Data register 5.
   type DATA_5_Register is record
      --  In reset mode, it is acceptance mask register 1 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 5 and when software initiate read operation, it is rx
      --  data register 5.
      TX_BYTE_5     : DATA_5_TX_BYTE_5_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_5_Register use record
      TX_BYTE_5     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_6_TX_BYTE_6_Field is HAL.UInt8;

   --  Data register 6.
   type DATA_6_Register is record
      --  In reset mode, it is acceptance mask register 2 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 6 and when software initiate read operation, it is rx
      --  data register 6.
      TX_BYTE_6     : DATA_6_TX_BYTE_6_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_6_Register use record
      TX_BYTE_6     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_7_TX_BYTE_7_Field is HAL.UInt8;

   --  Data register 7.
   type DATA_7_Register is record
      --  In reset mode, it is acceptance mask register 3 with R/W Permission.
      --  In operation mode, when software initiate write operation, it is tx
      --  data register 7 and when software initiate read operation, it is rx
      --  data register 7.
      TX_BYTE_7     : DATA_7_TX_BYTE_7_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_7_Register use record
      TX_BYTE_7     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_8_TX_BYTE_8_Field is HAL.UInt8;

   --  Data register 8.
   type DATA_8_Register is record
      --  In reset mode, reserved with RO. In operation mode, when software
      --  initiate write operation, it is tx data register 8 and when software
      --  initiate read operation, it is rx data register 8.
      TX_BYTE_8     : DATA_8_TX_BYTE_8_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_8_Register use record
      TX_BYTE_8     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_9_DATA_9_Field is HAL.UInt8;

   --  Data register 9.
   type DATA_9_Register is record
      --  In reset mode, reserved with RO. In operation mode, when software
      --  initiate write operation, it is tx data register 9 and when software
      --  initiate read operation, it is rx data register 9.
      DATA_9        : DATA_9_DATA_9_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_9_Register use record
      DATA_9        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_10_TX_BYTE_10_Field is HAL.UInt8;

   --  Data register 10.
   type DATA_10_Register is record
      --  In reset mode, reserved with RO. In operation mode, when software
      --  initiate write operation, it is tx data register 10 and when software
      --  initiate read operation, it is rx data register 10.
      TX_BYTE_10    : DATA_10_TX_BYTE_10_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_10_Register use record
      TX_BYTE_10    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_11_TX_BYTE_11_Field is HAL.UInt8;

   --  Data register 11.
   type DATA_11_Register is record
      --  In reset mode, reserved with RO. In operation mode, when software
      --  initiate write operation, it is tx data register 11 and when software
      --  initiate read operation, it is rx data register 11.
      TX_BYTE_11    : DATA_11_TX_BYTE_11_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_11_Register use record
      TX_BYTE_11    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA_12_TX_BYTE_12_Field is HAL.UInt8;

   --  Data register 12.
   type DATA_12_Register is record
      --  In reset mode, reserved with RO. In operation mode, when software
      --  initiate write operation, it is tx data register 12 and when software
      --  initiate read operation, it is rx data register 12.
      TX_BYTE_12    : DATA_12_TX_BYTE_12_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_12_Register use record
      TX_BYTE_12    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RX_MESSAGE_CNT_RX_MESSAGE_COUNTER_Field is HAL.UInt7;

   --  Received message counter register.
   type RX_MESSAGE_CNT_Register is record
      --  Read-only. Reflects the number of messages available within the
      --  RXFIFO. The value is incremented with each receive event and
      --  decremented by the release receive buffer command.
      RX_MESSAGE_COUNTER : RX_MESSAGE_CNT_RX_MESSAGE_COUNTER_Field;
      --  unspecified
      Reserved_7_31      : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_MESSAGE_CNT_Register use record
      RX_MESSAGE_COUNTER at 0 range 0 .. 6;
      Reserved_7_31      at 0 range 7 .. 31;
   end record;

   subtype CLOCK_DIVIDER_CD_Field is HAL.UInt8;

   --  Clock divider register.
   type CLOCK_DIVIDER_Register is record
      --  These bits are used to define the frequency at the external CLKOUT
      --  pin.
      CD            : CLOCK_DIVIDER_CD_Field := 16#0#;
      --  1: Disable the external CLKOUT pin. 0: Enable the external CLKOUT
      --  pin. Software has R/W permission in reset mode and RO in operation
      --  mode.
      CLOCK_OFF     : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_DIVIDER_Register use record
      CD            at 0 range 0 .. 7;
      CLOCK_OFF     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Software configure standby pin directly.
   type SW_STANDBY_CFG_Register is record
      --  Enable standby pin.
      SW_STANDBY_EN  : Boolean := False;
      --  Clear standby pin.
      SW_STANDBY_CLR : Boolean := True;
      --  unspecified
      Reserved_2_31  : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SW_STANDBY_CFG_Register use record
      SW_STANDBY_EN  at 0 range 0 .. 0;
      SW_STANDBY_CLR at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  Hardware configure standby pin.
   type HW_CFG_Register is record
      --  Enable function that hardware control standby pin.
      HW_STANDBY_EN : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HW_CFG_Register use record
      HW_STANDBY_EN at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ECO configuration register.
   type ECO_CFG_Register is record
      --  Enable eco module.
      RDN_ENA       : Boolean := False;
      --  Read-only. Output of eco module.
      RDN_RESULT    : Boolean := True;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECO_CFG_Register use record
      RDN_ENA       at 0 range 0 .. 0;
      RDN_RESULT    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-Wire Automotive Interface
   type TWAI_Peripheral is record
      --  TWAI mode register.
      MODE              : aliased MODE_Register;
      --  TWAI command register.
      CMD               : aliased CMD_Register;
      --  TWAI status register.
      STATUS            : aliased STATUS_Register;
      --  Interrupt signals' register.
      INTERRUPT         : aliased INTERRUPT_Register;
      --  Interrupt enable register.
      INTERRUPT_ENABLE  : aliased INTERRUPT_ENABLE_Register;
      --  Bit timing configuration register 0.
      BUS_TIMING_0      : aliased BUS_TIMING_0_Register;
      --  Bit timing configuration register 1.
      BUS_TIMING_1      : aliased BUS_TIMING_1_Register;
      --  TWAI arbiter lost capture register.
      ARB_LOST_CAP      : aliased ARB_LOST_CAP_Register;
      --  TWAI error info capture register.
      ERR_CODE_CAP      : aliased ERR_CODE_CAP_Register;
      --  TWAI error threshold configuration register.
      ERR_WARNING_LIMIT : aliased ERR_WARNING_LIMIT_Register;
      --  Rx error counter register.
      RX_ERR_CNT        : aliased RX_ERR_CNT_Register;
      --  Tx error counter register.
      TX_ERR_CNT        : aliased TX_ERR_CNT_Register;
      --  Data register 0.
      DATA_0            : aliased DATA_0_Register;
      --  Data register 1.
      DATA_1            : aliased DATA_1_Register;
      --  Data register 2.
      DATA_2            : aliased DATA_2_Register;
      --  Data register 3.
      DATA_3            : aliased DATA_3_Register;
      --  Data register 4.
      DATA_4            : aliased DATA_4_Register;
      --  Data register 5.
      DATA_5            : aliased DATA_5_Register;
      --  Data register 6.
      DATA_6            : aliased DATA_6_Register;
      --  Data register 7.
      DATA_7            : aliased DATA_7_Register;
      --  Data register 8.
      DATA_8            : aliased DATA_8_Register;
      --  Data register 9.
      DATA_9            : aliased DATA_9_Register;
      --  Data register 10.
      DATA_10           : aliased DATA_10_Register;
      --  Data register 11.
      DATA_11           : aliased DATA_11_Register;
      --  Data register 12.
      DATA_12           : aliased DATA_12_Register;
      --  Received message counter register.
      RX_MESSAGE_CNT    : aliased RX_MESSAGE_CNT_Register;
      --  Clock divider register.
      CLOCK_DIVIDER     : aliased CLOCK_DIVIDER_Register;
      --  Software configure standby pin directly.
      SW_STANDBY_CFG    : aliased SW_STANDBY_CFG_Register;
      --  Hardware configure standby pin.
      HW_CFG            : aliased HW_CFG_Register;
      --  Configure standby counter.
      HW_STANDBY_CNT    : aliased HAL.UInt32;
      --  Configure idle interrupt counter.
      IDLE_INTR_CNT     : aliased HAL.UInt32;
      --  ECO configuration register.
      ECO_CFG           : aliased ECO_CFG_Register;
   end record
     with Volatile;

   for TWAI_Peripheral use record
      MODE              at 16#0# range 0 .. 31;
      CMD               at 16#4# range 0 .. 31;
      STATUS            at 16#8# range 0 .. 31;
      INTERRUPT         at 16#C# range 0 .. 31;
      INTERRUPT_ENABLE  at 16#10# range 0 .. 31;
      BUS_TIMING_0      at 16#18# range 0 .. 31;
      BUS_TIMING_1      at 16#1C# range 0 .. 31;
      ARB_LOST_CAP      at 16#2C# range 0 .. 31;
      ERR_CODE_CAP      at 16#30# range 0 .. 31;
      ERR_WARNING_LIMIT at 16#34# range 0 .. 31;
      RX_ERR_CNT        at 16#38# range 0 .. 31;
      TX_ERR_CNT        at 16#3C# range 0 .. 31;
      DATA_0            at 16#40# range 0 .. 31;
      DATA_1            at 16#44# range 0 .. 31;
      DATA_2            at 16#48# range 0 .. 31;
      DATA_3            at 16#4C# range 0 .. 31;
      DATA_4            at 16#50# range 0 .. 31;
      DATA_5            at 16#54# range 0 .. 31;
      DATA_6            at 16#58# range 0 .. 31;
      DATA_7            at 16#5C# range 0 .. 31;
      DATA_8            at 16#60# range 0 .. 31;
      DATA_9            at 16#64# range 0 .. 31;
      DATA_10           at 16#68# range 0 .. 31;
      DATA_11           at 16#6C# range 0 .. 31;
      DATA_12           at 16#70# range 0 .. 31;
      RX_MESSAGE_CNT    at 16#74# range 0 .. 31;
      CLOCK_DIVIDER     at 16#7C# range 0 .. 31;
      SW_STANDBY_CFG    at 16#80# range 0 .. 31;
      HW_CFG            at 16#84# range 0 .. 31;
      HW_STANDBY_CNT    at 16#88# range 0 .. 31;
      IDLE_INTR_CNT     at 16#8C# range 0 .. 31;
      ECO_CFG           at 16#90# range 0 .. 31;
   end record;

   --  Two-Wire Automotive Interface
   TWAI0_Periph : aliased TWAI_Peripheral
     with Import, Address => TWAI0_Base;

   --  Two-Wire Automotive Interface
   TWAI1_Periph : aliased TWAI_Peripheral
     with Import, Address => TWAI1_Base;

end ESP32_C6_SVD.TWAI;
