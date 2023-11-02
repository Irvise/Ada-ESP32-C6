pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.ASSIST_DEBUG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  core0 monitor enable configuration register
   type CORE_0_MONTR_ENA_Register is record
      --  Core0 dram0 area0 read monitor enable
      CORE_0_AREA_DRAM0_0_RD_ENA         : Boolean := False;
      --  Core0 dram0 area0 write monitor enable
      CORE_0_AREA_DRAM0_0_WR_ENA         : Boolean := False;
      --  Core0 dram0 area1 read monitor enable
      CORE_0_AREA_DRAM0_1_RD_ENA         : Boolean := False;
      --  Core0 dram0 area1 write monitor enable
      CORE_0_AREA_DRAM0_1_WR_ENA         : Boolean := False;
      --  Core0 PIF area0 read monitor enable
      CORE_0_AREA_PIF_0_RD_ENA           : Boolean := False;
      --  Core0 PIF area0 write monitor enable
      CORE_0_AREA_PIF_0_WR_ENA           : Boolean := False;
      --  Core0 PIF area1 read monitor enable
      CORE_0_AREA_PIF_1_RD_ENA           : Boolean := False;
      --  Core0 PIF area1 write monitor enable
      CORE_0_AREA_PIF_1_WR_ENA           : Boolean := False;
      --  Core0 stackpoint underflow monitor enable
      CORE_0_SP_SPILL_MIN_ENA            : Boolean := False;
      --  Core0 stackpoint overflow monitor enable
      CORE_0_SP_SPILL_MAX_ENA            : Boolean := False;
      --  IBUS busy monitor enable
      CORE_0_IRAM0_EXCEPTION_MONITOR_ENA : Boolean := False;
      --  DBUS busy monitor enbale
      CORE_0_DRAM0_EXCEPTION_MONITOR_ENA : Boolean := False;
      --  unspecified
      Reserved_12_31                     : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_MONTR_ENA_Register use record
      CORE_0_AREA_DRAM0_0_RD_ENA         at 0 range 0 .. 0;
      CORE_0_AREA_DRAM0_0_WR_ENA         at 0 range 1 .. 1;
      CORE_0_AREA_DRAM0_1_RD_ENA         at 0 range 2 .. 2;
      CORE_0_AREA_DRAM0_1_WR_ENA         at 0 range 3 .. 3;
      CORE_0_AREA_PIF_0_RD_ENA           at 0 range 4 .. 4;
      CORE_0_AREA_PIF_0_WR_ENA           at 0 range 5 .. 5;
      CORE_0_AREA_PIF_1_RD_ENA           at 0 range 6 .. 6;
      CORE_0_AREA_PIF_1_WR_ENA           at 0 range 7 .. 7;
      CORE_0_SP_SPILL_MIN_ENA            at 0 range 8 .. 8;
      CORE_0_SP_SPILL_MAX_ENA            at 0 range 9 .. 9;
      CORE_0_IRAM0_EXCEPTION_MONITOR_ENA at 0 range 10 .. 10;
      CORE_0_DRAM0_EXCEPTION_MONITOR_ENA at 0 range 11 .. 11;
      Reserved_12_31                     at 0 range 12 .. 31;
   end record;

   --  core0 monitor interrupt status register
   type CORE_0_INTR_RAW_Register is record
      --  Read-only. Core0 dram0 area0 read monitor interrupt status
      CORE_0_AREA_DRAM0_0_RD_RAW         : Boolean;
      --  Read-only. Core0 dram0 area0 write monitor interrupt status
      CORE_0_AREA_DRAM0_0_WR_RAW         : Boolean;
      --  Read-only. Core0 dram0 area1 read monitor interrupt status
      CORE_0_AREA_DRAM0_1_RD_RAW         : Boolean;
      --  Read-only. Core0 dram0 area1 write monitor interrupt status
      CORE_0_AREA_DRAM0_1_WR_RAW         : Boolean;
      --  Read-only. Core0 PIF area0 read monitor interrupt status
      CORE_0_AREA_PIF_0_RD_RAW           : Boolean;
      --  Read-only. Core0 PIF area0 write monitor interrupt status
      CORE_0_AREA_PIF_0_WR_RAW           : Boolean;
      --  Read-only. Core0 PIF area1 read monitor interrupt status
      CORE_0_AREA_PIF_1_RD_RAW           : Boolean;
      --  Read-only. Core0 PIF area1 write monitor interrupt status
      CORE_0_AREA_PIF_1_WR_RAW           : Boolean;
      --  Read-only. Core0 stackpoint underflow monitor interrupt status
      CORE_0_SP_SPILL_MIN_RAW            : Boolean;
      --  Read-only. Core0 stackpoint overflow monitor interrupt status
      CORE_0_SP_SPILL_MAX_RAW            : Boolean;
      --  Read-only. IBUS busy monitor interrupt status
      CORE_0_IRAM0_EXCEPTION_MONITOR_RAW : Boolean;
      --  Read-only. DBUS busy monitor initerrupt status
      CORE_0_DRAM0_EXCEPTION_MONITOR_RAW : Boolean;
      --  unspecified
      Reserved_12_31                     : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_INTR_RAW_Register use record
      CORE_0_AREA_DRAM0_0_RD_RAW         at 0 range 0 .. 0;
      CORE_0_AREA_DRAM0_0_WR_RAW         at 0 range 1 .. 1;
      CORE_0_AREA_DRAM0_1_RD_RAW         at 0 range 2 .. 2;
      CORE_0_AREA_DRAM0_1_WR_RAW         at 0 range 3 .. 3;
      CORE_0_AREA_PIF_0_RD_RAW           at 0 range 4 .. 4;
      CORE_0_AREA_PIF_0_WR_RAW           at 0 range 5 .. 5;
      CORE_0_AREA_PIF_1_RD_RAW           at 0 range 6 .. 6;
      CORE_0_AREA_PIF_1_WR_RAW           at 0 range 7 .. 7;
      CORE_0_SP_SPILL_MIN_RAW            at 0 range 8 .. 8;
      CORE_0_SP_SPILL_MAX_RAW            at 0 range 9 .. 9;
      CORE_0_IRAM0_EXCEPTION_MONITOR_RAW at 0 range 10 .. 10;
      CORE_0_DRAM0_EXCEPTION_MONITOR_RAW at 0 range 11 .. 11;
      Reserved_12_31                     at 0 range 12 .. 31;
   end record;

   --  core0 monitor interrupt enable register
   type CORE_0_INTR_ENA_Register is record
      --  Core0 dram0 area0 read monitor interrupt enable
      CORE_0_AREA_DRAM0_0_RD_INTR_ENA         : Boolean := False;
      --  Core0 dram0 area0 write monitor interrupt enable
      CORE_0_AREA_DRAM0_0_WR_INTR_ENA         : Boolean := False;
      --  Core0 dram0 area1 read monitor interrupt enable
      CORE_0_AREA_DRAM0_1_RD_INTR_ENA         : Boolean := False;
      --  Core0 dram0 area1 write monitor interrupt enable
      CORE_0_AREA_DRAM0_1_WR_INTR_ENA         : Boolean := False;
      --  Core0 PIF area0 read monitor interrupt enable
      CORE_0_AREA_PIF_0_RD_INTR_ENA           : Boolean := False;
      --  Core0 PIF area0 write monitor interrupt enable
      CORE_0_AREA_PIF_0_WR_INTR_ENA           : Boolean := False;
      --  Core0 PIF area1 read monitor interrupt enable
      CORE_0_AREA_PIF_1_RD_INTR_ENA           : Boolean := False;
      --  Core0 PIF area1 write monitor interrupt enable
      CORE_0_AREA_PIF_1_WR_INTR_ENA           : Boolean := False;
      --  Core0 stackpoint underflow monitor interrupt enable
      CORE_0_SP_SPILL_MIN_INTR_ENA            : Boolean := False;
      --  Core0 stackpoint overflow monitor interrupt enable
      CORE_0_SP_SPILL_MAX_INTR_ENA            : Boolean := False;
      --  IBUS busy monitor interrupt enable
      CORE_0_IRAM0_EXCEPTION_MONITOR_INTR_ENA : Boolean := False;
      --  DBUS busy monitor interrupt enbale
      CORE_0_DRAM0_EXCEPTION_MONITOR_INTR_ENA : Boolean := False;
      --  unspecified
      Reserved_12_31                          : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_INTR_ENA_Register use record
      CORE_0_AREA_DRAM0_0_RD_INTR_ENA         at 0 range 0 .. 0;
      CORE_0_AREA_DRAM0_0_WR_INTR_ENA         at 0 range 1 .. 1;
      CORE_0_AREA_DRAM0_1_RD_INTR_ENA         at 0 range 2 .. 2;
      CORE_0_AREA_DRAM0_1_WR_INTR_ENA         at 0 range 3 .. 3;
      CORE_0_AREA_PIF_0_RD_INTR_ENA           at 0 range 4 .. 4;
      CORE_0_AREA_PIF_0_WR_INTR_ENA           at 0 range 5 .. 5;
      CORE_0_AREA_PIF_1_RD_INTR_ENA           at 0 range 6 .. 6;
      CORE_0_AREA_PIF_1_WR_INTR_ENA           at 0 range 7 .. 7;
      CORE_0_SP_SPILL_MIN_INTR_ENA            at 0 range 8 .. 8;
      CORE_0_SP_SPILL_MAX_INTR_ENA            at 0 range 9 .. 9;
      CORE_0_IRAM0_EXCEPTION_MONITOR_INTR_ENA at 0 range 10 .. 10;
      CORE_0_DRAM0_EXCEPTION_MONITOR_INTR_ENA at 0 range 11 .. 11;
      Reserved_12_31                          at 0 range 12 .. 31;
   end record;

   --  core0 monitor interrupt clr register
   type CORE_0_INTR_CLR_Register is record
      --  Write-only. Core0 dram0 area0 read monitor interrupt clr
      CORE_0_AREA_DRAM0_0_RD_CLR         : Boolean := False;
      --  Write-only. Core0 dram0 area0 write monitor interrupt clr
      CORE_0_AREA_DRAM0_0_WR_CLR         : Boolean := False;
      --  Write-only. Core0 dram0 area1 read monitor interrupt clr
      CORE_0_AREA_DRAM0_1_RD_CLR         : Boolean := False;
      --  Write-only. Core0 dram0 area1 write monitor interrupt clr
      CORE_0_AREA_DRAM0_1_WR_CLR         : Boolean := False;
      --  Write-only. Core0 PIF area0 read monitor interrupt clr
      CORE_0_AREA_PIF_0_RD_CLR           : Boolean := False;
      --  Write-only. Core0 PIF area0 write monitor interrupt clr
      CORE_0_AREA_PIF_0_WR_CLR           : Boolean := False;
      --  Write-only. Core0 PIF area1 read monitor interrupt clr
      CORE_0_AREA_PIF_1_RD_CLR           : Boolean := False;
      --  Write-only. Core0 PIF area1 write monitor interrupt clr
      CORE_0_AREA_PIF_1_WR_CLR           : Boolean := False;
      --  Write-only. Core0 stackpoint underflow monitor interrupt clr
      CORE_0_SP_SPILL_MIN_CLR            : Boolean := False;
      --  Write-only. Core0 stackpoint overflow monitor interrupt clr
      CORE_0_SP_SPILL_MAX_CLR            : Boolean := False;
      --  Write-only. IBUS busy monitor interrupt clr
      CORE_0_IRAM0_EXCEPTION_MONITOR_CLR : Boolean := False;
      --  Write-only. DBUS busy monitor interrupt clr
      CORE_0_DRAM0_EXCEPTION_MONITOR_CLR : Boolean := False;
      --  unspecified
      Reserved_12_31                     : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_INTR_CLR_Register use record
      CORE_0_AREA_DRAM0_0_RD_CLR         at 0 range 0 .. 0;
      CORE_0_AREA_DRAM0_0_WR_CLR         at 0 range 1 .. 1;
      CORE_0_AREA_DRAM0_1_RD_CLR         at 0 range 2 .. 2;
      CORE_0_AREA_DRAM0_1_WR_CLR         at 0 range 3 .. 3;
      CORE_0_AREA_PIF_0_RD_CLR           at 0 range 4 .. 4;
      CORE_0_AREA_PIF_0_WR_CLR           at 0 range 5 .. 5;
      CORE_0_AREA_PIF_1_RD_CLR           at 0 range 6 .. 6;
      CORE_0_AREA_PIF_1_WR_CLR           at 0 range 7 .. 7;
      CORE_0_SP_SPILL_MIN_CLR            at 0 range 8 .. 8;
      CORE_0_SP_SPILL_MAX_CLR            at 0 range 9 .. 9;
      CORE_0_IRAM0_EXCEPTION_MONITOR_CLR at 0 range 10 .. 10;
      CORE_0_DRAM0_EXCEPTION_MONITOR_CLR at 0 range 11 .. 11;
      Reserved_12_31                     at 0 range 12 .. 31;
   end record;

   --  record enable configuration register
   type CORE_0_RCD_EN_Register is record
      --  Set 1 to enable record PC
      CORE_0_RCD_RECORDEN : Boolean := False;
      --  Set 1 to enable cpu pdebug function, must set this bit can get cpu PC
      CORE_0_RCD_PDEBUGEN : Boolean := False;
      --  unspecified
      Reserved_2_31       : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_RCD_EN_Register use record
      CORE_0_RCD_RECORDEN at 0 range 0 .. 0;
      CORE_0_RCD_PDEBUGEN at 0 range 1 .. 1;
      Reserved_2_31       at 0 range 2 .. 31;
   end record;

   subtype CORE_0_IRAM0_EXCEPTION_MONITOR_0_CORE_0_IRAM0_RECORDING_ADDR_0_Field is
     HAL.UInt24;

   --  exception monitor status register0
   type CORE_0_IRAM0_EXCEPTION_MONITOR_0_Register is record
      --  Read-only. reg_core_0_iram0_recording_addr_0
      CORE_0_IRAM0_RECORDING_ADDR_0      : CORE_0_IRAM0_EXCEPTION_MONITOR_0_CORE_0_IRAM0_RECORDING_ADDR_0_Field;
      --  Read-only. reg_core_0_iram0_recording_wr_0
      CORE_0_IRAM0_RECORDING_WR_0        : Boolean;
      --  Read-only. reg_core_0_iram0_recording_loadstore_0
      CORE_0_IRAM0_RECORDING_LOADSTORE_0 : Boolean;
      --  unspecified
      Reserved_26_31                     : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_IRAM0_EXCEPTION_MONITOR_0_Register use record
      CORE_0_IRAM0_RECORDING_ADDR_0      at 0 range 0 .. 23;
      CORE_0_IRAM0_RECORDING_WR_0        at 0 range 24 .. 24;
      CORE_0_IRAM0_RECORDING_LOADSTORE_0 at 0 range 25 .. 25;
      Reserved_26_31                     at 0 range 26 .. 31;
   end record;

   subtype CORE_0_IRAM0_EXCEPTION_MONITOR_1_CORE_0_IRAM0_RECORDING_ADDR_1_Field is
     HAL.UInt24;

   --  exception monitor status register1
   type CORE_0_IRAM0_EXCEPTION_MONITOR_1_Register is record
      --  Read-only. reg_core_0_iram0_recording_addr_1
      CORE_0_IRAM0_RECORDING_ADDR_1      : CORE_0_IRAM0_EXCEPTION_MONITOR_1_CORE_0_IRAM0_RECORDING_ADDR_1_Field;
      --  Read-only. reg_core_0_iram0_recording_wr_1
      CORE_0_IRAM0_RECORDING_WR_1        : Boolean;
      --  Read-only. reg_core_0_iram0_recording_loadstore_1
      CORE_0_IRAM0_RECORDING_LOADSTORE_1 : Boolean;
      --  unspecified
      Reserved_26_31                     : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_IRAM0_EXCEPTION_MONITOR_1_Register use record
      CORE_0_IRAM0_RECORDING_ADDR_1      at 0 range 0 .. 23;
      CORE_0_IRAM0_RECORDING_WR_1        at 0 range 24 .. 24;
      CORE_0_IRAM0_RECORDING_LOADSTORE_1 at 0 range 25 .. 25;
      Reserved_26_31                     at 0 range 26 .. 31;
   end record;

   subtype CORE_0_DRAM0_EXCEPTION_MONITOR_0_CORE_0_DRAM0_RECORDING_ADDR_0_Field is
     HAL.UInt24;
   subtype CORE_0_DRAM0_EXCEPTION_MONITOR_0_CORE_0_DRAM0_RECORDING_BYTEEN_0_Field is
     HAL.UInt4;

   --  exception monitor status register2
   type CORE_0_DRAM0_EXCEPTION_MONITOR_0_Register is record
      --  Read-only. reg_core_0_dram0_recording_addr_0
      CORE_0_DRAM0_RECORDING_ADDR_0   : CORE_0_DRAM0_EXCEPTION_MONITOR_0_CORE_0_DRAM0_RECORDING_ADDR_0_Field;
      --  Read-only. reg_core_0_dram0_recording_wr_0
      CORE_0_DRAM0_RECORDING_WR_0     : Boolean;
      --  Read-only. reg_core_0_dram0_recording_byteen_0
      CORE_0_DRAM0_RECORDING_BYTEEN_0 : CORE_0_DRAM0_EXCEPTION_MONITOR_0_CORE_0_DRAM0_RECORDING_BYTEEN_0_Field;
      --  unspecified
      Reserved_29_31                  : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_DRAM0_EXCEPTION_MONITOR_0_Register use record
      CORE_0_DRAM0_RECORDING_ADDR_0   at 0 range 0 .. 23;
      CORE_0_DRAM0_RECORDING_WR_0     at 0 range 24 .. 24;
      CORE_0_DRAM0_RECORDING_BYTEEN_0 at 0 range 25 .. 28;
      Reserved_29_31                  at 0 range 29 .. 31;
   end record;

   subtype CORE_0_DRAM0_EXCEPTION_MONITOR_2_CORE_0_DRAM0_RECORDING_ADDR_1_Field is
     HAL.UInt24;
   subtype CORE_0_DRAM0_EXCEPTION_MONITOR_2_CORE_0_DRAM0_RECORDING_BYTEEN_1_Field is
     HAL.UInt4;

   --  exception monitor status register4
   type CORE_0_DRAM0_EXCEPTION_MONITOR_2_Register is record
      --  Read-only. reg_core_0_dram0_recording_addr_1
      CORE_0_DRAM0_RECORDING_ADDR_1   : CORE_0_DRAM0_EXCEPTION_MONITOR_2_CORE_0_DRAM0_RECORDING_ADDR_1_Field;
      --  Read-only. reg_core_0_dram0_recording_wr_1
      CORE_0_DRAM0_RECORDING_WR_1     : Boolean;
      --  Read-only. reg_core_0_dram0_recording_byteen_1
      CORE_0_DRAM0_RECORDING_BYTEEN_1 : CORE_0_DRAM0_EXCEPTION_MONITOR_2_CORE_0_DRAM0_RECORDING_BYTEEN_1_Field;
      --  unspecified
      Reserved_29_31                  : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_0_DRAM0_EXCEPTION_MONITOR_2_Register use record
      CORE_0_DRAM0_RECORDING_ADDR_1   at 0 range 0 .. 23;
      CORE_0_DRAM0_RECORDING_WR_1     at 0 range 24 .. 24;
      CORE_0_DRAM0_RECORDING_BYTEEN_1 at 0 range 25 .. 28;
      Reserved_29_31                  at 0 range 29 .. 31;
   end record;

   subtype CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_0_Field is
     HAL.UInt20;

   --  exception monitor status register6
   type CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_Register is record
      --  reg_core_x_iram0_dram0_limit_cycle_0
      CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_0 : CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_0_Field :=
                                          16#0#;
      --  unspecified
      Reserved_20_31                   : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_Register use record
      CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_0 at 0 range 0 .. 19;
      Reserved_20_31                   at 0 range 20 .. 31;
   end record;

   subtype CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_1_Field is
     HAL.UInt20;

   --  exception monitor status register7
   type CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_Register is record
      --  reg_core_x_iram0_dram0_limit_cycle_1
      CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_1 : CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_1_Field :=
                                          16#0#;
      --  unspecified
      Reserved_20_31                   : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_Register use record
      CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_1 at 0 range 0 .. 19;
      Reserved_20_31                   at 0 range 20 .. 31;
   end record;

   --  cpu status register
   type C0RE_0_DEBUG_MODE_Register is record
      --  Read-only. cpu debug mode status, 1 means cpu enter debug mode.
      CORE_0_DEBUG_MODE          : Boolean;
      --  Read-only. cpu debug_module active status
      CORE_0_DEBUG_MODULE_ACTIVE : Boolean;
      --  unspecified
      Reserved_2_31              : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RE_0_DEBUG_MODE_Register use record
      CORE_0_DEBUG_MODE          at 0 range 0 .. 0;
      CORE_0_DEBUG_MODULE_ACTIVE at 0 range 1 .. 1;
      Reserved_2_31              at 0 range 2 .. 31;
   end record;

   --  clock register
   type CLOCK_GATE_Register is record
      --  Set 1 force on the clock gate
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

   subtype DATE_ASSIST_DEBUG_DATE_Field is HAL.UInt28;

   --  version register
   type DATE_Register is record
      --  version register
      ASSIST_DEBUG_DATE : DATE_ASSIST_DEBUG_DATE_Field := 16#2109130#;
      --  unspecified
      Reserved_28_31    : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      ASSIST_DEBUG_DATE at 0 range 0 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Debug Assist
   type ASSIST_DEBUG_Peripheral is record
      --  core0 monitor enable configuration register
      CORE_0_MONTR_ENA                       : aliased CORE_0_MONTR_ENA_Register;
      --  core0 monitor interrupt status register
      CORE_0_INTR_RAW                        : aliased CORE_0_INTR_RAW_Register;
      --  core0 monitor interrupt enable register
      CORE_0_INTR_ENA                        : aliased CORE_0_INTR_ENA_Register;
      --  core0 monitor interrupt clr register
      CORE_0_INTR_CLR                        : aliased CORE_0_INTR_CLR_Register;
      --  core0 dram0 region0 addr configuration register
      CORE_0_AREA_DRAM0_0_MIN                : aliased HAL.UInt32;
      --  core0 dram0 region0 addr configuration register
      CORE_0_AREA_DRAM0_0_MAX                : aliased HAL.UInt32;
      --  core0 dram0 region1 addr configuration register
      CORE_0_AREA_DRAM0_1_MIN                : aliased HAL.UInt32;
      --  core0 dram0 region1 addr configuration register
      CORE_0_AREA_DRAM0_1_MAX                : aliased HAL.UInt32;
      --  core0 PIF region0 addr configuration register
      CORE_0_AREA_PIF_0_MIN                  : aliased HAL.UInt32;
      --  core0 PIF region0 addr configuration register
      CORE_0_AREA_PIF_0_MAX                  : aliased HAL.UInt32;
      --  core0 PIF region1 addr configuration register
      CORE_0_AREA_PIF_1_MIN                  : aliased HAL.UInt32;
      --  core0 PIF region1 addr configuration register
      CORE_0_AREA_PIF_1_MAX                  : aliased HAL.UInt32;
      --  core0 area pc status register
      CORE_0_AREA_PC                         : aliased HAL.UInt32;
      --  core0 area sp status register
      CORE_0_AREA_SP                         : aliased HAL.UInt32;
      --  stack min value
      CORE_0_SP_MIN                          : aliased HAL.UInt32;
      --  stack max value
      CORE_0_SP_MAX                          : aliased HAL.UInt32;
      --  stack monitor pc status register
      CORE_0_SP_PC                           : aliased HAL.UInt32;
      --  record enable configuration register
      CORE_0_RCD_EN                          : aliased CORE_0_RCD_EN_Register;
      --  record status regsiter
      CORE_0_RCD_PDEBUGPC                    : aliased HAL.UInt32;
      --  record status regsiter
      CORE_0_RCD_PDEBUGSP                    : aliased HAL.UInt32;
      --  exception monitor status register0
      CORE_0_IRAM0_EXCEPTION_MONITOR_0       : aliased CORE_0_IRAM0_EXCEPTION_MONITOR_0_Register;
      --  exception monitor status register1
      CORE_0_IRAM0_EXCEPTION_MONITOR_1       : aliased CORE_0_IRAM0_EXCEPTION_MONITOR_1_Register;
      --  exception monitor status register2
      CORE_0_DRAM0_EXCEPTION_MONITOR_0       : aliased CORE_0_DRAM0_EXCEPTION_MONITOR_0_Register;
      --  exception monitor status register3
      CORE_0_DRAM0_EXCEPTION_MONITOR_1       : aliased HAL.UInt32;
      --  exception monitor status register4
      CORE_0_DRAM0_EXCEPTION_MONITOR_2       : aliased CORE_0_DRAM0_EXCEPTION_MONITOR_2_Register;
      --  exception monitor status register5
      CORE_0_DRAM0_EXCEPTION_MONITOR_3       : aliased HAL.UInt32;
      --  exception monitor status register6
      CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0 : aliased CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_Register;
      --  exception monitor status register7
      CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1 : aliased CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_Register;
      --  cpu status register
      C0RE_0_LASTPC_BEFORE_EXCEPTION         : aliased HAL.UInt32;
      --  cpu status register
      C0RE_0_DEBUG_MODE                      : aliased C0RE_0_DEBUG_MODE_Register;
      --  clock register
      CLOCK_GATE                             : aliased CLOCK_GATE_Register;
      --  version register
      DATE                                   : aliased DATE_Register;
   end record
     with Volatile;

   for ASSIST_DEBUG_Peripheral use record
      CORE_0_MONTR_ENA                       at 16#0# range 0 .. 31;
      CORE_0_INTR_RAW                        at 16#4# range 0 .. 31;
      CORE_0_INTR_ENA                        at 16#8# range 0 .. 31;
      CORE_0_INTR_CLR                        at 16#C# range 0 .. 31;
      CORE_0_AREA_DRAM0_0_MIN                at 16#10# range 0 .. 31;
      CORE_0_AREA_DRAM0_0_MAX                at 16#14# range 0 .. 31;
      CORE_0_AREA_DRAM0_1_MIN                at 16#18# range 0 .. 31;
      CORE_0_AREA_DRAM0_1_MAX                at 16#1C# range 0 .. 31;
      CORE_0_AREA_PIF_0_MIN                  at 16#20# range 0 .. 31;
      CORE_0_AREA_PIF_0_MAX                  at 16#24# range 0 .. 31;
      CORE_0_AREA_PIF_1_MIN                  at 16#28# range 0 .. 31;
      CORE_0_AREA_PIF_1_MAX                  at 16#2C# range 0 .. 31;
      CORE_0_AREA_PC                         at 16#30# range 0 .. 31;
      CORE_0_AREA_SP                         at 16#34# range 0 .. 31;
      CORE_0_SP_MIN                          at 16#38# range 0 .. 31;
      CORE_0_SP_MAX                          at 16#3C# range 0 .. 31;
      CORE_0_SP_PC                           at 16#40# range 0 .. 31;
      CORE_0_RCD_EN                          at 16#44# range 0 .. 31;
      CORE_0_RCD_PDEBUGPC                    at 16#48# range 0 .. 31;
      CORE_0_RCD_PDEBUGSP                    at 16#4C# range 0 .. 31;
      CORE_0_IRAM0_EXCEPTION_MONITOR_0       at 16#50# range 0 .. 31;
      CORE_0_IRAM0_EXCEPTION_MONITOR_1       at 16#54# range 0 .. 31;
      CORE_0_DRAM0_EXCEPTION_MONITOR_0       at 16#58# range 0 .. 31;
      CORE_0_DRAM0_EXCEPTION_MONITOR_1       at 16#5C# range 0 .. 31;
      CORE_0_DRAM0_EXCEPTION_MONITOR_2       at 16#60# range 0 .. 31;
      CORE_0_DRAM0_EXCEPTION_MONITOR_3       at 16#64# range 0 .. 31;
      CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0 at 16#68# range 0 .. 31;
      CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1 at 16#6C# range 0 .. 31;
      C0RE_0_LASTPC_BEFORE_EXCEPTION         at 16#70# range 0 .. 31;
      C0RE_0_DEBUG_MODE                      at 16#74# range 0 .. 31;
      CLOCK_GATE                             at 16#78# range 0 .. 31;
      DATE                                   at 16#3FC# range 0 .. 31;
   end record;

   --  Debug Assist
   ASSIST_DEBUG_Periph : aliased ASSIST_DEBUG_Peripheral
     with Import, Address => ASSIST_DEBUG_Base;

end ESP32_C6_SVD.ASSIST_DEBUG;
