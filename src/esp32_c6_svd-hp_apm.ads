pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.HP_APM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype REGION_FILTER_EN_REGION_FILTER_EN_Field is HAL.UInt16;

   --  Region filter enable register
   type REGION_FILTER_EN_Register is record
      --  Region filter enable
      REGION_FILTER_EN : REGION_FILTER_EN_REGION_FILTER_EN_Field := 16#1#;
      --  unspecified
      Reserved_16_31   : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION_FILTER_EN_Register use record
      REGION_FILTER_EN at 0 range 0 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION0_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION0_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION0_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION0_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION0_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION0_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION0_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION0_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION0_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION0_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION0_PMS_ATTR_Register use record
      REGION0_R0_PMS_X at 0 range 0 .. 0;
      REGION0_R0_PMS_W at 0 range 1 .. 1;
      REGION0_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION0_R1_PMS_X at 0 range 4 .. 4;
      REGION0_R1_PMS_W at 0 range 5 .. 5;
      REGION0_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION0_R2_PMS_X at 0 range 8 .. 8;
      REGION0_R2_PMS_W at 0 range 9 .. 9;
      REGION0_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION1_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION1_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION1_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION1_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION1_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION1_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION1_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION1_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION1_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION1_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION1_PMS_ATTR_Register use record
      REGION1_R0_PMS_X at 0 range 0 .. 0;
      REGION1_R0_PMS_W at 0 range 1 .. 1;
      REGION1_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION1_R1_PMS_X at 0 range 4 .. 4;
      REGION1_R1_PMS_W at 0 range 5 .. 5;
      REGION1_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION1_R2_PMS_X at 0 range 8 .. 8;
      REGION1_R2_PMS_W at 0 range 9 .. 9;
      REGION1_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION2_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION2_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION2_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION2_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION2_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION2_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION2_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION2_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION2_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION2_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION2_PMS_ATTR_Register use record
      REGION2_R0_PMS_X at 0 range 0 .. 0;
      REGION2_R0_PMS_W at 0 range 1 .. 1;
      REGION2_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION2_R1_PMS_X at 0 range 4 .. 4;
      REGION2_R1_PMS_W at 0 range 5 .. 5;
      REGION2_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION2_R2_PMS_X at 0 range 8 .. 8;
      REGION2_R2_PMS_W at 0 range 9 .. 9;
      REGION2_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION3_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION3_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION3_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION3_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION3_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION3_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION3_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION3_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION3_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION3_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION3_PMS_ATTR_Register use record
      REGION3_R0_PMS_X at 0 range 0 .. 0;
      REGION3_R0_PMS_W at 0 range 1 .. 1;
      REGION3_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION3_R1_PMS_X at 0 range 4 .. 4;
      REGION3_R1_PMS_W at 0 range 5 .. 5;
      REGION3_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION3_R2_PMS_X at 0 range 8 .. 8;
      REGION3_R2_PMS_W at 0 range 9 .. 9;
      REGION3_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION4_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION4_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION4_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION4_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION4_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION4_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION4_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION4_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION4_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION4_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION4_PMS_ATTR_Register use record
      REGION4_R0_PMS_X at 0 range 0 .. 0;
      REGION4_R0_PMS_W at 0 range 1 .. 1;
      REGION4_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION4_R1_PMS_X at 0 range 4 .. 4;
      REGION4_R1_PMS_W at 0 range 5 .. 5;
      REGION4_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION4_R2_PMS_X at 0 range 8 .. 8;
      REGION4_R2_PMS_W at 0 range 9 .. 9;
      REGION4_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION5_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION5_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION5_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION5_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION5_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION5_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION5_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION5_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION5_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION5_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION5_PMS_ATTR_Register use record
      REGION5_R0_PMS_X at 0 range 0 .. 0;
      REGION5_R0_PMS_W at 0 range 1 .. 1;
      REGION5_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION5_R1_PMS_X at 0 range 4 .. 4;
      REGION5_R1_PMS_W at 0 range 5 .. 5;
      REGION5_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION5_R2_PMS_X at 0 range 8 .. 8;
      REGION5_R2_PMS_W at 0 range 9 .. 9;
      REGION5_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION6_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION6_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION6_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION6_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION6_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION6_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION6_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION6_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION6_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION6_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION6_PMS_ATTR_Register use record
      REGION6_R0_PMS_X at 0 range 0 .. 0;
      REGION6_R0_PMS_W at 0 range 1 .. 1;
      REGION6_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION6_R1_PMS_X at 0 range 4 .. 4;
      REGION6_R1_PMS_W at 0 range 5 .. 5;
      REGION6_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION6_R2_PMS_X at 0 range 8 .. 8;
      REGION6_R2_PMS_W at 0 range 9 .. 9;
      REGION6_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION7_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION7_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION7_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION7_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION7_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION7_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION7_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION7_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION7_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION7_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION7_PMS_ATTR_Register use record
      REGION7_R0_PMS_X at 0 range 0 .. 0;
      REGION7_R0_PMS_W at 0 range 1 .. 1;
      REGION7_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION7_R1_PMS_X at 0 range 4 .. 4;
      REGION7_R1_PMS_W at 0 range 5 .. 5;
      REGION7_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION7_R2_PMS_X at 0 range 8 .. 8;
      REGION7_R2_PMS_W at 0 range 9 .. 9;
      REGION7_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION8_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION8_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION8_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION8_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION8_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION8_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION8_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION8_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION8_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION8_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION8_PMS_ATTR_Register use record
      REGION8_R0_PMS_X at 0 range 0 .. 0;
      REGION8_R0_PMS_W at 0 range 1 .. 1;
      REGION8_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION8_R1_PMS_X at 0 range 4 .. 4;
      REGION8_R1_PMS_W at 0 range 5 .. 5;
      REGION8_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION8_R2_PMS_X at 0 range 8 .. 8;
      REGION8_R2_PMS_W at 0 range 9 .. 9;
      REGION8_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION9_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION9_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION9_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION9_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION9_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION9_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION9_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION9_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION9_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION9_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31   : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION9_PMS_ATTR_Register use record
      REGION9_R0_PMS_X at 0 range 0 .. 0;
      REGION9_R0_PMS_W at 0 range 1 .. 1;
      REGION9_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      REGION9_R1_PMS_X at 0 range 4 .. 4;
      REGION9_R1_PMS_W at 0 range 5 .. 5;
      REGION9_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      REGION9_R2_PMS_X at 0 range 8 .. 8;
      REGION9_R2_PMS_W at 0 range 9 .. 9;
      REGION9_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31   at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION10_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION10_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION10_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION10_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION10_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION10_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION10_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION10_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION10_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION10_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION10_PMS_ATTR_Register use record
      REGION10_R0_PMS_X at 0 range 0 .. 0;
      REGION10_R0_PMS_W at 0 range 1 .. 1;
      REGION10_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION10_R1_PMS_X at 0 range 4 .. 4;
      REGION10_R1_PMS_W at 0 range 5 .. 5;
      REGION10_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION10_R2_PMS_X at 0 range 8 .. 8;
      REGION10_R2_PMS_W at 0 range 9 .. 9;
      REGION10_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION11_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION11_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION11_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION11_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION11_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION11_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION11_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION11_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION11_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION11_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION11_PMS_ATTR_Register use record
      REGION11_R0_PMS_X at 0 range 0 .. 0;
      REGION11_R0_PMS_W at 0 range 1 .. 1;
      REGION11_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION11_R1_PMS_X at 0 range 4 .. 4;
      REGION11_R1_PMS_W at 0 range 5 .. 5;
      REGION11_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION11_R2_PMS_X at 0 range 8 .. 8;
      REGION11_R2_PMS_W at 0 range 9 .. 9;
      REGION11_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION12_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION12_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION12_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION12_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION12_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION12_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION12_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION12_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION12_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION12_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION12_PMS_ATTR_Register use record
      REGION12_R0_PMS_X at 0 range 0 .. 0;
      REGION12_R0_PMS_W at 0 range 1 .. 1;
      REGION12_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION12_R1_PMS_X at 0 range 4 .. 4;
      REGION12_R1_PMS_W at 0 range 5 .. 5;
      REGION12_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION12_R2_PMS_X at 0 range 8 .. 8;
      REGION12_R2_PMS_W at 0 range 9 .. 9;
      REGION12_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION13_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION13_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION13_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION13_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION13_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION13_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION13_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION13_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION13_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION13_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION13_PMS_ATTR_Register use record
      REGION13_R0_PMS_X at 0 range 0 .. 0;
      REGION13_R0_PMS_W at 0 range 1 .. 1;
      REGION13_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION13_R1_PMS_X at 0 range 4 .. 4;
      REGION13_R1_PMS_W at 0 range 5 .. 5;
      REGION13_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION13_R2_PMS_X at 0 range 8 .. 8;
      REGION13_R2_PMS_W at 0 range 9 .. 9;
      REGION13_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION14_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION14_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION14_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION14_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION14_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION14_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION14_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION14_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION14_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION14_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION14_PMS_ATTR_Register use record
      REGION14_R0_PMS_X at 0 range 0 .. 0;
      REGION14_R0_PMS_W at 0 range 1 .. 1;
      REGION14_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION14_R1_PMS_X at 0 range 4 .. 4;
      REGION14_R1_PMS_W at 0 range 5 .. 5;
      REGION14_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION14_R2_PMS_X at 0 range 8 .. 8;
      REGION14_R2_PMS_W at 0 range 9 .. 9;
      REGION14_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  Region access authority attribute register
   type REGION15_PMS_ATTR_Register is record
      --  Region execute authority in REE_MODE0
      REGION15_R0_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE0
      REGION15_R0_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE0
      REGION15_R0_PMS_R : Boolean := False;
      --  unspecified
      Reserved_3_3      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE1
      REGION15_R1_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE1
      REGION15_R1_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE1
      REGION15_R1_PMS_R : Boolean := False;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Region execute authority in REE_MODE2
      REGION15_R2_PMS_X : Boolean := False;
      --  Region write authority in REE_MODE2
      REGION15_R2_PMS_W : Boolean := False;
      --  Region read authority in REE_MODE2
      REGION15_R2_PMS_R : Boolean := False;
      --  unspecified
      Reserved_11_31    : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION15_PMS_ATTR_Register use record
      REGION15_R0_PMS_X at 0 range 0 .. 0;
      REGION15_R0_PMS_W at 0 range 1 .. 1;
      REGION15_R0_PMS_R at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REGION15_R1_PMS_X at 0 range 4 .. 4;
      REGION15_R1_PMS_W at 0 range 5 .. 5;
      REGION15_R1_PMS_R at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      REGION15_R2_PMS_X at 0 range 8 .. 8;
      REGION15_R2_PMS_W at 0 range 9 .. 9;
      REGION15_R2_PMS_R at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  PMS function control register
   type FUNC_CTRL_Register is record
      --  PMS M0 function enable
      M0_PMS_FUNC_EN : Boolean := True;
      --  PMS M1 function enable
      M1_PMS_FUNC_EN : Boolean := True;
      --  PMS M2 function enable
      M2_PMS_FUNC_EN : Boolean := True;
      --  PMS M3 function enable
      M3_PMS_FUNC_EN : Boolean := True;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC_CTRL_Register use record
      M0_PMS_FUNC_EN at 0 range 0 .. 0;
      M1_PMS_FUNC_EN at 0 range 1 .. 1;
      M2_PMS_FUNC_EN at 0 range 2 .. 2;
      M3_PMS_FUNC_EN at 0 range 3 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype M0_STATUS_M0_EXCEPTION_STATUS_Field is HAL.UInt2;

   --  M0 status register
   type M0_STATUS_Register is record
      --  Read-only. Exception status
      M0_EXCEPTION_STATUS : M0_STATUS_M0_EXCEPTION_STATUS_Field;
      --  unspecified
      Reserved_2_31       : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_STATUS_Register use record
      M0_EXCEPTION_STATUS at 0 range 0 .. 1;
      Reserved_2_31       at 0 range 2 .. 31;
   end record;

   --  M0 status clear register
   type M0_STATUS_CLR_Register is record
      --  Write-only. Clear exception status
      M0_REGION_STATUS_CLR : Boolean := False;
      --  unspecified
      Reserved_1_31        : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_STATUS_CLR_Register use record
      M0_REGION_STATUS_CLR at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_REGION_Field is HAL.UInt16;
   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_MODE_Field is HAL.UInt2;
   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_ID_Field is HAL.UInt5;

   --  M0 exception_info0 register
   type M0_EXCEPTION_INFO0_Register is record
      --  Read-only. Exception region
      M0_EXCEPTION_REGION : M0_EXCEPTION_INFO0_M0_EXCEPTION_REGION_Field;
      --  Read-only. Exception mode
      M0_EXCEPTION_MODE   : M0_EXCEPTION_INFO0_M0_EXCEPTION_MODE_Field;
      --  Read-only. Exception id information
      M0_EXCEPTION_ID     : M0_EXCEPTION_INFO0_M0_EXCEPTION_ID_Field;
      --  unspecified
      Reserved_23_31      : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_EXCEPTION_INFO0_Register use record
      M0_EXCEPTION_REGION at 0 range 0 .. 15;
      M0_EXCEPTION_MODE   at 0 range 16 .. 17;
      M0_EXCEPTION_ID     at 0 range 18 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   subtype M1_STATUS_M1_EXCEPTION_STATUS_Field is HAL.UInt2;

   --  M1 status register
   type M1_STATUS_Register is record
      --  Read-only. Exception status
      M1_EXCEPTION_STATUS : M1_STATUS_M1_EXCEPTION_STATUS_Field;
      --  unspecified
      Reserved_2_31       : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M1_STATUS_Register use record
      M1_EXCEPTION_STATUS at 0 range 0 .. 1;
      Reserved_2_31       at 0 range 2 .. 31;
   end record;

   --  M1 status clear register
   type M1_STATUS_CLR_Register is record
      --  Write-only. Clear exception status
      M1_REGION_STATUS_CLR : Boolean := False;
      --  unspecified
      Reserved_1_31        : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M1_STATUS_CLR_Register use record
      M1_REGION_STATUS_CLR at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   subtype M1_EXCEPTION_INFO0_M1_EXCEPTION_REGION_Field is HAL.UInt16;
   subtype M1_EXCEPTION_INFO0_M1_EXCEPTION_MODE_Field is HAL.UInt2;
   subtype M1_EXCEPTION_INFO0_M1_EXCEPTION_ID_Field is HAL.UInt5;

   --  M1 exception_info0 register
   type M1_EXCEPTION_INFO0_Register is record
      --  Read-only. Exception region
      M1_EXCEPTION_REGION : M1_EXCEPTION_INFO0_M1_EXCEPTION_REGION_Field;
      --  Read-only. Exception mode
      M1_EXCEPTION_MODE   : M1_EXCEPTION_INFO0_M1_EXCEPTION_MODE_Field;
      --  Read-only. Exception id information
      M1_EXCEPTION_ID     : M1_EXCEPTION_INFO0_M1_EXCEPTION_ID_Field;
      --  unspecified
      Reserved_23_31      : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M1_EXCEPTION_INFO0_Register use record
      M1_EXCEPTION_REGION at 0 range 0 .. 15;
      M1_EXCEPTION_MODE   at 0 range 16 .. 17;
      M1_EXCEPTION_ID     at 0 range 18 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   subtype M2_STATUS_M2_EXCEPTION_STATUS_Field is HAL.UInt2;

   --  M2 status register
   type M2_STATUS_Register is record
      --  Read-only. Exception status
      M2_EXCEPTION_STATUS : M2_STATUS_M2_EXCEPTION_STATUS_Field;
      --  unspecified
      Reserved_2_31       : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M2_STATUS_Register use record
      M2_EXCEPTION_STATUS at 0 range 0 .. 1;
      Reserved_2_31       at 0 range 2 .. 31;
   end record;

   --  M2 status clear register
   type M2_STATUS_CLR_Register is record
      --  Write-only. Clear exception status
      M2_REGION_STATUS_CLR : Boolean := False;
      --  unspecified
      Reserved_1_31        : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M2_STATUS_CLR_Register use record
      M2_REGION_STATUS_CLR at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   subtype M2_EXCEPTION_INFO0_M2_EXCEPTION_REGION_Field is HAL.UInt16;
   subtype M2_EXCEPTION_INFO0_M2_EXCEPTION_MODE_Field is HAL.UInt2;
   subtype M2_EXCEPTION_INFO0_M2_EXCEPTION_ID_Field is HAL.UInt5;

   --  M2 exception_info0 register
   type M2_EXCEPTION_INFO0_Register is record
      --  Read-only. Exception region
      M2_EXCEPTION_REGION : M2_EXCEPTION_INFO0_M2_EXCEPTION_REGION_Field;
      --  Read-only. Exception mode
      M2_EXCEPTION_MODE   : M2_EXCEPTION_INFO0_M2_EXCEPTION_MODE_Field;
      --  Read-only. Exception id information
      M2_EXCEPTION_ID     : M2_EXCEPTION_INFO0_M2_EXCEPTION_ID_Field;
      --  unspecified
      Reserved_23_31      : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M2_EXCEPTION_INFO0_Register use record
      M2_EXCEPTION_REGION at 0 range 0 .. 15;
      M2_EXCEPTION_MODE   at 0 range 16 .. 17;
      M2_EXCEPTION_ID     at 0 range 18 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   subtype M3_STATUS_M3_EXCEPTION_STATUS_Field is HAL.UInt2;

   --  M3 status register
   type M3_STATUS_Register is record
      --  Read-only. Exception status
      M3_EXCEPTION_STATUS : M3_STATUS_M3_EXCEPTION_STATUS_Field;
      --  unspecified
      Reserved_2_31       : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M3_STATUS_Register use record
      M3_EXCEPTION_STATUS at 0 range 0 .. 1;
      Reserved_2_31       at 0 range 2 .. 31;
   end record;

   --  M3 status clear register
   type M3_STATUS_CLR_Register is record
      --  Write-only. Clear exception status
      M3_REGION_STATUS_CLR : Boolean := False;
      --  unspecified
      Reserved_1_31        : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M3_STATUS_CLR_Register use record
      M3_REGION_STATUS_CLR at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   subtype M3_EXCEPTION_INFO0_M3_EXCEPTION_REGION_Field is HAL.UInt16;
   subtype M3_EXCEPTION_INFO0_M3_EXCEPTION_MODE_Field is HAL.UInt2;
   subtype M3_EXCEPTION_INFO0_M3_EXCEPTION_ID_Field is HAL.UInt5;

   --  M3 exception_info0 register
   type M3_EXCEPTION_INFO0_Register is record
      --  Read-only. Exception region
      M3_EXCEPTION_REGION : M3_EXCEPTION_INFO0_M3_EXCEPTION_REGION_Field;
      --  Read-only. Exception mode
      M3_EXCEPTION_MODE   : M3_EXCEPTION_INFO0_M3_EXCEPTION_MODE_Field;
      --  Read-only. Exception id information
      M3_EXCEPTION_ID     : M3_EXCEPTION_INFO0_M3_EXCEPTION_ID_Field;
      --  unspecified
      Reserved_23_31      : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M3_EXCEPTION_INFO0_Register use record
      M3_EXCEPTION_REGION at 0 range 0 .. 15;
      M3_EXCEPTION_MODE   at 0 range 16 .. 17;
      M3_EXCEPTION_ID     at 0 range 18 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   --  APM interrupt enable register
   type INT_EN_Register is record
      --  APM M0 interrupt enable
      M0_APM_INT_EN : Boolean := False;
      --  APM M1 interrupt enable
      M1_APM_INT_EN : Boolean := False;
      --  APM M2 interrupt enable
      M2_APM_INT_EN : Boolean := False;
      --  APM M3 interrupt enable
      M3_APM_INT_EN : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_EN_Register use record
      M0_APM_INT_EN at 0 range 0 .. 0;
      M1_APM_INT_EN at 0 range 1 .. 1;
      M2_APM_INT_EN at 0 range 2 .. 2;
      M3_APM_INT_EN at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  clock gating register
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
      --  reg_date
      DATE           : DATE_DATE_Field := 16#2205240#;
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

   --  HP_APM Peripheral
   type HP_APM_Peripheral is record
      --  Region filter enable register
      REGION_FILTER_EN    : aliased REGION_FILTER_EN_Register;
      --  Region address register
      REGION0_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION0_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION0_PMS_ATTR    : aliased REGION0_PMS_ATTR_Register;
      --  Region address register
      REGION1_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION1_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION1_PMS_ATTR    : aliased REGION1_PMS_ATTR_Register;
      --  Region address register
      REGION2_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION2_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION2_PMS_ATTR    : aliased REGION2_PMS_ATTR_Register;
      --  Region address register
      REGION3_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION3_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION3_PMS_ATTR    : aliased REGION3_PMS_ATTR_Register;
      --  Region address register
      REGION4_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION4_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION4_PMS_ATTR    : aliased REGION4_PMS_ATTR_Register;
      --  Region address register
      REGION5_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION5_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION5_PMS_ATTR    : aliased REGION5_PMS_ATTR_Register;
      --  Region address register
      REGION6_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION6_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION6_PMS_ATTR    : aliased REGION6_PMS_ATTR_Register;
      --  Region address register
      REGION7_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION7_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION7_PMS_ATTR    : aliased REGION7_PMS_ATTR_Register;
      --  Region address register
      REGION8_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION8_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION8_PMS_ATTR    : aliased REGION8_PMS_ATTR_Register;
      --  Region address register
      REGION9_ADDR_START  : aliased HAL.UInt32;
      --  Region address register
      REGION9_ADDR_END    : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION9_PMS_ATTR    : aliased REGION9_PMS_ATTR_Register;
      --  Region address register
      REGION10_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION10_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION10_PMS_ATTR   : aliased REGION10_PMS_ATTR_Register;
      --  Region address register
      REGION11_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION11_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION11_PMS_ATTR   : aliased REGION11_PMS_ATTR_Register;
      --  Region address register
      REGION12_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION12_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION12_PMS_ATTR   : aliased REGION12_PMS_ATTR_Register;
      --  Region address register
      REGION13_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION13_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION13_PMS_ATTR   : aliased REGION13_PMS_ATTR_Register;
      --  Region address register
      REGION14_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION14_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION14_PMS_ATTR   : aliased REGION14_PMS_ATTR_Register;
      --  Region address register
      REGION15_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION15_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION15_PMS_ATTR   : aliased REGION15_PMS_ATTR_Register;
      --  PMS function control register
      FUNC_CTRL           : aliased FUNC_CTRL_Register;
      --  M0 status register
      M0_STATUS           : aliased M0_STATUS_Register;
      --  M0 status clear register
      M0_STATUS_CLR       : aliased M0_STATUS_CLR_Register;
      --  M0 exception_info0 register
      M0_EXCEPTION_INFO0  : aliased M0_EXCEPTION_INFO0_Register;
      --  M0 exception_info1 register
      M0_EXCEPTION_INFO1  : aliased HAL.UInt32;
      --  M1 status register
      M1_STATUS           : aliased M1_STATUS_Register;
      --  M1 status clear register
      M1_STATUS_CLR       : aliased M1_STATUS_CLR_Register;
      --  M1 exception_info0 register
      M1_EXCEPTION_INFO0  : aliased M1_EXCEPTION_INFO0_Register;
      --  M1 exception_info1 register
      M1_EXCEPTION_INFO1  : aliased HAL.UInt32;
      --  M2 status register
      M2_STATUS           : aliased M2_STATUS_Register;
      --  M2 status clear register
      M2_STATUS_CLR       : aliased M2_STATUS_CLR_Register;
      --  M2 exception_info0 register
      M2_EXCEPTION_INFO0  : aliased M2_EXCEPTION_INFO0_Register;
      --  M2 exception_info1 register
      M2_EXCEPTION_INFO1  : aliased HAL.UInt32;
      --  M3 status register
      M3_STATUS           : aliased M3_STATUS_Register;
      --  M3 status clear register
      M3_STATUS_CLR       : aliased M3_STATUS_CLR_Register;
      --  M3 exception_info0 register
      M3_EXCEPTION_INFO0  : aliased M3_EXCEPTION_INFO0_Register;
      --  M3 exception_info1 register
      M3_EXCEPTION_INFO1  : aliased HAL.UInt32;
      --  APM interrupt enable register
      INT_EN              : aliased INT_EN_Register;
      --  clock gating register
      CLOCK_GATE          : aliased CLOCK_GATE_Register;
      --  Version register
      DATE                : aliased DATE_Register;
   end record
     with Volatile;

   for HP_APM_Peripheral use record
      REGION_FILTER_EN    at 16#0# range 0 .. 31;
      REGION0_ADDR_START  at 16#4# range 0 .. 31;
      REGION0_ADDR_END    at 16#8# range 0 .. 31;
      REGION0_PMS_ATTR    at 16#C# range 0 .. 31;
      REGION1_ADDR_START  at 16#10# range 0 .. 31;
      REGION1_ADDR_END    at 16#14# range 0 .. 31;
      REGION1_PMS_ATTR    at 16#18# range 0 .. 31;
      REGION2_ADDR_START  at 16#1C# range 0 .. 31;
      REGION2_ADDR_END    at 16#20# range 0 .. 31;
      REGION2_PMS_ATTR    at 16#24# range 0 .. 31;
      REGION3_ADDR_START  at 16#28# range 0 .. 31;
      REGION3_ADDR_END    at 16#2C# range 0 .. 31;
      REGION3_PMS_ATTR    at 16#30# range 0 .. 31;
      REGION4_ADDR_START  at 16#34# range 0 .. 31;
      REGION4_ADDR_END    at 16#38# range 0 .. 31;
      REGION4_PMS_ATTR    at 16#3C# range 0 .. 31;
      REGION5_ADDR_START  at 16#40# range 0 .. 31;
      REGION5_ADDR_END    at 16#44# range 0 .. 31;
      REGION5_PMS_ATTR    at 16#48# range 0 .. 31;
      REGION6_ADDR_START  at 16#4C# range 0 .. 31;
      REGION6_ADDR_END    at 16#50# range 0 .. 31;
      REGION6_PMS_ATTR    at 16#54# range 0 .. 31;
      REGION7_ADDR_START  at 16#58# range 0 .. 31;
      REGION7_ADDR_END    at 16#5C# range 0 .. 31;
      REGION7_PMS_ATTR    at 16#60# range 0 .. 31;
      REGION8_ADDR_START  at 16#64# range 0 .. 31;
      REGION8_ADDR_END    at 16#68# range 0 .. 31;
      REGION8_PMS_ATTR    at 16#6C# range 0 .. 31;
      REGION9_ADDR_START  at 16#70# range 0 .. 31;
      REGION9_ADDR_END    at 16#74# range 0 .. 31;
      REGION9_PMS_ATTR    at 16#78# range 0 .. 31;
      REGION10_ADDR_START at 16#7C# range 0 .. 31;
      REGION10_ADDR_END   at 16#80# range 0 .. 31;
      REGION10_PMS_ATTR   at 16#84# range 0 .. 31;
      REGION11_ADDR_START at 16#88# range 0 .. 31;
      REGION11_ADDR_END   at 16#8C# range 0 .. 31;
      REGION11_PMS_ATTR   at 16#90# range 0 .. 31;
      REGION12_ADDR_START at 16#94# range 0 .. 31;
      REGION12_ADDR_END   at 16#98# range 0 .. 31;
      REGION12_PMS_ATTR   at 16#9C# range 0 .. 31;
      REGION13_ADDR_START at 16#A0# range 0 .. 31;
      REGION13_ADDR_END   at 16#A4# range 0 .. 31;
      REGION13_PMS_ATTR   at 16#A8# range 0 .. 31;
      REGION14_ADDR_START at 16#AC# range 0 .. 31;
      REGION14_ADDR_END   at 16#B0# range 0 .. 31;
      REGION14_PMS_ATTR   at 16#B4# range 0 .. 31;
      REGION15_ADDR_START at 16#B8# range 0 .. 31;
      REGION15_ADDR_END   at 16#BC# range 0 .. 31;
      REGION15_PMS_ATTR   at 16#C0# range 0 .. 31;
      FUNC_CTRL           at 16#C4# range 0 .. 31;
      M0_STATUS           at 16#C8# range 0 .. 31;
      M0_STATUS_CLR       at 16#CC# range 0 .. 31;
      M0_EXCEPTION_INFO0  at 16#D0# range 0 .. 31;
      M0_EXCEPTION_INFO1  at 16#D4# range 0 .. 31;
      M1_STATUS           at 16#D8# range 0 .. 31;
      M1_STATUS_CLR       at 16#DC# range 0 .. 31;
      M1_EXCEPTION_INFO0  at 16#E0# range 0 .. 31;
      M1_EXCEPTION_INFO1  at 16#E4# range 0 .. 31;
      M2_STATUS           at 16#E8# range 0 .. 31;
      M2_STATUS_CLR       at 16#EC# range 0 .. 31;
      M2_EXCEPTION_INFO0  at 16#F0# range 0 .. 31;
      M2_EXCEPTION_INFO1  at 16#F4# range 0 .. 31;
      M3_STATUS           at 16#F8# range 0 .. 31;
      M3_STATUS_CLR       at 16#FC# range 0 .. 31;
      M3_EXCEPTION_INFO0  at 16#100# range 0 .. 31;
      M3_EXCEPTION_INFO1  at 16#104# range 0 .. 31;
      INT_EN              at 16#108# range 0 .. 31;
      CLOCK_GATE          at 16#10C# range 0 .. 31;
      DATE                at 16#7FC# range 0 .. 31;
   end record;

   --  HP_APM Peripheral
   HP_APM_Periph : aliased HP_APM_Peripheral
     with Import, Address => HP_APM_Base;

end ESP32_C6_SVD.HP_APM;
