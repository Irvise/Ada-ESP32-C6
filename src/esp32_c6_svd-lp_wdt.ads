pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype WDTCONFIG0_WDT_CHIP_RESET_WIDTH_Field is HAL.UInt8;
   subtype WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG3_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG2_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG1_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG0_Field is HAL.UInt3;

   --  need_des
   type WDTCONFIG0_Register is record
      --  need_des
      WDT_CHIP_RESET_WIDTH : WDTCONFIG0_WDT_CHIP_RESET_WIDTH_Field := 16#14#;
      --  need_des
      WDT_CHIP_RESET_EN    : Boolean := False;
      --  need_des
      WDT_PAUSE_IN_SLP     : Boolean := True;
      --  need_des
      WDT_APPCPU_RESET_EN  : Boolean := False;
      --  need_des
      WDT_PROCPU_RESET_EN  : Boolean := False;
      --  need_des
      WDT_FLASHBOOT_MOD_EN : Boolean := True;
      --  need_des
      WDT_SYS_RESET_LENGTH : WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field := 16#1#;
      --  need_des
      WDT_CPU_RESET_LENGTH : WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field := 16#1#;
      --  need_des
      WDT_STG3             : WDTCONFIG0_WDT_STG3_Field := 16#0#;
      --  need_des
      WDT_STG2             : WDTCONFIG0_WDT_STG2_Field := 16#0#;
      --  need_des
      WDT_STG1             : WDTCONFIG0_WDT_STG1_Field := 16#0#;
      --  need_des
      WDT_STG0             : WDTCONFIG0_WDT_STG0_Field := 16#0#;
      --  need_des
      WDT_EN               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG0_Register use record
      WDT_CHIP_RESET_WIDTH at 0 range 0 .. 7;
      WDT_CHIP_RESET_EN    at 0 range 8 .. 8;
      WDT_PAUSE_IN_SLP     at 0 range 9 .. 9;
      WDT_APPCPU_RESET_EN  at 0 range 10 .. 10;
      WDT_PROCPU_RESET_EN  at 0 range 11 .. 11;
      WDT_FLASHBOOT_MOD_EN at 0 range 12 .. 12;
      WDT_SYS_RESET_LENGTH at 0 range 13 .. 15;
      WDT_CPU_RESET_LENGTH at 0 range 16 .. 18;
      WDT_STG3             at 0 range 19 .. 21;
      WDT_STG2             at 0 range 22 .. 24;
      WDT_STG1             at 0 range 25 .. 27;
      WDT_STG0             at 0 range 28 .. 30;
      WDT_EN               at 0 range 31 .. 31;
   end record;

   --  need_des
   type WDTFEED_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      RTC_WDT_FEED  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTFEED_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      RTC_WDT_FEED  at 0 range 31 .. 31;
   end record;

   subtype SWD_CONF_SWD_SIGNAL_WIDTH_Field is HAL.UInt10;

   --  need_des
   type SWD_CONF_Register is record
      --  Read-only. need_des
      SWD_RESET_FLAG   : Boolean := False;
      --  unspecified
      Reserved_1_17    : HAL.UInt17 := 16#0#;
      --  need_des
      SWD_AUTO_FEED_EN : Boolean := False;
      --  Write-only. need_des
      SWD_RST_FLAG_CLR : Boolean := False;
      --  need_des
      SWD_SIGNAL_WIDTH : SWD_CONF_SWD_SIGNAL_WIDTH_Field := 16#12C#;
      --  need_des
      SWD_DISABLE      : Boolean := False;
      --  Write-only. need_des
      SWD_FEED         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWD_CONF_Register use record
      SWD_RESET_FLAG   at 0 range 0 .. 0;
      Reserved_1_17    at 0 range 1 .. 17;
      SWD_AUTO_FEED_EN at 0 range 18 .. 18;
      SWD_RST_FLAG_CLR at 0 range 19 .. 19;
      SWD_SIGNAL_WIDTH at 0 range 20 .. 29;
      SWD_DISABLE      at 0 range 30 .. 30;
      SWD_FEED         at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_RAW_Register is record
      --  unspecified
      Reserved_0_29     : HAL.UInt30 := 16#0#;
      --  need_des
      SUPER_WDT_INT_RAW : Boolean := False;
      --  need_des
      LP_WDT_INT_RAW    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      Reserved_0_29     at 0 range 0 .. 29;
      SUPER_WDT_INT_RAW at 0 range 30 .. 30;
      LP_WDT_INT_RAW    at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ST_RTC_Register is record
      --  unspecified
      Reserved_0_29    : HAL.UInt30;
      --  Read-only. need_des
      SUPER_WDT_INT_ST : Boolean;
      --  Read-only. need_des
      WDT_INT_ST       : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_RTC_Register use record
      Reserved_0_29    at 0 range 0 .. 29;
      SUPER_WDT_INT_ST at 0 range 30 .. 30;
      WDT_INT_ST       at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ENA_RTC_Register is record
      --  unspecified
      Reserved_0_29     : HAL.UInt30 := 16#0#;
      --  need_des
      SUPER_WDT_INT_ENA : Boolean := False;
      --  need_des
      WDT_INT_ENA       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_Register use record
      Reserved_0_29     at 0 range 0 .. 29;
      SUPER_WDT_INT_ENA at 0 range 30 .. 30;
      WDT_INT_ENA       at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_CLR_RTC_Register is record
      --  unspecified
      Reserved_0_29     : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      SUPER_WDT_INT_CLR : Boolean := False;
      --  Write-only. need_des
      WDT_INT_CLR       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_RTC_Register use record
      Reserved_0_29     at 0 range 0 .. 29;
      SUPER_WDT_INT_CLR at 0 range 30 .. 30;
      WDT_INT_CLR       at 0 range 31 .. 31;
   end record;

   subtype DATE_LP_WDT_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      LP_WDT_DATE : DATE_LP_WDT_DATE_Field := 16#2112080#;
      --  need_des
      CLK_EN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LP_WDT_DATE at 0 range 0 .. 30;
      CLK_EN      at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power Watchdog Timer
   type LP_WDT_Peripheral is record
      --  need_des
      WDTCONFIG0   : aliased WDTCONFIG0_Register;
      --  need_des
      CONFIG1      : aliased HAL.UInt32;
      --  need_des
      CONFIG2      : aliased HAL.UInt32;
      --  need_des
      CONFIG3      : aliased HAL.UInt32;
      --  need_des
      CONFIG4      : aliased HAL.UInt32;
      --  need_des
      WDTFEED      : aliased WDTFEED_Register;
      --  need_des
      WDTWPROTECT  : aliased HAL.UInt32;
      --  need_des
      SWD_CONF     : aliased SWD_CONF_Register;
      --  need_des
      SWD_WPROTECT : aliased HAL.UInt32;
      --  need_des
      INT_RAW      : aliased INT_RAW_Register;
      --  need_des
      INT_ST_RTC   : aliased INT_ST_RTC_Register;
      --  need_des
      INT_ENA_RTC  : aliased INT_ENA_RTC_Register;
      --  need_des
      INT_CLR_RTC  : aliased INT_CLR_RTC_Register;
      --  need_des
      DATE         : aliased DATE_Register;
   end record
     with Volatile;

   for LP_WDT_Peripheral use record
      WDTCONFIG0   at 16#0# range 0 .. 31;
      CONFIG1      at 16#4# range 0 .. 31;
      CONFIG2      at 16#8# range 0 .. 31;
      CONFIG3      at 16#C# range 0 .. 31;
      CONFIG4      at 16#10# range 0 .. 31;
      WDTFEED      at 16#14# range 0 .. 31;
      WDTWPROTECT  at 16#18# range 0 .. 31;
      SWD_CONF     at 16#1C# range 0 .. 31;
      SWD_WPROTECT at 16#20# range 0 .. 31;
      INT_RAW      at 16#24# range 0 .. 31;
      INT_ST_RTC   at 16#28# range 0 .. 31;
      INT_ENA_RTC  at 16#2C# range 0 .. 31;
      INT_CLR_RTC  at 16#30# range 0 .. 31;
      DATE         at 16#3FC# range 0 .. 31;
   end record;

   --  Low-power Watchdog Timer
   LP_WDT_Periph : aliased LP_WDT_Peripheral
     with Import, Address => LP_WDT_Base;

end ESP32_C6_SVD.LP_WDT;
