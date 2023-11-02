pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.ATOMIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ADDR_LOCK_LOCK_Field is HAL.UInt2;

   --  hardware lock regsiter
   type ADDR_LOCK_Register is record
      --  read to acquire hardware lock, write to release hardware lock
      LOCK          : ADDR_LOCK_LOCK_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDR_LOCK_Register use record
      LOCK          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LOCK_STATUS_LOCK_STATUS_Field is HAL.UInt2;

   --  lock status regsiter
   type LOCK_STATUS_Register is record
      --  Read-only. read hareware lock status for debug
      LOCK_STATUS   : LOCK_STATUS_LOCK_STATUS_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_STATUS_Register use record
      LOCK_STATUS   at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype COUNTER_WAIT_COUNTER_Field is HAL.UInt16;

   --  wait counter register
   type COUNTER_Register is record
      --  delay counter
      WAIT_COUNTER   : COUNTER_WAIT_COUNTER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNTER_Register use record
      WAIT_COUNTER   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Atomic Locker
   type ATOMIC_Peripheral is record
      --  hardware lock regsiter
      ADDR_LOCK   : aliased ADDR_LOCK_Register;
      --  gloable lr address regsiter
      LR_ADDR     : aliased HAL.UInt32;
      --  gloable lr value regsiter
      LR_VALUE    : aliased HAL.UInt32;
      --  lock status regsiter
      LOCK_STATUS : aliased LOCK_STATUS_Register;
      --  wait counter register
      COUNTER     : aliased COUNTER_Register;
   end record
     with Volatile;

   for ATOMIC_Peripheral use record
      ADDR_LOCK   at 16#0# range 0 .. 31;
      LR_ADDR     at 16#4# range 0 .. 31;
      LR_VALUE    at 16#8# range 0 .. 31;
      LOCK_STATUS at 16#C# range 0 .. 31;
      COUNTER     at 16#10# range 0 .. 31;
   end record;

   --  Atomic Locker
   ATOMIC_Periph : aliased ATOMIC_Peripheral
     with Import, Address => ATOMIC_Base;

end ESP32_C6_SVD.ATOMIC;
