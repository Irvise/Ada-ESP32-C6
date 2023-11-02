pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TAR0_HIGH_MAIN_TIMER_TAR_HIGH0_Field is HAL.UInt16;

   --  need_des
   type TAR0_HIGH_Register is record
      --  need_des
      MAIN_TIMER_TAR_HIGH0 : TAR0_HIGH_MAIN_TIMER_TAR_HIGH0_Field := 16#0#;
      --  unspecified
      Reserved_16_30       : HAL.UInt15 := 16#0#;
      --  Write-only. need_des
      MAIN_TIMER_TAR_EN0   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAR0_HIGH_Register use record
      MAIN_TIMER_TAR_HIGH0 at 0 range 0 .. 15;
      Reserved_16_30       at 0 range 16 .. 30;
      MAIN_TIMER_TAR_EN0   at 0 range 31 .. 31;
   end record;

   subtype TAR1_HIGH_MAIN_TIMER_TAR_HIGH1_Field is HAL.UInt16;

   --  need_des
   type TAR1_HIGH_Register is record
      --  need_des
      MAIN_TIMER_TAR_HIGH1 : TAR1_HIGH_MAIN_TIMER_TAR_HIGH1_Field := 16#0#;
      --  unspecified
      Reserved_16_30       : HAL.UInt15 := 16#0#;
      --  Write-only. need_des
      MAIN_TIMER_TAR_EN1   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAR1_HIGH_Register use record
      MAIN_TIMER_TAR_HIGH1 at 0 range 0 .. 15;
      Reserved_16_30       at 0 range 16 .. 30;
      MAIN_TIMER_TAR_EN1   at 0 range 31 .. 31;
   end record;

   --  need_des
   type UPDATE_Register is record
      --  unspecified
      Reserved_0_27        : HAL.UInt28 := 16#0#;
      --  Write-only. need_des
      MAIN_TIMER_UPDATE    : Boolean := False;
      --  need_des
      MAIN_TIMER_XTAL_OFF  : Boolean := False;
      --  need_des
      MAIN_TIMER_SYS_STALL : Boolean := False;
      --  need_des
      MAIN_TIMER_SYS_RST   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPDATE_Register use record
      Reserved_0_27        at 0 range 0 .. 27;
      MAIN_TIMER_UPDATE    at 0 range 28 .. 28;
      MAIN_TIMER_XTAL_OFF  at 0 range 29 .. 29;
      MAIN_TIMER_SYS_STALL at 0 range 30 .. 30;
      MAIN_TIMER_SYS_RST   at 0 range 31 .. 31;
   end record;

   subtype MAIN_BUF0_HIGH_MAIN_TIMER_BUF0_HIGH_Field is HAL.UInt16;

   --  need_des
   type MAIN_BUF0_HIGH_Register is record
      --  Read-only. need_des
      MAIN_TIMER_BUF0_HIGH : MAIN_BUF0_HIGH_MAIN_TIMER_BUF0_HIGH_Field;
      --  unspecified
      Reserved_16_31       : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAIN_BUF0_HIGH_Register use record
      MAIN_TIMER_BUF0_HIGH at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype MAIN_BUF1_HIGH_MAIN_TIMER_BUF1_HIGH_Field is HAL.UInt16;

   --  need_des
   type MAIN_BUF1_HIGH_Register is record
      --  Read-only. need_des
      MAIN_TIMER_BUF1_HIGH : MAIN_BUF1_HIGH_MAIN_TIMER_BUF1_HIGH_Field;
      --  unspecified
      Reserved_16_31       : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAIN_BUF1_HIGH_Register use record
      MAIN_TIMER_BUF1_HIGH at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  need_des
   type MAIN_OVERFLOW_Register is record
      --  unspecified
      Reserved_0_30         : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      MAIN_TIMER_ALARM_LOAD : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAIN_OVERFLOW_Register use record
      Reserved_0_30         at 0 range 0 .. 30;
      MAIN_TIMER_ALARM_LOAD at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_RAW_Register is record
      --  unspecified
      Reserved_0_29      : HAL.UInt30 := 16#0#;
      --  need_des
      OVERFLOW_RAW       : Boolean := False;
      --  need_des
      SOC_WAKEUP_INT_RAW : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      Reserved_0_29      at 0 range 0 .. 29;
      OVERFLOW_RAW       at 0 range 30 .. 30;
      SOC_WAKEUP_INT_RAW at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ST_Register is record
      --  unspecified
      Reserved_0_29     : HAL.UInt30;
      --  Read-only. need_des
      OVERFLOW_ST       : Boolean;
      --  Read-only. need_des
      SOC_WAKEUP_INT_ST : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      Reserved_0_29     at 0 range 0 .. 29;
      OVERFLOW_ST       at 0 range 30 .. 30;
      SOC_WAKEUP_INT_ST at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ENA_Register is record
      --  unspecified
      Reserved_0_29      : HAL.UInt30 := 16#0#;
      --  need_des
      OVERFLOW_ENA       : Boolean := False;
      --  need_des
      SOC_WAKEUP_INT_ENA : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      Reserved_0_29      at 0 range 0 .. 29;
      OVERFLOW_ENA       at 0 range 30 .. 30;
      SOC_WAKEUP_INT_ENA at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_CLR_Register is record
      --  unspecified
      Reserved_0_29      : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      OVERFLOW_CLR       : Boolean := False;
      --  Write-only. need_des
      SOC_WAKEUP_INT_CLR : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      Reserved_0_29      at 0 range 0 .. 29;
      OVERFLOW_CLR       at 0 range 30 .. 30;
      SOC_WAKEUP_INT_CLR at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_RAW_Register is record
      --  unspecified
      Reserved_0_29                  : HAL.UInt30 := 16#0#;
      --  need_des
      MAIN_TIMER_OVERFLOW_LP_INT_RAW : Boolean := False;
      --  need_des
      MAIN_TIMER_LP_INT_RAW          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_RAW_Register use record
      Reserved_0_29                  at 0 range 0 .. 29;
      MAIN_TIMER_OVERFLOW_LP_INT_RAW at 0 range 30 .. 30;
      MAIN_TIMER_LP_INT_RAW          at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ST_Register is record
      --  unspecified
      Reserved_0_29                 : HAL.UInt30;
      --  Read-only. need_des
      MAIN_TIMER_OVERFLOW_LP_INT_ST : Boolean;
      --  Read-only. need_des
      MAIN_TIMER_LP_INT_ST          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ST_Register use record
      Reserved_0_29                 at 0 range 0 .. 29;
      MAIN_TIMER_OVERFLOW_LP_INT_ST at 0 range 30 .. 30;
      MAIN_TIMER_LP_INT_ST          at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ENA_Register is record
      --  unspecified
      Reserved_0_29                  : HAL.UInt30 := 16#0#;
      --  need_des
      MAIN_TIMER_OVERFLOW_LP_INT_ENA : Boolean := False;
      --  need_des
      MAIN_TIMER_LP_INT_ENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ENA_Register use record
      Reserved_0_29                  at 0 range 0 .. 29;
      MAIN_TIMER_OVERFLOW_LP_INT_ENA at 0 range 30 .. 30;
      MAIN_TIMER_LP_INT_ENA          at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_CLR_Register is record
      --  unspecified
      Reserved_0_29                  : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      MAIN_TIMER_OVERFLOW_LP_INT_CLR : Boolean := False;
      --  Write-only. need_des
      MAIN_TIMER_LP_INT_CLR          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_CLR_Register use record
      Reserved_0_29                  at 0 range 0 .. 29;
      MAIN_TIMER_OVERFLOW_LP_INT_CLR at 0 range 30 .. 30;
      MAIN_TIMER_LP_INT_CLR          at 0 range 31 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      DATE   : DATE_DATE_Field := 16#2111150#;
      --  need_des
      CLK_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE   at 0 range 0 .. 30;
      CLK_EN at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power Timer
   type LP_TIMER_Peripheral is record
      --  need_des
      TAR0_LOW       : aliased HAL.UInt32;
      --  need_des
      TAR0_HIGH      : aliased TAR0_HIGH_Register;
      --  need_des
      TAR1_LOW       : aliased HAL.UInt32;
      --  need_des
      TAR1_HIGH      : aliased TAR1_HIGH_Register;
      --  need_des
      UPDATE         : aliased UPDATE_Register;
      --  need_des
      MAIN_BUF0_LOW  : aliased HAL.UInt32;
      --  need_des
      MAIN_BUF0_HIGH : aliased MAIN_BUF0_HIGH_Register;
      --  need_des
      MAIN_BUF1_LOW  : aliased HAL.UInt32;
      --  need_des
      MAIN_BUF1_HIGH : aliased MAIN_BUF1_HIGH_Register;
      --  need_des
      MAIN_OVERFLOW  : aliased MAIN_OVERFLOW_Register;
      --  need_des
      INT_RAW        : aliased INT_RAW_Register;
      --  need_des
      INT_ST         : aliased INT_ST_Register;
      --  need_des
      INT_ENA        : aliased INT_ENA_Register;
      --  need_des
      INT_CLR        : aliased INT_CLR_Register;
      --  need_des
      LP_INT_RAW     : aliased LP_INT_RAW_Register;
      --  need_des
      LP_INT_ST      : aliased LP_INT_ST_Register;
      --  need_des
      LP_INT_ENA     : aliased LP_INT_ENA_Register;
      --  need_des
      LP_INT_CLR     : aliased LP_INT_CLR_Register;
      --  need_des
      DATE           : aliased DATE_Register;
   end record
     with Volatile;

   for LP_TIMER_Peripheral use record
      TAR0_LOW       at 16#0# range 0 .. 31;
      TAR0_HIGH      at 16#4# range 0 .. 31;
      TAR1_LOW       at 16#8# range 0 .. 31;
      TAR1_HIGH      at 16#C# range 0 .. 31;
      UPDATE         at 16#10# range 0 .. 31;
      MAIN_BUF0_LOW  at 16#14# range 0 .. 31;
      MAIN_BUF0_HIGH at 16#18# range 0 .. 31;
      MAIN_BUF1_LOW  at 16#1C# range 0 .. 31;
      MAIN_BUF1_HIGH at 16#20# range 0 .. 31;
      MAIN_OVERFLOW  at 16#24# range 0 .. 31;
      INT_RAW        at 16#28# range 0 .. 31;
      INT_ST         at 16#2C# range 0 .. 31;
      INT_ENA        at 16#30# range 0 .. 31;
      INT_CLR        at 16#34# range 0 .. 31;
      LP_INT_RAW     at 16#38# range 0 .. 31;
      LP_INT_ST      at 16#3C# range 0 .. 31;
      LP_INT_ENA     at 16#40# range 0 .. 31;
      LP_INT_CLR     at 16#44# range 0 .. 31;
      DATE           at 16#3FC# range 0 .. 31;
   end record;

   --  Low-power Timer
   LP_TIMER_Periph : aliased LP_TIMER_Peripheral
     with Import, Address => LP_TIMER_Base;

end ESP32_C6_SVD.LP_TIMER;
