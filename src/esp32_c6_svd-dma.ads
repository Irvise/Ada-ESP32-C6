pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Raw status interrupt of channel 0
   type IN_INT_RAW_CH_Register is record
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one inlink descriptor has been received for Rx channel 0.
      IN_DONE       : Boolean := False;
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one inlink descriptor has been received for Rx channel 0. For
      --  UHCI0 the raw interrupt bit turns to high level when the last data
      --  pointed by one inlink descriptor has been received and no data error
      --  is detected for Rx channel 0.
      IN_SUC_EOF    : Boolean := False;
      --  The raw interrupt bit turns to high level when data error is detected
      --  only in the case that the peripheral is UHCI0 for Rx channel 0. For
      --  other peripherals this raw interrupt is reserved.
      IN_ERR_EOF    : Boolean := False;
      --  The raw interrupt bit turns to high level when detecting inlink
      --  descriptor error including owner error and the second and third word
      --  error of inlink descriptor for Rx channel 0.
      IN_DSCR_ERR   : Boolean := False;
      --  The raw interrupt bit turns to high level when Rx buffer pointed by
      --  inlink is full and receiving data is not completed but there is no
      --  more inlink for Rx channel 0.
      IN_DSCR_EMPTY : Boolean := False;
      --  This raw interrupt bit turns to high level when level 1 fifo of Rx
      --  channel 0 is overflow.
      INFIFO_OVF    : Boolean := False;
      --  This raw interrupt bit turns to high level when level 1 fifo of Rx
      --  channel 0 is underflow.
      INFIFO_UDF    : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_RAW_CH_Register use record
      IN_DONE       at 0 range 0 .. 0;
      IN_SUC_EOF    at 0 range 1 .. 1;
      IN_ERR_EOF    at 0 range 2 .. 2;
      IN_DSCR_ERR   at 0 range 3 .. 3;
      IN_DSCR_EMPTY at 0 range 4 .. 4;
      INFIFO_OVF    at 0 range 5 .. 5;
      INFIFO_UDF    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Masked interrupt of channel 0
   type IN_INT_ST_CH_Register is record
      --  Read-only. The raw interrupt status bit for the IN_DONE_CH_INT
      --  interrupt.
      IN_DONE       : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_SUC_EOF_CH_INT
      --  interrupt.
      IN_SUC_EOF    : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_ERR_EOF_CH_INT
      --  interrupt.
      IN_ERR_EOF    : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_ERR_CH_INT
      --  interrupt.
      IN_DSCR_ERR   : Boolean;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT
      --  interrupt.
      IN_DSCR_EMPTY : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT
      --  interrupt.
      INFIFO_OVF    : Boolean;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT
      --  interrupt.
      INFIFO_UDF    : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_ST_CH_Register use record
      IN_DONE       at 0 range 0 .. 0;
      IN_SUC_EOF    at 0 range 1 .. 1;
      IN_ERR_EOF    at 0 range 2 .. 2;
      IN_DSCR_ERR   at 0 range 3 .. 3;
      IN_DSCR_EMPTY at 0 range 4 .. 4;
      INFIFO_OVF    at 0 range 5 .. 5;
      INFIFO_UDF    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Interrupt enable bits of channel 0
   type IN_INT_ENA_CH_Register is record
      --  The interrupt enable bit for the IN_DONE_CH_INT interrupt.
      IN_DONE       : Boolean := False;
      --  The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF    : Boolean := False;
      --  The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF    : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR   : Boolean := False;
      --  The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY : Boolean := False;
      --  The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF    : Boolean := False;
      --  The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF    : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_ENA_CH_Register use record
      IN_DONE       at 0 range 0 .. 0;
      IN_SUC_EOF    at 0 range 1 .. 1;
      IN_ERR_EOF    at 0 range 2 .. 2;
      IN_DSCR_ERR   at 0 range 3 .. 3;
      IN_DSCR_EMPTY at 0 range 4 .. 4;
      INFIFO_OVF    at 0 range 5 .. 5;
      INFIFO_UDF    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Interrupt clear bits of channel 0
   type IN_INT_CLR_CH_Register is record
      --  Write-only. Set this bit to clear the IN_DONE_CH_INT interrupt.
      IN_DONE       : Boolean := False;
      --  Write-only. Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF    : Boolean := False;
      --  Write-only. Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF    : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR   : Boolean := False;
      --  Write-only. Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF    : Boolean := False;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF    : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_CLR_CH_Register use record
      IN_DONE       at 0 range 0 .. 0;
      IN_SUC_EOF    at 0 range 1 .. 1;
      IN_ERR_EOF    at 0 range 2 .. 2;
      IN_DSCR_ERR   at 0 range 3 .. 3;
      IN_DSCR_EMPTY at 0 range 4 .. 4;
      INFIFO_OVF    at 0 range 5 .. 5;
      INFIFO_UDF    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Raw status interrupt of channel 0
   type OUT_INT_RAW_CH_Register is record
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one outlink descriptor has been transmitted to peripherals for Tx
      --  channel 0.
      OUT_DONE      : Boolean := False;
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one outlink descriptor has been read from memory for Tx channel 0.
      OUT_EOF       : Boolean := False;
      --  The raw interrupt bit turns to high level when detecting outlink
      --  descriptor error including owner error and the second and third word
      --  error of outlink descriptor for Tx channel 0.
      OUT_DSCR_ERR  : Boolean := False;
      --  The raw interrupt bit turns to high level when data corresponding a
      --  outlink (includes one link descriptor or few link descriptors) is
      --  transmitted out for Tx channel 0.
      OUT_TOTAL_EOF : Boolean := False;
      --  This raw interrupt bit turns to high level when level 1 fifo of Tx
      --  channel 0 is overflow.
      OUTFIFO_OVF   : Boolean := False;
      --  This raw interrupt bit turns to high level when level 1 fifo of Tx
      --  channel 0 is underflow.
      OUTFIFO_UDF   : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_RAW_CH_Register use record
      OUT_DONE      at 0 range 0 .. 0;
      OUT_EOF       at 0 range 1 .. 1;
      OUT_DSCR_ERR  at 0 range 2 .. 2;
      OUT_TOTAL_EOF at 0 range 3 .. 3;
      OUTFIFO_OVF   at 0 range 4 .. 4;
      OUTFIFO_UDF   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Masked interrupt of channel 0
   type OUT_INT_ST_CH_Register is record
      --  Read-only. The raw interrupt status bit for the OUT_DONE_CH_INT
      --  interrupt.
      OUT_DONE      : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_EOF_CH_INT
      --  interrupt.
      OUT_EOF       : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT
      --  interrupt.
      OUT_DSCR_ERR  : Boolean;
      --  Read-only. The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT
      --  interrupt.
      OUT_TOTAL_EOF : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF   : Boolean;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF   : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_ST_CH_Register use record
      OUT_DONE      at 0 range 0 .. 0;
      OUT_EOF       at 0 range 1 .. 1;
      OUT_DSCR_ERR  at 0 range 2 .. 2;
      OUT_TOTAL_EOF at 0 range 3 .. 3;
      OUTFIFO_OVF   at 0 range 4 .. 4;
      OUTFIFO_UDF   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt enable bits of channel 0
   type OUT_INT_ENA_CH_Register is record
      --  The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
      OUT_DONE      : Boolean := False;
      --  The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
      OUT_EOF       : Boolean := False;
      --  The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR  : Boolean := False;
      --  The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
      OUTFIFO_OVF   : Boolean := False;
      --  The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
      OUTFIFO_UDF   : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_ENA_CH_Register use record
      OUT_DONE      at 0 range 0 .. 0;
      OUT_EOF       at 0 range 1 .. 1;
      OUT_DSCR_ERR  at 0 range 2 .. 2;
      OUT_TOTAL_EOF at 0 range 3 .. 3;
      OUTFIFO_OVF   at 0 range 4 .. 4;
      OUTFIFO_UDF   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Interrupt clear bits of channel 0
   type OUT_INT_CLR_CH_Register is record
      --  Write-only. Set this bit to clear the OUT_DONE_CH_INT interrupt.
      OUT_DONE      : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_EOF_CH_INT interrupt.
      OUT_EOF       : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR  : Boolean := False;
      --  Write-only. Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF   : Boolean := False;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF   : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_CLR_CH_Register use record
      OUT_DONE      at 0 range 0 .. 0;
      OUT_EOF       at 0 range 1 .. 1;
      OUT_DSCR_ERR  at 0 range 2 .. 2;
      OUT_TOTAL_EOF at 0 range 3 .. 3;
      OUTFIFO_OVF   at 0 range 4 .. 4;
      OUTFIFO_UDF   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype AHB_TEST_AHB_TESTMODE_Field is HAL.UInt3;
   subtype AHB_TEST_AHB_TESTADDR_Field is HAL.UInt2;

   --  reserved
   type AHB_TEST_Register is record
      --  reserved
      AHB_TESTMODE  : AHB_TEST_AHB_TESTMODE_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  reserved
      AHB_TESTADDR  : AHB_TEST_AHB_TESTADDR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB_TEST_Register use record
      AHB_TESTMODE  at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      AHB_TESTADDR  at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  MISC register
   type MISC_CONF_Register is record
      --  Set this bit then clear this bit to reset the internal ahb FSM.
      AHBM_RST_INTER : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Set this bit to disable priority arbitration function.
      ARB_PRI_DIS    : Boolean := False;
      --  1'h1: Force clock on for register. 1'h0: Support clock only when
      --  application writes registers.
      CLK_EN         : Boolean := False;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISC_CONF_Register use record
      AHBM_RST_INTER at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      ARB_PRI_DIS    at 0 range 2 .. 2;
      CLK_EN         at 0 range 3 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   --  Configure 0 register of Rx channel 0
   type IN_CONF0_CH_Register is record
      --  This bit is used to reset DMA channel 0 Rx FSM and Rx FIFO pointer.
      IN_RST           : Boolean := False;
      --  reserved
      IN_LOOP_TEST     : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  reading link descriptor when accessing internal SRAM.
      INDSCR_BURST_EN  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  receiving data when accessing internal SRAM.
      IN_DATA_BURST_EN : Boolean := False;
      --  Set this bit 1 to enable automatic transmitting data from memory to
      --  memory via DMA.
      MEM_TRANS_EN     : Boolean := False;
      --  Set this bit to 1 to enable etm control mode, dma Rx channel 0 is
      --  triggered by etm task.
      IN_ETM_EN        : Boolean := False;
      --  unspecified
      Reserved_6_31    : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF0_CH_Register use record
      IN_RST           at 0 range 0 .. 0;
      IN_LOOP_TEST     at 0 range 1 .. 1;
      INDSCR_BURST_EN  at 0 range 2 .. 2;
      IN_DATA_BURST_EN at 0 range 3 .. 3;
      MEM_TRANS_EN     at 0 range 4 .. 4;
      IN_ETM_EN        at 0 range 5 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   --  Configure 1 register of Rx channel 0
   type IN_CONF1_CH_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      IN_CHECK_OWNER : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF1_CH_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      IN_CHECK_OWNER at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype INFIFO_STATUS_CH_INFIFO_CNT_Field is HAL.UInt6;

   --  Receive FIFO status of Rx channel 0
   type INFIFO_STATUS_CH_Register is record
      --  Read-only. L1 Rx FIFO full signal for Rx channel 0.
      INFIFO_FULL        : Boolean;
      --  Read-only. L1 Rx FIFO empty signal for Rx channel 0.
      INFIFO_EMPTY       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Rx
      --  FIFO for Rx channel 0.
      INFIFO_CNT         : INFIFO_STATUS_CH_INFIFO_CNT_Field;
      --  unspecified
      Reserved_8_22      : HAL.UInt15;
      --  Read-only. reserved
      IN_REMAIN_UNDER_1B : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_2B : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_3B : Boolean;
      --  Read-only. reserved
      IN_REMAIN_UNDER_4B : Boolean;
      --  Read-only. reserved
      IN_BUF_HUNGRY      : Boolean;
      --  unspecified
      Reserved_28_31     : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INFIFO_STATUS_CH_Register use record
      INFIFO_FULL        at 0 range 0 .. 0;
      INFIFO_EMPTY       at 0 range 1 .. 1;
      INFIFO_CNT         at 0 range 2 .. 7;
      Reserved_8_22      at 0 range 8 .. 22;
      IN_REMAIN_UNDER_1B at 0 range 23 .. 23;
      IN_REMAIN_UNDER_2B at 0 range 24 .. 24;
      IN_REMAIN_UNDER_3B at 0 range 25 .. 25;
      IN_REMAIN_UNDER_4B at 0 range 26 .. 26;
      IN_BUF_HUNGRY      at 0 range 27 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   subtype IN_POP_CH_INFIFO_RDATA_Field is HAL.UInt12;

   --  Pop control register of Rx channel 0
   type IN_POP_CH_Register is record
      --  Read-only. This register stores the data popping from DMA FIFO.
      INFIFO_RDATA   : IN_POP_CH_INFIFO_RDATA_Field := 16#800#;
      --  Write-only. Set this bit to pop data from DMA FIFO.
      INFIFO_POP     : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_POP_CH_Register use record
      INFIFO_RDATA   at 0 range 0 .. 11;
      INFIFO_POP     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype IN_LINK_CH_INLINK_ADDR_Field is HAL.UInt20;

   --  Link descriptor configure and control register of Rx channel 0
   type IN_LINK_CH_Register is record
      --  This register stores the 20 least significant bits of the first
      --  inlink descriptor's address.
      INLINK_ADDR     : IN_LINK_CH_INLINK_ADDR_Field := 16#0#;
      --  Set this bit to return to current inlink descriptor's address when
      --  there are some errors in current receiving data.
      INLINK_AUTO_RET : Boolean := True;
      --  Write-only. Set this bit to stop dealing with the inlink descriptors.
      INLINK_STOP     : Boolean := False;
      --  Write-only. Set this bit to start dealing with the inlink
      --  descriptors.
      INLINK_START    : Boolean := False;
      --  Write-only. Set this bit to mount a new inlink descriptor.
      INLINK_RESTART  : Boolean := False;
      --  Read-only. 1: the inlink descriptor's FSM is in idle state. 0: the
      --  inlink descriptor's FSM is working.
      INLINK_PARK     : Boolean := True;
      --  unspecified
      Reserved_25_31  : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_LINK_CH_Register use record
      INLINK_ADDR     at 0 range 0 .. 19;
      INLINK_AUTO_RET at 0 range 20 .. 20;
      INLINK_STOP     at 0 range 21 .. 21;
      INLINK_START    at 0 range 22 .. 22;
      INLINK_RESTART  at 0 range 23 .. 23;
      INLINK_PARK     at 0 range 24 .. 24;
      Reserved_25_31  at 0 range 25 .. 31;
   end record;

   subtype IN_STATE_CH_INLINK_DSCR_ADDR_Field is HAL.UInt18;
   subtype IN_STATE_CH_IN_DSCR_STATE_Field is HAL.UInt2;
   subtype IN_STATE_CH_IN_STATE_Field is HAL.UInt3;

   --  Receive status of Rx channel 0
   type IN_STATE_CH_Register is record
      --  Read-only. This register stores the current inlink descriptor's
      --  address.
      INLINK_DSCR_ADDR : IN_STATE_CH_INLINK_DSCR_ADDR_Field;
      --  Read-only. reserved
      IN_DSCR_STATE    : IN_STATE_CH_IN_DSCR_STATE_Field;
      --  Read-only. reserved
      IN_STATE         : IN_STATE_CH_IN_STATE_Field;
      --  unspecified
      Reserved_23_31   : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_STATE_CH_Register use record
      INLINK_DSCR_ADDR at 0 range 0 .. 17;
      IN_DSCR_STATE    at 0 range 18 .. 19;
      IN_STATE         at 0 range 20 .. 22;
      Reserved_23_31   at 0 range 23 .. 31;
   end record;

   subtype IN_PRI_CH_RX_PRI_Field is HAL.UInt4;

   --  Priority register of Rx channel 0
   type IN_PRI_CH_Register is record
      --  The priority of Rx channel 0. The larger of the value the higher of
      --  the priority.
      RX_PRI        : IN_PRI_CH_RX_PRI_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PRI_CH_Register use record
      RX_PRI        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IN_PERI_SEL_CH_PERI_IN_SEL_Field is HAL.UInt6;

   --  Peripheral selection of Rx channel 0
   type IN_PERI_SEL_CH_Register is record
      --  This register is used to select peripheral for Rx channel 0. 0:SPI2.
      --  1: Dummy. 2: UHCI0. 3: I2S0. 4: Dummy. 5: Dummy. 6: AES. 7: SHA. 8:
      --  ADC_DAC. 9: Parallel_IO. 10~15: Dummy
      PERI_IN_SEL   : IN_PERI_SEL_CH_PERI_IN_SEL_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PERI_SEL_CH_Register use record
      PERI_IN_SEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Configure 1 register of Tx channel 0
   type OUT_CONF1_CH_Register is record
      --  unspecified
      Reserved_0_11   : HAL.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      OUT_CHECK_OWNER : Boolean := False;
      --  unspecified
      Reserved_13_31  : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF1_CH_Register use record
      Reserved_0_11   at 0 range 0 .. 11;
      OUT_CHECK_OWNER at 0 range 12 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   subtype OUTFIFO_STATUS_CH_OUTFIFO_CNT_Field is HAL.UInt6;

   --  Transmit FIFO status of Tx channel 0
   type OUTFIFO_STATUS_CH_Register is record
      --  Read-only. L1 Tx FIFO full signal for Tx channel 0.
      OUTFIFO_FULL        : Boolean;
      --  Read-only. L1 Tx FIFO empty signal for Tx channel 0.
      OUTFIFO_EMPTY       : Boolean;
      --  Read-only. The register stores the byte number of the data in L1 Tx
      --  FIFO for Tx channel 0.
      OUTFIFO_CNT         : OUTFIFO_STATUS_CH_OUTFIFO_CNT_Field;
      --  unspecified
      Reserved_8_22       : HAL.UInt15;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_1B : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_2B : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_3B : Boolean;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_4B : Boolean;
      --  unspecified
      Reserved_27_31      : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTFIFO_STATUS_CH_Register use record
      OUTFIFO_FULL        at 0 range 0 .. 0;
      OUTFIFO_EMPTY       at 0 range 1 .. 1;
      OUTFIFO_CNT         at 0 range 2 .. 7;
      Reserved_8_22       at 0 range 8 .. 22;
      OUT_REMAIN_UNDER_1B at 0 range 23 .. 23;
      OUT_REMAIN_UNDER_2B at 0 range 24 .. 24;
      OUT_REMAIN_UNDER_3B at 0 range 25 .. 25;
      OUT_REMAIN_UNDER_4B at 0 range 26 .. 26;
      Reserved_27_31      at 0 range 27 .. 31;
   end record;

   subtype OUT_PUSH_CH_OUTFIFO_WDATA_Field is HAL.UInt9;

   --  Push control register of Rx channel 0
   type OUT_PUSH_CH_Register is record
      --  This register stores the data that need to be pushed into DMA FIFO.
      OUTFIFO_WDATA  : OUT_PUSH_CH_OUTFIFO_WDATA_Field := 16#0#;
      --  Write-only. Set this bit to push data into DMA FIFO.
      OUTFIFO_PUSH   : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PUSH_CH_Register use record
      OUTFIFO_WDATA  at 0 range 0 .. 8;
      OUTFIFO_PUSH   at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype OUT_LINK_CH_OUTLINK_ADDR_Field is HAL.UInt20;

   --  Link descriptor configure and control register of Tx channel 0
   type OUT_LINK_CH_Register is record
      --  This register stores the 20 least significant bits of the first
      --  outlink descriptor's address.
      OUTLINK_ADDR    : OUT_LINK_CH_OUTLINK_ADDR_Field := 16#0#;
      --  Write-only. Set this bit to stop dealing with the outlink
      --  descriptors.
      OUTLINK_STOP    : Boolean := False;
      --  Write-only. Set this bit to start dealing with the outlink
      --  descriptors.
      OUTLINK_START   : Boolean := False;
      --  Write-only. Set this bit to restart a new outlink from the last
      --  address.
      OUTLINK_RESTART : Boolean := False;
      --  Read-only. 1: the outlink descriptor's FSM is in idle state. 0: the
      --  outlink descriptor's FSM is working.
      OUTLINK_PARK    : Boolean := True;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_LINK_CH_Register use record
      OUTLINK_ADDR    at 0 range 0 .. 19;
      OUTLINK_STOP    at 0 range 20 .. 20;
      OUTLINK_START   at 0 range 21 .. 21;
      OUTLINK_RESTART at 0 range 22 .. 22;
      OUTLINK_PARK    at 0 range 23 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   subtype OUT_STATE_CH_OUTLINK_DSCR_ADDR_Field is HAL.UInt18;
   subtype OUT_STATE_CH_OUT_DSCR_STATE_Field is HAL.UInt2;
   subtype OUT_STATE_CH_OUT_STATE_Field is HAL.UInt3;

   --  Transmit status of Tx channel 0
   type OUT_STATE_CH_Register is record
      --  Read-only. This register stores the current outlink descriptor's
      --  address.
      OUTLINK_DSCR_ADDR : OUT_STATE_CH_OUTLINK_DSCR_ADDR_Field;
      --  Read-only. reserved
      OUT_DSCR_STATE    : OUT_STATE_CH_OUT_DSCR_STATE_Field;
      --  Read-only. reserved
      OUT_STATE         : OUT_STATE_CH_OUT_STATE_Field;
      --  unspecified
      Reserved_23_31    : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_STATE_CH_Register use record
      OUTLINK_DSCR_ADDR at 0 range 0 .. 17;
      OUT_DSCR_STATE    at 0 range 18 .. 19;
      OUT_STATE         at 0 range 20 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   subtype OUT_PRI_CH_TX_PRI_Field is HAL.UInt4;

   --  Priority register of Tx channel 0.
   type OUT_PRI_CH_Register is record
      --  The priority of Tx channel 0. The larger of the value the higher of
      --  the priority.
      TX_PRI        : OUT_PRI_CH_TX_PRI_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PRI_CH_Register use record
      TX_PRI        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OUT_PERI_SEL_CH_PERI_OUT_SEL_Field is HAL.UInt6;

   --  Peripheral selection of Tx channel 0
   type OUT_PERI_SEL_CH_Register is record
      --  This register is used to select peripheral for Tx channel 0. 0:SPI2.
      --  1: Dummy. 2: UHCI0. 3: I2S0. 4: Dummy. 5: Dummy. 6: AES. 7: SHA. 8:
      --  ADC_DAC. 9: Parallel_IO. 10~15: Dummy
      PERI_OUT_SEL  : OUT_PERI_SEL_CH_PERI_OUT_SEL_Field := 16#3F#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PERI_SEL_CH_Register use record
      PERI_OUT_SEL  at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Configure 0 register of Tx channel 1
   type OUT_CONF0_CH_Register is record
      --  This bit is used to reset DMA channel 1 Tx FSM and Tx FIFO pointer.
      OUT_RST           : Boolean := False;
      --  reserved
      OUT_LOOP_TEST     : Boolean := False;
      --  Set this bit to enable automatic outlink-writeback when all the data
      --  in tx buffer has been transmitted.
      OUT_AUTO_WRBACK   : Boolean := False;
      --  EOF flag generation mode when transmitting data. 1: EOF flag for Tx
      --  channel 1 is generated when data need to transmit has been popped
      --  from FIFO in DMA
      OUT_EOF_MODE      : Boolean := True;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 1
      --  reading link descriptor when accessing internal SRAM.
      OUTDSCR_BURST_EN  : Boolean := False;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 1
      --  transmitting data when accessing internal SRAM.
      OUT_DATA_BURST_EN : Boolean := False;
      --  Set this bit to 1 to enable etm control mode, dma Tx channel 1 is
      --  triggered by etm task.
      OUT_ETM_EN        : Boolean := False;
      --  unspecified
      Reserved_7_31     : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF0_CH_Register use record
      OUT_RST           at 0 range 0 .. 0;
      OUT_LOOP_TEST     at 0 range 1 .. 1;
      OUT_AUTO_WRBACK   at 0 range 2 .. 2;
      OUT_EOF_MODE      at 0 range 3 .. 3;
      OUTDSCR_BURST_EN  at 0 range 4 .. 4;
      OUT_DATA_BURST_EN at 0 range 5 .. 5;
      OUT_ETM_EN        at 0 range 6 .. 6;
      Reserved_7_31     at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA (Direct Memory Access) Controller
   type DMA_Peripheral is record
      --  Raw status interrupt of channel 0
      IN_INT_RAW_CH0           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      IN_INT_ST_CH0            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      IN_INT_ENA_CH0           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      IN_INT_CLR_CH0           : aliased IN_INT_CLR_CH_Register;
      --  Raw status interrupt of channel 0
      IN_INT_RAW_CH1           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      IN_INT_ST_CH1            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      IN_INT_ENA_CH1           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      IN_INT_CLR_CH1           : aliased IN_INT_CLR_CH_Register;
      --  Raw status interrupt of channel 0
      IN_INT_RAW_CH2           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      IN_INT_ST_CH2            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      IN_INT_ENA_CH2           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      IN_INT_CLR_CH2           : aliased IN_INT_CLR_CH_Register;
      --  Raw status interrupt of channel 0
      OUT_INT_RAW_CH0          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      OUT_INT_ST_CH0           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      OUT_INT_ENA_CH0          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      OUT_INT_CLR_CH0          : aliased OUT_INT_CLR_CH_Register;
      --  Raw status interrupt of channel 0
      OUT_INT_RAW_CH1          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      OUT_INT_ST_CH1           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      OUT_INT_ENA_CH1          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      OUT_INT_CLR_CH1          : aliased OUT_INT_CLR_CH_Register;
      --  Raw status interrupt of channel 0
      OUT_INT_RAW_CH2          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of channel 0
      OUT_INT_ST_CH2           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of channel 0
      OUT_INT_ENA_CH2          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of channel 0
      OUT_INT_CLR_CH2          : aliased OUT_INT_CLR_CH_Register;
      --  reserved
      AHB_TEST                 : aliased AHB_TEST_Register;
      --  MISC register
      MISC_CONF                : aliased MISC_CONF_Register;
      --  Version control register
      DATE                     : aliased HAL.UInt32;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH0             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH0             : aliased IN_CONF1_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH0        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH0               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH0              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH0             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH0  : aliased HAL.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH0  : aliased HAL.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH0              : aliased HAL.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH0          : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH0          : aliased HAL.UInt32;
      --  Priority register of Rx channel 0
      IN_PRI_CH0               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH0          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH0            : aliased OUT_CONF1_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH0       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH0             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH0             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH0            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH0     : aliased HAL.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH0 : aliased HAL.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH0             : aliased HAL.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH0         : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH0         : aliased HAL.UInt32;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH0              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH0         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH1             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH1             : aliased IN_CONF1_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH1        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH1               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH1              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH1             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH1  : aliased HAL.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH1  : aliased HAL.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH1              : aliased HAL.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH1          : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH1          : aliased HAL.UInt32;
      --  Priority register of Rx channel 0
      IN_PRI_CH1               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH1          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 1
      OUT_CONF0_CH0            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH1            : aliased OUT_CONF1_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH1       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH1             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH1             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH1            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH1     : aliased HAL.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH1 : aliased HAL.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH1             : aliased HAL.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH1         : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH1         : aliased HAL.UInt32;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH1              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH1         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH2             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH2             : aliased IN_CONF1_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH2        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH2               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH2              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH2             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH2  : aliased HAL.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH2  : aliased HAL.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH2              : aliased HAL.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH2          : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH2          : aliased HAL.UInt32;
      --  Priority register of Rx channel 0
      IN_PRI_CH2               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH2          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 1
      OUT_CONF0_CH1            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH2            : aliased OUT_CONF1_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH2       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH2             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH2             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH2            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH2     : aliased HAL.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH2 : aliased HAL.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH2             : aliased HAL.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH2         : aliased HAL.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH2         : aliased HAL.UInt32;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH2              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH2         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 1
      OUT_CONF0_CH2            : aliased OUT_CONF0_CH_Register;
   end record
     with Volatile;

   for DMA_Peripheral use record
      IN_INT_RAW_CH0           at 16#0# range 0 .. 31;
      IN_INT_ST_CH0            at 16#4# range 0 .. 31;
      IN_INT_ENA_CH0           at 16#8# range 0 .. 31;
      IN_INT_CLR_CH0           at 16#C# range 0 .. 31;
      IN_INT_RAW_CH1           at 16#10# range 0 .. 31;
      IN_INT_ST_CH1            at 16#14# range 0 .. 31;
      IN_INT_ENA_CH1           at 16#18# range 0 .. 31;
      IN_INT_CLR_CH1           at 16#1C# range 0 .. 31;
      IN_INT_RAW_CH2           at 16#20# range 0 .. 31;
      IN_INT_ST_CH2            at 16#24# range 0 .. 31;
      IN_INT_ENA_CH2           at 16#28# range 0 .. 31;
      IN_INT_CLR_CH2           at 16#2C# range 0 .. 31;
      OUT_INT_RAW_CH0          at 16#30# range 0 .. 31;
      OUT_INT_ST_CH0           at 16#34# range 0 .. 31;
      OUT_INT_ENA_CH0          at 16#38# range 0 .. 31;
      OUT_INT_CLR_CH0          at 16#3C# range 0 .. 31;
      OUT_INT_RAW_CH1          at 16#40# range 0 .. 31;
      OUT_INT_ST_CH1           at 16#44# range 0 .. 31;
      OUT_INT_ENA_CH1          at 16#48# range 0 .. 31;
      OUT_INT_CLR_CH1          at 16#4C# range 0 .. 31;
      OUT_INT_RAW_CH2          at 16#50# range 0 .. 31;
      OUT_INT_ST_CH2           at 16#54# range 0 .. 31;
      OUT_INT_ENA_CH2          at 16#58# range 0 .. 31;
      OUT_INT_CLR_CH2          at 16#5C# range 0 .. 31;
      AHB_TEST                 at 16#60# range 0 .. 31;
      MISC_CONF                at 16#64# range 0 .. 31;
      DATE                     at 16#68# range 0 .. 31;
      IN_CONF0_CH0             at 16#70# range 0 .. 31;
      IN_CONF1_CH0             at 16#74# range 0 .. 31;
      INFIFO_STATUS_CH0        at 16#78# range 0 .. 31;
      IN_POP_CH0               at 16#7C# range 0 .. 31;
      IN_LINK_CH0              at 16#80# range 0 .. 31;
      IN_STATE_CH0             at 16#84# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH0  at 16#88# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH0  at 16#8C# range 0 .. 31;
      IN_DSCR_CH0              at 16#90# range 0 .. 31;
      IN_DSCR_BF0_CH0          at 16#94# range 0 .. 31;
      IN_DSCR_BF1_CH0          at 16#98# range 0 .. 31;
      IN_PRI_CH0               at 16#9C# range 0 .. 31;
      IN_PERI_SEL_CH0          at 16#A0# range 0 .. 31;
      OUT_CONF1_CH0            at 16#D4# range 0 .. 31;
      OUTFIFO_STATUS_CH0       at 16#D8# range 0 .. 31;
      OUT_PUSH_CH0             at 16#DC# range 0 .. 31;
      OUT_LINK_CH0             at 16#E0# range 0 .. 31;
      OUT_STATE_CH0            at 16#E4# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH0     at 16#E8# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH0 at 16#EC# range 0 .. 31;
      OUT_DSCR_CH0             at 16#F0# range 0 .. 31;
      OUT_DSCR_BF0_CH0         at 16#F4# range 0 .. 31;
      OUT_DSCR_BF1_CH0         at 16#F8# range 0 .. 31;
      OUT_PRI_CH0              at 16#FC# range 0 .. 31;
      OUT_PERI_SEL_CH0         at 16#100# range 0 .. 31;
      IN_CONF0_CH1             at 16#130# range 0 .. 31;
      IN_CONF1_CH1             at 16#134# range 0 .. 31;
      INFIFO_STATUS_CH1        at 16#138# range 0 .. 31;
      IN_POP_CH1               at 16#13C# range 0 .. 31;
      IN_LINK_CH1              at 16#140# range 0 .. 31;
      IN_STATE_CH1             at 16#144# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH1  at 16#148# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH1  at 16#14C# range 0 .. 31;
      IN_DSCR_CH1              at 16#150# range 0 .. 31;
      IN_DSCR_BF0_CH1          at 16#154# range 0 .. 31;
      IN_DSCR_BF1_CH1          at 16#158# range 0 .. 31;
      IN_PRI_CH1               at 16#15C# range 0 .. 31;
      IN_PERI_SEL_CH1          at 16#160# range 0 .. 31;
      OUT_CONF0_CH0            at 16#190# range 0 .. 31;
      OUT_CONF1_CH1            at 16#194# range 0 .. 31;
      OUTFIFO_STATUS_CH1       at 16#198# range 0 .. 31;
      OUT_PUSH_CH1             at 16#19C# range 0 .. 31;
      OUT_LINK_CH1             at 16#1A0# range 0 .. 31;
      OUT_STATE_CH1            at 16#1A4# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH1     at 16#1A8# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH1 at 16#1AC# range 0 .. 31;
      OUT_DSCR_CH1             at 16#1B0# range 0 .. 31;
      OUT_DSCR_BF0_CH1         at 16#1B4# range 0 .. 31;
      OUT_DSCR_BF1_CH1         at 16#1B8# range 0 .. 31;
      OUT_PRI_CH1              at 16#1BC# range 0 .. 31;
      OUT_PERI_SEL_CH1         at 16#1C0# range 0 .. 31;
      IN_CONF0_CH2             at 16#1F0# range 0 .. 31;
      IN_CONF1_CH2             at 16#1F4# range 0 .. 31;
      INFIFO_STATUS_CH2        at 16#1F8# range 0 .. 31;
      IN_POP_CH2               at 16#1FC# range 0 .. 31;
      IN_LINK_CH2              at 16#200# range 0 .. 31;
      IN_STATE_CH2             at 16#204# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH2  at 16#208# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH2  at 16#20C# range 0 .. 31;
      IN_DSCR_CH2              at 16#210# range 0 .. 31;
      IN_DSCR_BF0_CH2          at 16#214# range 0 .. 31;
      IN_DSCR_BF1_CH2          at 16#218# range 0 .. 31;
      IN_PRI_CH2               at 16#21C# range 0 .. 31;
      IN_PERI_SEL_CH2          at 16#220# range 0 .. 31;
      OUT_CONF0_CH1            at 16#250# range 0 .. 31;
      OUT_CONF1_CH2            at 16#254# range 0 .. 31;
      OUTFIFO_STATUS_CH2       at 16#258# range 0 .. 31;
      OUT_PUSH_CH2             at 16#25C# range 0 .. 31;
      OUT_LINK_CH2             at 16#260# range 0 .. 31;
      OUT_STATE_CH2            at 16#264# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH2     at 16#268# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH2 at 16#26C# range 0 .. 31;
      OUT_DSCR_CH2             at 16#270# range 0 .. 31;
      OUT_DSCR_BF0_CH2         at 16#274# range 0 .. 31;
      OUT_DSCR_BF1_CH2         at 16#278# range 0 .. 31;
      OUT_PRI_CH2              at 16#27C# range 0 .. 31;
      OUT_PERI_SEL_CH2         at 16#280# range 0 .. 31;
      OUT_CONF0_CH2            at 16#310# range 0 .. 31;
   end record;

   --  DMA (Direct Memory Access) Controller
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end ESP32_C6_SVD.DMA;
