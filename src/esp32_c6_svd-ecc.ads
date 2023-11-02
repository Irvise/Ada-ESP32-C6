pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.ECC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ECC interrupt raw register, valid in level.
   type MULT_INT_RAW_Register is record
      --  Read-only. The raw interrupt status bit for the ecc_calc_done_int
      --  interrupt
      CALC_DONE_INT_RAW : Boolean;
      --  unspecified
      Reserved_1_31     : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_INT_RAW_Register use record
      CALC_DONE_INT_RAW at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  ECC interrupt status register.
   type MULT_INT_ST_Register is record
      --  Read-only. The masked interrupt status bit for the ecc_calc_done_int
      --  interrupt
      CALC_DONE_INT_ST : Boolean;
      --  unspecified
      Reserved_1_31    : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_INT_ST_Register use record
      CALC_DONE_INT_ST at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  ECC interrupt enable register.
   type MULT_INT_ENA_Register is record
      --  The interrupt enable bit for the ecc_calc_done_int interrupt
      CALC_DONE_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_1_31     : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_INT_ENA_Register use record
      CALC_DONE_INT_ENA at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  ECC interrupt clear register.
   type MULT_INT_CLR_Register is record
      --  Write-only. Set this bit to clear the ecc_calc_done_int interrupt
      CALC_DONE_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_1_31     : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_INT_CLR_Register use record
      CALC_DONE_INT_CLR at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype MULT_CONF_WORK_MODE_Field is HAL.UInt3;

   --  ECC configure register
   type MULT_CONF_Register is record
      --  Write 1 to start caculation of ECC Accelerator. This bit will be
      --  self-cleared after the caculatrion is done.
      START                   : Boolean := False;
      --  Write-only. Write 1 to reset ECC Accelerator.
      RESET                   : Boolean := False;
      --  The key length mode bit of ECC Accelerator. 0: P-192. 1: P-256.
      KEY_LENGTH              : Boolean := False;
      --  Reserved
      SECURITY_MODE           : Boolean := False;
      --  Write 1 to force on register clock gate.
      CLK_EN                  : Boolean := False;
      --  The work mode bits of ECC Accelerator. 0: Point Mult Mode. 1:
      --  Division mode. 2: Point verification mode. 3: Point Verif+mult mode.
      --  4: Jacobian Point Mult Mode. 5: Reserved. 6: Jacobian Point
      --  Verification Mode. 7: Point Verif + Jacobian Mult Mode.
      WORK_MODE               : MULT_CONF_WORK_MODE_Field := 16#0#;
      --  Read-only. The verification result bit of ECC Accelerator, only valid
      --  when calculation is done.
      VERIFICATION_RESULT     : Boolean := False;
      --  unspecified
      Reserved_9_30           : HAL.UInt22 := 16#0#;
      --  ECC memory clock gate force on register
      MEM_CLOCK_GATE_FORCE_ON : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_CONF_Register use record
      START                   at 0 range 0 .. 0;
      RESET                   at 0 range 1 .. 1;
      KEY_LENGTH              at 0 range 2 .. 2;
      SECURITY_MODE           at 0 range 3 .. 3;
      CLK_EN                  at 0 range 4 .. 4;
      WORK_MODE               at 0 range 5 .. 7;
      VERIFICATION_RESULT     at 0 range 8 .. 8;
      Reserved_9_30           at 0 range 9 .. 30;
      MEM_CLOCK_GATE_FORCE_ON at 0 range 31 .. 31;
   end record;

   subtype MULT_DATE_DATE_Field is HAL.UInt28;

   --  Version control register
   type MULT_DATE_Register is record
      --  ECC mult version control register
      DATE           : MULT_DATE_DATE_Field := 16#2201240#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MULT_DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  The memory that stores k.

   --  The memory that stores k.
   type K_MEM_Registers is array (0 .. 31) of HAL.UInt8;

   --  The memory that stores Px.

   --  The memory that stores Px.
   type PX_MEM_Registers is array (0 .. 31) of HAL.UInt8;

   --  The memory that stores Py.

   --  The memory that stores Py.
   type PY_MEM_Registers is array (0 .. 31) of HAL.UInt8;

   -----------------
   -- Peripherals --
   -----------------

   --  ECC (ECC Hardware Accelerator)
   type ECC_Peripheral is record
      --  ECC interrupt raw register, valid in level.
      MULT_INT_RAW : aliased MULT_INT_RAW_Register;
      --  ECC interrupt status register.
      MULT_INT_ST  : aliased MULT_INT_ST_Register;
      --  ECC interrupt enable register.
      MULT_INT_ENA : aliased MULT_INT_ENA_Register;
      --  ECC interrupt clear register.
      MULT_INT_CLR : aliased MULT_INT_CLR_Register;
      --  ECC configure register
      MULT_CONF    : aliased MULT_CONF_Register;
      --  Version control register
      MULT_DATE    : aliased MULT_DATE_Register;
      --  The memory that stores k.
      K_MEM        : aliased K_MEM_Registers;
      --  The memory that stores Px.
      PX_MEM       : aliased PX_MEM_Registers;
      --  The memory that stores Py.
      PY_MEM       : aliased PY_MEM_Registers;
   end record
     with Volatile;

   for ECC_Peripheral use record
      MULT_INT_RAW at 16#C# range 0 .. 31;
      MULT_INT_ST  at 16#10# range 0 .. 31;
      MULT_INT_ENA at 16#14# range 0 .. 31;
      MULT_INT_CLR at 16#18# range 0 .. 31;
      MULT_CONF    at 16#1C# range 0 .. 31;
      MULT_DATE    at 16#FC# range 0 .. 31;
      K_MEM        at 16#100# range 0 .. 255;
      PX_MEM       at 16#120# range 0 .. 255;
      PY_MEM       at 16#140# range 0 .. 255;
   end record;

   --  ECC (ECC Hardware Accelerator)
   ECC_Periph : aliased ECC_Peripheral
     with Import, Address => ECC_Base;

end ESP32_C6_SVD.ECC;
