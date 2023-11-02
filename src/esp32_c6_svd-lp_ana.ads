pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_ANA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BOD_MODE0_CNTL_BOD_MODE0_INTR_WAIT_Field is HAL.UInt10;
   subtype BOD_MODE0_CNTL_BOD_MODE0_RESET_WAIT_Field is HAL.UInt10;

   --  need_des
   type BOD_MODE0_CNTL_Register is record
      --  unspecified
      Reserved_0_5              : HAL.UInt6 := 16#0#;
      --  need_des
      BOD_MODE0_CLOSE_FLASH_ENA : Boolean := False;
      --  need_des
      BOD_MODE0_PD_RF_ENA       : Boolean := False;
      --  need_des
      BOD_MODE0_INTR_WAIT       : BOD_MODE0_CNTL_BOD_MODE0_INTR_WAIT_Field :=
                                   16#1#;
      --  need_des
      BOD_MODE0_RESET_WAIT      : BOD_MODE0_CNTL_BOD_MODE0_RESET_WAIT_Field :=
                                   16#3FF#;
      --  need_des
      BOD_MODE0_CNT_CLR         : Boolean := False;
      --  need_des
      BOD_MODE0_INTR_ENA        : Boolean := False;
      --  need_des
      BOD_MODE0_RESET_SEL       : Boolean := False;
      --  need_des
      BOD_MODE0_RESET_ENA       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOD_MODE0_CNTL_Register use record
      Reserved_0_5              at 0 range 0 .. 5;
      BOD_MODE0_CLOSE_FLASH_ENA at 0 range 6 .. 6;
      BOD_MODE0_PD_RF_ENA       at 0 range 7 .. 7;
      BOD_MODE0_INTR_WAIT       at 0 range 8 .. 17;
      BOD_MODE0_RESET_WAIT      at 0 range 18 .. 27;
      BOD_MODE0_CNT_CLR         at 0 range 28 .. 28;
      BOD_MODE0_INTR_ENA        at 0 range 29 .. 29;
      BOD_MODE0_RESET_SEL       at 0 range 30 .. 30;
      BOD_MODE0_RESET_ENA       at 0 range 31 .. 31;
   end record;

   --  need_des
   type BOD_MODE1_CNTL_Register is record
      --  unspecified
      Reserved_0_30       : HAL.UInt31 := 16#0#;
      --  need_des
      BOD_MODE1_RESET_ENA : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOD_MODE1_CNTL_Register use record
      Reserved_0_30       at 0 range 0 .. 30;
      BOD_MODE1_RESET_ENA at 0 range 31 .. 31;
   end record;

   --  need_des
   type CK_GLITCH_CNTL_Register is record
      --  unspecified
      Reserved_0_30       : HAL.UInt31 := 16#0#;
      --  need_des
      CK_GLITCH_RESET_ENA : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CK_GLITCH_CNTL_Register use record
      Reserved_0_30       at 0 range 0 .. 30;
      CK_GLITCH_RESET_ENA at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_RAW_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  need_des
      BOD_MODE0_INT_RAW : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      BOD_MODE0_INT_RAW at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ST_Register is record
      --  unspecified
      Reserved_0_30    : HAL.UInt31;
      --  Read-only. need_des
      BOD_MODE0_INT_ST : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      Reserved_0_30    at 0 range 0 .. 30;
      BOD_MODE0_INT_ST at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_ENA_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  need_des
      BOD_MODE0_INT_ENA : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      BOD_MODE0_INT_ENA at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_CLR_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      BOD_MODE0_INT_CLR : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      BOD_MODE0_INT_CLR at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_RAW_Register is record
      --  unspecified
      Reserved_0_30        : HAL.UInt31 := 16#0#;
      --  need_des
      BOD_MODE0_LP_INT_RAW : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_RAW_Register use record
      Reserved_0_30        at 0 range 0 .. 30;
      BOD_MODE0_LP_INT_RAW at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ST_Register is record
      --  unspecified
      Reserved_0_30       : HAL.UInt31;
      --  Read-only. need_des
      BOD_MODE0_LP_INT_ST : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ST_Register use record
      Reserved_0_30       at 0 range 0 .. 30;
      BOD_MODE0_LP_INT_ST at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ENA_Register is record
      --  unspecified
      Reserved_0_30        : HAL.UInt31 := 16#0#;
      --  need_des
      BOD_MODE0_LP_INT_ENA : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ENA_Register use record
      Reserved_0_30        at 0 range 0 .. 30;
      BOD_MODE0_LP_INT_ENA at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_CLR_Register is record
      --  unspecified
      Reserved_0_30        : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      BOD_MODE0_LP_INT_CLR : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_CLR_Register use record
      Reserved_0_30        at 0 range 0 .. 30;
      BOD_MODE0_LP_INT_CLR at 0 range 31 .. 31;
   end record;

   subtype DATE_LP_ANA_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      LP_ANA_DATE : DATE_LP_ANA_DATE_Field := 16#2202260#;
      --  need_des
      CLK_EN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LP_ANA_DATE at 0 range 0 .. 30;
      CLK_EN      at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LP_ANA Peripheral
   type LP_ANA_Peripheral is record
      --  need_des
      BOD_MODE0_CNTL : aliased BOD_MODE0_CNTL_Register;
      --  need_des
      BOD_MODE1_CNTL : aliased BOD_MODE1_CNTL_Register;
      --  need_des
      CK_GLITCH_CNTL : aliased CK_GLITCH_CNTL_Register;
      --  need_des
      FIB_ENABLE     : aliased HAL.UInt32;
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

   for LP_ANA_Peripheral use record
      BOD_MODE0_CNTL at 16#0# range 0 .. 31;
      BOD_MODE1_CNTL at 16#4# range 0 .. 31;
      CK_GLITCH_CNTL at 16#8# range 0 .. 31;
      FIB_ENABLE     at 16#C# range 0 .. 31;
      INT_RAW        at 16#10# range 0 .. 31;
      INT_ST         at 16#14# range 0 .. 31;
      INT_ENA        at 16#18# range 0 .. 31;
      INT_CLR        at 16#1C# range 0 .. 31;
      LP_INT_RAW     at 16#20# range 0 .. 31;
      LP_INT_ST      at 16#24# range 0 .. 31;
      LP_INT_ENA     at 16#28# range 0 .. 31;
      LP_INT_CLR     at 16#2C# range 0 .. 31;
      DATE           at 16#3FC# range 0 .. 31;
   end record;

   --  LP_ANA Peripheral
   LP_ANA_Periph : aliased LP_ANA_Peripheral
     with Import, Address => LP_ANA_Base;

end ESP32_C6_SVD.LP_ANA;
