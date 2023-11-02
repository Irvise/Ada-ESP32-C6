pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.TEE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype M0_MODE_CTRL_M0_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M0_MODE_CTRL_Register is record
      --  M0 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M0_MODE       : M0_MODE_CTRL_M0_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_MODE_CTRL_Register use record
      M0_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M1_MODE_CTRL_M1_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M1_MODE_CTRL_Register is record
      --  M1 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M1_MODE       : M1_MODE_CTRL_M1_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M1_MODE_CTRL_Register use record
      M1_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M2_MODE_CTRL_M2_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M2_MODE_CTRL_Register is record
      --  M2 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M2_MODE       : M2_MODE_CTRL_M2_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M2_MODE_CTRL_Register use record
      M2_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M3_MODE_CTRL_M3_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M3_MODE_CTRL_Register is record
      --  M3 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M3_MODE       : M3_MODE_CTRL_M3_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M3_MODE_CTRL_Register use record
      M3_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M4_MODE_CTRL_M4_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M4_MODE_CTRL_Register is record
      --  M4 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M4_MODE       : M4_MODE_CTRL_M4_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M4_MODE_CTRL_Register use record
      M4_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M5_MODE_CTRL_M5_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M5_MODE_CTRL_Register is record
      --  M5 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M5_MODE       : M5_MODE_CTRL_M5_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M5_MODE_CTRL_Register use record
      M5_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M6_MODE_CTRL_M6_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M6_MODE_CTRL_Register is record
      --  M6 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M6_MODE       : M6_MODE_CTRL_M6_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M6_MODE_CTRL_Register use record
      M6_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M7_MODE_CTRL_M7_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M7_MODE_CTRL_Register is record
      --  M7 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M7_MODE       : M7_MODE_CTRL_M7_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M7_MODE_CTRL_Register use record
      M7_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M8_MODE_CTRL_M8_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M8_MODE_CTRL_Register is record
      --  M8 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M8_MODE       : M8_MODE_CTRL_M8_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M8_MODE_CTRL_Register use record
      M8_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M9_MODE_CTRL_M9_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M9_MODE_CTRL_Register is record
      --  M9 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M9_MODE       : M9_MODE_CTRL_M9_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M9_MODE_CTRL_Register use record
      M9_MODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M10_MODE_CTRL_M10_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M10_MODE_CTRL_Register is record
      --  M10 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M10_MODE      : M10_MODE_CTRL_M10_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M10_MODE_CTRL_Register use record
      M10_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M11_MODE_CTRL_M11_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M11_MODE_CTRL_Register is record
      --  M11 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M11_MODE      : M11_MODE_CTRL_M11_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M11_MODE_CTRL_Register use record
      M11_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M12_MODE_CTRL_M12_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M12_MODE_CTRL_Register is record
      --  M12 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M12_MODE      : M12_MODE_CTRL_M12_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M12_MODE_CTRL_Register use record
      M12_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M13_MODE_CTRL_M13_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M13_MODE_CTRL_Register is record
      --  M13 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M13_MODE      : M13_MODE_CTRL_M13_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M13_MODE_CTRL_Register use record
      M13_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M14_MODE_CTRL_M14_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M14_MODE_CTRL_Register is record
      --  M14 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M14_MODE      : M14_MODE_CTRL_M14_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M14_MODE_CTRL_Register use record
      M14_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M15_MODE_CTRL_M15_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M15_MODE_CTRL_Register is record
      --  M15 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M15_MODE      : M15_MODE_CTRL_M15_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M15_MODE_CTRL_Register use record
      M15_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M16_MODE_CTRL_M16_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M16_MODE_CTRL_Register is record
      --  M16 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M16_MODE      : M16_MODE_CTRL_M16_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M16_MODE_CTRL_Register use record
      M16_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M17_MODE_CTRL_M17_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M17_MODE_CTRL_Register is record
      --  M17 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M17_MODE      : M17_MODE_CTRL_M17_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M17_MODE_CTRL_Register use record
      M17_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M18_MODE_CTRL_M18_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M18_MODE_CTRL_Register is record
      --  M18 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M18_MODE      : M18_MODE_CTRL_M18_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M18_MODE_CTRL_Register use record
      M18_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M19_MODE_CTRL_M19_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M19_MODE_CTRL_Register is record
      --  M19 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M19_MODE      : M19_MODE_CTRL_M19_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M19_MODE_CTRL_Register use record
      M19_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M20_MODE_CTRL_M20_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M20_MODE_CTRL_Register is record
      --  M20 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M20_MODE      : M20_MODE_CTRL_M20_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M20_MODE_CTRL_Register use record
      M20_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M21_MODE_CTRL_M21_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M21_MODE_CTRL_Register is record
      --  M21 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M21_MODE      : M21_MODE_CTRL_M21_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M21_MODE_CTRL_Register use record
      M21_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M22_MODE_CTRL_M22_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M22_MODE_CTRL_Register is record
      --  M22 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M22_MODE      : M22_MODE_CTRL_M22_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M22_MODE_CTRL_Register use record
      M22_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M23_MODE_CTRL_M23_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M23_MODE_CTRL_Register is record
      --  M23 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M23_MODE      : M23_MODE_CTRL_M23_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M23_MODE_CTRL_Register use record
      M23_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M24_MODE_CTRL_M24_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M24_MODE_CTRL_Register is record
      --  M24 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M24_MODE      : M24_MODE_CTRL_M24_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M24_MODE_CTRL_Register use record
      M24_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M25_MODE_CTRL_M25_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M25_MODE_CTRL_Register is record
      --  M25 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M25_MODE      : M25_MODE_CTRL_M25_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M25_MODE_CTRL_Register use record
      M25_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M26_MODE_CTRL_M26_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M26_MODE_CTRL_Register is record
      --  M26 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M26_MODE      : M26_MODE_CTRL_M26_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M26_MODE_CTRL_Register use record
      M26_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M27_MODE_CTRL_M27_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M27_MODE_CTRL_Register is record
      --  M27 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M27_MODE      : M27_MODE_CTRL_M27_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M27_MODE_CTRL_Register use record
      M27_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M28_MODE_CTRL_M28_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M28_MODE_CTRL_Register is record
      --  M28 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M28_MODE      : M28_MODE_CTRL_M28_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M28_MODE_CTRL_Register use record
      M28_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M29_MODE_CTRL_M29_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M29_MODE_CTRL_Register is record
      --  M29 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M29_MODE      : M29_MODE_CTRL_M29_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M29_MODE_CTRL_Register use record
      M29_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M30_MODE_CTRL_M30_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M30_MODE_CTRL_Register is record
      --  M30 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M30_MODE      : M30_MODE_CTRL_M30_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M30_MODE_CTRL_Register use record
      M30_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype M31_MODE_CTRL_M31_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M31_MODE_CTRL_Register is record
      --  M31 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M31_MODE      : M31_MODE_CTRL_M31_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M31_MODE_CTRL_Register use record
      M31_MODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock gating register
   type CLOCK_GATE_Register is record
      --  reg_clk_en
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

   --  Version register
   type DATE_Register is record
      --  reg_tee_date
      DATE           : DATE_DATE_Field := 16#2205282#;
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

   --  TEE Peripheral
   type TEE_Peripheral is record
      --  Tee mode control register
      M0_MODE_CTRL  : aliased M0_MODE_CTRL_Register;
      --  Tee mode control register
      M1_MODE_CTRL  : aliased M1_MODE_CTRL_Register;
      --  Tee mode control register
      M2_MODE_CTRL  : aliased M2_MODE_CTRL_Register;
      --  Tee mode control register
      M3_MODE_CTRL  : aliased M3_MODE_CTRL_Register;
      --  Tee mode control register
      M4_MODE_CTRL  : aliased M4_MODE_CTRL_Register;
      --  Tee mode control register
      M5_MODE_CTRL  : aliased M5_MODE_CTRL_Register;
      --  Tee mode control register
      M6_MODE_CTRL  : aliased M6_MODE_CTRL_Register;
      --  Tee mode control register
      M7_MODE_CTRL  : aliased M7_MODE_CTRL_Register;
      --  Tee mode control register
      M8_MODE_CTRL  : aliased M8_MODE_CTRL_Register;
      --  Tee mode control register
      M9_MODE_CTRL  : aliased M9_MODE_CTRL_Register;
      --  Tee mode control register
      M10_MODE_CTRL : aliased M10_MODE_CTRL_Register;
      --  Tee mode control register
      M11_MODE_CTRL : aliased M11_MODE_CTRL_Register;
      --  Tee mode control register
      M12_MODE_CTRL : aliased M12_MODE_CTRL_Register;
      --  Tee mode control register
      M13_MODE_CTRL : aliased M13_MODE_CTRL_Register;
      --  Tee mode control register
      M14_MODE_CTRL : aliased M14_MODE_CTRL_Register;
      --  Tee mode control register
      M15_MODE_CTRL : aliased M15_MODE_CTRL_Register;
      --  Tee mode control register
      M16_MODE_CTRL : aliased M16_MODE_CTRL_Register;
      --  Tee mode control register
      M17_MODE_CTRL : aliased M17_MODE_CTRL_Register;
      --  Tee mode control register
      M18_MODE_CTRL : aliased M18_MODE_CTRL_Register;
      --  Tee mode control register
      M19_MODE_CTRL : aliased M19_MODE_CTRL_Register;
      --  Tee mode control register
      M20_MODE_CTRL : aliased M20_MODE_CTRL_Register;
      --  Tee mode control register
      M21_MODE_CTRL : aliased M21_MODE_CTRL_Register;
      --  Tee mode control register
      M22_MODE_CTRL : aliased M22_MODE_CTRL_Register;
      --  Tee mode control register
      M23_MODE_CTRL : aliased M23_MODE_CTRL_Register;
      --  Tee mode control register
      M24_MODE_CTRL : aliased M24_MODE_CTRL_Register;
      --  Tee mode control register
      M25_MODE_CTRL : aliased M25_MODE_CTRL_Register;
      --  Tee mode control register
      M26_MODE_CTRL : aliased M26_MODE_CTRL_Register;
      --  Tee mode control register
      M27_MODE_CTRL : aliased M27_MODE_CTRL_Register;
      --  Tee mode control register
      M28_MODE_CTRL : aliased M28_MODE_CTRL_Register;
      --  Tee mode control register
      M29_MODE_CTRL : aliased M29_MODE_CTRL_Register;
      --  Tee mode control register
      M30_MODE_CTRL : aliased M30_MODE_CTRL_Register;
      --  Tee mode control register
      M31_MODE_CTRL : aliased M31_MODE_CTRL_Register;
      --  Clock gating register
      CLOCK_GATE    : aliased CLOCK_GATE_Register;
      --  Version register
      DATE          : aliased DATE_Register;
   end record
     with Volatile;

   for TEE_Peripheral use record
      M0_MODE_CTRL  at 16#0# range 0 .. 31;
      M1_MODE_CTRL  at 16#4# range 0 .. 31;
      M2_MODE_CTRL  at 16#8# range 0 .. 31;
      M3_MODE_CTRL  at 16#C# range 0 .. 31;
      M4_MODE_CTRL  at 16#10# range 0 .. 31;
      M5_MODE_CTRL  at 16#14# range 0 .. 31;
      M6_MODE_CTRL  at 16#18# range 0 .. 31;
      M7_MODE_CTRL  at 16#1C# range 0 .. 31;
      M8_MODE_CTRL  at 16#20# range 0 .. 31;
      M9_MODE_CTRL  at 16#24# range 0 .. 31;
      M10_MODE_CTRL at 16#28# range 0 .. 31;
      M11_MODE_CTRL at 16#2C# range 0 .. 31;
      M12_MODE_CTRL at 16#30# range 0 .. 31;
      M13_MODE_CTRL at 16#34# range 0 .. 31;
      M14_MODE_CTRL at 16#38# range 0 .. 31;
      M15_MODE_CTRL at 16#3C# range 0 .. 31;
      M16_MODE_CTRL at 16#40# range 0 .. 31;
      M17_MODE_CTRL at 16#44# range 0 .. 31;
      M18_MODE_CTRL at 16#48# range 0 .. 31;
      M19_MODE_CTRL at 16#4C# range 0 .. 31;
      M20_MODE_CTRL at 16#50# range 0 .. 31;
      M21_MODE_CTRL at 16#54# range 0 .. 31;
      M22_MODE_CTRL at 16#58# range 0 .. 31;
      M23_MODE_CTRL at 16#5C# range 0 .. 31;
      M24_MODE_CTRL at 16#60# range 0 .. 31;
      M25_MODE_CTRL at 16#64# range 0 .. 31;
      M26_MODE_CTRL at 16#68# range 0 .. 31;
      M27_MODE_CTRL at 16#6C# range 0 .. 31;
      M28_MODE_CTRL at 16#70# range 0 .. 31;
      M29_MODE_CTRL at 16#74# range 0 .. 31;
      M30_MODE_CTRL at 16#78# range 0 .. 31;
      M31_MODE_CTRL at 16#7C# range 0 .. 31;
      CLOCK_GATE    at 16#80# range 0 .. 31;
      DATE          at 16#FFC# range 0 .. 31;
   end record;

   --  TEE Peripheral
   TEE_Periph : aliased TEE_Peripheral
     with Import, Address => TEE_Base;

end ESP32_C6_SVD.TEE;
