pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.USB_DEVICE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype EP1_RDWR_BYTE_Field is HAL.UInt8;

   --  FIFO access for the CDC-ACM data IN and OUT endpoints.
   type EP1_Register is record
      --  Write and read byte data to/from UART Tx/Rx FIFO through this field.
      --  When USB_DEVICE_SERIAL_IN_EMPTY_INT is set, then user can write data
      --  (up to 64 bytes) into UART Tx FIFO. When
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is set, user can check
      --  USB_DEVICE_OUT_EP1_WR_ADDR USB_DEVICE_OUT_EP0_RD_ADDR to know how
      --  many data is received, then read data from UART Rx FIFO.
      RDWR_BYTE     : EP1_RDWR_BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP1_Register use record
      RDWR_BYTE     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Configuration and control registers for the CDC-ACM FIFOs.
   type EP1_CONF_Register is record
      --  Write-only. Set this bit to indicate writing byte data to UART Tx
      --  FIFO is done.
      WR_DONE                  : Boolean := False;
      --  Read-only. 1'b1: Indicate UART Tx FIFO is not full and can write data
      --  into in. After writing USB_DEVICE_WR_DONE, this bit would be 0 until
      --  data in UART Tx FIFO is read by USB Host.
      SERIAL_IN_EP_DATA_FREE   : Boolean := True;
      --  Read-only. 1'b1: Indicate there is data in UART Rx FIFO.
      SERIAL_OUT_EP_DATA_AVAIL : Boolean := False;
      --  unspecified
      Reserved_3_31            : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EP1_CONF_Register use record
      WR_DONE                  at 0 range 0 .. 0;
      SERIAL_IN_EP_DATA_FREE   at 0 range 1 .. 1;
      SERIAL_OUT_EP_DATA_AVAIL at 0 range 2 .. 2;
      Reserved_3_31            at 0 range 3 .. 31;
   end record;

   --  Interrupt raw status register.
   type INT_RAW_Register is record
      --  The raw interrupt bit turns to high level when flush cmd is received
      --  for IN endpoint 2 of JTAG.
      JTAG_IN_FLUSH_INT_RAW        : Boolean := False;
      --  The raw interrupt bit turns to high level when SOF frame is received.
      SOF_INT_RAW                  : Boolean := False;
      --  The raw interrupt bit turns to high level when Serial Port OUT
      --  Endpoint received one packet.
      SERIAL_OUT_RECV_PKT_INT_RAW  : Boolean := False;
      --  The raw interrupt bit turns to high level when Serial Port IN
      --  Endpoint is empty.
      SERIAL_IN_EMPTY_INT_RAW      : Boolean := True;
      --  The raw interrupt bit turns to high level when pid error is detected.
      PID_ERR_INT_RAW              : Boolean := False;
      --  The raw interrupt bit turns to high level when CRC5 error is
      --  detected.
      CRC5_ERR_INT_RAW             : Boolean := False;
      --  The raw interrupt bit turns to high level when CRC16 error is
      --  detected.
      CRC16_ERR_INT_RAW            : Boolean := False;
      --  The raw interrupt bit turns to high level when stuff error is
      --  detected.
      STUFF_ERR_INT_RAW            : Boolean := False;
      --  The raw interrupt bit turns to high level when IN token for IN
      --  endpoint 1 is received.
      IN_TOKEN_REC_IN_EP1_INT_RAW  : Boolean := False;
      --  The raw interrupt bit turns to high level when usb bus reset is
      --  detected.
      USB_BUS_RESET_INT_RAW        : Boolean := False;
      --  The raw interrupt bit turns to high level when OUT endpoint 1
      --  received packet with zero palyload.
      OUT_EP1_ZERO_PAYLOAD_INT_RAW : Boolean := False;
      --  The raw interrupt bit turns to high level when OUT endpoint 2
      --  received packet with zero palyload.
      OUT_EP2_ZERO_PAYLOAD_INT_RAW : Boolean := False;
      --  The raw interrupt bit turns to high level when level of RTS from usb
      --  serial channel is changed.
      RTS_CHG_INT_RAW              : Boolean := False;
      --  The raw interrupt bit turns to high level when level of DTR from usb
      --  serial channel is changed.
      DTR_CHG_INT_RAW              : Boolean := False;
      --  The raw interrupt bit turns to high level when level of GET LINE
      --  CODING request is received.
      GET_LINE_CODE_INT_RAW        : Boolean := False;
      --  The raw interrupt bit turns to high level when level of SET LINE
      --  CODING request is received.
      SET_LINE_CODE_INT_RAW        : Boolean := False;
      --  unspecified
      Reserved_16_31               : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      JTAG_IN_FLUSH_INT_RAW        at 0 range 0 .. 0;
      SOF_INT_RAW                  at 0 range 1 .. 1;
      SERIAL_OUT_RECV_PKT_INT_RAW  at 0 range 2 .. 2;
      SERIAL_IN_EMPTY_INT_RAW      at 0 range 3 .. 3;
      PID_ERR_INT_RAW              at 0 range 4 .. 4;
      CRC5_ERR_INT_RAW             at 0 range 5 .. 5;
      CRC16_ERR_INT_RAW            at 0 range 6 .. 6;
      STUFF_ERR_INT_RAW            at 0 range 7 .. 7;
      IN_TOKEN_REC_IN_EP1_INT_RAW  at 0 range 8 .. 8;
      USB_BUS_RESET_INT_RAW        at 0 range 9 .. 9;
      OUT_EP1_ZERO_PAYLOAD_INT_RAW at 0 range 10 .. 10;
      OUT_EP2_ZERO_PAYLOAD_INT_RAW at 0 range 11 .. 11;
      RTS_CHG_INT_RAW              at 0 range 12 .. 12;
      DTR_CHG_INT_RAW              at 0 range 13 .. 13;
      GET_LINE_CODE_INT_RAW        at 0 range 14 .. 14;
      SET_LINE_CODE_INT_RAW        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   --  Interrupt status register.
   type INT_ST_Register is record
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_JTAG_IN_FLUSH_INT interrupt.
      JTAG_IN_FLUSH_INT_ST        : Boolean;
      --  Read-only. The raw interrupt status bit for the USB_DEVICE_SOF_INT
      --  interrupt.
      SOF_INT_ST                  : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT interrupt.
      SERIAL_OUT_RECV_PKT_INT_ST  : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_SERIAL_IN_EMPTY_INT interrupt.
      SERIAL_IN_EMPTY_INT_ST      : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_PID_ERR_INT interrupt.
      PID_ERR_INT_ST              : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_CRC5_ERR_INT interrupt.
      CRC5_ERR_INT_ST             : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_CRC16_ERR_INT interrupt.
      CRC16_ERR_INT_ST            : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_STUFF_ERR_INT interrupt.
      STUFF_ERR_INT_ST            : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_IN_TOKEN_REC_IN_EP1_INT interrupt.
      IN_TOKEN_REC_IN_EP1_INT_ST  : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_USB_BUS_RESET_INT interrupt.
      USB_BUS_RESET_INT_ST        : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT interrupt.
      OUT_EP1_ZERO_PAYLOAD_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT interrupt.
      OUT_EP2_ZERO_PAYLOAD_INT_ST : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_RTS_CHG_INT interrupt.
      RTS_CHG_INT_ST              : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_DTR_CHG_INT interrupt.
      DTR_CHG_INT_ST              : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_GET_LINE_CODE_INT interrupt.
      GET_LINE_CODE_INT_ST        : Boolean;
      --  Read-only. The raw interrupt status bit for the
      --  USB_DEVICE_SET_LINE_CODE_INT interrupt.
      SET_LINE_CODE_INT_ST        : Boolean;
      --  unspecified
      Reserved_16_31              : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      JTAG_IN_FLUSH_INT_ST        at 0 range 0 .. 0;
      SOF_INT_ST                  at 0 range 1 .. 1;
      SERIAL_OUT_RECV_PKT_INT_ST  at 0 range 2 .. 2;
      SERIAL_IN_EMPTY_INT_ST      at 0 range 3 .. 3;
      PID_ERR_INT_ST              at 0 range 4 .. 4;
      CRC5_ERR_INT_ST             at 0 range 5 .. 5;
      CRC16_ERR_INT_ST            at 0 range 6 .. 6;
      STUFF_ERR_INT_ST            at 0 range 7 .. 7;
      IN_TOKEN_REC_IN_EP1_INT_ST  at 0 range 8 .. 8;
      USB_BUS_RESET_INT_ST        at 0 range 9 .. 9;
      OUT_EP1_ZERO_PAYLOAD_INT_ST at 0 range 10 .. 10;
      OUT_EP2_ZERO_PAYLOAD_INT_ST at 0 range 11 .. 11;
      RTS_CHG_INT_ST              at 0 range 12 .. 12;
      DTR_CHG_INT_ST              at 0 range 13 .. 13;
      GET_LINE_CODE_INT_ST        at 0 range 14 .. 14;
      SET_LINE_CODE_INT_ST        at 0 range 15 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   --  Interrupt enable status register.
   type INT_ENA_Register is record
      --  The interrupt enable bit for the USB_DEVICE_JTAG_IN_FLUSH_INT
      --  interrupt.
      JTAG_IN_FLUSH_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_SOF_INT interrupt.
      SOF_INT_ENA                  : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_SERIAL_OUT_RECV_PKT_INT
      --  interrupt.
      SERIAL_OUT_RECV_PKT_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_SERIAL_IN_EMPTY_INT
      --  interrupt.
      SERIAL_IN_EMPTY_INT_ENA      : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_PID_ERR_INT interrupt.
      PID_ERR_INT_ENA              : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_CRC5_ERR_INT interrupt.
      CRC5_ERR_INT_ENA             : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_CRC16_ERR_INT interrupt.
      CRC16_ERR_INT_ENA            : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_STUFF_ERR_INT interrupt.
      STUFF_ERR_INT_ENA            : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_IN_TOKEN_REC_IN_EP1_INT
      --  interrupt.
      IN_TOKEN_REC_IN_EP1_INT_ENA  : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_USB_BUS_RESET_INT
      --  interrupt.
      USB_BUS_RESET_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT
      --  interrupt.
      OUT_EP1_ZERO_PAYLOAD_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT
      --  interrupt.
      OUT_EP2_ZERO_PAYLOAD_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_RTS_CHG_INT interrupt.
      RTS_CHG_INT_ENA              : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_DTR_CHG_INT interrupt.
      DTR_CHG_INT_ENA              : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_GET_LINE_CODE_INT
      --  interrupt.
      GET_LINE_CODE_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the USB_DEVICE_SET_LINE_CODE_INT
      --  interrupt.
      SET_LINE_CODE_INT_ENA        : Boolean := False;
      --  unspecified
      Reserved_16_31               : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      JTAG_IN_FLUSH_INT_ENA        at 0 range 0 .. 0;
      SOF_INT_ENA                  at 0 range 1 .. 1;
      SERIAL_OUT_RECV_PKT_INT_ENA  at 0 range 2 .. 2;
      SERIAL_IN_EMPTY_INT_ENA      at 0 range 3 .. 3;
      PID_ERR_INT_ENA              at 0 range 4 .. 4;
      CRC5_ERR_INT_ENA             at 0 range 5 .. 5;
      CRC16_ERR_INT_ENA            at 0 range 6 .. 6;
      STUFF_ERR_INT_ENA            at 0 range 7 .. 7;
      IN_TOKEN_REC_IN_EP1_INT_ENA  at 0 range 8 .. 8;
      USB_BUS_RESET_INT_ENA        at 0 range 9 .. 9;
      OUT_EP1_ZERO_PAYLOAD_INT_ENA at 0 range 10 .. 10;
      OUT_EP2_ZERO_PAYLOAD_INT_ENA at 0 range 11 .. 11;
      RTS_CHG_INT_ENA              at 0 range 12 .. 12;
      DTR_CHG_INT_ENA              at 0 range 13 .. 13;
      GET_LINE_CODE_INT_ENA        at 0 range 14 .. 14;
      SET_LINE_CODE_INT_ENA        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   --  Interrupt clear status register.
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear the USB_DEVICE_JTAG_IN_FLUSH_INT
      --  interrupt.
      JTAG_IN_FLUSH_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_JTAG_SOF_INT
      --  interrupt.
      SOF_INT_CLR                  : Boolean := False;
      --  Write-only. Set this bit to clear the
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT interrupt.
      SERIAL_OUT_RECV_PKT_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_SERIAL_IN_EMPTY_INT
      --  interrupt.
      SERIAL_IN_EMPTY_INT_CLR      : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_PID_ERR_INT
      --  interrupt.
      PID_ERR_INT_CLR              : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_CRC5_ERR_INT
      --  interrupt.
      CRC5_ERR_INT_CLR             : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_CRC16_ERR_INT
      --  interrupt.
      CRC16_ERR_INT_CLR            : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_STUFF_ERR_INT
      --  interrupt.
      STUFF_ERR_INT_CLR            : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_IN_TOKEN_IN_EP1_INT
      --  interrupt.
      IN_TOKEN_REC_IN_EP1_INT_CLR  : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_USB_BUS_RESET_INT
      --  interrupt.
      USB_BUS_RESET_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the
      --  USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT interrupt.
      OUT_EP1_ZERO_PAYLOAD_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the
      --  USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT interrupt.
      OUT_EP2_ZERO_PAYLOAD_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_RTS_CHG_INT
      --  interrupt.
      RTS_CHG_INT_CLR              : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_DTR_CHG_INT
      --  interrupt.
      DTR_CHG_INT_CLR              : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_GET_LINE_CODE_INT
      --  interrupt.
      GET_LINE_CODE_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the USB_DEVICE_SET_LINE_CODE_INT
      --  interrupt.
      SET_LINE_CODE_INT_CLR        : Boolean := False;
      --  unspecified
      Reserved_16_31               : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      JTAG_IN_FLUSH_INT_CLR        at 0 range 0 .. 0;
      SOF_INT_CLR                  at 0 range 1 .. 1;
      SERIAL_OUT_RECV_PKT_INT_CLR  at 0 range 2 .. 2;
      SERIAL_IN_EMPTY_INT_CLR      at 0 range 3 .. 3;
      PID_ERR_INT_CLR              at 0 range 4 .. 4;
      CRC5_ERR_INT_CLR             at 0 range 5 .. 5;
      CRC16_ERR_INT_CLR            at 0 range 6 .. 6;
      STUFF_ERR_INT_CLR            at 0 range 7 .. 7;
      IN_TOKEN_REC_IN_EP1_INT_CLR  at 0 range 8 .. 8;
      USB_BUS_RESET_INT_CLR        at 0 range 9 .. 9;
      OUT_EP1_ZERO_PAYLOAD_INT_CLR at 0 range 10 .. 10;
      OUT_EP2_ZERO_PAYLOAD_INT_CLR at 0 range 11 .. 11;
      RTS_CHG_INT_CLR              at 0 range 12 .. 12;
      DTR_CHG_INT_CLR              at 0 range 13 .. 13;
      GET_LINE_CODE_INT_CLR        at 0 range 14 .. 14;
      SET_LINE_CODE_INT_CLR        at 0 range 15 .. 15;
      Reserved_16_31               at 0 range 16 .. 31;
   end record;

   subtype CONF0_VREFH_Field is HAL.UInt2;
   subtype CONF0_VREFL_Field is HAL.UInt2;

   --  PHY hardware configuration.
   type CONF0_Register is record
      --  Select internal/external PHY
      PHY_SEL             : Boolean := False;
      --  Enable software control USB D+ D- exchange
      EXCHG_PINS_OVERRIDE : Boolean := False;
      --  USB D+ D- exchange
      EXCHG_PINS          : Boolean := False;
      --  Control single-end input high threshold,1.76V to 2V, step 80mV
      VREFH               : CONF0_VREFH_Field := 16#0#;
      --  Control single-end input low threshold,0.8V to 1.04V, step 80mV
      VREFL               : CONF0_VREFL_Field := 16#0#;
      --  Enable software control input threshold
      VREF_OVERRIDE       : Boolean := False;
      --  Enable software control USB D+ D- pullup pulldown
      PAD_PULL_OVERRIDE   : Boolean := False;
      --  Control USB D+ pull up.
      DP_PULLUP           : Boolean := True;
      --  Control USB D+ pull down.
      DP_PULLDOWN         : Boolean := False;
      --  Control USB D- pull up.
      DM_PULLUP           : Boolean := False;
      --  Control USB D- pull down.
      DM_PULLDOWN         : Boolean := False;
      --  Control pull up value.
      PULLUP_VALUE        : Boolean := False;
      --  Enable USB pad function.
      USB_PAD_ENABLE      : Boolean := True;
      --  Set this bit usb_jtag, the connection between usb_jtag and internal
      --  JTAG is disconnected, and MTMS, MTDI, MTCK are output through GPIO
      --  Matrix, MTDO is input through GPIO Matrix.
      USB_JTAG_BRIDGE_EN  : Boolean := False;
      --  unspecified
      Reserved_16_31      : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0_Register use record
      PHY_SEL             at 0 range 0 .. 0;
      EXCHG_PINS_OVERRIDE at 0 range 1 .. 1;
      EXCHG_PINS          at 0 range 2 .. 2;
      VREFH               at 0 range 3 .. 4;
      VREFL               at 0 range 5 .. 6;
      VREF_OVERRIDE       at 0 range 7 .. 7;
      PAD_PULL_OVERRIDE   at 0 range 8 .. 8;
      DP_PULLUP           at 0 range 9 .. 9;
      DP_PULLDOWN         at 0 range 10 .. 10;
      DM_PULLUP           at 0 range 11 .. 11;
      DM_PULLDOWN         at 0 range 12 .. 12;
      PULLUP_VALUE        at 0 range 13 .. 13;
      USB_PAD_ENABLE      at 0 range 14 .. 14;
      USB_JTAG_BRIDGE_EN  at 0 range 15 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   --  Registers used for debugging the PHY.
   type TEST_Register is record
      --  Enable test of the USB pad
      TEST_ENABLE   : Boolean := False;
      --  USB pad oen in test
      TEST_USB_OE   : Boolean := False;
      --  USB D+ tx value in test
      TEST_TX_DP    : Boolean := False;
      --  USB D- tx value in test
      TEST_TX_DM    : Boolean := False;
      --  Read-only. USB RCV value in test
      TEST_RX_RCV   : Boolean := True;
      --  Read-only. USB D+ rx value in test
      TEST_RX_DP    : Boolean := True;
      --  Read-only. USB D- rx value in test
      TEST_RX_DM    : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_Register use record
      TEST_ENABLE   at 0 range 0 .. 0;
      TEST_USB_OE   at 0 range 1 .. 1;
      TEST_TX_DP    at 0 range 2 .. 2;
      TEST_TX_DM    at 0 range 3 .. 3;
      TEST_RX_RCV   at 0 range 4 .. 4;
      TEST_RX_DP    at 0 range 5 .. 5;
      TEST_RX_DM    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype JFIFO_ST_IN_FIFO_CNT_Field is HAL.UInt2;
   subtype JFIFO_ST_OUT_FIFO_CNT_Field is HAL.UInt2;

   --  JTAG FIFO status and control registers.
   type JFIFO_ST_Register is record
      --  Read-only. JTAT in fifo counter.
      IN_FIFO_CNT    : JFIFO_ST_IN_FIFO_CNT_Field := 16#0#;
      --  Read-only. 1: JTAG in fifo is empty.
      IN_FIFO_EMPTY  : Boolean := True;
      --  Read-only. 1: JTAG in fifo is full.
      IN_FIFO_FULL   : Boolean := False;
      --  Read-only. JTAT out fifo counter.
      OUT_FIFO_CNT   : JFIFO_ST_OUT_FIFO_CNT_Field := 16#0#;
      --  Read-only. 1: JTAG out fifo is empty.
      OUT_FIFO_EMPTY : Boolean := True;
      --  Read-only. 1: JTAG out fifo is full.
      OUT_FIFO_FULL  : Boolean := False;
      --  Write 1 to reset JTAG in fifo.
      IN_FIFO_RESET  : Boolean := False;
      --  Write 1 to reset JTAG out fifo.
      OUT_FIFO_RESET : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for JFIFO_ST_Register use record
      IN_FIFO_CNT    at 0 range 0 .. 1;
      IN_FIFO_EMPTY  at 0 range 2 .. 2;
      IN_FIFO_FULL   at 0 range 3 .. 3;
      OUT_FIFO_CNT   at 0 range 4 .. 5;
      OUT_FIFO_EMPTY at 0 range 6 .. 6;
      OUT_FIFO_FULL  at 0 range 7 .. 7;
      IN_FIFO_RESET  at 0 range 8 .. 8;
      OUT_FIFO_RESET at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype FRAM_NUM_SOF_FRAME_INDEX_Field is HAL.UInt11;

   --  Last received SOF frame index register.
   type FRAM_NUM_Register is record
      --  Read-only. Frame index of received SOF frame.
      SOF_FRAME_INDEX : FRAM_NUM_SOF_FRAME_INDEX_Field;
      --  unspecified
      Reserved_11_31  : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAM_NUM_Register use record
      SOF_FRAME_INDEX at 0 range 0 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   subtype IN_EP0_ST_IN_EP0_STATE_Field is HAL.UInt2;
   subtype IN_EP0_ST_IN_EP0_WR_ADDR_Field is HAL.UInt7;
   subtype IN_EP0_ST_IN_EP0_RD_ADDR_Field is HAL.UInt7;

   --  Control IN endpoint status information.
   type IN_EP0_ST_Register is record
      --  Read-only. State of IN Endpoint 0.
      IN_EP0_STATE   : IN_EP0_ST_IN_EP0_STATE_Field;
      --  Read-only. Write data address of IN endpoint 0.
      IN_EP0_WR_ADDR : IN_EP0_ST_IN_EP0_WR_ADDR_Field;
      --  Read-only. Read data address of IN endpoint 0.
      IN_EP0_RD_ADDR : IN_EP0_ST_IN_EP0_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_EP0_ST_Register use record
      IN_EP0_STATE   at 0 range 0 .. 1;
      IN_EP0_WR_ADDR at 0 range 2 .. 8;
      IN_EP0_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IN_EP1_ST_IN_EP1_STATE_Field is HAL.UInt2;
   subtype IN_EP1_ST_IN_EP1_WR_ADDR_Field is HAL.UInt7;
   subtype IN_EP1_ST_IN_EP1_RD_ADDR_Field is HAL.UInt7;

   --  CDC-ACM IN endpoint status information.
   type IN_EP1_ST_Register is record
      --  Read-only. State of IN Endpoint 1.
      IN_EP1_STATE   : IN_EP1_ST_IN_EP1_STATE_Field;
      --  Read-only. Write data address of IN endpoint 1.
      IN_EP1_WR_ADDR : IN_EP1_ST_IN_EP1_WR_ADDR_Field;
      --  Read-only. Read data address of IN endpoint 1.
      IN_EP1_RD_ADDR : IN_EP1_ST_IN_EP1_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_EP1_ST_Register use record
      IN_EP1_STATE   at 0 range 0 .. 1;
      IN_EP1_WR_ADDR at 0 range 2 .. 8;
      IN_EP1_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IN_EP2_ST_IN_EP2_STATE_Field is HAL.UInt2;
   subtype IN_EP2_ST_IN_EP2_WR_ADDR_Field is HAL.UInt7;
   subtype IN_EP2_ST_IN_EP2_RD_ADDR_Field is HAL.UInt7;

   --  CDC-ACM interrupt IN endpoint status information.
   type IN_EP2_ST_Register is record
      --  Read-only. State of IN Endpoint 2.
      IN_EP2_STATE   : IN_EP2_ST_IN_EP2_STATE_Field;
      --  Read-only. Write data address of IN endpoint 2.
      IN_EP2_WR_ADDR : IN_EP2_ST_IN_EP2_WR_ADDR_Field;
      --  Read-only. Read data address of IN endpoint 2.
      IN_EP2_RD_ADDR : IN_EP2_ST_IN_EP2_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_EP2_ST_Register use record
      IN_EP2_STATE   at 0 range 0 .. 1;
      IN_EP2_WR_ADDR at 0 range 2 .. 8;
      IN_EP2_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IN_EP3_ST_IN_EP3_STATE_Field is HAL.UInt2;
   subtype IN_EP3_ST_IN_EP3_WR_ADDR_Field is HAL.UInt7;
   subtype IN_EP3_ST_IN_EP3_RD_ADDR_Field is HAL.UInt7;

   --  JTAG IN endpoint status information.
   type IN_EP3_ST_Register is record
      --  Read-only. State of IN Endpoint 3.
      IN_EP3_STATE   : IN_EP3_ST_IN_EP3_STATE_Field;
      --  Read-only. Write data address of IN endpoint 3.
      IN_EP3_WR_ADDR : IN_EP3_ST_IN_EP3_WR_ADDR_Field;
      --  Read-only. Read data address of IN endpoint 3.
      IN_EP3_RD_ADDR : IN_EP3_ST_IN_EP3_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_EP3_ST_Register use record
      IN_EP3_STATE   at 0 range 0 .. 1;
      IN_EP3_WR_ADDR at 0 range 2 .. 8;
      IN_EP3_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OUT_EP0_ST_OUT_EP0_STATE_Field is HAL.UInt2;
   subtype OUT_EP0_ST_OUT_EP0_WR_ADDR_Field is HAL.UInt7;
   subtype OUT_EP0_ST_OUT_EP0_RD_ADDR_Field is HAL.UInt7;

   --  Control OUT endpoint status information.
   type OUT_EP0_ST_Register is record
      --  Read-only. State of OUT Endpoint 0.
      OUT_EP0_STATE   : OUT_EP0_ST_OUT_EP0_STATE_Field;
      --  Read-only. Write data address of OUT endpoint 0. When
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are
      --  USB_DEVICE_OUT_EP0_WR_ADDR-2 bytes data in OUT EP0.
      OUT_EP0_WR_ADDR : OUT_EP0_ST_OUT_EP0_WR_ADDR_Field;
      --  Read-only. Read data address of OUT endpoint 0.
      OUT_EP0_RD_ADDR : OUT_EP0_ST_OUT_EP0_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31  : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_EP0_ST_Register use record
      OUT_EP0_STATE   at 0 range 0 .. 1;
      OUT_EP0_WR_ADDR at 0 range 2 .. 8;
      OUT_EP0_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype OUT_EP1_ST_OUT_EP1_STATE_Field is HAL.UInt2;
   subtype OUT_EP1_ST_OUT_EP1_WR_ADDR_Field is HAL.UInt7;
   subtype OUT_EP1_ST_OUT_EP1_RD_ADDR_Field is HAL.UInt7;
   subtype OUT_EP1_ST_OUT_EP1_REC_DATA_CNT_Field is HAL.UInt7;

   --  CDC-ACM OUT endpoint status information.
   type OUT_EP1_ST_Register is record
      --  Read-only. State of OUT Endpoint 1.
      OUT_EP1_STATE        : OUT_EP1_ST_OUT_EP1_STATE_Field;
      --  Read-only. Write data address of OUT endpoint 1. When
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are
      --  USB_DEVICE_OUT_EP1_WR_ADDR-2 bytes data in OUT EP1.
      OUT_EP1_WR_ADDR      : OUT_EP1_ST_OUT_EP1_WR_ADDR_Field;
      --  Read-only. Read data address of OUT endpoint 1.
      OUT_EP1_RD_ADDR      : OUT_EP1_ST_OUT_EP1_RD_ADDR_Field;
      --  Read-only. Data count in OUT endpoint 1 when one packet is received.
      OUT_EP1_REC_DATA_CNT : OUT_EP1_ST_OUT_EP1_REC_DATA_CNT_Field;
      --  unspecified
      Reserved_23_31       : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_EP1_ST_Register use record
      OUT_EP1_STATE        at 0 range 0 .. 1;
      OUT_EP1_WR_ADDR      at 0 range 2 .. 8;
      OUT_EP1_RD_ADDR      at 0 range 9 .. 15;
      OUT_EP1_REC_DATA_CNT at 0 range 16 .. 22;
      Reserved_23_31       at 0 range 23 .. 31;
   end record;

   subtype OUT_EP2_ST_OUT_EP2_STATE_Field is HAL.UInt2;
   subtype OUT_EP2_ST_OUT_EP2_WR_ADDR_Field is HAL.UInt7;
   subtype OUT_EP2_ST_OUT_EP2_RD_ADDR_Field is HAL.UInt7;

   --  JTAG OUT endpoint status information.
   type OUT_EP2_ST_Register is record
      --  Read-only. State of OUT Endpoint 2.
      OUT_EP2_STATE   : OUT_EP2_ST_OUT_EP2_STATE_Field;
      --  Read-only. Write data address of OUT endpoint 2. When
      --  USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are
      --  USB_DEVICE_OUT_EP2_WR_ADDR-2 bytes data in OUT EP2.
      OUT_EP2_WR_ADDR : OUT_EP2_ST_OUT_EP2_WR_ADDR_Field;
      --  Read-only. Read data address of OUT endpoint 2.
      OUT_EP2_RD_ADDR : OUT_EP2_ST_OUT_EP2_RD_ADDR_Field;
      --  unspecified
      Reserved_16_31  : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_EP2_ST_Register use record
      OUT_EP2_STATE   at 0 range 0 .. 1;
      OUT_EP2_WR_ADDR at 0 range 2 .. 8;
      OUT_EP2_RD_ADDR at 0 range 9 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  Clock enable control
   type MISC_CONF_Register is record
      --  1'h1: Force clock on for register. 1'h0: Support clock only when
      --  application writes registers.
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISC_CONF_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Memory power control
   type MEM_CONF_Register is record
      --  1: power down usb memory.
      USB_MEM_PD     : Boolean := False;
      --  1: Force clock on for usb memory.
      USB_MEM_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_2_31  : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CONF_Register use record
      USB_MEM_PD     at 0 range 0 .. 0;
      USB_MEM_CLK_EN at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  CDC-ACM chip reset control.
   type CHIP_RST_Register is record
      --  Read-only. 1: Chip reset is detected from usb serial channel.
      --  Software write 1 to clear it.
      RTS                   : Boolean := False;
      --  Read-only. 1: Chip reset is detected from usb jtag channel. Software
      --  write 1 to clear it.
      DTR                   : Boolean := False;
      --  Set this bit to disable chip reset from usb serial channel to reset
      --  chip.
      USB_UART_CHIP_RST_DIS : Boolean := False;
      --  unspecified
      Reserved_3_31         : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIP_RST_Register use record
      RTS                   at 0 range 0 .. 0;
      DTR                   at 0 range 1 .. 1;
      USB_UART_CHIP_RST_DIS at 0 range 2 .. 2;
      Reserved_3_31         at 0 range 3 .. 31;
   end record;

   subtype SET_LINE_CODE_W1_BCHAR_FORMAT_Field is HAL.UInt8;
   subtype SET_LINE_CODE_W1_BPARITY_TYPE_Field is HAL.UInt8;
   subtype SET_LINE_CODE_W1_BDATA_BITS_Field is HAL.UInt8;

   --  W1 of SET_LINE_CODING command.
   type SET_LINE_CODE_W1_Register is record
      --  Read-only. The value of bCharFormat set by host through
      --  SET_LINE_CODING command.
      BCHAR_FORMAT   : SET_LINE_CODE_W1_BCHAR_FORMAT_Field;
      --  Read-only. The value of bParityTpye set by host through
      --  SET_LINE_CODING command.
      BPARITY_TYPE   : SET_LINE_CODE_W1_BPARITY_TYPE_Field;
      --  Read-only. The value of bDataBits set by host through SET_LINE_CODING
      --  command.
      BDATA_BITS     : SET_LINE_CODE_W1_BDATA_BITS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET_LINE_CODE_W1_Register use record
      BCHAR_FORMAT   at 0 range 0 .. 7;
      BPARITY_TYPE   at 0 range 8 .. 15;
      BDATA_BITS     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GET_LINE_CODE_W1_GET_BDATA_BITS_Field is HAL.UInt8;
   subtype GET_LINE_CODE_W1_GET_BPARITY_TYPE_Field is HAL.UInt8;
   subtype GET_LINE_CODE_W1_GET_BCHAR_FORMAT_Field is HAL.UInt8;

   --  W1 of GET_LINE_CODING command.
   type GET_LINE_CODE_W1_Register is record
      --  The value of bCharFormat set by software which is requested by
      --  GET_LINE_CODING command.
      GET_BDATA_BITS   : GET_LINE_CODE_W1_GET_BDATA_BITS_Field := 16#0#;
      --  The value of bParityTpye set by software which is requested by
      --  GET_LINE_CODING command.
      GET_BPARITY_TYPE : GET_LINE_CODE_W1_GET_BPARITY_TYPE_Field := 16#0#;
      --  The value of bDataBits set by software which is requested by
      --  GET_LINE_CODING command.
      GET_BCHAR_FORMAT : GET_LINE_CODE_W1_GET_BCHAR_FORMAT_Field := 16#0#;
      --  unspecified
      Reserved_24_31   : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GET_LINE_CODE_W1_Register use record
      GET_BDATA_BITS   at 0 range 0 .. 7;
      GET_BPARITY_TYPE at 0 range 8 .. 15;
      GET_BCHAR_FORMAT at 0 range 16 .. 23;
      Reserved_24_31   at 0 range 24 .. 31;
   end record;

   --  Configuration registers' value update
   type CONFIG_UPDATE_Register is record
      --  Write-only. Write 1 to this register would update the value of
      --  configure registers from APB clock domain to 48MHz clock domain.
      CONFIG_UPDATE : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_UPDATE_Register use record
      CONFIG_UPDATE at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Serial AFIFO configure register
   type SER_AFIFO_CONFIG_Register is record
      --  Write 1 to reset CDC_ACM IN async FIFO write clock domain.
      SERIAL_IN_AFIFO_RESET_WR  : Boolean := False;
      --  Write 1 to reset CDC_ACM IN async FIFO read clock domain.
      SERIAL_IN_AFIFO_RESET_RD  : Boolean := False;
      --  Write 1 to reset CDC_ACM OUT async FIFO write clock domain.
      SERIAL_OUT_AFIFO_RESET_WR : Boolean := False;
      --  Write 1 to reset CDC_ACM OUT async FIFO read clock domain.
      SERIAL_OUT_AFIFO_RESET_RD : Boolean := False;
      --  Read-only. CDC_ACM OUTOUT async FIFO empty signal in read clock
      --  domain.
      SERIAL_OUT_AFIFO_REMPTY   : Boolean := True;
      --  Read-only. CDC_ACM OUT IN async FIFO empty signal in write clock
      --  domain.
      SERIAL_IN_AFIFO_WFULL     : Boolean := False;
      --  unspecified
      Reserved_6_31             : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SER_AFIFO_CONFIG_Register use record
      SERIAL_IN_AFIFO_RESET_WR  at 0 range 0 .. 0;
      SERIAL_IN_AFIFO_RESET_RD  at 0 range 1 .. 1;
      SERIAL_OUT_AFIFO_RESET_WR at 0 range 2 .. 2;
      SERIAL_OUT_AFIFO_RESET_RD at 0 range 3 .. 3;
      SERIAL_OUT_AFIFO_REMPTY   at 0 range 4 .. 4;
      SERIAL_IN_AFIFO_WFULL     at 0 range 5 .. 5;
      Reserved_6_31             at 0 range 6 .. 31;
   end record;

   --  USB Bus reset status register
   type BUS_RESET_ST_Register is record
      --  Read-only. USB bus reset status. 0: USB-Serial-JTAG is in usb bus
      --  reset status. 1: USB bus reset is released.
      USB_BUS_RESET_ST : Boolean;
      --  unspecified
      Reserved_1_31    : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_RESET_ST_Register use record
      USB_BUS_RESET_ST at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Full-speed USB Serial/JTAG Controller
   type USB_DEVICE_Peripheral is record
      --  FIFO access for the CDC-ACM data IN and OUT endpoints.
      EP1              : aliased EP1_Register;
      --  Configuration and control registers for the CDC-ACM FIFOs.
      EP1_CONF         : aliased EP1_CONF_Register;
      --  Interrupt raw status register.
      INT_RAW          : aliased INT_RAW_Register;
      --  Interrupt status register.
      INT_ST           : aliased INT_ST_Register;
      --  Interrupt enable status register.
      INT_ENA          : aliased INT_ENA_Register;
      --  Interrupt clear status register.
      INT_CLR          : aliased INT_CLR_Register;
      --  PHY hardware configuration.
      CONF0            : aliased CONF0_Register;
      --  Registers used for debugging the PHY.
      TEST             : aliased TEST_Register;
      --  JTAG FIFO status and control registers.
      JFIFO_ST         : aliased JFIFO_ST_Register;
      --  Last received SOF frame index register.
      FRAM_NUM         : aliased FRAM_NUM_Register;
      --  Control IN endpoint status information.
      IN_EP0_ST        : aliased IN_EP0_ST_Register;
      --  CDC-ACM IN endpoint status information.
      IN_EP1_ST        : aliased IN_EP1_ST_Register;
      --  CDC-ACM interrupt IN endpoint status information.
      IN_EP2_ST        : aliased IN_EP2_ST_Register;
      --  JTAG IN endpoint status information.
      IN_EP3_ST        : aliased IN_EP3_ST_Register;
      --  Control OUT endpoint status information.
      OUT_EP0_ST       : aliased OUT_EP0_ST_Register;
      --  CDC-ACM OUT endpoint status information.
      OUT_EP1_ST       : aliased OUT_EP1_ST_Register;
      --  JTAG OUT endpoint status information.
      OUT_EP2_ST       : aliased OUT_EP2_ST_Register;
      --  Clock enable control
      MISC_CONF        : aliased MISC_CONF_Register;
      --  Memory power control
      MEM_CONF         : aliased MEM_CONF_Register;
      --  CDC-ACM chip reset control.
      CHIP_RST         : aliased CHIP_RST_Register;
      --  W0 of SET_LINE_CODING command.
      SET_LINE_CODE_W0 : aliased HAL.UInt32;
      --  W1 of SET_LINE_CODING command.
      SET_LINE_CODE_W1 : aliased SET_LINE_CODE_W1_Register;
      --  W0 of GET_LINE_CODING command.
      GET_LINE_CODE_W0 : aliased HAL.UInt32;
      --  W1 of GET_LINE_CODING command.
      GET_LINE_CODE_W1 : aliased GET_LINE_CODE_W1_Register;
      --  Configuration registers' value update
      CONFIG_UPDATE    : aliased CONFIG_UPDATE_Register;
      --  Serial AFIFO configure register
      SER_AFIFO_CONFIG : aliased SER_AFIFO_CONFIG_Register;
      --  USB Bus reset status register
      BUS_RESET_ST     : aliased BUS_RESET_ST_Register;
      --  Date register
      DATE             : aliased HAL.UInt32;
   end record
     with Volatile;

   for USB_DEVICE_Peripheral use record
      EP1              at 16#0# range 0 .. 31;
      EP1_CONF         at 16#4# range 0 .. 31;
      INT_RAW          at 16#8# range 0 .. 31;
      INT_ST           at 16#C# range 0 .. 31;
      INT_ENA          at 16#10# range 0 .. 31;
      INT_CLR          at 16#14# range 0 .. 31;
      CONF0            at 16#18# range 0 .. 31;
      TEST             at 16#1C# range 0 .. 31;
      JFIFO_ST         at 16#20# range 0 .. 31;
      FRAM_NUM         at 16#24# range 0 .. 31;
      IN_EP0_ST        at 16#28# range 0 .. 31;
      IN_EP1_ST        at 16#2C# range 0 .. 31;
      IN_EP2_ST        at 16#30# range 0 .. 31;
      IN_EP3_ST        at 16#34# range 0 .. 31;
      OUT_EP0_ST       at 16#38# range 0 .. 31;
      OUT_EP1_ST       at 16#3C# range 0 .. 31;
      OUT_EP2_ST       at 16#40# range 0 .. 31;
      MISC_CONF        at 16#44# range 0 .. 31;
      MEM_CONF         at 16#48# range 0 .. 31;
      CHIP_RST         at 16#4C# range 0 .. 31;
      SET_LINE_CODE_W0 at 16#50# range 0 .. 31;
      SET_LINE_CODE_W1 at 16#54# range 0 .. 31;
      GET_LINE_CODE_W0 at 16#58# range 0 .. 31;
      GET_LINE_CODE_W1 at 16#5C# range 0 .. 31;
      CONFIG_UPDATE    at 16#60# range 0 .. 31;
      SER_AFIFO_CONFIG at 16#64# range 0 .. 31;
      BUS_RESET_ST     at 16#68# range 0 .. 31;
      DATE             at 16#80# range 0 .. 31;
   end record;

   --  Full-speed USB Serial/JTAG Controller
   USB_DEVICE_Periph : aliased USB_DEVICE_Peripheral
     with Import, Address => USB_DEVICE_Base;

end ESP32_C6_SVD.USB_DEVICE;
