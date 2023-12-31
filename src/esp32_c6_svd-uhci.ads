pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.UHCI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  UHCI Configuration Register0
   type CONF0_Register is record
      --  Write 1 then write 0 to this bit to reset decode state machine.
      TX_RST             : Boolean := False;
      --  Write 1 then write 0 to this bit to reset encode state machine.
      RX_RST             : Boolean := False;
      --  Set this bit to link up HCI and UART0.
      UART0_CE           : Boolean := False;
      --  Set this bit to link up HCI and UART1.
      UART1_CE           : Boolean := False;
      --  unspecified
      Reserved_4_4       : HAL.Bit := 16#0#;
      --  Set this bit to separate the data frame using a special char.
      SEPER_EN           : Boolean := True;
      --  Set this bit to encode the data packet with a formatting header.
      HEAD_EN            : Boolean := True;
      --  Set this bit to enable UHCI to receive the 16 bit CRC.
      CRC_REC_EN         : Boolean := True;
      --  If this bit is set to 1 UHCI will end the payload receiving process
      --  when UART has been in idle state.
      UART_IDLE_EOF_EN   : Boolean := False;
      --  If this bit is set to 1 UHCI decoder receiving payload data is end
      --  when the receiving byte count has reached the specified value. The
      --  value is payload length indicated by UHCI packet header when
      --  UHCI_HEAD_EN is 1 or the value is configuration value when
      --  UHCI_HEAD_EN is 0. If this bit is set to 0 UHCI decoder receiving
      --  payload data is end when 0xc0 is received.
      LEN_EOF_EN         : Boolean := True;
      --  Set this bit to enable data integrity checking by appending a 16 bit
      --  CCITT-CRC to end of the payload.
      ENCODE_CRC_EN      : Boolean := True;
      --  1'b1: Force clock on for register. 1'b0: Support clock only when
      --  application writes registers.
      CLK_EN             : Boolean := False;
      --  If this bit is set to 1 UHCI will end payload receive process when
      --  NULL frame is received by UART.
      UART_RX_BRK_EOF_EN : Boolean := False;
      --  unspecified
      Reserved_13_31     : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0_Register use record
      TX_RST             at 0 range 0 .. 0;
      RX_RST             at 0 range 1 .. 1;
      UART0_CE           at 0 range 2 .. 2;
      UART1_CE           at 0 range 3 .. 3;
      Reserved_4_4       at 0 range 4 .. 4;
      SEPER_EN           at 0 range 5 .. 5;
      HEAD_EN            at 0 range 6 .. 6;
      CRC_REC_EN         at 0 range 7 .. 7;
      UART_IDLE_EOF_EN   at 0 range 8 .. 8;
      LEN_EOF_EN         at 0 range 9 .. 9;
      ENCODE_CRC_EN      at 0 range 10 .. 10;
      CLK_EN             at 0 range 11 .. 11;
      UART_RX_BRK_EOF_EN at 0 range 12 .. 12;
      Reserved_13_31     at 0 range 13 .. 31;
   end record;

   --  UHCI Interrupt Raw Register
   type INT_RAW_Register is record
      --  Indicates the raw interrupt of UHCI_RX_START_INT. Interrupt will be
      --  triggered when delimiter is sent successfully.
      RX_START_INT_RAW     : Boolean := False;
      --  Indicates the raw interrupt of UHCI_TX_START_INT. Interrupt will be
      --  triggered when DMA detects delimiter.
      TX_START_INT_RAW     : Boolean := False;
      --  Indicates the raw interrupt of UHCI_RX_HUNG_INT. Interrupt will be
      --  triggered when the required time of DMA receiving data exceeds the
      --  configuration value.
      RX_HUNG_INT_RAW      : Boolean := False;
      --  Indicates the raw interrupt of UHCI_TX_HUNG_INT. Interrupt will be
      --  triggered when the required time of DMA reading RAM data exceeds the
      --  configuration value.
      TX_HUNG_INT_RAW      : Boolean := False;
      --  Indicates the raw interrupt of UHCI_SEND_S_REG_Q_INT. Interrupt will
      --  be triggered when UHCI sends short packet successfully with
      --  single_send mode.
      SEND_S_REG_Q_INT_RAW : Boolean := False;
      --  Indicates the raw interrupt of UHCI_SEND_A_REG_Q_INT. Interrupt will
      --  be triggered when UHCI sends short packet successfully with
      --  always_send mode.
      SEND_A_REG_Q_INT_RAW : Boolean := False;
      --  Indicates the raw interrupt of UHCI_OUT_EOF_INT. Interrupt will be
      --  triggered when there are errors in EOF.
      OUT_EOF_INT_RAW      : Boolean := False;
      --  Indicates the raw interrupt of UHCI_APP_CTRL0_INT. Interrupt will be
      --  triggered when UHCI_APP_CTRL0_IN_SET is set to 1.
      APP_CTRL0_INT_RAW    : Boolean := False;
      --  Indicates the raw interrupt of UHCI_APP_CTRL1_INT. Interrupt will be
      --  triggered when UHCI_APP_CTRL1_IN_SET is set to 1.
      APP_CTRL1_INT_RAW    : Boolean := False;
      --  unspecified
      Reserved_9_31        : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      RX_START_INT_RAW     at 0 range 0 .. 0;
      TX_START_INT_RAW     at 0 range 1 .. 1;
      RX_HUNG_INT_RAW      at 0 range 2 .. 2;
      TX_HUNG_INT_RAW      at 0 range 3 .. 3;
      SEND_S_REG_Q_INT_RAW at 0 range 4 .. 4;
      SEND_A_REG_Q_INT_RAW at 0 range 5 .. 5;
      OUT_EOF_INT_RAW      at 0 range 6 .. 6;
      APP_CTRL0_INT_RAW    at 0 range 7 .. 7;
      APP_CTRL1_INT_RAW    at 0 range 8 .. 8;
      Reserved_9_31        at 0 range 9 .. 31;
   end record;

   --  UHCI Interrupt Status Register
   type INT_ST_Register is record
      --  Read-only. Indicates the interrupt status of UHCI_RX_START_INT.
      RX_START_INT_ST        : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_TX_START_INT.
      TX_START_INT_ST        : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_RX_HUNG_INT.
      RX_HUNG_INT_ST         : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_TX_HUNG_INT.
      TX_HUNG_INT_ST         : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_SEND_S_REG_Q_INT.
      SEND_S_REG_Q_INT_ST    : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_SEND_A_REG_Q_INT.
      SEND_A_REG_Q_INT_ST    : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_OUT_EOF_INT.
      OUTLINK_EOF_ERR_INT_ST : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_APP_CTRL0_INT.
      APP_CTRL0_INT_ST       : Boolean;
      --  Read-only. Indicates the interrupt status of UHCI_APP_CTRL1_INT.
      APP_CTRL1_INT_ST       : Boolean;
      --  unspecified
      Reserved_9_31          : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      RX_START_INT_ST        at 0 range 0 .. 0;
      TX_START_INT_ST        at 0 range 1 .. 1;
      RX_HUNG_INT_ST         at 0 range 2 .. 2;
      TX_HUNG_INT_ST         at 0 range 3 .. 3;
      SEND_S_REG_Q_INT_ST    at 0 range 4 .. 4;
      SEND_A_REG_Q_INT_ST    at 0 range 5 .. 5;
      OUTLINK_EOF_ERR_INT_ST at 0 range 6 .. 6;
      APP_CTRL0_INT_ST       at 0 range 7 .. 7;
      APP_CTRL1_INT_ST       at 0 range 8 .. 8;
      Reserved_9_31          at 0 range 9 .. 31;
   end record;

   --  UHCI Interrupt Enable Register
   type INT_ENA_Register is record
      --  Set this bit to enable the interrupt of UHCI_RX_START_INT.
      RX_START_INT_ENA        : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_TX_START_INT.
      TX_START_INT_ENA        : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_RX_HUNG_INT.
      RX_HUNG_INT_ENA         : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_TX_HUNG_INT.
      TX_HUNG_INT_ENA         : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_SEND_S_REG_Q_INT.
      SEND_S_REG_Q_INT_ENA    : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_SEND_A_REG_Q_INT.
      SEND_A_REG_Q_INT_ENA    : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_OUT_EOF_INT.
      OUTLINK_EOF_ERR_INT_ENA : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_APP_CTRL0_INT.
      APP_CTRL0_INT_ENA       : Boolean := False;
      --  Set this bit to enable the interrupt of UHCI_APP_CTRL1_INT.
      APP_CTRL1_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_9_31           : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      RX_START_INT_ENA        at 0 range 0 .. 0;
      TX_START_INT_ENA        at 0 range 1 .. 1;
      RX_HUNG_INT_ENA         at 0 range 2 .. 2;
      TX_HUNG_INT_ENA         at 0 range 3 .. 3;
      SEND_S_REG_Q_INT_ENA    at 0 range 4 .. 4;
      SEND_A_REG_Q_INT_ENA    at 0 range 5 .. 5;
      OUTLINK_EOF_ERR_INT_ENA at 0 range 6 .. 6;
      APP_CTRL0_INT_ENA       at 0 range 7 .. 7;
      APP_CTRL1_INT_ENA       at 0 range 8 .. 8;
      Reserved_9_31           at 0 range 9 .. 31;
   end record;

   --  UHCI Interrupt Clear Register
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_RX_START_INT.
      RX_START_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_TX_START_INT.
      TX_START_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_RX_HUNG_INT.
      RX_HUNG_INT_CLR         : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_TX_HUNG_INT.
      TX_HUNG_INT_CLR         : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_SEND_S_REG_Q_INT.
      SEND_S_REG_Q_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_SEND_A_REG_Q_INT.
      SEND_A_REG_Q_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_OUT_EOF_INT.
      OUTLINK_EOF_ERR_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_APP_CTRL0_INT.
      APP_CTRL0_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the raw interrupt of
      --  UHCI_APP_CTRL1_INT.
      APP_CTRL1_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_9_31           : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      RX_START_INT_CLR        at 0 range 0 .. 0;
      TX_START_INT_CLR        at 0 range 1 .. 1;
      RX_HUNG_INT_CLR         at 0 range 2 .. 2;
      TX_HUNG_INT_CLR         at 0 range 3 .. 3;
      SEND_S_REG_Q_INT_CLR    at 0 range 4 .. 4;
      SEND_A_REG_Q_INT_CLR    at 0 range 5 .. 5;
      OUTLINK_EOF_ERR_INT_CLR at 0 range 6 .. 6;
      APP_CTRL0_INT_CLR       at 0 range 7 .. 7;
      APP_CTRL1_INT_CLR       at 0 range 8 .. 8;
      Reserved_9_31           at 0 range 9 .. 31;
   end record;

   --  UHCI Configuration Register1
   type CONF1_Register is record
      --  Set this bit to enable head checksum check when receiving.
      CHECK_SUM_EN    : Boolean := True;
      --  Set this bit to enable sequence number check when receiving.
      CHECK_SEQ_EN    : Boolean := True;
      --  Set this bit to support CRC calculation, and data integrity check bit
      --  should 1.
      CRC_DISABLE     : Boolean := False;
      --  Set this bit to save data packet head when UHCI receive data.
      SAVE_HEAD       : Boolean := False;
      --  Set this bit to encode data packet with checksum.
      TX_CHECK_SUM_RE : Boolean := True;
      --  Set this bit to encode data packet with ACK when reliable data packet
      --  is ready.
      TX_ACK_NUM_RE   : Boolean := True;
      --  unspecified
      Reserved_6_6    : HAL.Bit := 16#0#;
      --  Set this bit to enable UHCI encoder transfer to ST_SW_WAIT status.
      WAIT_SW_START   : Boolean := False;
      --  Write-only. Set this bit to transmit data packet if UCHI_ENCODE_STATE
      --  is ST_SW_WAIT.
      SW_START        : Boolean := False;
      --  unspecified
      Reserved_9_31   : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF1_Register use record
      CHECK_SUM_EN    at 0 range 0 .. 0;
      CHECK_SEQ_EN    at 0 range 1 .. 1;
      CRC_DISABLE     at 0 range 2 .. 2;
      SAVE_HEAD       at 0 range 3 .. 3;
      TX_CHECK_SUM_RE at 0 range 4 .. 4;
      TX_ACK_NUM_RE   at 0 range 5 .. 5;
      Reserved_6_6    at 0 range 6 .. 6;
      WAIT_SW_START   at 0 range 7 .. 7;
      SW_START        at 0 range 8 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   subtype STATE0_RX_ERR_CAUSE_Field is HAL.UInt3;
   subtype STATE0_DECODE_STATE_Field is HAL.UInt3;

   --  UHCI Receive Status Register
   type STATE0_Register is record
      --  Read-only. Indicates the error types when DMA receives the error
      --  frame. 3'b001: UHCI packet checksum error. 3'b010: UHCI packet
      --  sequence number error. 3'b011: UHCI packet CRC bit error. 3'b100:
      --  find 0xC0, but received packet is uncompleted. 3'b101: 0xC0 is not
      --  found, but received packet is completed. 3'b110: CRC check error.
      RX_ERR_CAUSE  : STATE0_RX_ERR_CAUSE_Field;
      --  Read-only. Indicates UHCI decoder status.
      DECODE_STATE  : STATE0_DECODE_STATE_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE0_Register use record
      RX_ERR_CAUSE  at 0 range 0 .. 2;
      DECODE_STATE  at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype STATE1_ENCODE_STATE_Field is HAL.UInt3;

   --  UHCI Transmit Status Register
   type STATE1_Register is record
      --  Read-only. Indicates UHCI encoder status.
      ENCODE_STATE  : STATE1_ENCODE_STATE_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE1_Register use record
      ENCODE_STATE  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  UHCI Escapes Configuration Register0
   type ESCAPE_CONF_Register is record
      --  Set this bit to enable resolve char 0xC0 when DMA receiving data.
      TX_C0_ESC_EN  : Boolean := True;
      --  Set this bit to enable resolve char 0xDB when DMA receiving data.
      TX_DB_ESC_EN  : Boolean := True;
      --  Set this bit to enable resolve flow control char 0x11 when DMA
      --  receiving data.
      TX_11_ESC_EN  : Boolean := False;
      --  Set this bit to enable resolve flow control char 0x13 when DMA
      --  receiving data.
      TX_13_ESC_EN  : Boolean := False;
      --  Set this bit to enable replacing 0xC0 with special char when DMA
      --  receiving data.
      RX_C0_ESC_EN  : Boolean := True;
      --  Set this bit to enable replacing 0xDB with special char when DMA
      --  receiving data.
      RX_DB_ESC_EN  : Boolean := True;
      --  Set this bit to enable replacing 0x11 with special char when DMA
      --  receiving data.
      RX_11_ESC_EN  : Boolean := False;
      --  Set this bit to enable replacing 0x13 with special char when DMA
      --  receiving data.
      RX_13_ESC_EN  : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESCAPE_CONF_Register use record
      TX_C0_ESC_EN  at 0 range 0 .. 0;
      TX_DB_ESC_EN  at 0 range 1 .. 1;
      TX_11_ESC_EN  at 0 range 2 .. 2;
      TX_13_ESC_EN  at 0 range 3 .. 3;
      RX_C0_ESC_EN  at 0 range 4 .. 4;
      RX_DB_ESC_EN  at 0 range 5 .. 5;
      RX_11_ESC_EN  at 0 range 6 .. 6;
      RX_13_ESC_EN  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype HUNG_CONF_TXFIFO_TIMEOUT_Field is HAL.UInt8;
   subtype HUNG_CONF_TXFIFO_TIMEOUT_SHIFT_Field is HAL.UInt3;
   subtype HUNG_CONF_RXFIFO_TIMEOUT_Field is HAL.UInt8;
   subtype HUNG_CONF_RXFIFO_TIMEOUT_SHIFT_Field is HAL.UInt3;

   --  UHCI Hung Configuration Register0
   type HUNG_CONF_Register is record
      --  Stores the timeout value. DMA generates UHCI_TX_HUNG_INT for timeout
      --  when receiving data.
      TXFIFO_TIMEOUT       : HUNG_CONF_TXFIFO_TIMEOUT_Field := 16#10#;
      --  Configures the maximum counter value.
      TXFIFO_TIMEOUT_SHIFT : HUNG_CONF_TXFIFO_TIMEOUT_SHIFT_Field := 16#0#;
      --  Set this bit to enable TX FIFO timeout when receiving.
      TXFIFO_TIMEOUT_ENA   : Boolean := True;
      --  Stores the timeout value. DMA generates UHCI_TX_HUNG_INT for timeout
      --  when reading RAM data.
      RXFIFO_TIMEOUT       : HUNG_CONF_RXFIFO_TIMEOUT_Field := 16#10#;
      --  Configures the maximum counter value.
      RXFIFO_TIMEOUT_SHIFT : HUNG_CONF_RXFIFO_TIMEOUT_SHIFT_Field := 16#0#;
      --  Set this bit to enable TX FIFO timeout when DMA sending data.
      RXFIFO_TIMEOUT_ENA   : Boolean := True;
      --  unspecified
      Reserved_24_31       : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HUNG_CONF_Register use record
      TXFIFO_TIMEOUT       at 0 range 0 .. 7;
      TXFIFO_TIMEOUT_SHIFT at 0 range 8 .. 10;
      TXFIFO_TIMEOUT_ENA   at 0 range 11 .. 11;
      RXFIFO_TIMEOUT       at 0 range 12 .. 19;
      RXFIFO_TIMEOUT_SHIFT at 0 range 20 .. 22;
      RXFIFO_TIMEOUT_ENA   at 0 range 23 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   subtype ACK_NUM_ACK_NUM_Field is HAL.UInt3;

   --  UHCI Ack Value Configuration Register0
   type ACK_NUM_Register is record
      --  Indicates the ACK number during software flow control.
      ACK_NUM       : ACK_NUM_ACK_NUM_Field := 16#0#;
      --  Write-only. Set this bit to load the ACK value of UHCI_ACK_NUM.
      LOAD          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACK_NUM_Register use record
      ACK_NUM       at 0 range 0 .. 2;
      LOAD          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype QUICK_SENT_SINGLE_SEND_NUM_Field is HAL.UInt3;
   subtype QUICK_SENT_ALWAYS_SEND_NUM_Field is HAL.UInt3;

   --  UCHI Quick send Register
   type QUICK_SENT_Register is record
      --  Configures single_send mode.
      SINGLE_SEND_NUM : QUICK_SENT_SINGLE_SEND_NUM_Field := 16#0#;
      --  Write-only. Set this bit to enable sending short packet with
      --  single_send mode.
      SINGLE_SEND_EN  : Boolean := False;
      --  Configures always_send mode.
      ALWAYS_SEND_NUM : QUICK_SENT_ALWAYS_SEND_NUM_Field := 16#0#;
      --  Set this bit to enable sending short packet with always_send mode.
      ALWAYS_SEND_EN  : Boolean := False;
      --  unspecified
      Reserved_8_31   : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QUICK_SENT_Register use record
      SINGLE_SEND_NUM at 0 range 0 .. 2;
      SINGLE_SEND_EN  at 0 range 3 .. 3;
      ALWAYS_SEND_NUM at 0 range 4 .. 6;
      ALWAYS_SEND_EN  at 0 range 7 .. 7;
      Reserved_8_31   at 0 range 8 .. 31;
   end record;

   subtype ESC_CONF0_SEPER_CHAR_Field is HAL.UInt8;
   --  ESC_CONF0_SEPER_ESC_CHAR array element
   subtype ESC_CONF0_SEPER_ESC_CHAR_Element is HAL.UInt8;

   --  ESC_CONF0_SEPER_ESC_CHAR array
   type ESC_CONF0_SEPER_ESC_CHAR_Field_Array is array (0 .. 1)
     of ESC_CONF0_SEPER_ESC_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ESC_CONF0_SEPER_ESC_CHAR
   type ESC_CONF0_SEPER_ESC_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEPER_ESC_CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  SEPER_ESC_CHAR as an array
            Arr : ESC_CONF0_SEPER_ESC_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ESC_CONF0_SEPER_ESC_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  UHCI Escapes Sequence Configuration Register0
   type ESC_CONF0_Register is record
      --  Configures the delimiter for encoding, default value is 0xC0.
      SEPER_CHAR     : ESC_CONF0_SEPER_CHAR_Field := 16#C0#;
      --  Configures the first char of SLIP escape character, default value is
      --  0xDB.
      SEPER_ESC_CHAR : ESC_CONF0_SEPER_ESC_CHAR_Field :=
                        (As_Array => False, Val => 16#DB#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESC_CONF0_Register use record
      SEPER_CHAR     at 0 range 0 .. 7;
      SEPER_ESC_CHAR at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ESC_CONF1_ESC_SEQ0_Field is HAL.UInt8;
   --  ESC_CONF1_ESC_SEQ0_CHAR array element
   subtype ESC_CONF1_ESC_SEQ0_CHAR_Element is HAL.UInt8;

   --  ESC_CONF1_ESC_SEQ0_CHAR array
   type ESC_CONF1_ESC_SEQ0_CHAR_Field_Array is array (0 .. 1)
     of ESC_CONF1_ESC_SEQ0_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ESC_CONF1_ESC_SEQ0_CHAR
   type ESC_CONF1_ESC_SEQ0_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ESC_SEQ0_CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  ESC_SEQ0_CHAR as an array
            Arr : ESC_CONF1_ESC_SEQ0_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ESC_CONF1_ESC_SEQ0_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  UHCI Escapes Sequence Configuration Register1
   type ESC_CONF1_Register is record
      --  Configures the char needing encoding, which is 0xDB as flow control
      --  char by default.
      ESC_SEQ0       : ESC_CONF1_ESC_SEQ0_Field := 16#DB#;
      --  Configures the first char of SLIP escape character, default value is
      --  0xDB.
      ESC_SEQ0_CHAR  : ESC_CONF1_ESC_SEQ0_CHAR_Field :=
                        (As_Array => False, Val => 16#DB#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESC_CONF1_Register use record
      ESC_SEQ0       at 0 range 0 .. 7;
      ESC_SEQ0_CHAR  at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ESC_CONF2_ESC_SEQ1_Field is HAL.UInt8;
   --  ESC_CONF2_ESC_SEQ1_CHAR array element
   subtype ESC_CONF2_ESC_SEQ1_CHAR_Element is HAL.UInt8;

   --  ESC_CONF2_ESC_SEQ1_CHAR array
   type ESC_CONF2_ESC_SEQ1_CHAR_Field_Array is array (0 .. 1)
     of ESC_CONF2_ESC_SEQ1_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ESC_CONF2_ESC_SEQ1_CHAR
   type ESC_CONF2_ESC_SEQ1_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ESC_SEQ1_CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  ESC_SEQ1_CHAR as an array
            Arr : ESC_CONF2_ESC_SEQ1_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ESC_CONF2_ESC_SEQ1_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  UHCI Escapes Sequence Configuration Register2
   type ESC_CONF2_Register is record
      --  Configures the char needing encoding, which is 0x11 as flow control
      --  char by default.
      ESC_SEQ1       : ESC_CONF2_ESC_SEQ1_Field := 16#11#;
      --  Configures the first char of SLIP escape character, default value is
      --  0xDB.
      ESC_SEQ1_CHAR  : ESC_CONF2_ESC_SEQ1_CHAR_Field :=
                        (As_Array => False, Val => 16#DB#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESC_CONF2_Register use record
      ESC_SEQ1       at 0 range 0 .. 7;
      ESC_SEQ1_CHAR  at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ESC_CONF3_ESC_SEQ2_Field is HAL.UInt8;
   --  ESC_CONF3_ESC_SEQ2_CHAR array element
   subtype ESC_CONF3_ESC_SEQ2_CHAR_Element is HAL.UInt8;

   --  ESC_CONF3_ESC_SEQ2_CHAR array
   type ESC_CONF3_ESC_SEQ2_CHAR_Field_Array is array (0 .. 1)
     of ESC_CONF3_ESC_SEQ2_CHAR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for ESC_CONF3_ESC_SEQ2_CHAR
   type ESC_CONF3_ESC_SEQ2_CHAR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ESC_SEQ2_CHAR as a value
            Val : HAL.UInt16;
         when True =>
            --  ESC_SEQ2_CHAR as an array
            Arr : ESC_CONF3_ESC_SEQ2_CHAR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ESC_CONF3_ESC_SEQ2_CHAR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  UHCI Escapes Sequence Configuration Register3
   type ESC_CONF3_Register is record
      --  Configures the char needing encoding, which is 0x13 as flow control
      --  char by default.
      ESC_SEQ2       : ESC_CONF3_ESC_SEQ2_Field := 16#13#;
      --  Configures the first char of SLIP escape character, default value is
      --  0xDB.
      ESC_SEQ2_CHAR  : ESC_CONF3_ESC_SEQ2_CHAR_Field :=
                        (As_Array => False, Val => 16#DB#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ESC_CONF3_Register use record
      ESC_SEQ2       at 0 range 0 .. 7;
      ESC_SEQ2_CHAR  at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PKT_THRES_PKT_THRS_Field is HAL.UInt13;

   --  UCHI Packet Length Configuration Register
   type PKT_THRES_Register is record
      --  Configures the data packet's maximum length when UHCI_HEAD_EN is 0.
      PKT_THRS       : PKT_THRES_PKT_THRS_Field := 16#80#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKT_THRES_Register use record
      PKT_THRS       at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Host Controller Interface 0
   type UHCI0_Peripheral is record
      --  UHCI Configuration Register0
      CONF0        : aliased CONF0_Register;
      --  UHCI Interrupt Raw Register
      INT_RAW      : aliased INT_RAW_Register;
      --  UHCI Interrupt Status Register
      INT_ST       : aliased INT_ST_Register;
      --  UHCI Interrupt Enable Register
      INT_ENA      : aliased INT_ENA_Register;
      --  UHCI Interrupt Clear Register
      INT_CLR      : aliased INT_CLR_Register;
      --  UHCI Configuration Register1
      CONF1        : aliased CONF1_Register;
      --  UHCI Receive Status Register
      STATE0       : aliased STATE0_Register;
      --  UHCI Transmit Status Register
      STATE1       : aliased STATE1_Register;
      --  UHCI Escapes Configuration Register0
      ESCAPE_CONF  : aliased ESCAPE_CONF_Register;
      --  UHCI Hung Configuration Register0
      HUNG_CONF    : aliased HUNG_CONF_Register;
      --  UHCI Ack Value Configuration Register0
      ACK_NUM      : aliased ACK_NUM_Register;
      --  UHCI Head Register
      RX_HEAD      : aliased HAL.UInt32;
      --  UCHI Quick send Register
      QUICK_SENT   : aliased QUICK_SENT_Register;
      --  UHCI Q0_WORD0 Quick Send Register
      REG_Q0_WORD0 : aliased HAL.UInt32;
      --  UHCI Q0_WORD1 Quick Send Register
      REG_Q0_WORD1 : aliased HAL.UInt32;
      --  UHCI Q1_WORD0 Quick Send Register
      REG_Q1_WORD0 : aliased HAL.UInt32;
      --  UHCI Q1_WORD1 Quick Send Register
      REG_Q1_WORD1 : aliased HAL.UInt32;
      --  UHCI Q2_WORD0 Quick Send Register
      REG_Q2_WORD0 : aliased HAL.UInt32;
      --  UHCI Q2_WORD1 Quick Send Register
      REG_Q2_WORD1 : aliased HAL.UInt32;
      --  UHCI Q3_WORD0 Quick Send Register
      REG_Q3_WORD0 : aliased HAL.UInt32;
      --  UHCI Q3_WORD1 Quick Send Register
      REG_Q3_WORD1 : aliased HAL.UInt32;
      --  UHCI Q4_WORD0 Quick Send Register
      REG_Q4_WORD0 : aliased HAL.UInt32;
      --  UHCI Q4_WORD1 Quick Send Register
      REG_Q4_WORD1 : aliased HAL.UInt32;
      --  UHCI Q5_WORD0 Quick Send Register
      REG_Q5_WORD0 : aliased HAL.UInt32;
      --  UHCI Q5_WORD1 Quick Send Register
      REG_Q5_WORD1 : aliased HAL.UInt32;
      --  UHCI Q6_WORD0 Quick Send Register
      REG_Q6_WORD0 : aliased HAL.UInt32;
      --  UHCI Q6_WORD1 Quick Send Register
      REG_Q6_WORD1 : aliased HAL.UInt32;
      --  UHCI Escapes Sequence Configuration Register0
      ESC_CONF0    : aliased ESC_CONF0_Register;
      --  UHCI Escapes Sequence Configuration Register1
      ESC_CONF1    : aliased ESC_CONF1_Register;
      --  UHCI Escapes Sequence Configuration Register2
      ESC_CONF2    : aliased ESC_CONF2_Register;
      --  UHCI Escapes Sequence Configuration Register3
      ESC_CONF3    : aliased ESC_CONF3_Register;
      --  UCHI Packet Length Configuration Register
      PKT_THRES    : aliased PKT_THRES_Register;
      --  UHCI Version Register
      DATE         : aliased HAL.UInt32;
   end record
     with Volatile;

   for UHCI0_Peripheral use record
      CONF0        at 16#0# range 0 .. 31;
      INT_RAW      at 16#4# range 0 .. 31;
      INT_ST       at 16#8# range 0 .. 31;
      INT_ENA      at 16#C# range 0 .. 31;
      INT_CLR      at 16#10# range 0 .. 31;
      CONF1        at 16#14# range 0 .. 31;
      STATE0       at 16#18# range 0 .. 31;
      STATE1       at 16#1C# range 0 .. 31;
      ESCAPE_CONF  at 16#20# range 0 .. 31;
      HUNG_CONF    at 16#24# range 0 .. 31;
      ACK_NUM      at 16#28# range 0 .. 31;
      RX_HEAD      at 16#2C# range 0 .. 31;
      QUICK_SENT   at 16#30# range 0 .. 31;
      REG_Q0_WORD0 at 16#34# range 0 .. 31;
      REG_Q0_WORD1 at 16#38# range 0 .. 31;
      REG_Q1_WORD0 at 16#3C# range 0 .. 31;
      REG_Q1_WORD1 at 16#40# range 0 .. 31;
      REG_Q2_WORD0 at 16#44# range 0 .. 31;
      REG_Q2_WORD1 at 16#48# range 0 .. 31;
      REG_Q3_WORD0 at 16#4C# range 0 .. 31;
      REG_Q3_WORD1 at 16#50# range 0 .. 31;
      REG_Q4_WORD0 at 16#54# range 0 .. 31;
      REG_Q4_WORD1 at 16#58# range 0 .. 31;
      REG_Q5_WORD0 at 16#5C# range 0 .. 31;
      REG_Q5_WORD1 at 16#60# range 0 .. 31;
      REG_Q6_WORD0 at 16#64# range 0 .. 31;
      REG_Q6_WORD1 at 16#68# range 0 .. 31;
      ESC_CONF0    at 16#6C# range 0 .. 31;
      ESC_CONF1    at 16#70# range 0 .. 31;
      ESC_CONF2    at 16#74# range 0 .. 31;
      ESC_CONF3    at 16#78# range 0 .. 31;
      PKT_THRES    at 16#7C# range 0 .. 31;
      DATE         at 16#80# range 0 .. 31;
   end record;

   --  Universal Host Controller Interface 0
   UHCI0_Periph : aliased UHCI0_Peripheral
     with Import, Address => UHCI0_Base;

end ESP32_C6_SVD.UHCI;
