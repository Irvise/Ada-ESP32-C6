pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.PARL_IO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RX_CFG0_RX_DATA_BYTELEN_Field is HAL.UInt16;
   subtype RX_CFG0_RX_PULSE_SUBMODE_SEL_Field is HAL.UInt4;
   subtype RX_CFG0_RX_SMP_MODE_SEL_Field is HAL.UInt2;
   subtype RX_CFG0_RX_BUS_WID_SEL_Field is HAL.UInt3;

   --  Parallel RX module configuration register0.
   type RX_CFG0_Register is record
      --  Write 0 to select eof generated manchnism by configured data byte
      --  length. Write 1 to select eof generated manchnism by external enable
      --  signal.
      RX_EOF_GEN_SEL       : Boolean := False;
      --  Write 1 to start rx global data sampling.
      RX_START             : Boolean := False;
      --  Configures rx receieved data byte length.
      RX_DATA_BYTELEN      : RX_CFG0_RX_DATA_BYTELEN_Field := 16#0#;
      --  Write 1 to enable software data sampling.
      RX_SW_EN             : Boolean := False;
      --  Pulse submode selection. 0000: positive pulse start(data bit
      --  included) && positive pulse end(data bit included) 0001: positive
      --  pulse start(data bit included) && positive pulse end (data bit
      --  excluded) 0010: positive pulse start(data bit excluded) && positive
      --  pulse end (data bit included) 0011: positive pulse start(data bit
      --  excluded) && positive pulse end (data bit excluded) 0100: positive
      --  pulse start(data bit included) && length end 0101: positive pulse
      --  start(data bit excluded) && length end 0110: negative pulse
      --  start(data bit included) && negative pulse end(data bit included)
      --  0111: negative pulse start(data bit included) && negative pulse end
      --  (data bit excluded) 1000: negative pulse start(data bit excluded) &&
      --  negative pulse end (data bit included) 1001: negative pulse
      --  start(data bit excluded) && negative pulse end (data bit excluded)
      --  1010: negative pulse start(data bit included) && length end 1011:
      --  negative pulse start(data bit excluded) && length end
      RX_PULSE_SUBMODE_SEL : RX_CFG0_RX_PULSE_SUBMODE_SEL_Field := 16#0#;
      --  Write 0 to sample data at high level of external enable signal. Write
      --  1 to sample data at low level of external enable signal.
      RX_LEVEL_SUBMODE_SEL : Boolean := False;
      --  Rx data sampling mode selection. 000: external level enable mode 001:
      --  external pulse enable mode 010: internal software enable mode
      RX_SMP_MODE_SEL      : RX_CFG0_RX_SMP_MODE_SEL_Field := 16#0#;
      --  Write 0 to enable sampling data on the rising edge of rx clock. Write
      --  0 to enable sampling data on the falling edge of rx clock.
      RX_CLK_EDGE_SEL      : Boolean := False;
      --  Write 0 to pack bits into 1byte from MSB when data bus width is 4/2/1
      --  bits. Write 0 to pack bits into 1byte from LSB when data bus width is
      --  4/2/1 bits.
      RX_BIT_PACK_ORDER    : Boolean := False;
      --  Rx data bus width selection. 100: bus width is 1 bit 011: bus width
      --  is 2 bits 010: bus width is 4 bits 001: bus width is 8 bits 000: bus
      --  width is 16 bits
      RX_BUS_WID_SEL       : RX_CFG0_RX_BUS_WID_SEL_Field := 16#0#;
      --  Write 1 to enable soft reset of async fifo in rx module.
      RX_FIFO_SRST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_CFG0_Register use record
      RX_EOF_GEN_SEL       at 0 range 0 .. 0;
      RX_START             at 0 range 1 .. 1;
      RX_DATA_BYTELEN      at 0 range 2 .. 17;
      RX_SW_EN             at 0 range 18 .. 18;
      RX_PULSE_SUBMODE_SEL at 0 range 19 .. 22;
      RX_LEVEL_SUBMODE_SEL at 0 range 23 .. 23;
      RX_SMP_MODE_SEL      at 0 range 24 .. 25;
      RX_CLK_EDGE_SEL      at 0 range 26 .. 26;
      RX_BIT_PACK_ORDER    at 0 range 27 .. 27;
      RX_BUS_WID_SEL       at 0 range 28 .. 30;
      RX_FIFO_SRST         at 0 range 31 .. 31;
   end record;

   subtype RX_CFG1_RX_EXT_EN_SEL_Field is HAL.UInt4;
   subtype RX_CFG1_RX_TIMEOUT_THRESHOLD_Field is HAL.UInt16;

   --  Parallel RX module configuration register1.
   type RX_CFG1_Register is record
      --  unspecified
      Reserved_0_1         : HAL.UInt2 := 16#0#;
      --  Write-only. Write 1 to update rx register configuration signals.
      RX_REG_UPDATE        : Boolean := False;
      --  Write 1 to enable timeout count to generate error eof.
      RX_TIMEOUT_EN        : Boolean := True;
      --  unspecified
      Reserved_4_11        : HAL.UInt8 := 16#0#;
      --  Configures rx external enable signal selection from 16 data lines.
      RX_EXT_EN_SEL        : RX_CFG1_RX_EXT_EN_SEL_Field := 16#F#;
      --  Configures rx threshold of timeout counter.
      RX_TIMEOUT_THRESHOLD : RX_CFG1_RX_TIMEOUT_THRESHOLD_Field := 16#FFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_CFG1_Register use record
      Reserved_0_1         at 0 range 0 .. 1;
      RX_REG_UPDATE        at 0 range 2 .. 2;
      RX_TIMEOUT_EN        at 0 range 3 .. 3;
      Reserved_4_11        at 0 range 4 .. 11;
      RX_EXT_EN_SEL        at 0 range 12 .. 15;
      RX_TIMEOUT_THRESHOLD at 0 range 16 .. 31;
   end record;

   subtype TX_CFG0_TX_BYTELEN_Field is HAL.UInt16;
   subtype TX_CFG0_TX_BUS_WID_SEL_Field is HAL.UInt3;

   --  Parallel TX module configuration register0.
   type TX_CFG0_Register is record
      --  unspecified
      Reserved_0_1        : HAL.UInt2 := 16#0#;
      --  Configures tx sending data byte length.
      TX_BYTELEN          : TX_CFG0_TX_BYTELEN_Field := 16#0#;
      --  Write 1 to enable output tx clock gating.
      TX_GATING_EN        : Boolean := False;
      --  Write 1 to start tx global data output.
      TX_START            : Boolean := False;
      --  Write 1 to enable tx hardware data valid signal.
      TX_HW_VALID_EN      : Boolean := False;
      --  unspecified
      Reserved_21_24      : HAL.UInt4 := 16#0#;
      --  Write 0 to enable sampling data on the rising edge of tx clock. Write
      --  0 to enable sampling data on the falling edge of tx clock.
      TX_SMP_EDGE_SEL     : Boolean := False;
      --  Write 0 to unpack bits from 1byte from MSB when data bus width is
      --  4/2/1 bits. Write 0 to unpack bits from 1byte from LSB when data bus
      --  width is 4/2/1 bits.
      TX_BIT_UNPACK_ORDER : Boolean := False;
      --  Tx data bus width selection. 100: bus width is 1 bit 011: bus width
      --  is 2 bits 010: bus width is 4 bits 001: bus width is 8 bits 000: bus
      --  width is 16 bits
      TX_BUS_WID_SEL      : TX_CFG0_TX_BUS_WID_SEL_Field := 16#0#;
      --  Write 1 to enable soft reset of async fifo in tx module.
      TX_FIFO_SRST        : Boolean := False;
      --  unspecified
      Reserved_31_31      : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_CFG0_Register use record
      Reserved_0_1        at 0 range 0 .. 1;
      TX_BYTELEN          at 0 range 2 .. 17;
      TX_GATING_EN        at 0 range 18 .. 18;
      TX_START            at 0 range 19 .. 19;
      TX_HW_VALID_EN      at 0 range 20 .. 20;
      Reserved_21_24      at 0 range 21 .. 24;
      TX_SMP_EDGE_SEL     at 0 range 25 .. 25;
      TX_BIT_UNPACK_ORDER at 0 range 26 .. 26;
      TX_BUS_WID_SEL      at 0 range 27 .. 29;
      TX_FIFO_SRST        at 0 range 30 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   subtype TX_CFG1_TX_IDLE_VALUE_Field is HAL.UInt16;

   --  Parallel TX module configuration register1.
   type TX_CFG1_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Configures data value on tx bus when IDLE state.
      TX_IDLE_VALUE : TX_CFG1_TX_IDLE_VALUE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_CFG1_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      TX_IDLE_VALUE at 0 range 16 .. 31;
   end record;

   --  Parallel IO module status register0.
   type ST_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31;
      --  Read-only. Represents the status that tx is ready.
      TX_READY      : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      TX_READY      at 0 range 31 .. 31;
   end record;

   --  Parallel IO interrupt enable singal configuration register.
   type INT_ENA_Register is record
      --  Write 1 to enable TX_FIFO_REMPTY_INTR.
      TX_FIFO_REMPTY_INT_ENA : Boolean := False;
      --  Write 1 to enable RX_FIFO_WFULL_INTR.
      RX_FIFO_WFULL_INT_ENA  : Boolean := False;
      --  Write 1 to enable TX_EOF_INTR.
      TX_EOF_INT_ENA         : Boolean := False;
      --  unspecified
      Reserved_3_31          : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      TX_FIFO_REMPTY_INT_ENA at 0 range 0 .. 0;
      RX_FIFO_WFULL_INT_ENA  at 0 range 1 .. 1;
      TX_EOF_INT_ENA         at 0 range 2 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   --  Parallel IO interrupt raw singal status register.
   type INT_RAW_Register is record
      --  The raw interrupt status of TX_FIFO_REMPTY_INTR.
      TX_FIFO_REMPTY_INT_RAW : Boolean := False;
      --  The raw interrupt status of RX_FIFO_WFULL_INTR.
      RX_FIFO_WFULL_INT_RAW  : Boolean := False;
      --  The raw interrupt status of TX_EOF_INTR.
      TX_EOF_INT_RAW         : Boolean := False;
      --  unspecified
      Reserved_3_31          : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      TX_FIFO_REMPTY_INT_RAW at 0 range 0 .. 0;
      RX_FIFO_WFULL_INT_RAW  at 0 range 1 .. 1;
      TX_EOF_INT_RAW         at 0 range 2 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   --  Parallel IO interrupt singal status register.
   type INT_ST_Register is record
      --  Read-only. The masked interrupt status of TX_FIFO_REMPTY_INTR.
      TX_FIFO_REMPTY_INT_ST : Boolean;
      --  Read-only. The masked interrupt status of RX_FIFO_WFULL_INTR.
      RX_FIFO_WFULL_INT_ST  : Boolean;
      --  Read-only. The masked interrupt status of TX_EOF_INTR.
      TX_EOF_INT_ST         : Boolean;
      --  unspecified
      Reserved_3_31         : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      TX_FIFO_REMPTY_INT_ST at 0 range 0 .. 0;
      RX_FIFO_WFULL_INT_ST  at 0 range 1 .. 1;
      TX_EOF_INT_ST         at 0 range 2 .. 2;
      Reserved_3_31         at 0 range 3 .. 31;
   end record;

   --  Parallel IO interrupt clear singal configuration register.
   type INT_CLR_Register is record
      --  Write-only. Write 1 to clear TX_FIFO_REMPTY_INTR.
      TX_FIFO_REMPTY_INT_CLR : Boolean := False;
      --  Write-only. Write 1 to clear RX_FIFO_WFULL_INTR.
      RX_FIFO_WFULL_INT_CLR  : Boolean := False;
      --  Write-only. Write 1 to clear TX_EOF_INTR.
      TX_EOF_INT_CLR         : Boolean := False;
      --  unspecified
      Reserved_3_31          : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      TX_FIFO_REMPTY_INT_CLR at 0 range 0 .. 0;
      RX_FIFO_WFULL_INT_CLR  at 0 range 1 .. 1;
      TX_EOF_INT_CLR         at 0 range 2 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   --  Parallel IO clk configuration register
   type CLK_Register is record
      --  Force clock on for this register file
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VERSION_DATE_Field is HAL.UInt28;

   --  Version register.
   type VERSION_Register is record
      --  Version of this register file
      DATE           : VERSION_DATE_Field := 16#2202240#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERSION_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel IO Controller
   type PARL_IO_Peripheral is record
      --  Parallel RX module configuration register0.
      RX_CFG0 : aliased RX_CFG0_Register;
      --  Parallel RX module configuration register1.
      RX_CFG1 : aliased RX_CFG1_Register;
      --  Parallel TX module configuration register0.
      TX_CFG0 : aliased TX_CFG0_Register;
      --  Parallel TX module configuration register1.
      TX_CFG1 : aliased TX_CFG1_Register;
      --  Parallel IO module status register0.
      ST      : aliased ST_Register;
      --  Parallel IO interrupt enable singal configuration register.
      INT_ENA : aliased INT_ENA_Register;
      --  Parallel IO interrupt raw singal status register.
      INT_RAW : aliased INT_RAW_Register;
      --  Parallel IO interrupt singal status register.
      INT_ST  : aliased INT_ST_Register;
      --  Parallel IO interrupt clear singal configuration register.
      INT_CLR : aliased INT_CLR_Register;
      --  Parallel IO clk configuration register
      CLK     : aliased CLK_Register;
      --  Version register.
      VERSION : aliased VERSION_Register;
   end record
     with Volatile;

   for PARL_IO_Peripheral use record
      RX_CFG0 at 16#0# range 0 .. 31;
      RX_CFG1 at 16#4# range 0 .. 31;
      TX_CFG0 at 16#8# range 0 .. 31;
      TX_CFG1 at 16#C# range 0 .. 31;
      ST      at 16#10# range 0 .. 31;
      INT_ENA at 16#14# range 0 .. 31;
      INT_RAW at 16#18# range 0 .. 31;
      INT_ST  at 16#1C# range 0 .. 31;
      INT_CLR at 16#20# range 0 .. 31;
      CLK     at 16#120# range 0 .. 31;
      VERSION at 16#3FC# range 0 .. 31;
   end record;

   --  Parallel IO Controller
   PARL_IO_Periph : aliased PARL_IO_Peripheral
     with Import, Address => PARL_IO_Base;

end ESP32_C6_SVD.PARL_IO;
