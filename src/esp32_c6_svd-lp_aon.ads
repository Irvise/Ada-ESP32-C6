pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_AON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype GPIO_MUX_SEL_Field is HAL.UInt8;

   --  need_des
   type GPIO_MUX_Register is record
      --  need_des
      SEL           : GPIO_MUX_SEL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_MUX_Register use record
      SEL           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  need_des
   type SYS_CFG_Register is record
      --  unspecified
      Reserved_0_29       : HAL.UInt30 := 16#0#;
      --  need_des
      FORCE_DOWNLOAD_BOOT : Boolean := False;
      --  Write-only. need_des
      HPSYS_SW_RESET      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYS_CFG_Register use record
      Reserved_0_29       at 0 range 0 .. 29;
      FORCE_DOWNLOAD_BOOT at 0 range 30 .. 30;
      HPSYS_SW_RESET      at 0 range 31 .. 31;
   end record;

   subtype CPUCORE0_CFG_CPU_CORE0_SW_STALL_Field is HAL.UInt8;

   --  need_des
   type CPUCORE0_CFG_Register is record
      --  need_des
      CPU_CORE0_SW_STALL          : CPUCORE0_CFG_CPU_CORE0_SW_STALL_Field :=
                                     16#0#;
      --  unspecified
      Reserved_8_27               : HAL.UInt20 := 16#0#;
      --  Write-only. need_des
      CPU_CORE0_SW_RESET          : Boolean := False;
      --  need_des
      CPU_CORE0_OCD_HALT_ON_RESET : Boolean := False;
      --  need_des
      CPU_CORE0_STAT_VECTOR_SEL   : Boolean := True;
      --  need_des
      CPU_CORE0_DRESET_MASK       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUCORE0_CFG_Register use record
      CPU_CORE0_SW_STALL          at 0 range 0 .. 7;
      Reserved_8_27               at 0 range 8 .. 27;
      CPU_CORE0_SW_RESET          at 0 range 28 .. 28;
      CPU_CORE0_OCD_HALT_ON_RESET at 0 range 29 .. 29;
      CPU_CORE0_STAT_VECTOR_SEL   at 0 range 30 .. 30;
      CPU_CORE0_DRESET_MASK       at 0 range 31 .. 31;
   end record;

   --  need_des
   type IO_MUX_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  need_des
      RESET_DISABLE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IO_MUX_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      RESET_DISABLE at 0 range 31 .. 31;
   end record;

   subtype EXT_WAKEUP_CNTL_EXT_WAKEUP_STATUS_Field is HAL.UInt8;
   subtype EXT_WAKEUP_CNTL_EXT_WAKEUP_SEL_Field is HAL.UInt8;
   subtype EXT_WAKEUP_CNTL_EXT_WAKEUP_LV_Field is HAL.UInt8;

   --  need_des
   type EXT_WAKEUP_CNTL_Register is record
      --  Read-only. need_des
      EXT_WAKEUP_STATUS     : EXT_WAKEUP_CNTL_EXT_WAKEUP_STATUS_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_13         : HAL.UInt6 := 16#0#;
      --  Write-only. need_des
      EXT_WAKEUP_STATUS_CLR : Boolean := False;
      --  need_des
      EXT_WAKEUP_SEL        : EXT_WAKEUP_CNTL_EXT_WAKEUP_SEL_Field := 16#0#;
      --  need_des
      EXT_WAKEUP_LV         : EXT_WAKEUP_CNTL_EXT_WAKEUP_LV_Field := 16#0#;
      --  need_des
      EXT_WAKEUP_FILTER     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_WAKEUP_CNTL_Register use record
      EXT_WAKEUP_STATUS     at 0 range 0 .. 7;
      Reserved_8_13         at 0 range 8 .. 13;
      EXT_WAKEUP_STATUS_CLR at 0 range 14 .. 14;
      EXT_WAKEUP_SEL        at 0 range 15 .. 22;
      EXT_WAKEUP_LV         at 0 range 23 .. 30;
      EXT_WAKEUP_FILTER     at 0 range 31 .. 31;
   end record;

   --  need_des
   type USB_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  need_des
      RESET_DISABLE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      RESET_DISABLE at 0 range 31 .. 31;
   end record;

   subtype LPBUS_FAST_MEM_WPULSE_Field is HAL.UInt3;
   subtype LPBUS_FAST_MEM_WA_Field is HAL.UInt3;
   subtype LPBUS_FAST_MEM_RA_Field is HAL.UInt2;

   --  need_des
   type LPBUS_Register is record
      --  unspecified
      Reserved_0_15           : HAL.UInt16 := 16#0#;
      --  This field controls fast memory WPULSE parameter.
      FAST_MEM_WPULSE         : LPBUS_FAST_MEM_WPULSE_Field := 16#0#;
      --  This field controls fast memory WA parameter.
      FAST_MEM_WA             : LPBUS_FAST_MEM_WA_Field := 16#4#;
      --  This field controls fast memory RA parameter.
      FAST_MEM_RA             : LPBUS_FAST_MEM_RA_Field := 16#0#;
      --  unspecified
      Reserved_24_27          : HAL.UInt4 := 16#0#;
      --  Read-only. need_des
      FAST_MEM_MUX_FSM_IDLE   : Boolean := True;
      --  Read-only. need_des
      FAST_MEM_MUX_SEL_STATUS : Boolean := True;
      --  Write-only. need_des
      FAST_MEM_MUX_SEL_UPDATE : Boolean := False;
      --  need_des
      FAST_MEM_MUX_SEL        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPBUS_Register use record
      Reserved_0_15           at 0 range 0 .. 15;
      FAST_MEM_WPULSE         at 0 range 16 .. 18;
      FAST_MEM_WA             at 0 range 19 .. 21;
      FAST_MEM_RA             at 0 range 22 .. 23;
      Reserved_24_27          at 0 range 24 .. 27;
      FAST_MEM_MUX_FSM_IDLE   at 0 range 28 .. 28;
      FAST_MEM_MUX_SEL_STATUS at 0 range 29 .. 29;
      FAST_MEM_MUX_SEL_UPDATE at 0 range 30 .. 30;
      FAST_MEM_MUX_SEL        at 0 range 31 .. 31;
   end record;

   subtype SDIO_ACTIVE_SDIO_ACT_DNUM_Field is HAL.UInt10;

   --  need_des
   type SDIO_ACTIVE_Register is record
      --  unspecified
      Reserved_0_21 : HAL.UInt22 := 16#0#;
      --  need_des
      SDIO_ACT_DNUM : SDIO_ACTIVE_SDIO_ACT_DNUM_Field := 16#A#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_ACTIVE_Register use record
      Reserved_0_21 at 0 range 0 .. 21;
      SDIO_ACT_DNUM at 0 range 22 .. 31;
   end record;

   --  need_des
   type LPCORE_Register is record
      --  Write-only. need_des
      ETM_WAKEUP_FLAG_CLR : Boolean := False;
      --  need_des
      ETM_WAKEUP_FLAG     : Boolean := False;
      --  unspecified
      Reserved_2_30       : HAL.UInt29 := 16#0#;
      --  need_des
      DISABLE             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPCORE_Register use record
      ETM_WAKEUP_FLAG_CLR at 0 range 0 .. 0;
      ETM_WAKEUP_FLAG     at 0 range 1 .. 1;
      Reserved_2_30       at 0 range 2 .. 30;
      DISABLE             at 0 range 31 .. 31;
   end record;

   subtype SAR_CCT_SAR2_PWDET_CCT_Field is HAL.UInt3;

   --  need_des
   type SAR_CCT_Register is record
      --  unspecified
      Reserved_0_28  : HAL.UInt29 := 16#0#;
      --  need_des
      SAR2_PWDET_CCT : SAR_CCT_SAR2_PWDET_CCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR_CCT_Register use record
      Reserved_0_28  at 0 range 0 .. 28;
      SAR2_PWDET_CCT at 0 range 29 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      DATE   : DATE_DATE_Field := 16#2205280#;
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

   --  LP_AON Peripheral
   type LP_AON_Peripheral is record
      --  need_des
      STORE0          : aliased HAL.UInt32;
      --  need_des
      STORE1          : aliased HAL.UInt32;
      --  need_des
      STORE2          : aliased HAL.UInt32;
      --  need_des
      STORE3          : aliased HAL.UInt32;
      --  need_des
      STORE4          : aliased HAL.UInt32;
      --  need_des
      STORE5          : aliased HAL.UInt32;
      --  need_des
      STORE6          : aliased HAL.UInt32;
      --  need_des
      STORE7          : aliased HAL.UInt32;
      --  need_des
      STORE8          : aliased HAL.UInt32;
      --  need_des
      STORE9          : aliased HAL.UInt32;
      --  need_des
      GPIO_MUX        : aliased GPIO_MUX_Register;
      --  need_des
      GPIO_HOLD0      : aliased HAL.UInt32;
      --  need_des
      GPIO_HOLD1      : aliased HAL.UInt32;
      --  need_des
      SYS_CFG         : aliased SYS_CFG_Register;
      --  need_des
      CPUCORE0_CFG    : aliased CPUCORE0_CFG_Register;
      --  need_des
      IO_MUX          : aliased IO_MUX_Register;
      --  need_des
      EXT_WAKEUP_CNTL : aliased EXT_WAKEUP_CNTL_Register;
      --  need_des
      USB             : aliased USB_Register;
      --  need_des
      LPBUS           : aliased LPBUS_Register;
      --  need_des
      SDIO_ACTIVE     : aliased SDIO_ACTIVE_Register;
      --  need_des
      LPCORE          : aliased LPCORE_Register;
      --  need_des
      SAR_CCT         : aliased SAR_CCT_Register;
      --  need_des
      DATE            : aliased DATE_Register;
   end record
     with Volatile;

   for LP_AON_Peripheral use record
      STORE0          at 16#0# range 0 .. 31;
      STORE1          at 16#4# range 0 .. 31;
      STORE2          at 16#8# range 0 .. 31;
      STORE3          at 16#C# range 0 .. 31;
      STORE4          at 16#10# range 0 .. 31;
      STORE5          at 16#14# range 0 .. 31;
      STORE6          at 16#18# range 0 .. 31;
      STORE7          at 16#1C# range 0 .. 31;
      STORE8          at 16#20# range 0 .. 31;
      STORE9          at 16#24# range 0 .. 31;
      GPIO_MUX        at 16#28# range 0 .. 31;
      GPIO_HOLD0      at 16#2C# range 0 .. 31;
      GPIO_HOLD1      at 16#30# range 0 .. 31;
      SYS_CFG         at 16#34# range 0 .. 31;
      CPUCORE0_CFG    at 16#38# range 0 .. 31;
      IO_MUX          at 16#3C# range 0 .. 31;
      EXT_WAKEUP_CNTL at 16#40# range 0 .. 31;
      USB             at 16#44# range 0 .. 31;
      LPBUS           at 16#48# range 0 .. 31;
      SDIO_ACTIVE     at 16#4C# range 0 .. 31;
      LPCORE          at 16#50# range 0 .. 31;
      SAR_CCT         at 16#54# range 0 .. 31;
      DATE            at 16#3FC# range 0 .. 31;
   end record;

   --  LP_AON Peripheral
   LP_AON_Periph : aliased LP_AON_Peripheral
     with Import, Address => LP_AON_Base;

end ESP32_C6_SVD.LP_AON;
