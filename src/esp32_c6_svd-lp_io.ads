pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_IO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OUT_DATA_LP_GPIO_OUT_DATA_Field is HAL.UInt8;

   --  need des
   type OUT_DATA_Register is record
      --  set lp gpio output data
      LP_GPIO_OUT_DATA : OUT_DATA_LP_GPIO_OUT_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31    : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_DATA_Register use record
      LP_GPIO_OUT_DATA at 0 range 0 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   subtype OUT_DATA_W1TS_LP_GPIO_OUT_DATA_W1TS_Field is HAL.UInt8;

   --  need des
   type OUT_DATA_W1TS_Register is record
      --  Write-only. set one time output data
      LP_GPIO_OUT_DATA_W1TS : OUT_DATA_W1TS_LP_GPIO_OUT_DATA_W1TS_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_31         : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_DATA_W1TS_Register use record
      LP_GPIO_OUT_DATA_W1TS at 0 range 0 .. 7;
      Reserved_8_31         at 0 range 8 .. 31;
   end record;

   subtype OUT_DATA_W1TC_LP_GPIO_OUT_DATA_W1TC_Field is HAL.UInt8;

   --  need des
   type OUT_DATA_W1TC_Register is record
      --  Write-only. clear one time output data
      LP_GPIO_OUT_DATA_W1TC : OUT_DATA_W1TC_LP_GPIO_OUT_DATA_W1TC_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_31         : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_DATA_W1TC_Register use record
      LP_GPIO_OUT_DATA_W1TC at 0 range 0 .. 7;
      Reserved_8_31         at 0 range 8 .. 31;
   end record;

   subtype OUT_ENABLE_LP_GPIO_ENABLE_Field is HAL.UInt8;

   --  need des
   type OUT_ENABLE_Register is record
      --  set lp gpio output data
      LP_GPIO_ENABLE : OUT_ENABLE_LP_GPIO_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_8_31  : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_ENABLE_Register use record
      LP_GPIO_ENABLE at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   subtype OUT_ENABLE_W1TS_LP_GPIO_ENABLE_W1TS_Field is HAL.UInt8;

   --  need des
   type OUT_ENABLE_W1TS_Register is record
      --  Write-only. set one time output data
      LP_GPIO_ENABLE_W1TS : OUT_ENABLE_W1TS_LP_GPIO_ENABLE_W1TS_Field :=
                             16#0#;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_ENABLE_W1TS_Register use record
      LP_GPIO_ENABLE_W1TS at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype OUT_ENABLE_W1TC_LP_GPIO_ENABLE_W1TC_Field is HAL.UInt8;

   --  need des
   type OUT_ENABLE_W1TC_Register is record
      --  Write-only. clear one time output data
      LP_GPIO_ENABLE_W1TC : OUT_ENABLE_W1TC_LP_GPIO_ENABLE_W1TC_Field :=
                             16#0#;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_ENABLE_W1TC_Register use record
      LP_GPIO_ENABLE_W1TC at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype STATUS_LP_GPIO_STATUS_INTERRUPT_Field is HAL.UInt8;

   --  need des
   type STATUS_Register is record
      --  set lp gpio output data
      LP_GPIO_STATUS_INTERRUPT : STATUS_LP_GPIO_STATUS_INTERRUPT_Field :=
                                  16#0#;
      --  unspecified
      Reserved_8_31            : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      LP_GPIO_STATUS_INTERRUPT at 0 range 0 .. 7;
      Reserved_8_31            at 0 range 8 .. 31;
   end record;

   subtype STATUS_W1TS_LP_GPIO_STATUS_W1TS_Field is HAL.UInt8;

   --  need des
   type STATUS_W1TS_Register is record
      --  Write-only. set one time output data
      LP_GPIO_STATUS_W1TS : STATUS_W1TS_LP_GPIO_STATUS_W1TS_Field := 16#0#;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_W1TS_Register use record
      LP_GPIO_STATUS_W1TS at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype STATUS_W1TC_LP_GPIO_STATUS_W1TC_Field is HAL.UInt8;

   --  need des
   type STATUS_W1TC_Register is record
      --  Write-only. clear one time output data
      LP_GPIO_STATUS_W1TC : STATUS_W1TC_LP_GPIO_STATUS_W1TC_Field := 16#0#;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_W1TC_Register use record
      LP_GPIO_STATUS_W1TC at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype IN_LP_GPIO_IN_DATA_NEXT_Field is HAL.UInt8;

   --  need des
   type IN_Register is record
      --  Read-only. need des
      LP_GPIO_IN_DATA_NEXT : IN_LP_GPIO_IN_DATA_NEXT_Field;
      --  unspecified
      Reserved_8_31        : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_Register use record
      LP_GPIO_IN_DATA_NEXT at 0 range 0 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype PIN0_LP_GPIO0_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN0_LP_GPIO0_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN0_Register is record
      --  need des
      LP_GPIO0_SYNC_BYPASS     : PIN0_LP_GPIO0_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO0_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO0_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO0_INT_TYPE        : PIN0_LP_GPIO0_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO0_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO0_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN0_Register use record
      LP_GPIO0_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO0_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO0_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO0_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO0_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO0_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN1_LP_GPIO1_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN1_LP_GPIO1_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN1_Register is record
      --  need des
      LP_GPIO1_SYNC_BYPASS     : PIN1_LP_GPIO1_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO1_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO1_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO1_INT_TYPE        : PIN1_LP_GPIO1_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO1_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO1_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN1_Register use record
      LP_GPIO1_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO1_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO1_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO1_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO1_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO1_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN2_LP_GPIO2_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN2_LP_GPIO2_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN2_Register is record
      --  need des
      LP_GPIO2_SYNC_BYPASS     : PIN2_LP_GPIO2_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO2_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO2_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO2_INT_TYPE        : PIN2_LP_GPIO2_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO2_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO2_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN2_Register use record
      LP_GPIO2_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO2_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO2_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO2_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO2_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO2_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN3_LP_GPIO3_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN3_LP_GPIO3_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN3_Register is record
      --  need des
      LP_GPIO3_SYNC_BYPASS     : PIN3_LP_GPIO3_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO3_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO3_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO3_INT_TYPE        : PIN3_LP_GPIO3_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO3_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO3_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN3_Register use record
      LP_GPIO3_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO3_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO3_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO3_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO3_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO3_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN4_LP_GPIO4_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN4_LP_GPIO4_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN4_Register is record
      --  need des
      LP_GPIO4_SYNC_BYPASS     : PIN4_LP_GPIO4_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO4_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO4_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO4_INT_TYPE        : PIN4_LP_GPIO4_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO4_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO4_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN4_Register use record
      LP_GPIO4_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO4_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO4_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO4_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO4_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO4_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN5_LP_GPIO5_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN5_LP_GPIO5_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN5_Register is record
      --  need des
      LP_GPIO5_SYNC_BYPASS     : PIN5_LP_GPIO5_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO5_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO5_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO5_INT_TYPE        : PIN5_LP_GPIO5_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO5_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO5_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN5_Register use record
      LP_GPIO5_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO5_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO5_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO5_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO5_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO5_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN6_LP_GPIO6_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN6_LP_GPIO6_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN6_Register is record
      --  need des
      LP_GPIO6_SYNC_BYPASS     : PIN6_LP_GPIO6_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO6_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO6_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO6_INT_TYPE        : PIN6_LP_GPIO6_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO6_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO6_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN6_Register use record
      LP_GPIO6_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO6_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO6_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO6_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO6_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO6_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype PIN7_LP_GPIO7_SYNC_BYPASS_Field is HAL.UInt2;
   subtype PIN7_LP_GPIO7_INT_TYPE_Field is HAL.UInt3;

   --  need des
   type PIN7_Register is record
      --  need des
      LP_GPIO7_SYNC_BYPASS     : PIN7_LP_GPIO7_SYNC_BYPASS_Field := 16#0#;
      --  need des
      LP_GPIO7_PAD_DRIVER      : Boolean := False;
      --  Write-only. need des
      LP_GPIO7_EDGE_WAKEUP_CLR : Boolean := False;
      --  unspecified
      Reserved_4_6             : HAL.UInt3 := 16#0#;
      --  need des
      LP_GPIO7_INT_TYPE        : PIN7_LP_GPIO7_INT_TYPE_Field := 16#0#;
      --  need des
      LP_GPIO7_WAKEUP_ENABLE   : Boolean := False;
      --  need des
      LP_GPIO7_FILTER_EN       : Boolean := False;
      --  unspecified
      Reserved_12_31           : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN7_Register use record
      LP_GPIO7_SYNC_BYPASS     at 0 range 0 .. 1;
      LP_GPIO7_PAD_DRIVER      at 0 range 2 .. 2;
      LP_GPIO7_EDGE_WAKEUP_CLR at 0 range 3 .. 3;
      Reserved_4_6             at 0 range 4 .. 6;
      LP_GPIO7_INT_TYPE        at 0 range 7 .. 9;
      LP_GPIO7_WAKEUP_ENABLE   at 0 range 10 .. 10;
      LP_GPIO7_FILTER_EN       at 0 range 11 .. 11;
      Reserved_12_31           at 0 range 12 .. 31;
   end record;

   subtype GPIO0_LP_GPIO0_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO0_LP_GPIO0_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO0_LP_GPIO0_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO0_Register is record
      --  need des
      LP_GPIO0_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO0_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO0_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO0_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO0_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO0_MCU_DRV : GPIO0_LP_GPIO0_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO0_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO0_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO0_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO0_FUN_DRV : GPIO0_LP_GPIO0_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO0_MCU_SEL : GPIO0_LP_GPIO0_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO0_Register use record
      LP_GPIO0_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO0_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO0_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO0_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO0_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO0_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO0_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO0_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO0_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO0_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO0_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO1_LP_GPIO1_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO1_LP_GPIO1_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO1_LP_GPIO1_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO1_Register is record
      --  need des
      LP_GPIO1_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO1_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO1_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO1_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO1_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO1_MCU_DRV : GPIO1_LP_GPIO1_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO1_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO1_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO1_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO1_FUN_DRV : GPIO1_LP_GPIO1_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO1_MCU_SEL : GPIO1_LP_GPIO1_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO1_Register use record
      LP_GPIO1_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO1_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO1_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO1_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO1_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO1_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO1_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO1_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO1_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO1_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO1_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO2_LP_GPIO2_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO2_LP_GPIO2_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO2_LP_GPIO2_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO2_Register is record
      --  need des
      LP_GPIO2_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO2_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO2_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO2_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO2_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO2_MCU_DRV : GPIO2_LP_GPIO2_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO2_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO2_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO2_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO2_FUN_DRV : GPIO2_LP_GPIO2_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO2_MCU_SEL : GPIO2_LP_GPIO2_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO2_Register use record
      LP_GPIO2_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO2_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO2_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO2_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO2_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO2_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO2_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO2_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO2_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO2_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO2_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO3_LP_GPIO3_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO3_LP_GPIO3_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO3_LP_GPIO3_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO3_Register is record
      --  need des
      LP_GPIO3_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO3_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO3_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO3_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO3_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO3_MCU_DRV : GPIO3_LP_GPIO3_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO3_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO3_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO3_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO3_FUN_DRV : GPIO3_LP_GPIO3_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO3_MCU_SEL : GPIO3_LP_GPIO3_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO3_Register use record
      LP_GPIO3_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO3_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO3_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO3_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO3_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO3_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO3_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO3_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO3_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO3_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO3_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO4_LP_GPIO4_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO4_LP_GPIO4_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO4_LP_GPIO4_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO4_Register is record
      --  need des
      LP_GPIO4_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO4_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO4_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO4_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO4_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO4_MCU_DRV : GPIO4_LP_GPIO4_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO4_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO4_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO4_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO4_FUN_DRV : GPIO4_LP_GPIO4_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO4_MCU_SEL : GPIO4_LP_GPIO4_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO4_Register use record
      LP_GPIO4_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO4_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO4_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO4_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO4_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO4_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO4_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO4_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO4_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO4_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO4_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO5_LP_GPIO5_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO5_LP_GPIO5_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO5_LP_GPIO5_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO5_Register is record
      --  need des
      LP_GPIO5_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO5_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO5_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO5_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO5_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO5_MCU_DRV : GPIO5_LP_GPIO5_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO5_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO5_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO5_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO5_FUN_DRV : GPIO5_LP_GPIO5_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO5_MCU_SEL : GPIO5_LP_GPIO5_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO5_Register use record
      LP_GPIO5_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO5_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO5_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO5_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO5_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO5_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO5_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO5_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO5_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO5_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO5_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO6_LP_GPIO6_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO6_LP_GPIO6_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO6_LP_GPIO6_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO6_Register is record
      --  need des
      LP_GPIO6_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO6_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO6_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO6_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO6_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO6_MCU_DRV : GPIO6_LP_GPIO6_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO6_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO6_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO6_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO6_FUN_DRV : GPIO6_LP_GPIO6_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO6_MCU_SEL : GPIO6_LP_GPIO6_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO6_Register use record
      LP_GPIO6_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO6_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO6_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO6_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO6_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO6_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO6_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO6_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO6_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO6_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO6_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype GPIO7_LP_GPIO7_MCU_DRV_Field is HAL.UInt2;
   subtype GPIO7_LP_GPIO7_FUN_DRV_Field is HAL.UInt2;
   subtype GPIO7_LP_GPIO7_MCU_SEL_Field is HAL.UInt3;

   --  need des
   type GPIO7_Register is record
      --  need des
      LP_GPIO7_MCU_OE  : Boolean := False;
      --  need des
      LP_GPIO7_SLP_SEL : Boolean := False;
      --  need des
      LP_GPIO7_MCU_WPD : Boolean := False;
      --  need des
      LP_GPIO7_MCU_WPU : Boolean := False;
      --  need des
      LP_GPIO7_MCU_IE  : Boolean := False;
      --  need des
      LP_GPIO7_MCU_DRV : GPIO7_LP_GPIO7_MCU_DRV_Field := 16#0#;
      --  need des
      LP_GPIO7_FUN_WPD : Boolean := False;
      --  need des
      LP_GPIO7_FUN_WPU : Boolean := False;
      --  need des
      LP_GPIO7_FUN_IE  : Boolean := False;
      --  need des
      LP_GPIO7_FUN_DRV : GPIO7_LP_GPIO7_FUN_DRV_Field := 16#0#;
      --  need des
      LP_GPIO7_MCU_SEL : GPIO7_LP_GPIO7_MCU_SEL_Field := 16#0#;
      --  unspecified
      Reserved_15_31   : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIO7_Register use record
      LP_GPIO7_MCU_OE  at 0 range 0 .. 0;
      LP_GPIO7_SLP_SEL at 0 range 1 .. 1;
      LP_GPIO7_MCU_WPD at 0 range 2 .. 2;
      LP_GPIO7_MCU_WPU at 0 range 3 .. 3;
      LP_GPIO7_MCU_IE  at 0 range 4 .. 4;
      LP_GPIO7_MCU_DRV at 0 range 5 .. 6;
      LP_GPIO7_FUN_WPD at 0 range 7 .. 7;
      LP_GPIO7_FUN_WPU at 0 range 8 .. 8;
      LP_GPIO7_FUN_IE  at 0 range 9 .. 9;
      LP_GPIO7_FUN_DRV at 0 range 10 .. 11;
      LP_GPIO7_MCU_SEL at 0 range 12 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype STATUS_INTERRUPT_LP_GPIO_STATUS_INTERRUPT_NEXT_Field is HAL.UInt8;

   --  need des
   type STATUS_INTERRUPT_Register is record
      --  Read-only. need des
      LP_GPIO_STATUS_INTERRUPT_NEXT : STATUS_INTERRUPT_LP_GPIO_STATUS_INTERRUPT_NEXT_Field;
      --  unspecified
      Reserved_8_31                 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_INTERRUPT_Register use record
      LP_GPIO_STATUS_INTERRUPT_NEXT at 0 range 0 .. 7;
      Reserved_8_31                 at 0 range 8 .. 31;
   end record;

   --  DEBUG_SEL0_LP_DEBUG_SEL array element
   subtype DEBUG_SEL0_LP_DEBUG_SEL_Element is HAL.UInt7;

   --  DEBUG_SEL0_LP_DEBUG_SEL array
   type DEBUG_SEL0_LP_DEBUG_SEL_Field_Array is array (0 .. 3)
     of DEBUG_SEL0_LP_DEBUG_SEL_Element
     with Component_Size => 7, Size => 28;

   --  Type definition for DEBUG_SEL0_LP_DEBUG_SEL
   type DEBUG_SEL0_LP_DEBUG_SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LP_DEBUG_SEL as a value
            Val : HAL.UInt28;
         when True =>
            --  LP_DEBUG_SEL as an array
            Arr : DEBUG_SEL0_LP_DEBUG_SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for DEBUG_SEL0_LP_DEBUG_SEL_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  need des
   type DEBUG_SEL0_Register is record
      --  need des
      LP_DEBUG_SEL   : DEBUG_SEL0_LP_DEBUG_SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUG_SEL0_Register use record
      LP_DEBUG_SEL   at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DEBUG_SEL1_LP_DEBUG_SEL4_Field is HAL.UInt7;

   --  need des
   type DEBUG_SEL1_Register is record
      --  need des
      LP_DEBUG_SEL4 : DEBUG_SEL1_LP_DEBUG_SEL4_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUG_SEL1_Register use record
      LP_DEBUG_SEL4 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  need des
   type LPI2C_Register is record
      --  unspecified
      Reserved_0_29 : HAL.UInt30 := 16#0#;
      --  need des
      LP_I2C_SDA_IE : Boolean := True;
      --  need des
      LP_I2C_SCL_IE : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPI2C_Register use record
      Reserved_0_29 at 0 range 0 .. 29;
      LP_I2C_SDA_IE at 0 range 30 .. 30;
      LP_I2C_SCL_IE at 0 range 31 .. 31;
   end record;

   subtype DATE_LP_IO_DATE_Field is HAL.UInt31;

   --  need des
   type DATE_Register is record
      --  need des
      LP_IO_DATE : DATE_LP_IO_DATE_Field := 16#2202100#;
      --  need des
      CLK_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LP_IO_DATE at 0 range 0 .. 30;
      CLK_EN     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LP_IO Peripheral
   type LP_IO_Peripheral is record
      --  need des
      OUT_DATA         : aliased OUT_DATA_Register;
      --  need des
      OUT_DATA_W1TS    : aliased OUT_DATA_W1TS_Register;
      --  need des
      OUT_DATA_W1TC    : aliased OUT_DATA_W1TC_Register;
      --  need des
      OUT_ENABLE       : aliased OUT_ENABLE_Register;
      --  need des
      OUT_ENABLE_W1TS  : aliased OUT_ENABLE_W1TS_Register;
      --  need des
      OUT_ENABLE_W1TC  : aliased OUT_ENABLE_W1TC_Register;
      --  need des
      STATUS           : aliased STATUS_Register;
      --  need des
      STATUS_W1TS      : aliased STATUS_W1TS_Register;
      --  need des
      STATUS_W1TC      : aliased STATUS_W1TC_Register;
      --  need des
      IN_k             : aliased IN_Register;
      --  need des
      PIN0             : aliased PIN0_Register;
      --  need des
      PIN1             : aliased PIN1_Register;
      --  need des
      PIN2             : aliased PIN2_Register;
      --  need des
      PIN3             : aliased PIN3_Register;
      --  need des
      PIN4             : aliased PIN4_Register;
      --  need des
      PIN5             : aliased PIN5_Register;
      --  need des
      PIN6             : aliased PIN6_Register;
      --  need des
      PIN7             : aliased PIN7_Register;
      --  need des
      GPIO0            : aliased GPIO0_Register;
      --  need des
      GPIO1            : aliased GPIO1_Register;
      --  need des
      GPIO2            : aliased GPIO2_Register;
      --  need des
      GPIO3            : aliased GPIO3_Register;
      --  need des
      GPIO4            : aliased GPIO4_Register;
      --  need des
      GPIO5            : aliased GPIO5_Register;
      --  need des
      GPIO6            : aliased GPIO6_Register;
      --  need des
      GPIO7            : aliased GPIO7_Register;
      --  need des
      STATUS_INTERRUPT : aliased STATUS_INTERRUPT_Register;
      --  need des
      DEBUG_SEL0       : aliased DEBUG_SEL0_Register;
      --  need des
      DEBUG_SEL1       : aliased DEBUG_SEL1_Register;
      --  need des
      LPI2C            : aliased LPI2C_Register;
      --  need des
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for LP_IO_Peripheral use record
      OUT_DATA         at 16#0# range 0 .. 31;
      OUT_DATA_W1TS    at 16#4# range 0 .. 31;
      OUT_DATA_W1TC    at 16#8# range 0 .. 31;
      OUT_ENABLE       at 16#C# range 0 .. 31;
      OUT_ENABLE_W1TS  at 16#10# range 0 .. 31;
      OUT_ENABLE_W1TC  at 16#14# range 0 .. 31;
      STATUS           at 16#18# range 0 .. 31;
      STATUS_W1TS      at 16#1C# range 0 .. 31;
      STATUS_W1TC      at 16#20# range 0 .. 31;
      IN_k             at 16#24# range 0 .. 31;
      PIN0             at 16#28# range 0 .. 31;
      PIN1             at 16#2C# range 0 .. 31;
      PIN2             at 16#30# range 0 .. 31;
      PIN3             at 16#34# range 0 .. 31;
      PIN4             at 16#38# range 0 .. 31;
      PIN5             at 16#3C# range 0 .. 31;
      PIN6             at 16#40# range 0 .. 31;
      PIN7             at 16#44# range 0 .. 31;
      GPIO0            at 16#48# range 0 .. 31;
      GPIO1            at 16#4C# range 0 .. 31;
      GPIO2            at 16#50# range 0 .. 31;
      GPIO3            at 16#54# range 0 .. 31;
      GPIO4            at 16#58# range 0 .. 31;
      GPIO5            at 16#5C# range 0 .. 31;
      GPIO6            at 16#60# range 0 .. 31;
      GPIO7            at 16#64# range 0 .. 31;
      STATUS_INTERRUPT at 16#68# range 0 .. 31;
      DEBUG_SEL0       at 16#6C# range 0 .. 31;
      DEBUG_SEL1       at 16#70# range 0 .. 31;
      LPI2C            at 16#74# range 0 .. 31;
      DATE             at 16#3FC# range 0 .. 31;
   end record;

   --  LP_IO Peripheral
   LP_IO_Periph : aliased LP_IO_Peripheral
     with Import, Address => LP_IO_Base;

end ESP32_C6_SVD.LP_IO;
