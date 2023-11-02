pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.INTMTX_CORE0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype WIFI_MAC_INTR_MAP_WIFI_MAC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type WIFI_MAC_INTR_MAP_Register is record
      --  Need add description
      WIFI_MAC_INTR_MAP : WIFI_MAC_INTR_MAP_WIFI_MAC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFI_MAC_INTR_MAP_Register use record
      WIFI_MAC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype WIFI_MAC_NMI_MAP_WIFI_MAC_NMI_MAP_Field is HAL.UInt5;

   --  register description
   type WIFI_MAC_NMI_MAP_Register is record
      --  Need add description
      WIFI_MAC_NMI_MAP : WIFI_MAC_NMI_MAP_WIFI_MAC_NMI_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFI_MAC_NMI_MAP_Register use record
      WIFI_MAC_NMI_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype WIFI_PWR_INTR_MAP_WIFI_PWR_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type WIFI_PWR_INTR_MAP_Register is record
      --  Need add description
      WIFI_PWR_INTR_MAP : WIFI_PWR_INTR_MAP_WIFI_PWR_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFI_PWR_INTR_MAP_Register use record
      WIFI_PWR_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype WIFI_BB_INTR_MAP_WIFI_BB_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type WIFI_BB_INTR_MAP_Register is record
      --  Need add description
      WIFI_BB_INTR_MAP : WIFI_BB_INTR_MAP_WIFI_BB_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFI_BB_INTR_MAP_Register use record
      WIFI_BB_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype BT_MAC_INTR_MAP_BT_MAC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type BT_MAC_INTR_MAP_Register is record
      --  Need add description
      BT_MAC_INTR_MAP : BT_MAC_INTR_MAP_BT_MAC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BT_MAC_INTR_MAP_Register use record
      BT_MAC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype BT_BB_INTR_MAP_BT_BB_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type BT_BB_INTR_MAP_Register is record
      --  Need add description
      BT_BB_INTR_MAP : BT_BB_INTR_MAP_BT_BB_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BT_BB_INTR_MAP_Register use record
      BT_BB_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype BT_BB_NMI_MAP_BT_BB_NMI_MAP_Field is HAL.UInt5;

   --  register description
   type BT_BB_NMI_MAP_Register is record
      --  Need add description
      BT_BB_NMI_MAP : BT_BB_NMI_MAP_BT_BB_NMI_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BT_BB_NMI_MAP_Register use record
      BT_BB_NMI_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype LP_TIMER_INTR_MAP_LP_TIMER_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_TIMER_INTR_MAP_Register is record
      --  Need add description
      LP_TIMER_INTR_MAP : LP_TIMER_INTR_MAP_LP_TIMER_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_TIMER_INTR_MAP_Register use record
      LP_TIMER_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype COEX_INTR_MAP_COEX_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type COEX_INTR_MAP_Register is record
      --  Need add description
      COEX_INTR_MAP : COEX_INTR_MAP_COEX_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COEX_INTR_MAP_Register use record
      COEX_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype BLE_TIMER_INTR_MAP_BLE_TIMER_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type BLE_TIMER_INTR_MAP_Register is record
      --  Need add description
      BLE_TIMER_INTR_MAP : BLE_TIMER_INTR_MAP_BLE_TIMER_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLE_TIMER_INTR_MAP_Register use record
      BLE_TIMER_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype BLE_SEC_INTR_MAP_BLE_SEC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type BLE_SEC_INTR_MAP_Register is record
      --  Need add description
      BLE_SEC_INTR_MAP : BLE_SEC_INTR_MAP_BLE_SEC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLE_SEC_INTR_MAP_Register use record
      BLE_SEC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype I2C_MST_INTR_MAP_I2C_MST_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type I2C_MST_INTR_MAP_Register is record
      --  Need add description
      I2C_MST_INTR_MAP : I2C_MST_INTR_MAP_I2C_MST_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_MST_INTR_MAP_Register use record
      I2C_MST_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype ZB_MAC_INTR_MAP_ZB_MAC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type ZB_MAC_INTR_MAP_Register is record
      --  Need add description
      ZB_MAC_INTR_MAP : ZB_MAC_INTR_MAP_ZB_MAC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ZB_MAC_INTR_MAP_Register use record
      ZB_MAC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype PMU_INTR_MAP_PMU_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type PMU_INTR_MAP_Register is record
      --  Need add description
      PMU_INTR_MAP  : PMU_INTR_MAP_PMU_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_INTR_MAP_Register use record
      PMU_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype EFUSE_INTR_MAP_EFUSE_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type EFUSE_INTR_MAP_Register is record
      --  Need add description
      EFUSE_INTR_MAP : EFUSE_INTR_MAP_EFUSE_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFUSE_INTR_MAP_Register use record
      EFUSE_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype LP_RTC_TIMER_INTR_MAP_LP_RTC_TIMER_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_RTC_TIMER_INTR_MAP_Register is record
      --  Need add description
      LP_RTC_TIMER_INTR_MAP : LP_RTC_TIMER_INTR_MAP_LP_RTC_TIMER_INTR_MAP_Field :=
                               16#0#;
      --  unspecified
      Reserved_5_31         : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_RTC_TIMER_INTR_MAP_Register use record
      LP_RTC_TIMER_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31         at 0 range 5 .. 31;
   end record;

   subtype LP_UART_INTR_MAP_LP_UART_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_UART_INTR_MAP_Register is record
      --  Need add description
      LP_UART_INTR_MAP : LP_UART_INTR_MAP_LP_UART_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_UART_INTR_MAP_Register use record
      LP_UART_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype LP_I2C_INTR_MAP_LP_I2C_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_I2C_INTR_MAP_Register is record
      --  Need add description
      LP_I2C_INTR_MAP : LP_I2C_INTR_MAP_LP_I2C_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_I2C_INTR_MAP_Register use record
      LP_I2C_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype LP_WDT_INTR_MAP_LP_WDT_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_WDT_INTR_MAP_Register is record
      --  Need add description
      LP_WDT_INTR_MAP : LP_WDT_INTR_MAP_LP_WDT_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_WDT_INTR_MAP_Register use record
      LP_WDT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype LP_PERI_TIMEOUT_INTR_MAP_LP_PERI_TIMEOUT_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type LP_PERI_TIMEOUT_INTR_MAP_Register is record
      --  Need add description
      LP_PERI_TIMEOUT_INTR_MAP : LP_PERI_TIMEOUT_INTR_MAP_LP_PERI_TIMEOUT_INTR_MAP_Field :=
                                  16#0#;
      --  unspecified
      Reserved_5_31            : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_PERI_TIMEOUT_INTR_MAP_Register use record
      LP_PERI_TIMEOUT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31            at 0 range 5 .. 31;
   end record;

   subtype LP_APM_M0_INTR_MAP_LP_APM_M0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_APM_M0_INTR_MAP_Register is record
      --  Need add description
      LP_APM_M0_INTR_MAP : LP_APM_M0_INTR_MAP_LP_APM_M0_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_APM_M0_INTR_MAP_Register use record
      LP_APM_M0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype LP_APM_M1_INTR_MAP_LP_APM_M1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_APM_M1_INTR_MAP_Register is record
      --  Need add description
      LP_APM_M1_INTR_MAP : LP_APM_M1_INTR_MAP_LP_APM_M1_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_APM_M1_INTR_MAP_Register use record
      LP_APM_M1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype CPU_INTR_FROM_CPU_0_MAP_CPU_INTR_FROM_CPU_0_MAP_Field is HAL.UInt5;

   --  register description
   type CPU_INTR_FROM_CPU_0_MAP_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_0_MAP : CPU_INTR_FROM_CPU_0_MAP_CPU_INTR_FROM_CPU_0_MAP_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_0_MAP_Register use record
      CPU_INTR_FROM_CPU_0_MAP at 0 range 0 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   subtype CPU_INTR_FROM_CPU_1_MAP_CPU_INTR_FROM_CPU_1_MAP_Field is HAL.UInt5;

   --  register description
   type CPU_INTR_FROM_CPU_1_MAP_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_1_MAP : CPU_INTR_FROM_CPU_1_MAP_CPU_INTR_FROM_CPU_1_MAP_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_1_MAP_Register use record
      CPU_INTR_FROM_CPU_1_MAP at 0 range 0 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   subtype CPU_INTR_FROM_CPU_2_MAP_CPU_INTR_FROM_CPU_2_MAP_Field is HAL.UInt5;

   --  register description
   type CPU_INTR_FROM_CPU_2_MAP_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_2_MAP : CPU_INTR_FROM_CPU_2_MAP_CPU_INTR_FROM_CPU_2_MAP_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_2_MAP_Register use record
      CPU_INTR_FROM_CPU_2_MAP at 0 range 0 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   subtype CPU_INTR_FROM_CPU_3_MAP_CPU_INTR_FROM_CPU_3_MAP_Field is HAL.UInt5;

   --  register description
   type CPU_INTR_FROM_CPU_3_MAP_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_3_MAP : CPU_INTR_FROM_CPU_3_MAP_CPU_INTR_FROM_CPU_3_MAP_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_3_MAP_Register use record
      CPU_INTR_FROM_CPU_3_MAP at 0 range 0 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   subtype ASSIST_DEBUG_INTR_MAP_ASSIST_DEBUG_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type ASSIST_DEBUG_INTR_MAP_Register is record
      --  Need add description
      ASSIST_DEBUG_INTR_MAP : ASSIST_DEBUG_INTR_MAP_ASSIST_DEBUG_INTR_MAP_Field :=
                               16#0#;
      --  unspecified
      Reserved_5_31         : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASSIST_DEBUG_INTR_MAP_Register use record
      ASSIST_DEBUG_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31         at 0 range 5 .. 31;
   end record;

   subtype TRACE_INTR_MAP_TRACE_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TRACE_INTR_MAP_Register is record
      --  Need add description
      TRACE_INTR_MAP : TRACE_INTR_MAP_TRACE_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACE_INTR_MAP_Register use record
      TRACE_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype CACHE_INTR_MAP_CACHE_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type CACHE_INTR_MAP_Register is record
      --  Need add description
      CACHE_INTR_MAP : CACHE_INTR_MAP_CACHE_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_INTR_MAP_Register use record
      CACHE_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype CPU_PERI_TIMEOUT_INTR_MAP_CPU_PERI_TIMEOUT_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type CPU_PERI_TIMEOUT_INTR_MAP_Register is record
      --  Need add description
      CPU_PERI_TIMEOUT_INTR_MAP : CPU_PERI_TIMEOUT_INTR_MAP_CPU_PERI_TIMEOUT_INTR_MAP_Field :=
                                   16#0#;
      --  unspecified
      Reserved_5_31             : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_PERI_TIMEOUT_INTR_MAP_Register use record
      CPU_PERI_TIMEOUT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31             at 0 range 5 .. 31;
   end record;

   subtype GPIO_INTERRUPT_PRO_MAP_GPIO_INTERRUPT_PRO_MAP_Field is HAL.UInt5;

   --  register description
   type GPIO_INTERRUPT_PRO_MAP_Register is record
      --  Need add description
      GPIO_INTERRUPT_PRO_MAP : GPIO_INTERRUPT_PRO_MAP_GPIO_INTERRUPT_PRO_MAP_Field :=
                                16#0#;
      --  unspecified
      Reserved_5_31          : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_INTERRUPT_PRO_MAP_Register use record
      GPIO_INTERRUPT_PRO_MAP at 0 range 0 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   subtype GPIO_INTERRUPT_PRO_NMI_MAP_GPIO_INTERRUPT_PRO_NMI_MAP_Field is
     HAL.UInt5;

   --  register description
   type GPIO_INTERRUPT_PRO_NMI_MAP_Register is record
      --  Need add description
      GPIO_INTERRUPT_PRO_NMI_MAP : GPIO_INTERRUPT_PRO_NMI_MAP_GPIO_INTERRUPT_PRO_NMI_MAP_Field :=
                                    16#0#;
      --  unspecified
      Reserved_5_31              : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO_INTERRUPT_PRO_NMI_MAP_Register use record
      GPIO_INTERRUPT_PRO_NMI_MAP at 0 range 0 .. 4;
      Reserved_5_31              at 0 range 5 .. 31;
   end record;

   subtype PAU_INTR_MAP_PAU_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type PAU_INTR_MAP_Register is record
      --  Need add description
      PAU_INTR_MAP  : PAU_INTR_MAP_PAU_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAU_INTR_MAP_Register use record
      PAU_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype HP_PERI_TIMEOUT_INTR_MAP_HP_PERI_TIMEOUT_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type HP_PERI_TIMEOUT_INTR_MAP_Register is record
      --  Need add description
      HP_PERI_TIMEOUT_INTR_MAP : HP_PERI_TIMEOUT_INTR_MAP_HP_PERI_TIMEOUT_INTR_MAP_Field :=
                                  16#0#;
      --  unspecified
      Reserved_5_31            : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_PERI_TIMEOUT_INTR_MAP_Register use record
      HP_PERI_TIMEOUT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31            at 0 range 5 .. 31;
   end record;

   subtype MODEM_PERI_TIMEOUT_INTR_MAP_MODEM_PERI_TIMEOUT_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type MODEM_PERI_TIMEOUT_INTR_MAP_Register is record
      --  Need add description
      MODEM_PERI_TIMEOUT_INTR_MAP : MODEM_PERI_TIMEOUT_INTR_MAP_MODEM_PERI_TIMEOUT_INTR_MAP_Field :=
                                     16#0#;
      --  unspecified
      Reserved_5_31               : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_PERI_TIMEOUT_INTR_MAP_Register use record
      MODEM_PERI_TIMEOUT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31               at 0 range 5 .. 31;
   end record;

   subtype HP_APM_M0_INTR_MAP_HP_APM_M0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type HP_APM_M0_INTR_MAP_Register is record
      --  Need add description
      HP_APM_M0_INTR_MAP : HP_APM_M0_INTR_MAP_HP_APM_M0_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_APM_M0_INTR_MAP_Register use record
      HP_APM_M0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype HP_APM_M1_INTR_MAP_HP_APM_M1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type HP_APM_M1_INTR_MAP_Register is record
      --  Need add description
      HP_APM_M1_INTR_MAP : HP_APM_M1_INTR_MAP_HP_APM_M1_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_APM_M1_INTR_MAP_Register use record
      HP_APM_M1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype HP_APM_M2_INTR_MAP_HP_APM_M2_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type HP_APM_M2_INTR_MAP_Register is record
      --  Need add description
      HP_APM_M2_INTR_MAP : HP_APM_M2_INTR_MAP_HP_APM_M2_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_APM_M2_INTR_MAP_Register use record
      HP_APM_M2_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype HP_APM_M3_INTR_MAP_HP_APM_M3_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type HP_APM_M3_INTR_MAP_Register is record
      --  Need add description
      HP_APM_M3_INTR_MAP : HP_APM_M3_INTR_MAP_HP_APM_M3_INTR_MAP_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_APM_M3_INTR_MAP_Register use record
      HP_APM_M3_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype LP_APM0_INTR_MAP_LP_APM0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LP_APM0_INTR_MAP_Register is record
      --  Need add description
      LP_APM0_INTR_MAP : LP_APM0_INTR_MAP_LP_APM0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_APM0_INTR_MAP_Register use record
      LP_APM0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype MSPI_INTR_MAP_MSPI_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type MSPI_INTR_MAP_Register is record
      --  Need add description
      MSPI_INTR_MAP : MSPI_INTR_MAP_MSPI_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSPI_INTR_MAP_Register use record
      MSPI_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype I2S1_INTR_MAP_I2S1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type I2S1_INTR_MAP_Register is record
      --  Need add description
      I2S1_INTR_MAP : I2S1_INTR_MAP_I2S1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S1_INTR_MAP_Register use record
      I2S1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype UHCI0_INTR_MAP_UHCI0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type UHCI0_INTR_MAP_Register is record
      --  Need add description
      UHCI0_INTR_MAP : UHCI0_INTR_MAP_UHCI0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHCI0_INTR_MAP_Register use record
      UHCI0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype UART0_INTR_MAP_UART0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type UART0_INTR_MAP_Register is record
      --  Need add description
      UART0_INTR_MAP : UART0_INTR_MAP_UART0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_INTR_MAP_Register use record
      UART0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype UART1_INTR_MAP_UART1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type UART1_INTR_MAP_Register is record
      --  Need add description
      UART1_INTR_MAP : UART1_INTR_MAP_UART1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART1_INTR_MAP_Register use record
      UART1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype LEDC_INTR_MAP_LEDC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type LEDC_INTR_MAP_Register is record
      --  Need add description
      LEDC_INTR_MAP : LEDC_INTR_MAP_LEDC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEDC_INTR_MAP_Register use record
      LEDC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CAN0_INTR_MAP_CAN0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type CAN0_INTR_MAP_Register is record
      --  Need add description
      CAN0_INTR_MAP : CAN0_INTR_MAP_CAN0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_INTR_MAP_Register use record
      CAN0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CAN1_INTR_MAP_CAN1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type CAN1_INTR_MAP_Register is record
      --  Need add description
      CAN1_INTR_MAP : CAN1_INTR_MAP_CAN1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN1_INTR_MAP_Register use record
      CAN1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype USB_INTR_MAP_USB_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type USB_INTR_MAP_Register is record
      --  Need add description
      USB_INTR_MAP  : USB_INTR_MAP_USB_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_INTR_MAP_Register use record
      USB_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype RMT_INTR_MAP_RMT_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type RMT_INTR_MAP_Register is record
      --  Need add description
      RMT_INTR_MAP  : RMT_INTR_MAP_RMT_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMT_INTR_MAP_Register use record
      RMT_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype I2C_EXT0_INTR_MAP_I2C_EXT0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type I2C_EXT0_INTR_MAP_Register is record
      --  Need add description
      I2C_EXT0_INTR_MAP : I2C_EXT0_INTR_MAP_I2C_EXT0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_EXT0_INTR_MAP_Register use record
      I2C_EXT0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype TG0_T0_INTR_MAP_TG0_T0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG0_T0_INTR_MAP_Register is record
      --  Need add description
      TG0_T0_INTR_MAP : TG0_T0_INTR_MAP_TG0_T0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG0_T0_INTR_MAP_Register use record
      TG0_T0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype TG0_T1_INTR_MAP_TG0_T1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG0_T1_INTR_MAP_Register is record
      --  Need add description
      TG0_T1_INTR_MAP : TG0_T1_INTR_MAP_TG0_T1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG0_T1_INTR_MAP_Register use record
      TG0_T1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype TG0_WDT_INTR_MAP_TG0_WDT_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG0_WDT_INTR_MAP_Register is record
      --  Need add description
      TG0_WDT_INTR_MAP : TG0_WDT_INTR_MAP_TG0_WDT_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG0_WDT_INTR_MAP_Register use record
      TG0_WDT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype TG1_T0_INTR_MAP_TG1_T0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG1_T0_INTR_MAP_Register is record
      --  Need add description
      TG1_T0_INTR_MAP : TG1_T0_INTR_MAP_TG1_T0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG1_T0_INTR_MAP_Register use record
      TG1_T0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype TG1_T1_INTR_MAP_TG1_T1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG1_T1_INTR_MAP_Register is record
      --  Need add description
      TG1_T1_INTR_MAP : TG1_T1_INTR_MAP_TG1_T1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG1_T1_INTR_MAP_Register use record
      TG1_T1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype TG1_WDT_INTR_MAP_TG1_WDT_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type TG1_WDT_INTR_MAP_Register is record
      --  Need add description
      TG1_WDT_INTR_MAP : TG1_WDT_INTR_MAP_TG1_WDT_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TG1_WDT_INTR_MAP_Register use record
      TG1_WDT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype SYSTIMER_TARGET0_INTR_MAP_SYSTIMER_TARGET0_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type SYSTIMER_TARGET0_INTR_MAP_Register is record
      --  Need add description
      SYSTIMER_TARGET0_INTR_MAP : SYSTIMER_TARGET0_INTR_MAP_SYSTIMER_TARGET0_INTR_MAP_Field :=
                                   16#0#;
      --  unspecified
      Reserved_5_31             : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTIMER_TARGET0_INTR_MAP_Register use record
      SYSTIMER_TARGET0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31             at 0 range 5 .. 31;
   end record;

   subtype SYSTIMER_TARGET1_INTR_MAP_SYSTIMER_TARGET1_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type SYSTIMER_TARGET1_INTR_MAP_Register is record
      --  Need add description
      SYSTIMER_TARGET1_INTR_MAP : SYSTIMER_TARGET1_INTR_MAP_SYSTIMER_TARGET1_INTR_MAP_Field :=
                                   16#0#;
      --  unspecified
      Reserved_5_31             : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTIMER_TARGET1_INTR_MAP_Register use record
      SYSTIMER_TARGET1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31             at 0 range 5 .. 31;
   end record;

   subtype SYSTIMER_TARGET2_INTR_MAP_SYSTIMER_TARGET2_INTR_MAP_Field is
     HAL.UInt5;

   --  register description
   type SYSTIMER_TARGET2_INTR_MAP_Register is record
      --  Need add description
      SYSTIMER_TARGET2_INTR_MAP : SYSTIMER_TARGET2_INTR_MAP_SYSTIMER_TARGET2_INTR_MAP_Field :=
                                   16#0#;
      --  unspecified
      Reserved_5_31             : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTIMER_TARGET2_INTR_MAP_Register use record
      SYSTIMER_TARGET2_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31             at 0 range 5 .. 31;
   end record;

   subtype APB_ADC_INTR_MAP_APB_ADC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type APB_ADC_INTR_MAP_Register is record
      --  Need add description
      APB_ADC_INTR_MAP : APB_ADC_INTR_MAP_APB_ADC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB_ADC_INTR_MAP_Register use record
      APB_ADC_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype PWM_INTR_MAP_PWM_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type PWM_INTR_MAP_Register is record
      --  Need add description
      PWM_INTR_MAP  : PWM_INTR_MAP_PWM_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_INTR_MAP_Register use record
      PWM_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PCNT_INTR_MAP_PCNT_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type PCNT_INTR_MAP_Register is record
      --  Need add description
      PCNT_INTR_MAP : PCNT_INTR_MAP_PCNT_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNT_INTR_MAP_Register use record
      PCNT_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PARL_IO_INTR_MAP_PARL_IO_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type PARL_IO_INTR_MAP_Register is record
      --  Need add description
      PARL_IO_INTR_MAP : PARL_IO_INTR_MAP_PARL_IO_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARL_IO_INTR_MAP_Register use record
      PARL_IO_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype SLC0_INTR_MAP_SLC0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type SLC0_INTR_MAP_Register is record
      --  Need add description
      SLC0_INTR_MAP : SLC0_INTR_MAP_SLC0_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0_INTR_MAP_Register use record
      SLC0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SLC1_INTR_MAP_SLC1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type SLC1_INTR_MAP_Register is record
      --  Need add description
      SLC1_INTR_MAP : SLC1_INTR_MAP_SLC1_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1_INTR_MAP_Register use record
      SLC1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DMA_IN_CH0_INTR_MAP_DMA_IN_CH0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_IN_CH0_INTR_MAP_Register is record
      --  Need add description
      DMA_IN_CH0_INTR_MAP : DMA_IN_CH0_INTR_MAP_DMA_IN_CH0_INTR_MAP_Field :=
                             16#0#;
      --  unspecified
      Reserved_5_31       : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IN_CH0_INTR_MAP_Register use record
      DMA_IN_CH0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31       at 0 range 5 .. 31;
   end record;

   subtype DMA_IN_CH1_INTR_MAP_DMA_IN_CH1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_IN_CH1_INTR_MAP_Register is record
      --  Need add description
      DMA_IN_CH1_INTR_MAP : DMA_IN_CH1_INTR_MAP_DMA_IN_CH1_INTR_MAP_Field :=
                             16#0#;
      --  unspecified
      Reserved_5_31       : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IN_CH1_INTR_MAP_Register use record
      DMA_IN_CH1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31       at 0 range 5 .. 31;
   end record;

   subtype DMA_IN_CH2_INTR_MAP_DMA_IN_CH2_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_IN_CH2_INTR_MAP_Register is record
      --  Need add description
      DMA_IN_CH2_INTR_MAP : DMA_IN_CH2_INTR_MAP_DMA_IN_CH2_INTR_MAP_Field :=
                             16#0#;
      --  unspecified
      Reserved_5_31       : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IN_CH2_INTR_MAP_Register use record
      DMA_IN_CH2_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31       at 0 range 5 .. 31;
   end record;

   subtype DMA_OUT_CH0_INTR_MAP_DMA_OUT_CH0_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_OUT_CH0_INTR_MAP_Register is record
      --  Need add description
      DMA_OUT_CH0_INTR_MAP : DMA_OUT_CH0_INTR_MAP_DMA_OUT_CH0_INTR_MAP_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_OUT_CH0_INTR_MAP_Register use record
      DMA_OUT_CH0_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   subtype DMA_OUT_CH1_INTR_MAP_DMA_OUT_CH1_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_OUT_CH1_INTR_MAP_Register is record
      --  Need add description
      DMA_OUT_CH1_INTR_MAP : DMA_OUT_CH1_INTR_MAP_DMA_OUT_CH1_INTR_MAP_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_OUT_CH1_INTR_MAP_Register use record
      DMA_OUT_CH1_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   subtype DMA_OUT_CH2_INTR_MAP_DMA_OUT_CH2_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type DMA_OUT_CH2_INTR_MAP_Register is record
      --  Need add description
      DMA_OUT_CH2_INTR_MAP : DMA_OUT_CH2_INTR_MAP_DMA_OUT_CH2_INTR_MAP_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_31        : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_OUT_CH2_INTR_MAP_Register use record
      DMA_OUT_CH2_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   subtype GPSPI2_INTR_MAP_GPSPI2_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type GPSPI2_INTR_MAP_Register is record
      --  Need add description
      GPSPI2_INTR_MAP : GPSPI2_INTR_MAP_GPSPI2_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPSPI2_INTR_MAP_Register use record
      GPSPI2_INTR_MAP at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype AES_INTR_MAP_AES_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type AES_INTR_MAP_Register is record
      --  Need add description
      AES_INTR_MAP  : AES_INTR_MAP_AES_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_INTR_MAP_Register use record
      AES_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SHA_INTR_MAP_SHA_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type SHA_INTR_MAP_Register is record
      --  Need add description
      SHA_INTR_MAP  : SHA_INTR_MAP_SHA_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_INTR_MAP_Register use record
      SHA_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype RSA_INTR_MAP_RSA_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type RSA_INTR_MAP_Register is record
      --  Need add description
      RSA_INTR_MAP  : RSA_INTR_MAP_RSA_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSA_INTR_MAP_Register use record
      RSA_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ECC_INTR_MAP_ECC_INTR_MAP_Field is HAL.UInt5;

   --  register description
   type ECC_INTR_MAP_Register is record
      --  Need add description
      ECC_INTR_MAP  : ECC_INTR_MAP_ECC_INTR_MAP_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_INTR_MAP_Register use record
      ECC_INTR_MAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  register description
   type CLOCK_GATE_Register is record
      --  Need add description
      REG_CLK_EN    : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_GATE_Register use record
      REG_CLK_EN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype INTERRUPT_REG_DATE_INTERRUPT_REG_DATE_Field is HAL.UInt28;

   --  register description
   type INTERRUPT_REG_DATE_Register is record
      --  Need add description
      INTERRUPT_REG_DATE : INTERRUPT_REG_DATE_INTERRUPT_REG_DATE_Field :=
                            16#2203110#;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRUPT_REG_DATE_Register use record
      INTERRUPT_REG_DATE at 0 range 0 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Interrupt Controller (Core 0)
   type INTERRUPT_CORE0_Peripheral is record
      --  register description
      WIFI_MAC_INTR_MAP           : aliased WIFI_MAC_INTR_MAP_Register;
      --  register description
      WIFI_MAC_NMI_MAP            : aliased WIFI_MAC_NMI_MAP_Register;
      --  register description
      WIFI_PWR_INTR_MAP           : aliased WIFI_PWR_INTR_MAP_Register;
      --  register description
      WIFI_BB_INTR_MAP            : aliased WIFI_BB_INTR_MAP_Register;
      --  register description
      BT_MAC_INTR_MAP             : aliased BT_MAC_INTR_MAP_Register;
      --  register description
      BT_BB_INTR_MAP              : aliased BT_BB_INTR_MAP_Register;
      --  register description
      BT_BB_NMI_MAP               : aliased BT_BB_NMI_MAP_Register;
      --  register description
      LP_TIMER_INTR_MAP           : aliased LP_TIMER_INTR_MAP_Register;
      --  register description
      COEX_INTR_MAP               : aliased COEX_INTR_MAP_Register;
      --  register description
      BLE_TIMER_INTR_MAP          : aliased BLE_TIMER_INTR_MAP_Register;
      --  register description
      BLE_SEC_INTR_MAP            : aliased BLE_SEC_INTR_MAP_Register;
      --  register description
      I2C_MST_INTR_MAP            : aliased I2C_MST_INTR_MAP_Register;
      --  register description
      ZB_MAC_INTR_MAP             : aliased ZB_MAC_INTR_MAP_Register;
      --  register description
      PMU_INTR_MAP                : aliased PMU_INTR_MAP_Register;
      --  register description
      EFUSE_INTR_MAP              : aliased EFUSE_INTR_MAP_Register;
      --  register description
      LP_RTC_TIMER_INTR_MAP       : aliased LP_RTC_TIMER_INTR_MAP_Register;
      --  register description
      LP_UART_INTR_MAP            : aliased LP_UART_INTR_MAP_Register;
      --  register description
      LP_I2C_INTR_MAP             : aliased LP_I2C_INTR_MAP_Register;
      --  register description
      LP_WDT_INTR_MAP             : aliased LP_WDT_INTR_MAP_Register;
      --  register description
      LP_PERI_TIMEOUT_INTR_MAP    : aliased LP_PERI_TIMEOUT_INTR_MAP_Register;
      --  register description
      LP_APM_M0_INTR_MAP          : aliased LP_APM_M0_INTR_MAP_Register;
      --  register description
      LP_APM_M1_INTR_MAP          : aliased LP_APM_M1_INTR_MAP_Register;
      --  register description
      CPU_INTR_FROM_CPU_0_MAP     : aliased CPU_INTR_FROM_CPU_0_MAP_Register;
      --  register description
      CPU_INTR_FROM_CPU_1_MAP     : aliased CPU_INTR_FROM_CPU_1_MAP_Register;
      --  register description
      CPU_INTR_FROM_CPU_2_MAP     : aliased CPU_INTR_FROM_CPU_2_MAP_Register;
      --  register description
      CPU_INTR_FROM_CPU_3_MAP     : aliased CPU_INTR_FROM_CPU_3_MAP_Register;
      --  register description
      ASSIST_DEBUG_INTR_MAP       : aliased ASSIST_DEBUG_INTR_MAP_Register;
      --  register description
      TRACE_INTR_MAP              : aliased TRACE_INTR_MAP_Register;
      --  register description
      CACHE_INTR_MAP              : aliased CACHE_INTR_MAP_Register;
      --  register description
      CPU_PERI_TIMEOUT_INTR_MAP   : aliased CPU_PERI_TIMEOUT_INTR_MAP_Register;
      --  register description
      GPIO_INTERRUPT_PRO_MAP      : aliased GPIO_INTERRUPT_PRO_MAP_Register;
      --  register description
      GPIO_INTERRUPT_PRO_NMI_MAP  : aliased GPIO_INTERRUPT_PRO_NMI_MAP_Register;
      --  register description
      PAU_INTR_MAP                : aliased PAU_INTR_MAP_Register;
      --  register description
      HP_PERI_TIMEOUT_INTR_MAP    : aliased HP_PERI_TIMEOUT_INTR_MAP_Register;
      --  register description
      MODEM_PERI_TIMEOUT_INTR_MAP : aliased MODEM_PERI_TIMEOUT_INTR_MAP_Register;
      --  register description
      HP_APM_M0_INTR_MAP          : aliased HP_APM_M0_INTR_MAP_Register;
      --  register description
      HP_APM_M1_INTR_MAP          : aliased HP_APM_M1_INTR_MAP_Register;
      --  register description
      HP_APM_M2_INTR_MAP          : aliased HP_APM_M2_INTR_MAP_Register;
      --  register description
      HP_APM_M3_INTR_MAP          : aliased HP_APM_M3_INTR_MAP_Register;
      --  register description
      LP_APM0_INTR_MAP            : aliased LP_APM0_INTR_MAP_Register;
      --  register description
      MSPI_INTR_MAP               : aliased MSPI_INTR_MAP_Register;
      --  register description
      I2S1_INTR_MAP               : aliased I2S1_INTR_MAP_Register;
      --  register description
      UHCI0_INTR_MAP              : aliased UHCI0_INTR_MAP_Register;
      --  register description
      UART0_INTR_MAP              : aliased UART0_INTR_MAP_Register;
      --  register description
      UART1_INTR_MAP              : aliased UART1_INTR_MAP_Register;
      --  register description
      LEDC_INTR_MAP               : aliased LEDC_INTR_MAP_Register;
      --  register description
      CAN0_INTR_MAP               : aliased CAN0_INTR_MAP_Register;
      --  register description
      CAN1_INTR_MAP               : aliased CAN1_INTR_MAP_Register;
      --  register description
      USB_INTR_MAP                : aliased USB_INTR_MAP_Register;
      --  register description
      RMT_INTR_MAP                : aliased RMT_INTR_MAP_Register;
      --  register description
      I2C_EXT0_INTR_MAP           : aliased I2C_EXT0_INTR_MAP_Register;
      --  register description
      TG0_T0_INTR_MAP             : aliased TG0_T0_INTR_MAP_Register;
      --  register description
      TG0_T1_INTR_MAP             : aliased TG0_T1_INTR_MAP_Register;
      --  register description
      TG0_WDT_INTR_MAP            : aliased TG0_WDT_INTR_MAP_Register;
      --  register description
      TG1_T0_INTR_MAP             : aliased TG1_T0_INTR_MAP_Register;
      --  register description
      TG1_T1_INTR_MAP             : aliased TG1_T1_INTR_MAP_Register;
      --  register description
      TG1_WDT_INTR_MAP            : aliased TG1_WDT_INTR_MAP_Register;
      --  register description
      SYSTIMER_TARGET0_INTR_MAP   : aliased SYSTIMER_TARGET0_INTR_MAP_Register;
      --  register description
      SYSTIMER_TARGET1_INTR_MAP   : aliased SYSTIMER_TARGET1_INTR_MAP_Register;
      --  register description
      SYSTIMER_TARGET2_INTR_MAP   : aliased SYSTIMER_TARGET2_INTR_MAP_Register;
      --  register description
      APB_ADC_INTR_MAP            : aliased APB_ADC_INTR_MAP_Register;
      --  register description
      PWM_INTR_MAP                : aliased PWM_INTR_MAP_Register;
      --  register description
      PCNT_INTR_MAP               : aliased PCNT_INTR_MAP_Register;
      --  register description
      PARL_IO_INTR_MAP            : aliased PARL_IO_INTR_MAP_Register;
      --  register description
      SLC0_INTR_MAP               : aliased SLC0_INTR_MAP_Register;
      --  register description
      SLC1_INTR_MAP               : aliased SLC1_INTR_MAP_Register;
      --  register description
      DMA_IN_CH0_INTR_MAP         : aliased DMA_IN_CH0_INTR_MAP_Register;
      --  register description
      DMA_IN_CH1_INTR_MAP         : aliased DMA_IN_CH1_INTR_MAP_Register;
      --  register description
      DMA_IN_CH2_INTR_MAP         : aliased DMA_IN_CH2_INTR_MAP_Register;
      --  register description
      DMA_OUT_CH0_INTR_MAP        : aliased DMA_OUT_CH0_INTR_MAP_Register;
      --  register description
      DMA_OUT_CH1_INTR_MAP        : aliased DMA_OUT_CH1_INTR_MAP_Register;
      --  register description
      DMA_OUT_CH2_INTR_MAP        : aliased DMA_OUT_CH2_INTR_MAP_Register;
      --  register description
      GPSPI2_INTR_MAP             : aliased GPSPI2_INTR_MAP_Register;
      --  register description
      AES_INTR_MAP                : aliased AES_INTR_MAP_Register;
      --  register description
      SHA_INTR_MAP                : aliased SHA_INTR_MAP_Register;
      --  register description
      RSA_INTR_MAP                : aliased RSA_INTR_MAP_Register;
      --  register description
      ECC_INTR_MAP                : aliased ECC_INTR_MAP_Register;
      --  register description
      INTR_STATUS_REG_0           : aliased HAL.UInt32;
      --  register description
      INTR_STATUS_REG_1           : aliased HAL.UInt32;
      --  register description
      INT_STATUS_REG_2            : aliased HAL.UInt32;
      --  register description
      CLOCK_GATE                  : aliased CLOCK_GATE_Register;
      --  register description
      INTERRUPT_REG_DATE          : aliased INTERRUPT_REG_DATE_Register;
   end record
     with Volatile;

   for INTERRUPT_CORE0_Peripheral use record
      WIFI_MAC_INTR_MAP           at 16#0# range 0 .. 31;
      WIFI_MAC_NMI_MAP            at 16#4# range 0 .. 31;
      WIFI_PWR_INTR_MAP           at 16#8# range 0 .. 31;
      WIFI_BB_INTR_MAP            at 16#C# range 0 .. 31;
      BT_MAC_INTR_MAP             at 16#10# range 0 .. 31;
      BT_BB_INTR_MAP              at 16#14# range 0 .. 31;
      BT_BB_NMI_MAP               at 16#18# range 0 .. 31;
      LP_TIMER_INTR_MAP           at 16#1C# range 0 .. 31;
      COEX_INTR_MAP               at 16#20# range 0 .. 31;
      BLE_TIMER_INTR_MAP          at 16#24# range 0 .. 31;
      BLE_SEC_INTR_MAP            at 16#28# range 0 .. 31;
      I2C_MST_INTR_MAP            at 16#2C# range 0 .. 31;
      ZB_MAC_INTR_MAP             at 16#30# range 0 .. 31;
      PMU_INTR_MAP                at 16#34# range 0 .. 31;
      EFUSE_INTR_MAP              at 16#38# range 0 .. 31;
      LP_RTC_TIMER_INTR_MAP       at 16#3C# range 0 .. 31;
      LP_UART_INTR_MAP            at 16#40# range 0 .. 31;
      LP_I2C_INTR_MAP             at 16#44# range 0 .. 31;
      LP_WDT_INTR_MAP             at 16#48# range 0 .. 31;
      LP_PERI_TIMEOUT_INTR_MAP    at 16#4C# range 0 .. 31;
      LP_APM_M0_INTR_MAP          at 16#50# range 0 .. 31;
      LP_APM_M1_INTR_MAP          at 16#54# range 0 .. 31;
      CPU_INTR_FROM_CPU_0_MAP     at 16#58# range 0 .. 31;
      CPU_INTR_FROM_CPU_1_MAP     at 16#5C# range 0 .. 31;
      CPU_INTR_FROM_CPU_2_MAP     at 16#60# range 0 .. 31;
      CPU_INTR_FROM_CPU_3_MAP     at 16#64# range 0 .. 31;
      ASSIST_DEBUG_INTR_MAP       at 16#68# range 0 .. 31;
      TRACE_INTR_MAP              at 16#6C# range 0 .. 31;
      CACHE_INTR_MAP              at 16#70# range 0 .. 31;
      CPU_PERI_TIMEOUT_INTR_MAP   at 16#74# range 0 .. 31;
      GPIO_INTERRUPT_PRO_MAP      at 16#78# range 0 .. 31;
      GPIO_INTERRUPT_PRO_NMI_MAP  at 16#7C# range 0 .. 31;
      PAU_INTR_MAP                at 16#80# range 0 .. 31;
      HP_PERI_TIMEOUT_INTR_MAP    at 16#84# range 0 .. 31;
      MODEM_PERI_TIMEOUT_INTR_MAP at 16#88# range 0 .. 31;
      HP_APM_M0_INTR_MAP          at 16#8C# range 0 .. 31;
      HP_APM_M1_INTR_MAP          at 16#90# range 0 .. 31;
      HP_APM_M2_INTR_MAP          at 16#94# range 0 .. 31;
      HP_APM_M3_INTR_MAP          at 16#98# range 0 .. 31;
      LP_APM0_INTR_MAP            at 16#9C# range 0 .. 31;
      MSPI_INTR_MAP               at 16#A0# range 0 .. 31;
      I2S1_INTR_MAP               at 16#A4# range 0 .. 31;
      UHCI0_INTR_MAP              at 16#A8# range 0 .. 31;
      UART0_INTR_MAP              at 16#AC# range 0 .. 31;
      UART1_INTR_MAP              at 16#B0# range 0 .. 31;
      LEDC_INTR_MAP               at 16#B4# range 0 .. 31;
      CAN0_INTR_MAP               at 16#B8# range 0 .. 31;
      CAN1_INTR_MAP               at 16#BC# range 0 .. 31;
      USB_INTR_MAP                at 16#C0# range 0 .. 31;
      RMT_INTR_MAP                at 16#C4# range 0 .. 31;
      I2C_EXT0_INTR_MAP           at 16#C8# range 0 .. 31;
      TG0_T0_INTR_MAP             at 16#CC# range 0 .. 31;
      TG0_T1_INTR_MAP             at 16#D0# range 0 .. 31;
      TG0_WDT_INTR_MAP            at 16#D4# range 0 .. 31;
      TG1_T0_INTR_MAP             at 16#D8# range 0 .. 31;
      TG1_T1_INTR_MAP             at 16#DC# range 0 .. 31;
      TG1_WDT_INTR_MAP            at 16#E0# range 0 .. 31;
      SYSTIMER_TARGET0_INTR_MAP   at 16#E4# range 0 .. 31;
      SYSTIMER_TARGET1_INTR_MAP   at 16#E8# range 0 .. 31;
      SYSTIMER_TARGET2_INTR_MAP   at 16#EC# range 0 .. 31;
      APB_ADC_INTR_MAP            at 16#F0# range 0 .. 31;
      PWM_INTR_MAP                at 16#F4# range 0 .. 31;
      PCNT_INTR_MAP               at 16#F8# range 0 .. 31;
      PARL_IO_INTR_MAP            at 16#FC# range 0 .. 31;
      SLC0_INTR_MAP               at 16#100# range 0 .. 31;
      SLC1_INTR_MAP               at 16#104# range 0 .. 31;
      DMA_IN_CH0_INTR_MAP         at 16#108# range 0 .. 31;
      DMA_IN_CH1_INTR_MAP         at 16#10C# range 0 .. 31;
      DMA_IN_CH2_INTR_MAP         at 16#110# range 0 .. 31;
      DMA_OUT_CH0_INTR_MAP        at 16#114# range 0 .. 31;
      DMA_OUT_CH1_INTR_MAP        at 16#118# range 0 .. 31;
      DMA_OUT_CH2_INTR_MAP        at 16#11C# range 0 .. 31;
      GPSPI2_INTR_MAP             at 16#120# range 0 .. 31;
      AES_INTR_MAP                at 16#124# range 0 .. 31;
      SHA_INTR_MAP                at 16#128# range 0 .. 31;
      RSA_INTR_MAP                at 16#12C# range 0 .. 31;
      ECC_INTR_MAP                at 16#130# range 0 .. 31;
      INTR_STATUS_REG_0           at 16#134# range 0 .. 31;
      INTR_STATUS_REG_1           at 16#138# range 0 .. 31;
      INT_STATUS_REG_2            at 16#13C# range 0 .. 31;
      CLOCK_GATE                  at 16#140# range 0 .. 31;
      INTERRUPT_REG_DATE          at 16#7FC# range 0 .. 31;
   end record;

   --  Interrupt Controller (Core 0)
   INTERRUPT_CORE0_Periph : aliased INTERRUPT_CORE0_Peripheral
     with Import, Address => INTERRUPT_CORE0_Base;

end ESP32_C6_SVD.INTMTX_CORE0;
