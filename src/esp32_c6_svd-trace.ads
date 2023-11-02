pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.TRACE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  mem addr update
   type MEM_ADDR_UPDATE_Register is record
      --  Write-only. when set this reg, the current_mem_addr will update to
      --  start_addr
      MEM_CURRENT_ADDR_UPDATE : Boolean := False;
      --  unspecified
      Reserved_1_31           : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_ADDR_UPDATE_Register use record
      MEM_CURRENT_ADDR_UPDATE at 0 range 0 .. 0;
      Reserved_1_31           at 0 range 1 .. 31;
   end record;

   --  fifo status register
   type FIFO_STATUS_Register is record
      --  Read-only. 1 indicate that fifo is empty
      FIFO_EMPTY    : Boolean;
      --  Read-only. mem_full interrupt status
      WORK_STATUS   : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_STATUS_Register use record
      FIFO_EMPTY    at 0 range 0 .. 0;
      WORK_STATUS   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  interrupt enable register
   type INTR_ENA_Register is record
      --  Set 1 enable fifo_overflow interrupt
      FIFO_OVERFLOW_INTR_ENA : Boolean := False;
      --  Set 1 enable mem_full interrupt
      MEM_FULL_INTR_ENA      : Boolean := False;
      --  unspecified
      Reserved_2_31          : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_ENA_Register use record
      FIFO_OVERFLOW_INTR_ENA at 0 range 0 .. 0;
      MEM_FULL_INTR_ENA      at 0 range 1 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  interrupt status register
   type INTR_RAW_Register is record
      --  Read-only. fifo_overflow interrupt status
      FIFO_OVERFLOW_INTR_RAW : Boolean;
      --  Read-only. mem_full interrupt status
      MEM_FULL_INTR_RAW      : Boolean;
      --  unspecified
      Reserved_2_31          : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_RAW_Register use record
      FIFO_OVERFLOW_INTR_RAW at 0 range 0 .. 0;
      MEM_FULL_INTR_RAW      at 0 range 1 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  interrupt clear register
   type INTR_CLR_Register is record
      --  Write-only. Set 1 clr fifo overflow interrupt
      FIFO_OVERFLOW_INTR_CLR : Boolean := False;
      --  Write-only. Set 1 clr mem full interrupt
      MEM_FULL_INTR_CLR      : Boolean := False;
      --  unspecified
      Reserved_2_31          : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTR_CLR_Register use record
      FIFO_OVERFLOW_INTR_CLR at 0 range 0 .. 0;
      MEM_FULL_INTR_CLR      at 0 range 1 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  trigger register
   type TRIGGER_Register is record
      --  Write-only. [0] set 1 start trace.
      ON            : Boolean := False;
      --  Write-only. set 1 stop trace.
      OFF           : Boolean := False;
      --  if this reg is 1, trace will loop wrtie trace_mem. If is 0, when
      --  mem_current_addr at mem_end_addr, it will stop at the mem_end_addr
      MEM_LOOP      : Boolean := True;
      --  enable encoder auto-restart, when lost package, the encoder will end,
      --  if enable auto-restart, when fifo empty, encoder will restart and
      --  send a sync package.
      RESTART_ENA   : Boolean := True;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIGGER_Register use record
      ON            at 0 range 0 .. 0;
      OFF           at 0 range 1 .. 1;
      MEM_LOOP      at 0 range 2 .. 2;
      RESTART_ENA   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RESYNC_PROLONGED_RESYNC_PROLONGED_Field is HAL.UInt24;

   --  resync configuration register
   type RESYNC_PROLONGED_Register is record
      --  count number, when count to this value, send a sync package
      RESYNC_PROLONGED : RESYNC_PROLONGED_RESYNC_PROLONGED_Field := 16#80#;
      --  resyc mode sel: 0: default, cycle count 1: package num count
      RESYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_25_31   : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESYNC_PROLONGED_Register use record
      RESYNC_PROLONGED at 0 range 0 .. 23;
      RESYNC_MODE      at 0 range 24 .. 24;
      Reserved_25_31   at 0 range 25 .. 31;
   end record;

   --  Clock gate control register
   type CLOCK_GATE_Register is record
      --  The bit is used to enable clock gate when access all registers in
      --  this module.
      CLK_EN        : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_GATE_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Version control register
   type DATE_Register is record
      --  version control register. Note that this default value stored is the
      --  latest date when the hardware logic was updated.
      DATE           : DATE_DATE_Field := 16#2203030#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RISC-V Trace Encoder
   type TRACE_Peripheral is record
      --  mem start addr
      MEM_START_ADDR   : aliased HAL.UInt32;
      --  mem end addr
      MEM_END_ADDR     : aliased HAL.UInt32;
      --  mem current addr
      MEM_CURRENT_ADDR : aliased HAL.UInt32;
      --  mem addr update
      MEM_ADDR_UPDATE  : aliased MEM_ADDR_UPDATE_Register;
      --  fifo status register
      FIFO_STATUS      : aliased FIFO_STATUS_Register;
      --  interrupt enable register
      INTR_ENA         : aliased INTR_ENA_Register;
      --  interrupt status register
      INTR_RAW         : aliased INTR_RAW_Register;
      --  interrupt clear register
      INTR_CLR         : aliased INTR_CLR_Register;
      --  trigger register
      TRIGGER          : aliased TRIGGER_Register;
      --  resync configuration register
      RESYNC_PROLONGED : aliased RESYNC_PROLONGED_Register;
      --  Clock gate control register
      CLOCK_GATE       : aliased CLOCK_GATE_Register;
      --  Version control register
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for TRACE_Peripheral use record
      MEM_START_ADDR   at 16#0# range 0 .. 31;
      MEM_END_ADDR     at 16#4# range 0 .. 31;
      MEM_CURRENT_ADDR at 16#8# range 0 .. 31;
      MEM_ADDR_UPDATE  at 16#C# range 0 .. 31;
      FIFO_STATUS      at 16#10# range 0 .. 31;
      INTR_ENA         at 16#14# range 0 .. 31;
      INTR_RAW         at 16#18# range 0 .. 31;
      INTR_CLR         at 16#1C# range 0 .. 31;
      TRIGGER          at 16#20# range 0 .. 31;
      RESYNC_PROLONGED at 16#24# range 0 .. 31;
      CLOCK_GATE       at 16#28# range 0 .. 31;
      DATE             at 16#3FC# range 0 .. 31;
   end record;

   --  RISC-V Trace Encoder
   TRACE_Periph : aliased TRACE_Peripheral
     with Import, Address => TRACE_Base;

end ESP32_C6_SVD.TRACE;
