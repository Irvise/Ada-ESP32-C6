pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LP_CLKRST is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LP_CLK_CONF_SLOW_CLK_SEL_Field is HAL.UInt2;
   subtype LP_CLK_CONF_LP_PERI_DIV_NUM_Field is HAL.UInt8;

   --  need_des
   type LP_CLK_CONF_Register is record
      --  need_des
      SLOW_CLK_SEL    : LP_CLK_CONF_SLOW_CLK_SEL_Field := 16#0#;
      --  need_des
      FAST_CLK_SEL    : Boolean := True;
      --  need_des
      LP_PERI_DIV_NUM : LP_CLK_CONF_LP_PERI_DIV_NUM_Field := 16#0#;
      --  unspecified
      Reserved_11_31  : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_CLK_CONF_Register use record
      SLOW_CLK_SEL    at 0 range 0 .. 1;
      FAST_CLK_SEL    at 0 range 2 .. 2;
      LP_PERI_DIV_NUM at 0 range 3 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   --  need_des
   type LP_CLK_PO_EN_Register is record
      --  need_des
      AON_SLOW_OEN   : Boolean := True;
      --  need_des
      AON_FAST_OEN   : Boolean := True;
      --  need_des
      SOSC_OEN       : Boolean := True;
      --  need_des
      FOSC_OEN       : Boolean := True;
      --  need_des
      OSC32K_OEN     : Boolean := True;
      --  need_des
      XTAL32K_OEN    : Boolean := True;
      --  need_des
      CORE_EFUSE_OEN : Boolean := True;
      --  need_des
      SLOW_OEN       : Boolean := True;
      --  need_des
      FAST_OEN       : Boolean := True;
      --  need_des
      RNG_OEN        : Boolean := True;
      --  need_des
      LPBUS_OEN      : Boolean := True;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_CLK_PO_EN_Register use record
      AON_SLOW_OEN   at 0 range 0 .. 0;
      AON_FAST_OEN   at 0 range 1 .. 1;
      SOSC_OEN       at 0 range 2 .. 2;
      FOSC_OEN       at 0 range 3 .. 3;
      OSC32K_OEN     at 0 range 4 .. 4;
      XTAL32K_OEN    at 0 range 5 .. 5;
      CORE_EFUSE_OEN at 0 range 6 .. 6;
      SLOW_OEN       at 0 range 7 .. 7;
      FAST_OEN       at 0 range 8 .. 8;
      RNG_OEN        at 0 range 9 .. 9;
      LPBUS_OEN      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  need_des
   type LP_CLK_EN_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  need_des
      FAST_ORI_GATE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_CLK_EN_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      FAST_ORI_GATE at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_RST_EN_Register is record
      --  unspecified
      Reserved_0_27           : HAL.UInt28 := 16#0#;
      --  need_des
      AON_EFUSE_CORE_RESET_EN : Boolean := False;
      --  need_des
      LP_TIMER_RESET_EN       : Boolean := False;
      --  need_des
      WDT_RESET_EN            : Boolean := False;
      --  need_des
      ANA_PERI_RESET_EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_RST_EN_Register use record
      Reserved_0_27           at 0 range 0 .. 27;
      AON_EFUSE_CORE_RESET_EN at 0 range 28 .. 28;
      LP_TIMER_RESET_EN       at 0 range 29 .. 29;
      WDT_RESET_EN            at 0 range 30 .. 30;
      ANA_PERI_RESET_EN       at 0 range 31 .. 31;
   end record;

   subtype RESET_CAUSE_RESET_CAUSE_Field is HAL.UInt5;

   --  need_des
   type RESET_CAUSE_Register is record
      --  Read-only. need_des
      RESET_CAUSE           : RESET_CAUSE_RESET_CAUSE_Field := 16#0#;
      --  Read-only. need_des
      CORE0_RESET_FLAG      : Boolean := True;
      --  unspecified
      Reserved_6_28         : HAL.UInt23 := 16#0#;
      --  Write-only. need_des
      CORE0_RESET_CAUSE_CLR : Boolean := False;
      --  Write-only. need_des
      CORE0_RESET_FLAG_SET  : Boolean := False;
      --  Write-only. need_des
      CORE0_RESET_FLAG_CLR  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_CAUSE_Register use record
      RESET_CAUSE           at 0 range 0 .. 4;
      CORE0_RESET_FLAG      at 0 range 5 .. 5;
      Reserved_6_28         at 0 range 6 .. 28;
      CORE0_RESET_CAUSE_CLR at 0 range 29 .. 29;
      CORE0_RESET_FLAG_SET  at 0 range 30 .. 30;
      CORE0_RESET_FLAG_CLR  at 0 range 31 .. 31;
   end record;

   subtype CPU_RESET_RTC_WDT_CPU_RESET_LENGTH_Field is HAL.UInt3;
   subtype CPU_RESET_CPU_STALL_WAIT_Field is HAL.UInt5;

   --  need_des
   type CPU_RESET_Register is record
      --  unspecified
      Reserved_0_21            : HAL.UInt22 := 16#0#;
      --  need_des
      RTC_WDT_CPU_RESET_LENGTH : CPU_RESET_RTC_WDT_CPU_RESET_LENGTH_Field :=
                                  16#1#;
      --  need_des
      RTC_WDT_CPU_RESET_EN     : Boolean := False;
      --  need_des
      CPU_STALL_WAIT           : CPU_RESET_CPU_STALL_WAIT_Field := 16#1#;
      --  need_des
      CPU_STALL_EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_RESET_Register use record
      Reserved_0_21            at 0 range 0 .. 21;
      RTC_WDT_CPU_RESET_LENGTH at 0 range 22 .. 24;
      RTC_WDT_CPU_RESET_EN     at 0 range 25 .. 25;
      CPU_STALL_WAIT           at 0 range 26 .. 30;
      CPU_STALL_EN             at 0 range 31 .. 31;
   end record;

   subtype FOSC_CNTL_FOSC_DFREQ_Field is HAL.UInt10;

   --  need_des
   type FOSC_CNTL_Register is record
      --  unspecified
      Reserved_0_21 : HAL.UInt22 := 16#0#;
      --  need_des
      FOSC_DFREQ    : FOSC_CNTL_FOSC_DFREQ_Field := 16#AC#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FOSC_CNTL_Register use record
      Reserved_0_21 at 0 range 0 .. 21;
      FOSC_DFREQ    at 0 range 22 .. 31;
   end record;

   subtype RC32K_CNTL_RC32K_DFREQ_Field is HAL.UInt10;

   --  need_des
   type RC32K_CNTL_Register is record
      --  unspecified
      Reserved_0_21 : HAL.UInt22 := 16#0#;
      --  need_des
      RC32K_DFREQ   : RC32K_CNTL_RC32K_DFREQ_Field := 16#AC#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RC32K_CNTL_Register use record
      Reserved_0_21 at 0 range 0 .. 21;
      RC32K_DFREQ   at 0 range 22 .. 31;
   end record;

   --  need_des
   type CLK_TO_HP_Register is record
      --  unspecified
      Reserved_0_27  : HAL.UInt28 := 16#0#;
      --  need_des
      ICG_HP_XTAL32K : Boolean := True;
      --  need_des
      ICG_HP_SOSC    : Boolean := True;
      --  need_des
      ICG_HP_OSC32K  : Boolean := True;
      --  need_des
      ICG_HP_FOSC    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_TO_HP_Register use record
      Reserved_0_27  at 0 range 0 .. 27;
      ICG_HP_XTAL32K at 0 range 28 .. 28;
      ICG_HP_SOSC    at 0 range 29 .. 29;
      ICG_HP_OSC32K  at 0 range 30 .. 30;
      ICG_HP_FOSC    at 0 range 31 .. 31;
   end record;

   --  need_des
   type LPMEM_FORCE_Register is record
      --  unspecified
      Reserved_0_30      : HAL.UInt31 := 16#0#;
      --  need_des
      LPMEM_CLK_FORCE_ON : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPMEM_FORCE_Register use record
      Reserved_0_30      at 0 range 0 .. 30;
      LPMEM_CLK_FORCE_ON at 0 range 31 .. 31;
   end record;

   --  need_des
   type LPPERI_Register is record
      --  unspecified
      Reserved_0_29   : HAL.UInt30 := 16#0#;
      --  need_des
      LP_I2C_CLK_SEL  : Boolean := False;
      --  need_des
      LP_UART_CLK_SEL : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPPERI_Register use record
      Reserved_0_29   at 0 range 0 .. 29;
      LP_I2C_CLK_SEL  at 0 range 30 .. 30;
      LP_UART_CLK_SEL at 0 range 31 .. 31;
   end record;

   subtype XTAL32K_DRES_XTAL32K_Field is HAL.UInt3;
   subtype XTAL32K_DGM_XTAL32K_Field is HAL.UInt3;
   subtype XTAL32K_DAC_XTAL32K_Field is HAL.UInt3;

   --  need_des
   type XTAL32K_Register is record
      --  unspecified
      Reserved_0_21 : HAL.UInt22 := 16#0#;
      --  need_des
      DRES_XTAL32K  : XTAL32K_DRES_XTAL32K_Field := 16#3#;
      --  need_des
      DGM_XTAL32K   : XTAL32K_DGM_XTAL32K_Field := 16#3#;
      --  need_des
      DBUF_XTAL32K  : Boolean := False;
      --  need_des
      DAC_XTAL32K   : XTAL32K_DAC_XTAL32K_Field := 16#3#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTAL32K_Register use record
      Reserved_0_21 at 0 range 0 .. 21;
      DRES_XTAL32K  at 0 range 22 .. 24;
      DGM_XTAL32K   at 0 range 25 .. 27;
      DBUF_XTAL32K  at 0 range 28 .. 28;
      DAC_XTAL32K   at 0 range 29 .. 31;
   end record;

   subtype DATE_CLKRST_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      CLKRST_DATE : DATE_CLKRST_DATE_Field := 16#2206090#;
      --  need_des
      CLK_EN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      CLKRST_DATE at 0 range 0 .. 30;
      CLK_EN      at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LP_CLKRST Peripheral
   type LP_CLKRST_Peripheral is record
      --  need_des
      LP_CLK_CONF  : aliased LP_CLK_CONF_Register;
      --  need_des
      LP_CLK_PO_EN : aliased LP_CLK_PO_EN_Register;
      --  need_des
      LP_CLK_EN    : aliased LP_CLK_EN_Register;
      --  need_des
      LP_RST_EN    : aliased LP_RST_EN_Register;
      --  need_des
      RESET_CAUSE  : aliased RESET_CAUSE_Register;
      --  need_des
      CPU_RESET    : aliased CPU_RESET_Register;
      --  need_des
      FOSC_CNTL    : aliased FOSC_CNTL_Register;
      --  need_des
      RC32K_CNTL   : aliased RC32K_CNTL_Register;
      --  need_des
      CLK_TO_HP    : aliased CLK_TO_HP_Register;
      --  need_des
      LPMEM_FORCE  : aliased LPMEM_FORCE_Register;
      --  need_des
      LPPERI       : aliased LPPERI_Register;
      --  need_des
      XTAL32K      : aliased XTAL32K_Register;
      --  need_des
      DATE         : aliased DATE_Register;
   end record
     with Volatile;

   for LP_CLKRST_Peripheral use record
      LP_CLK_CONF  at 16#0# range 0 .. 31;
      LP_CLK_PO_EN at 16#4# range 0 .. 31;
      LP_CLK_EN    at 16#8# range 0 .. 31;
      LP_RST_EN    at 16#C# range 0 .. 31;
      RESET_CAUSE  at 16#10# range 0 .. 31;
      CPU_RESET    at 16#14# range 0 .. 31;
      FOSC_CNTL    at 16#18# range 0 .. 31;
      RC32K_CNTL   at 16#1C# range 0 .. 31;
      CLK_TO_HP    at 16#20# range 0 .. 31;
      LPMEM_FORCE  at 16#24# range 0 .. 31;
      LPPERI       at 16#28# range 0 .. 31;
      XTAL32K      at 16#2C# range 0 .. 31;
      DATE         at 16#3FC# range 0 .. 31;
   end record;

   --  LP_CLKRST Peripheral
   LP_CLKRST_Periph : aliased LP_CLKRST_Peripheral
     with Import, Address => LP_CLKRST_Base;

end ESP32_C6_SVD.LP_CLKRST;
