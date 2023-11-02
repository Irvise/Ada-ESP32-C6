pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_I2C_ANA_MST is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype I2C0_CTRL_LP_I2C_ANA_MAST_I2C0_CTRL_Field is HAL.UInt25;

   --  need_des
   type I2C0_CTRL_Register is record
      --  need_des
      LP_I2C_ANA_MAST_I2C0_CTRL : I2C0_CTRL_LP_I2C_ANA_MAST_I2C0_CTRL_Field :=
                                   16#0#;
      --  Read-only. need_des
      LP_I2C_ANA_MAST_I2C0_BUSY : Boolean := False;
      --  unspecified
      Reserved_26_31            : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CTRL_Register use record
      LP_I2C_ANA_MAST_I2C0_CTRL at 0 range 0 .. 24;
      LP_I2C_ANA_MAST_I2C0_BUSY at 0 range 25 .. 25;
      Reserved_26_31            at 0 range 26 .. 31;
   end record;

   subtype I2C0_CONF_LP_I2C_ANA_MAST_I2C0_CONF_Field is HAL.UInt24;
   subtype I2C0_CONF_LP_I2C_ANA_MAST_I2C0_STATUS_Field is HAL.UInt8;

   --  need_des
   type I2C0_CONF_Register is record
      --  need_des
      LP_I2C_ANA_MAST_I2C0_CONF   : I2C0_CONF_LP_I2C_ANA_MAST_I2C0_CONF_Field :=
                                     16#0#;
      --  Read-only. reserved
      LP_I2C_ANA_MAST_I2C0_STATUS : I2C0_CONF_LP_I2C_ANA_MAST_I2C0_STATUS_Field :=
                                     16#7#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CONF_Register use record
      LP_I2C_ANA_MAST_I2C0_CONF   at 0 range 0 .. 23;
      LP_I2C_ANA_MAST_I2C0_STATUS at 0 range 24 .. 31;
   end record;

   subtype I2C0_DATA_LP_I2C_ANA_MAST_I2C0_RDATA_Field is HAL.UInt8;
   subtype I2C0_DATA_LP_I2C_ANA_MAST_I2C0_CLK_SEL_Field is HAL.UInt3;

   --  need_des
   type I2C0_DATA_Register is record
      --  Read-only. need_des
      LP_I2C_ANA_MAST_I2C0_RDATA   : I2C0_DATA_LP_I2C_ANA_MAST_I2C0_RDATA_Field :=
                                      16#0#;
      --  need_des
      LP_I2C_ANA_MAST_I2C0_CLK_SEL : I2C0_DATA_LP_I2C_ANA_MAST_I2C0_CLK_SEL_Field :=
                                      16#1#;
      --  need des
      LP_I2C_ANA_MAST_I2C_MST_SEL  : Boolean := True;
      --  unspecified
      Reserved_12_31               : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_DATA_Register use record
      LP_I2C_ANA_MAST_I2C0_RDATA   at 0 range 0 .. 7;
      LP_I2C_ANA_MAST_I2C0_CLK_SEL at 0 range 8 .. 10;
      LP_I2C_ANA_MAST_I2C_MST_SEL  at 0 range 11 .. 11;
      Reserved_12_31               at 0 range 12 .. 31;
   end record;

   subtype ANA_CONF1_LP_I2C_ANA_MAST_ANA_CONF1_Field is HAL.UInt24;

   --  need_des
   type ANA_CONF1_Register is record
      --  need_des
      LP_I2C_ANA_MAST_ANA_CONF1 : ANA_CONF1_LP_I2C_ANA_MAST_ANA_CONF1_Field :=
                                   16#0#;
      --  unspecified
      Reserved_24_31            : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANA_CONF1_Register use record
      LP_I2C_ANA_MAST_ANA_CONF1 at 0 range 0 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype DEVICE_EN_LP_I2C_ANA_MAST_I2C_DEVICE_EN_Field is HAL.UInt12;

   --  need_des
   type DEVICE_EN_Register is record
      --  need_des
      LP_I2C_ANA_MAST_I2C_DEVICE_EN : DEVICE_EN_LP_I2C_ANA_MAST_I2C_DEVICE_EN_Field :=
                                       16#0#;
      --  unspecified
      Reserved_12_31                : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVICE_EN_Register use record
      LP_I2C_ANA_MAST_I2C_DEVICE_EN at 0 range 0 .. 11;
      Reserved_12_31                at 0 range 12 .. 31;
   end record;

   subtype DATE_LP_I2C_ANA_MAST_I2C_MAT_DATE_Field is HAL.UInt28;

   --  need_des
   type DATE_Register is record
      --  need_des
      LP_I2C_ANA_MAST_I2C_MAT_DATE   : DATE_LP_I2C_ANA_MAST_I2C_MAT_DATE_Field :=
                                        16#2007301#;
      --  need_des
      LP_I2C_ANA_MAST_I2C_MAT_CLK_EN : Boolean := False;
      --  unspecified
      Reserved_29_31                 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LP_I2C_ANA_MAST_I2C_MAT_DATE   at 0 range 0 .. 27;
      LP_I2C_ANA_MAST_I2C_MAT_CLK_EN at 0 range 28 .. 28;
      Reserved_29_31                 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LP_I2C_ANA_MST Peripheral
   type LP_I2C_ANA_MST_Peripheral is record
      --  need_des
      I2C0_CTRL : aliased I2C0_CTRL_Register;
      --  need_des
      I2C0_CONF : aliased I2C0_CONF_Register;
      --  need_des
      I2C0_DATA : aliased I2C0_DATA_Register;
      --  need_des
      ANA_CONF1 : aliased ANA_CONF1_Register;
      --  need_des
      NOUSE     : aliased HAL.UInt32;
      --  need_des
      DEVICE_EN : aliased DEVICE_EN_Register;
      --  need_des
      DATE      : aliased DATE_Register;
   end record
     with Volatile;

   for LP_I2C_ANA_MST_Peripheral use record
      I2C0_CTRL at 16#0# range 0 .. 31;
      I2C0_CONF at 16#4# range 0 .. 31;
      I2C0_DATA at 16#8# range 0 .. 31;
      ANA_CONF1 at 16#C# range 0 .. 31;
      NOUSE     at 16#10# range 0 .. 31;
      DEVICE_EN at 16#14# range 0 .. 31;
      DATE      at 16#3FC# range 0 .. 31;
   end record;

   --  LP_I2C_ANA_MST Peripheral
   LP_I2C_ANA_MST_Periph : aliased LP_I2C_ANA_MST_Peripheral
     with Import, Address => LP_I2C_ANA_MST_Base;

end ESP32_C6_SVD.LP_I2C_ANA_MST;
