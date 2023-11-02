pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LPPERI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  need_des
   type CLK_EN_Register is record
      --  unspecified
      Reserved_0_22    : HAL.UInt23 := 16#0#;
      --  need_des
      LP_TOUCH_CK_EN   : Boolean := True;
      --  need_des
      RNG_CK_EN        : Boolean := True;
      --  need_des
      OTP_DBG_CK_EN    : Boolean := True;
      --  need_des
      LP_UART_CK_EN    : Boolean := True;
      --  need_des
      LP_IO_CK_EN      : Boolean := True;
      --  need_des
      LP_EXT_I2C_CK_EN : Boolean := True;
      --  need_des
      LP_ANA_I2C_CK_EN : Boolean := True;
      --  need_des
      EFUSE_CK_EN      : Boolean := True;
      --  need_des
      LP_CPU_CK_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_EN_Register use record
      Reserved_0_22    at 0 range 0 .. 22;
      LP_TOUCH_CK_EN   at 0 range 23 .. 23;
      RNG_CK_EN        at 0 range 24 .. 24;
      OTP_DBG_CK_EN    at 0 range 25 .. 25;
      LP_UART_CK_EN    at 0 range 26 .. 26;
      LP_IO_CK_EN      at 0 range 27 .. 27;
      LP_EXT_I2C_CK_EN at 0 range 28 .. 28;
      LP_ANA_I2C_CK_EN at 0 range 29 .. 29;
      EFUSE_CK_EN      at 0 range 30 .. 30;
      LP_CPU_CK_EN     at 0 range 31 .. 31;
   end record;

   --  need_des
   type RESET_EN_Register is record
      --  unspecified
      Reserved_0_22       : HAL.UInt23 := 16#0#;
      --  Write-only. need_des
      BUS_RESET_EN        : Boolean := False;
      --  need_des
      LP_TOUCH_RESET_EN   : Boolean := False;
      --  need_des
      OTP_DBG_RESET_EN    : Boolean := False;
      --  need_des
      LP_UART_RESET_EN    : Boolean := False;
      --  need_des
      LP_IO_RESET_EN      : Boolean := False;
      --  need_des
      LP_EXT_I2C_RESET_EN : Boolean := False;
      --  need_des
      LP_ANA_I2C_RESET_EN : Boolean := False;
      --  need_des
      EFUSE_RESET_EN      : Boolean := False;
      --  Write-only. need_des
      LP_CPU_RESET_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_EN_Register use record
      Reserved_0_22       at 0 range 0 .. 22;
      BUS_RESET_EN        at 0 range 23 .. 23;
      LP_TOUCH_RESET_EN   at 0 range 24 .. 24;
      OTP_DBG_RESET_EN    at 0 range 25 .. 25;
      LP_UART_RESET_EN    at 0 range 26 .. 26;
      LP_IO_RESET_EN      at 0 range 27 .. 27;
      LP_EXT_I2C_RESET_EN at 0 range 28 .. 28;
      LP_ANA_I2C_RESET_EN at 0 range 29 .. 29;
      EFUSE_RESET_EN      at 0 range 30 .. 30;
      LP_CPU_RESET_EN     at 0 range 31 .. 31;
   end record;

   --  need_des
   type CPU_Register is record
      --  unspecified
      Reserved_0_30           : HAL.UInt31 := 16#0#;
      --  need_des
      LPCORE_DBGM_UNAVALIABLE : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_Register use record
      Reserved_0_30           at 0 range 0 .. 30;
      LPCORE_DBGM_UNAVALIABLE at 0 range 31 .. 31;
   end record;

   subtype BUS_TIMEOUT_LP_PERI_TIMEOUT_THRES_Field is HAL.UInt16;

   --  need_des
   type BUS_TIMEOUT_Register is record
      --  unspecified
      Reserved_0_13              : HAL.UInt14 := 16#0#;
      --  need_des
      LP_PERI_TIMEOUT_THRES      : BUS_TIMEOUT_LP_PERI_TIMEOUT_THRES_Field :=
                                    16#FFFF#;
      --  Write-only. need_des
      LP_PERI_TIMEOUT_INT_CLEAR  : Boolean := False;
      --  need_des
      LP_PERI_TIMEOUT_PROTECT_EN : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMEOUT_Register use record
      Reserved_0_13              at 0 range 0 .. 13;
      LP_PERI_TIMEOUT_THRES      at 0 range 14 .. 29;
      LP_PERI_TIMEOUT_INT_CLEAR  at 0 range 30 .. 30;
      LP_PERI_TIMEOUT_PROTECT_EN at 0 range 31 .. 31;
   end record;

   subtype BUS_TIMEOUT_UID_LP_PERI_TIMEOUT_UID_Field is HAL.UInt7;

   --  need_des
   type BUS_TIMEOUT_UID_Register is record
      --  Read-only. need_des
      LP_PERI_TIMEOUT_UID : BUS_TIMEOUT_UID_LP_PERI_TIMEOUT_UID_Field;
      --  unspecified
      Reserved_7_31       : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMEOUT_UID_Register use record
      LP_PERI_TIMEOUT_UID at 0 range 0 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   --  need_des
   type MEM_CTRL_Register is record
      --  Write-only. need_des
      UART_WAKEUP_FLAG_CLR : Boolean := False;
      --  need_des
      UART_WAKEUP_FLAG     : Boolean := False;
      --  unspecified
      Reserved_2_28        : HAL.UInt27 := 16#0#;
      --  need_des
      UART_WAKEUP_EN       : Boolean := False;
      --  need_des
      UART_MEM_FORCE_PD    : Boolean := False;
      --  need_des
      UART_MEM_FORCE_PU    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CTRL_Register use record
      UART_WAKEUP_FLAG_CLR at 0 range 0 .. 0;
      UART_WAKEUP_FLAG     at 0 range 1 .. 1;
      Reserved_2_28        at 0 range 2 .. 28;
      UART_WAKEUP_EN       at 0 range 29 .. 29;
      UART_MEM_FORCE_PD    at 0 range 30 .. 30;
      UART_MEM_FORCE_PU    at 0 range 31 .. 31;
   end record;

   subtype INTERRUPT_SOURCE_LP_INTERRUPT_SOURCE_Field is HAL.UInt6;

   --  need_des
   type INTERRUPT_SOURCE_Register is record
      --  Read-only. BIT5~BIT0: pmu_lp_int, modem_lp_int, lp_timer_lp_int,
      --  lp_uart_int, lp_i2c_int, lp_io_int
      LP_INTERRUPT_SOURCE : INTERRUPT_SOURCE_LP_INTERRUPT_SOURCE_Field;
      --  unspecified
      Reserved_6_31       : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTERRUPT_SOURCE_Register use record
      LP_INTERRUPT_SOURCE at 0 range 0 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   subtype DATE_LPPERI_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      LPPERI_DATE : DATE_LPPERI_DATE_Field := 16#2206130#;
      --  need_des
      CLK_EN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LPPERI_DATE at 0 range 0 .. 30;
      CLK_EN      at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LP_PERI Peripheral
   type LP_PERI_Peripheral is record
      --  need_des
      CLK_EN           : aliased CLK_EN_Register;
      --  need_des
      RESET_EN         : aliased RESET_EN_Register;
      --  need_des
      RNG_DATA         : aliased HAL.UInt32;
      --  need_des
      CPU              : aliased CPU_Register;
      --  need_des
      BUS_TIMEOUT      : aliased BUS_TIMEOUT_Register;
      --  need_des
      BUS_TIMEOUT_ADDR : aliased HAL.UInt32;
      --  need_des
      BUS_TIMEOUT_UID  : aliased BUS_TIMEOUT_UID_Register;
      --  need_des
      MEM_CTRL         : aliased MEM_CTRL_Register;
      --  need_des
      INTERRUPT_SOURCE : aliased INTERRUPT_SOURCE_Register;
      --  need_des
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for LP_PERI_Peripheral use record
      CLK_EN           at 16#0# range 0 .. 31;
      RESET_EN         at 16#4# range 0 .. 31;
      RNG_DATA         at 16#8# range 0 .. 31;
      CPU              at 16#C# range 0 .. 31;
      BUS_TIMEOUT      at 16#10# range 0 .. 31;
      BUS_TIMEOUT_ADDR at 16#14# range 0 .. 31;
      BUS_TIMEOUT_UID  at 16#18# range 0 .. 31;
      MEM_CTRL         at 16#1C# range 0 .. 31;
      INTERRUPT_SOURCE at 16#20# range 0 .. 31;
      DATE             at 16#3FC# range 0 .. 31;
   end record;

   --  LP_PERI Peripheral
   LP_PERI_Periph : aliased LP_PERI_Peripheral
     with Import, Address => LP_PERI_Base;

end ESP32_C6_SVD.LPPERI;
