pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_TEE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype M0_MODE_CTRL_M0_MODE_Field is HAL.UInt2;

   --  Tee mode control register
   type M0_MODE_CTRL_Register is record
      --  M0 security level mode: 2'd3: ree_mode2. 2'd2: ree_mode1. 2'd1:
      --  ree_mode0. 2'd0: tee_mode
      M0_MODE       : M0_MODE_CTRL_M0_MODE_Field := 16#3#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for M0_MODE_CTRL_Register use record
      M0_MODE       at 0 range 0 .. 1;
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

   --  need_des
   type FORCE_ACC_HP_Register is record
      --  need_des
      LP_AON_FORCE_ACC_HPMEM_EN : Boolean := False;
      --  unspecified
      Reserved_1_31             : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FORCE_ACC_HP_Register use record
      LP_AON_FORCE_ACC_HPMEM_EN at 0 range 0 .. 0;
      Reserved_1_31             at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Version register
   type DATE_Register is record
      --  reg_tee_date
      DATE           : DATE_DATE_Field := 16#2205270#;
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

   --  Low-power Trusted Execution Environment
   type LP_TEE_Peripheral is record
      --  Tee mode control register
      M0_MODE_CTRL : aliased M0_MODE_CTRL_Register;
      --  Clock gating register
      CLOCK_GATE   : aliased CLOCK_GATE_Register;
      --  need_des
      FORCE_ACC_HP : aliased FORCE_ACC_HP_Register;
      --  Version register
      DATE         : aliased DATE_Register;
   end record
     with Volatile;

   for LP_TEE_Peripheral use record
      M0_MODE_CTRL at 16#0# range 0 .. 31;
      CLOCK_GATE   at 16#4# range 0 .. 31;
      FORCE_ACC_HP at 16#90# range 0 .. 31;
      DATE         at 16#FC# range 0 .. 31;
   end record;

   --  Low-power Trusted Execution Environment
   LP_TEE_Periph : aliased LP_TEE_Peripheral
     with Import, Address => LP_TEE_Base;

end ESP32_C6_SVD.LP_TEE;
