pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_APM0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype REGION_FILTER_EN_REGION_FILTER_EN_Field is HAL.UInt4;

   --  Region filter enable register
   type REGION_FILTER_EN_Register is record
      --  Region filter enable
      REGION_FILTER_EN : REGION_FILTER_EN_REGION_FILTER_EN_Field := 16#1#;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGION_FILTER_EN_Register use record
      REGION_FILTER_EN at 0 range 0 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
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

   --  PMS function control register
   type FUNC_CTRL_Register is record
      --  PMS M0 function enable
      M0_PMS_FUNC_EN : Boolean := True;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC_CTRL_Register use record
      M0_PMS_FUNC_EN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
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

   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_REGION_Field is HAL.UInt4;
   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_MODE_Field is HAL.UInt2;
   subtype M0_EXCEPTION_INFO0_M0_EXCEPTION_ID_Field is HAL.UInt5;

   --  M0 exception_info0 register
   type M0_EXCEPTION_INFO0_Register is record
      --  Read-only. Exception region
      M0_EXCEPTION_REGION : M0_EXCEPTION_INFO0_M0_EXCEPTION_REGION_Field;
      --  unspecified
      Reserved_4_15       : HAL.UInt12;
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
      M0_EXCEPTION_REGION at 0 range 0 .. 3;
      Reserved_4_15       at 0 range 4 .. 15;
      M0_EXCEPTION_MODE   at 0 range 16 .. 17;
      M0_EXCEPTION_ID     at 0 range 18 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   --  APM interrupt enable register
   type INT_EN_Register is record
      --  APM M0 interrupt enable
      M0_APM_INT_EN : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_EN_Register use record
      M0_APM_INT_EN at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
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

   --  LP_APM0 Peripheral
   type LP_APM0_Peripheral is record
      --  Region filter enable register
      REGION_FILTER_EN   : aliased REGION_FILTER_EN_Register;
      --  Region address register
      REGION0_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION0_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION0_PMS_ATTR   : aliased REGION0_PMS_ATTR_Register;
      --  Region address register
      REGION1_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION1_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION1_PMS_ATTR   : aliased REGION1_PMS_ATTR_Register;
      --  Region address register
      REGION2_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION2_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION2_PMS_ATTR   : aliased REGION2_PMS_ATTR_Register;
      --  Region address register
      REGION3_ADDR_START : aliased HAL.UInt32;
      --  Region address register
      REGION3_ADDR_END   : aliased HAL.UInt32;
      --  Region access authority attribute register
      REGION3_PMS_ATTR   : aliased REGION3_PMS_ATTR_Register;
      --  PMS function control register
      FUNC_CTRL          : aliased FUNC_CTRL_Register;
      --  M0 status register
      M0_STATUS          : aliased M0_STATUS_Register;
      --  M0 status clear register
      M0_STATUS_CLR      : aliased M0_STATUS_CLR_Register;
      --  M0 exception_info0 register
      M0_EXCEPTION_INFO0 : aliased M0_EXCEPTION_INFO0_Register;
      --  M0 exception_info1 register
      M0_EXCEPTION_INFO1 : aliased HAL.UInt32;
      --  APM interrupt enable register
      INT_EN             : aliased INT_EN_Register;
      --  clock gating register
      CLOCK_GATE         : aliased CLOCK_GATE_Register;
      --  Version register
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for LP_APM0_Peripheral use record
      REGION_FILTER_EN   at 16#0# range 0 .. 31;
      REGION0_ADDR_START at 16#4# range 0 .. 31;
      REGION0_ADDR_END   at 16#8# range 0 .. 31;
      REGION0_PMS_ATTR   at 16#C# range 0 .. 31;
      REGION1_ADDR_START at 16#10# range 0 .. 31;
      REGION1_ADDR_END   at 16#14# range 0 .. 31;
      REGION1_PMS_ATTR   at 16#18# range 0 .. 31;
      REGION2_ADDR_START at 16#1C# range 0 .. 31;
      REGION2_ADDR_END   at 16#20# range 0 .. 31;
      REGION2_PMS_ATTR   at 16#24# range 0 .. 31;
      REGION3_ADDR_START at 16#28# range 0 .. 31;
      REGION3_ADDR_END   at 16#2C# range 0 .. 31;
      REGION3_PMS_ATTR   at 16#30# range 0 .. 31;
      FUNC_CTRL          at 16#C4# range 0 .. 31;
      M0_STATUS          at 16#C8# range 0 .. 31;
      M0_STATUS_CLR      at 16#CC# range 0 .. 31;
      M0_EXCEPTION_INFO0 at 16#D0# range 0 .. 31;
      M0_EXCEPTION_INFO1 at 16#D4# range 0 .. 31;
      INT_EN             at 16#D8# range 0 .. 31;
      CLOCK_GATE         at 16#DC# range 0 .. 31;
      DATE               at 16#7FC# range 0 .. 31;
   end record;

   --  LP_APM0 Peripheral
   LP_APM0_Periph : aliased LP_APM0_Peripheral
     with Import, Address => LP_APM0_Base;

end ESP32_C6_SVD.LP_APM0;
