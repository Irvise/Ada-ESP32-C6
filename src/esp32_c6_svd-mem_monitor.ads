pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.MEM_MONITOR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LOG_SETTING_LOG_ENA_Field is HAL.UInt3;
   subtype LOG_SETTING_LOG_MODE_Field is HAL.UInt4;

   --  log config regsiter
   type LOG_SETTING_Register is record
      --  enable bus log. BIT0: hp-cpu, BIT1: lp-cpu, BIT2: DMA.
      LOG_ENA             : LOG_SETTING_LOG_ENA_Field := 16#0#;
      --  This field must be onehot. 4'b0001 : WR monitor, 4'b0010: WORD
      --  monitor, 4'b0100: HALFWORD monitor, 4'b1000: BYTE monitor.
      LOG_MODE            : LOG_SETTING_LOG_MODE_Field := 16#0#;
      --  Set 1 enable mem_loop, it will loop write at the range of MEM_START
      --  and MEM_END
      LOG_MEM_LOOP_ENABLE : Boolean := True;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOG_SETTING_Register use record
      LOG_ENA             at 0 range 0 .. 2;
      LOG_MODE            at 0 range 3 .. 6;
      LOG_MEM_LOOP_ENABLE at 0 range 7 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype LOG_DATA_MASK_LOG_DATA_MASK_Field is HAL.UInt4;

   --  check data mask register
   type LOG_DATA_MASK_Register is record
      --  byte mask enable, BIT0 mask the first byte of
      --  MEM_MONITOR_LOG_CHECK_DATA, and BIT1 mask second byte, and so on.
      LOG_DATA_MASK : LOG_DATA_MASK_LOG_DATA_MASK_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOG_DATA_MASK_Register use record
      LOG_DATA_MASK at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  writing address update
   type LOG_MEM_ADDR_UPDATE_Register is record
      --  Write-only. Set 1 to updata MEM_MONITOR_LOG_MEM_CURRENT_ADDR, when
      --  set 1, MEM_MONITOR_LOG_MEM_CURRENT_ADDR will update to
      --  MEM_MONITOR_LOG_MEM_START
      LOG_MEM_ADDR_UPDATE : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOG_MEM_ADDR_UPDATE_Register use record
      LOG_MEM_ADDR_UPDATE at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  full flag status register
   type LOG_MEM_FULL_FLAG_Register is record
      --  Read-only. 1 means memory write loop at least one time at the range
      --  of MEM_START and MEM_END
      LOG_MEM_FULL_FLAG     : Boolean := False;
      --  Write-only. Set 1 to clr MEM_MONITOR_LOG_MEM_FULL_FLAG
      CLR_LOG_MEM_FULL_FLAG : Boolean := False;
      --  unspecified
      Reserved_2_31         : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOG_MEM_FULL_FLAG_Register use record
      LOG_MEM_FULL_FLAG     at 0 range 0 .. 0;
      CLR_LOG_MEM_FULL_FLAG at 0 range 1 .. 1;
      Reserved_2_31         at 0 range 2 .. 31;
   end record;

   --  clock gate force on register
   type CLOCK_GATE_Register is record
      --  Set 1 to force on the clk of mem_monitor register
      CLK_EN        : Boolean := False;
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

   --  version register
   type DATE_Register is record
      --  version register
      DATE           : DATE_DATE_Field := 16#2202140#;
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

   --  MEM_MONITOR Peripheral
   type MEM_MONITOR_Peripheral is record
      --  log config regsiter
      LOG_SETTING          : aliased LOG_SETTING_Register;
      --  check data regsiter
      LOG_CHECK_DATA       : aliased HAL.UInt32;
      --  check data mask register
      LOG_DATA_MASK        : aliased LOG_DATA_MASK_Register;
      --  log boundary regsiter
      LOG_MIN              : aliased HAL.UInt32;
      --  log boundary regsiter
      LOG_MAX              : aliased HAL.UInt32;
      --  log message store range register
      LOG_MEM_START        : aliased HAL.UInt32;
      --  log message store range register
      LOG_MEM_END          : aliased HAL.UInt32;
      --  current writing address.
      LOG_MEM_CURRENT_ADDR : aliased HAL.UInt32;
      --  writing address update
      LOG_MEM_ADDR_UPDATE  : aliased LOG_MEM_ADDR_UPDATE_Register;
      --  full flag status register
      LOG_MEM_FULL_FLAG    : aliased LOG_MEM_FULL_FLAG_Register;
      --  clock gate force on register
      CLOCK_GATE           : aliased CLOCK_GATE_Register;
      --  version register
      DATE                 : aliased DATE_Register;
   end record
     with Volatile;

   for MEM_MONITOR_Peripheral use record
      LOG_SETTING          at 16#0# range 0 .. 31;
      LOG_CHECK_DATA       at 16#4# range 0 .. 31;
      LOG_DATA_MASK        at 16#8# range 0 .. 31;
      LOG_MIN              at 16#C# range 0 .. 31;
      LOG_MAX              at 16#10# range 0 .. 31;
      LOG_MEM_START        at 16#14# range 0 .. 31;
      LOG_MEM_END          at 16#18# range 0 .. 31;
      LOG_MEM_CURRENT_ADDR at 16#1C# range 0 .. 31;
      LOG_MEM_ADDR_UPDATE  at 16#20# range 0 .. 31;
      LOG_MEM_FULL_FLAG    at 16#24# range 0 .. 31;
      CLOCK_GATE           at 16#28# range 0 .. 31;
      DATE                 at 16#3FC# range 0 .. 31;
   end record;

   --  MEM_MONITOR Peripheral
   MEM_MONITOR_Periph : aliased MEM_MONITOR_Peripheral
     with Import, Address => MEM_MONITOR_Base;

end ESP32_C6_SVD.MEM_MONITOR;
