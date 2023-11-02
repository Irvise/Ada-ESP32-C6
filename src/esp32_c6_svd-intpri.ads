pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.INTPRI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CPU_INT_PRI_0_CPU_PRI_0_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_0_Register is record
      --  Need add description
      CPU_PRI_0_MAP : CPU_INT_PRI_0_CPU_PRI_0_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_0_Register use record
      CPU_PRI_0_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_1_CPU_PRI_1_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_1_Register is record
      --  Need add description
      CPU_PRI_1_MAP : CPU_INT_PRI_1_CPU_PRI_1_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_1_Register use record
      CPU_PRI_1_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_2_CPU_PRI_2_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_2_Register is record
      --  Need add description
      CPU_PRI_2_MAP : CPU_INT_PRI_2_CPU_PRI_2_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_2_Register use record
      CPU_PRI_2_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_3_CPU_PRI_3_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_3_Register is record
      --  Need add description
      CPU_PRI_3_MAP : CPU_INT_PRI_3_CPU_PRI_3_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_3_Register use record
      CPU_PRI_3_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_4_CPU_PRI_4_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_4_Register is record
      --  Need add description
      CPU_PRI_4_MAP : CPU_INT_PRI_4_CPU_PRI_4_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_4_Register use record
      CPU_PRI_4_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_5_CPU_PRI_5_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_5_Register is record
      --  Need add description
      CPU_PRI_5_MAP : CPU_INT_PRI_5_CPU_PRI_5_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_5_Register use record
      CPU_PRI_5_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_6_CPU_PRI_6_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_6_Register is record
      --  Need add description
      CPU_PRI_6_MAP : CPU_INT_PRI_6_CPU_PRI_6_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_6_Register use record
      CPU_PRI_6_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_7_CPU_PRI_7_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_7_Register is record
      --  Need add description
      CPU_PRI_7_MAP : CPU_INT_PRI_7_CPU_PRI_7_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_7_Register use record
      CPU_PRI_7_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_8_CPU_PRI_8_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_8_Register is record
      --  Need add description
      CPU_PRI_8_MAP : CPU_INT_PRI_8_CPU_PRI_8_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_8_Register use record
      CPU_PRI_8_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_9_CPU_PRI_9_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_9_Register is record
      --  Need add description
      CPU_PRI_9_MAP : CPU_INT_PRI_9_CPU_PRI_9_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_9_Register use record
      CPU_PRI_9_MAP at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_10_CPU_PRI_10_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_10_Register is record
      --  Need add description
      CPU_PRI_10_MAP : CPU_INT_PRI_10_CPU_PRI_10_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_10_Register use record
      CPU_PRI_10_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_11_CPU_PRI_11_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_11_Register is record
      --  Need add description
      CPU_PRI_11_MAP : CPU_INT_PRI_11_CPU_PRI_11_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_11_Register use record
      CPU_PRI_11_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_12_CPU_PRI_12_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_12_Register is record
      --  Need add description
      CPU_PRI_12_MAP : CPU_INT_PRI_12_CPU_PRI_12_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_12_Register use record
      CPU_PRI_12_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_13_CPU_PRI_13_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_13_Register is record
      --  Need add description
      CPU_PRI_13_MAP : CPU_INT_PRI_13_CPU_PRI_13_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_13_Register use record
      CPU_PRI_13_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_14_CPU_PRI_14_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_14_Register is record
      --  Need add description
      CPU_PRI_14_MAP : CPU_INT_PRI_14_CPU_PRI_14_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_14_Register use record
      CPU_PRI_14_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_15_CPU_PRI_15_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_15_Register is record
      --  Need add description
      CPU_PRI_15_MAP : CPU_INT_PRI_15_CPU_PRI_15_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_15_Register use record
      CPU_PRI_15_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_16_CPU_PRI_16_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_16_Register is record
      --  Need add description
      CPU_PRI_16_MAP : CPU_INT_PRI_16_CPU_PRI_16_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_16_Register use record
      CPU_PRI_16_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_17_CPU_PRI_17_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_17_Register is record
      --  Need add description
      CPU_PRI_17_MAP : CPU_INT_PRI_17_CPU_PRI_17_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_17_Register use record
      CPU_PRI_17_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_18_CPU_PRI_18_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_18_Register is record
      --  Need add description
      CPU_PRI_18_MAP : CPU_INT_PRI_18_CPU_PRI_18_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_18_Register use record
      CPU_PRI_18_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_19_CPU_PRI_19_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_19_Register is record
      --  Need add description
      CPU_PRI_19_MAP : CPU_INT_PRI_19_CPU_PRI_19_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_19_Register use record
      CPU_PRI_19_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_20_CPU_PRI_20_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_20_Register is record
      --  Need add description
      CPU_PRI_20_MAP : CPU_INT_PRI_20_CPU_PRI_20_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_20_Register use record
      CPU_PRI_20_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_21_CPU_PRI_21_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_21_Register is record
      --  Need add description
      CPU_PRI_21_MAP : CPU_INT_PRI_21_CPU_PRI_21_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_21_Register use record
      CPU_PRI_21_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_22_CPU_PRI_22_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_22_Register is record
      --  Need add description
      CPU_PRI_22_MAP : CPU_INT_PRI_22_CPU_PRI_22_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_22_Register use record
      CPU_PRI_22_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_23_CPU_PRI_23_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_23_Register is record
      --  Need add description
      CPU_PRI_23_MAP : CPU_INT_PRI_23_CPU_PRI_23_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_23_Register use record
      CPU_PRI_23_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_24_CPU_PRI_24_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_24_Register is record
      --  Need add description
      CPU_PRI_24_MAP : CPU_INT_PRI_24_CPU_PRI_24_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_24_Register use record
      CPU_PRI_24_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_25_CPU_PRI_25_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_25_Register is record
      --  Need add description
      CPU_PRI_25_MAP : CPU_INT_PRI_25_CPU_PRI_25_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_25_Register use record
      CPU_PRI_25_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_26_CPU_PRI_26_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_26_Register is record
      --  Need add description
      CPU_PRI_26_MAP : CPU_INT_PRI_26_CPU_PRI_26_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_26_Register use record
      CPU_PRI_26_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_27_CPU_PRI_27_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_27_Register is record
      --  Need add description
      CPU_PRI_27_MAP : CPU_INT_PRI_27_CPU_PRI_27_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_27_Register use record
      CPU_PRI_27_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_28_CPU_PRI_28_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_28_Register is record
      --  Need add description
      CPU_PRI_28_MAP : CPU_INT_PRI_28_CPU_PRI_28_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_28_Register use record
      CPU_PRI_28_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_29_CPU_PRI_29_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_29_Register is record
      --  Need add description
      CPU_PRI_29_MAP : CPU_INT_PRI_29_CPU_PRI_29_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_29_Register use record
      CPU_PRI_29_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_30_CPU_PRI_30_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_30_Register is record
      --  Need add description
      CPU_PRI_30_MAP : CPU_INT_PRI_30_CPU_PRI_30_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_30_Register use record
      CPU_PRI_30_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_PRI_31_CPU_PRI_31_MAP_Field is HAL.UInt4;

   --  register description
   type CPU_INT_PRI_31_Register is record
      --  Need add description
      CPU_PRI_31_MAP : CPU_INT_PRI_31_CPU_PRI_31_MAP_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_PRI_31_Register use record
      CPU_PRI_31_MAP at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype CPU_INT_THRESH_CPU_INT_THRESH_Field is HAL.UInt8;

   --  register description
   type CPU_INT_THRESH_Register is record
      --  Need add description
      CPU_INT_THRESH : CPU_INT_THRESH_CPU_INT_THRESH_Field := 16#0#;
      --  unspecified
      Reserved_8_31  : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INT_THRESH_Register use record
      CPU_INT_THRESH at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  register description
   type CPU_INTR_FROM_CPU_0_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_0 : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_0_Register use record
      CPU_INTR_FROM_CPU_0 at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  register description
   type CPU_INTR_FROM_CPU_1_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_1 : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_1_Register use record
      CPU_INTR_FROM_CPU_1 at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  register description
   type CPU_INTR_FROM_CPU_2_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_2 : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_2_Register use record
      CPU_INTR_FROM_CPU_2 at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  register description
   type CPU_INTR_FROM_CPU_3_Register is record
      --  Need add description
      CPU_INTR_FROM_CPU_3 : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_INTR_FROM_CPU_3_Register use record
      CPU_INTR_FROM_CPU_3 at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  register description
   type DATE_Register is record
      --  Need add description
      DATE           : DATE_DATE_Field := 16#2201090#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  register description
   type CLOCK_GATE_Register is record
      --  Need add description
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

   --  redcy eco register.
   type RND_ECO_Register is record
      --  Only reserved for ECO.
      REDCY_ENA     : Boolean := False;
      --  Read-only. Only reserved for ECO.
      REDCY_RESULT  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RND_ECO_Register use record
      REDCY_ENA     at 0 range 0 .. 0;
      REDCY_RESULT  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  INTPRI Peripheral
   type INTPRI_Peripheral is record
      --  register description
      CPU_INT_ENABLE      : aliased HAL.UInt32;
      --  register description
      CPU_INT_TYPE        : aliased HAL.UInt32;
      --  register description
      CPU_INT_EIP_STATUS  : aliased HAL.UInt32;
      --  register description
      CPU_INT_PRI_0       : aliased CPU_INT_PRI_0_Register;
      --  register description
      CPU_INT_PRI_1       : aliased CPU_INT_PRI_1_Register;
      --  register description
      CPU_INT_PRI_2       : aliased CPU_INT_PRI_2_Register;
      --  register description
      CPU_INT_PRI_3       : aliased CPU_INT_PRI_3_Register;
      --  register description
      CPU_INT_PRI_4       : aliased CPU_INT_PRI_4_Register;
      --  register description
      CPU_INT_PRI_5       : aliased CPU_INT_PRI_5_Register;
      --  register description
      CPU_INT_PRI_6       : aliased CPU_INT_PRI_6_Register;
      --  register description
      CPU_INT_PRI_7       : aliased CPU_INT_PRI_7_Register;
      --  register description
      CPU_INT_PRI_8       : aliased CPU_INT_PRI_8_Register;
      --  register description
      CPU_INT_PRI_9       : aliased CPU_INT_PRI_9_Register;
      --  register description
      CPU_INT_PRI_10      : aliased CPU_INT_PRI_10_Register;
      --  register description
      CPU_INT_PRI_11      : aliased CPU_INT_PRI_11_Register;
      --  register description
      CPU_INT_PRI_12      : aliased CPU_INT_PRI_12_Register;
      --  register description
      CPU_INT_PRI_13      : aliased CPU_INT_PRI_13_Register;
      --  register description
      CPU_INT_PRI_14      : aliased CPU_INT_PRI_14_Register;
      --  register description
      CPU_INT_PRI_15      : aliased CPU_INT_PRI_15_Register;
      --  register description
      CPU_INT_PRI_16      : aliased CPU_INT_PRI_16_Register;
      --  register description
      CPU_INT_PRI_17      : aliased CPU_INT_PRI_17_Register;
      --  register description
      CPU_INT_PRI_18      : aliased CPU_INT_PRI_18_Register;
      --  register description
      CPU_INT_PRI_19      : aliased CPU_INT_PRI_19_Register;
      --  register description
      CPU_INT_PRI_20      : aliased CPU_INT_PRI_20_Register;
      --  register description
      CPU_INT_PRI_21      : aliased CPU_INT_PRI_21_Register;
      --  register description
      CPU_INT_PRI_22      : aliased CPU_INT_PRI_22_Register;
      --  register description
      CPU_INT_PRI_23      : aliased CPU_INT_PRI_23_Register;
      --  register description
      CPU_INT_PRI_24      : aliased CPU_INT_PRI_24_Register;
      --  register description
      CPU_INT_PRI_25      : aliased CPU_INT_PRI_25_Register;
      --  register description
      CPU_INT_PRI_26      : aliased CPU_INT_PRI_26_Register;
      --  register description
      CPU_INT_PRI_27      : aliased CPU_INT_PRI_27_Register;
      --  register description
      CPU_INT_PRI_28      : aliased CPU_INT_PRI_28_Register;
      --  register description
      CPU_INT_PRI_29      : aliased CPU_INT_PRI_29_Register;
      --  register description
      CPU_INT_PRI_30      : aliased CPU_INT_PRI_30_Register;
      --  register description
      CPU_INT_PRI_31      : aliased CPU_INT_PRI_31_Register;
      --  register description
      CPU_INT_THRESH      : aliased CPU_INT_THRESH_Register;
      --  register description
      CPU_INTR_FROM_CPU_0 : aliased CPU_INTR_FROM_CPU_0_Register;
      --  register description
      CPU_INTR_FROM_CPU_1 : aliased CPU_INTR_FROM_CPU_1_Register;
      --  register description
      CPU_INTR_FROM_CPU_2 : aliased CPU_INTR_FROM_CPU_2_Register;
      --  register description
      CPU_INTR_FROM_CPU_3 : aliased CPU_INTR_FROM_CPU_3_Register;
      --  register description
      DATE                : aliased DATE_Register;
      --  register description
      CLOCK_GATE          : aliased CLOCK_GATE_Register;
      --  register description
      CPU_INT_CLEAR       : aliased HAL.UInt32;
      --  redcy eco register.
      RND_ECO             : aliased RND_ECO_Register;
      --  redcy eco low register.
      RND_ECO_LOW         : aliased HAL.UInt32;
      --  redcy eco high register.
      RND_ECO_HIGH        : aliased HAL.UInt32;
   end record
     with Volatile;

   for INTPRI_Peripheral use record
      CPU_INT_ENABLE      at 16#0# range 0 .. 31;
      CPU_INT_TYPE        at 16#4# range 0 .. 31;
      CPU_INT_EIP_STATUS  at 16#8# range 0 .. 31;
      CPU_INT_PRI_0       at 16#C# range 0 .. 31;
      CPU_INT_PRI_1       at 16#10# range 0 .. 31;
      CPU_INT_PRI_2       at 16#14# range 0 .. 31;
      CPU_INT_PRI_3       at 16#18# range 0 .. 31;
      CPU_INT_PRI_4       at 16#1C# range 0 .. 31;
      CPU_INT_PRI_5       at 16#20# range 0 .. 31;
      CPU_INT_PRI_6       at 16#24# range 0 .. 31;
      CPU_INT_PRI_7       at 16#28# range 0 .. 31;
      CPU_INT_PRI_8       at 16#2C# range 0 .. 31;
      CPU_INT_PRI_9       at 16#30# range 0 .. 31;
      CPU_INT_PRI_10      at 16#34# range 0 .. 31;
      CPU_INT_PRI_11      at 16#38# range 0 .. 31;
      CPU_INT_PRI_12      at 16#3C# range 0 .. 31;
      CPU_INT_PRI_13      at 16#40# range 0 .. 31;
      CPU_INT_PRI_14      at 16#44# range 0 .. 31;
      CPU_INT_PRI_15      at 16#48# range 0 .. 31;
      CPU_INT_PRI_16      at 16#4C# range 0 .. 31;
      CPU_INT_PRI_17      at 16#50# range 0 .. 31;
      CPU_INT_PRI_18      at 16#54# range 0 .. 31;
      CPU_INT_PRI_19      at 16#58# range 0 .. 31;
      CPU_INT_PRI_20      at 16#5C# range 0 .. 31;
      CPU_INT_PRI_21      at 16#60# range 0 .. 31;
      CPU_INT_PRI_22      at 16#64# range 0 .. 31;
      CPU_INT_PRI_23      at 16#68# range 0 .. 31;
      CPU_INT_PRI_24      at 16#6C# range 0 .. 31;
      CPU_INT_PRI_25      at 16#70# range 0 .. 31;
      CPU_INT_PRI_26      at 16#74# range 0 .. 31;
      CPU_INT_PRI_27      at 16#78# range 0 .. 31;
      CPU_INT_PRI_28      at 16#7C# range 0 .. 31;
      CPU_INT_PRI_29      at 16#80# range 0 .. 31;
      CPU_INT_PRI_30      at 16#84# range 0 .. 31;
      CPU_INT_PRI_31      at 16#88# range 0 .. 31;
      CPU_INT_THRESH      at 16#8C# range 0 .. 31;
      CPU_INTR_FROM_CPU_0 at 16#90# range 0 .. 31;
      CPU_INTR_FROM_CPU_1 at 16#94# range 0 .. 31;
      CPU_INTR_FROM_CPU_2 at 16#98# range 0 .. 31;
      CPU_INTR_FROM_CPU_3 at 16#9C# range 0 .. 31;
      DATE                at 16#A0# range 0 .. 31;
      CLOCK_GATE          at 16#A4# range 0 .. 31;
      CPU_INT_CLEAR       at 16#A8# range 0 .. 31;
      RND_ECO             at 16#AC# range 0 .. 31;
      RND_ECO_LOW         at 16#B0# range 0 .. 31;
      RND_ECO_HIGH        at 16#3FC# range 0 .. 31;
   end record;

   --  INTPRI Peripheral
   INTPRI_Periph : aliased INTPRI_Peripheral
     with Import, Address => INTPRI_Base;

end ESP32_C6_SVD.INTPRI;
