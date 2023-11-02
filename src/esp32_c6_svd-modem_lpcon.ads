pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.MODEM_LPCON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   type TEST_CONF_Register is record
      CLK_EN        : Boolean := False;
      CLK_DEBUG_ENA : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_CONF_Register use record
      CLK_EN        at 0 range 0 .. 0;
      CLK_DEBUG_ENA at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LP_TIMER_CONF_CLK_LP_TIMER_DIV_NUM_Field is HAL.UInt12;

   type LP_TIMER_CONF_Register is record
      CLK_LP_TIMER_SEL_OSC_SLOW : Boolean := False;
      CLK_LP_TIMER_SEL_OSC_FAST : Boolean := False;
      CLK_LP_TIMER_SEL_XTAL     : Boolean := False;
      CLK_LP_TIMER_SEL_XTAL32K  : Boolean := False;
      CLK_LP_TIMER_DIV_NUM      : LP_TIMER_CONF_CLK_LP_TIMER_DIV_NUM_Field :=
                                   16#0#;
      --  unspecified
      Reserved_16_31            : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_TIMER_CONF_Register use record
      CLK_LP_TIMER_SEL_OSC_SLOW at 0 range 0 .. 0;
      CLK_LP_TIMER_SEL_OSC_FAST at 0 range 1 .. 1;
      CLK_LP_TIMER_SEL_XTAL     at 0 range 2 .. 2;
      CLK_LP_TIMER_SEL_XTAL32K  at 0 range 3 .. 3;
      CLK_LP_TIMER_DIV_NUM      at 0 range 4 .. 15;
      Reserved_16_31            at 0 range 16 .. 31;
   end record;

   subtype COEX_LP_CLK_CONF_CLK_COEX_LP_DIV_NUM_Field is HAL.UInt12;

   type COEX_LP_CLK_CONF_Register is record
      CLK_COEX_LP_SEL_OSC_SLOW : Boolean := False;
      CLK_COEX_LP_SEL_OSC_FAST : Boolean := False;
      CLK_COEX_LP_SEL_XTAL     : Boolean := False;
      CLK_COEX_LP_SEL_XTAL32K  : Boolean := False;
      CLK_COEX_LP_DIV_NUM      : COEX_LP_CLK_CONF_CLK_COEX_LP_DIV_NUM_Field :=
                                  16#0#;
      --  unspecified
      Reserved_16_31           : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COEX_LP_CLK_CONF_Register use record
      CLK_COEX_LP_SEL_OSC_SLOW at 0 range 0 .. 0;
      CLK_COEX_LP_SEL_OSC_FAST at 0 range 1 .. 1;
      CLK_COEX_LP_SEL_XTAL     at 0 range 2 .. 2;
      CLK_COEX_LP_SEL_XTAL32K  at 0 range 3 .. 3;
      CLK_COEX_LP_DIV_NUM      at 0 range 4 .. 15;
      Reserved_16_31           at 0 range 16 .. 31;
   end record;

   subtype WIFI_LP_CLK_CONF_CLK_WIFIPWR_LP_DIV_NUM_Field is HAL.UInt12;

   type WIFI_LP_CLK_CONF_Register is record
      CLK_WIFIPWR_LP_SEL_OSC_SLOW : Boolean := False;
      CLK_WIFIPWR_LP_SEL_OSC_FAST : Boolean := False;
      CLK_WIFIPWR_LP_SEL_XTAL     : Boolean := False;
      CLK_WIFIPWR_LP_SEL_XTAL32K  : Boolean := False;
      CLK_WIFIPWR_LP_DIV_NUM      : WIFI_LP_CLK_CONF_CLK_WIFIPWR_LP_DIV_NUM_Field :=
                                     16#0#;
      --  unspecified
      Reserved_16_31              : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIFI_LP_CLK_CONF_Register use record
      CLK_WIFIPWR_LP_SEL_OSC_SLOW at 0 range 0 .. 0;
      CLK_WIFIPWR_LP_SEL_OSC_FAST at 0 range 1 .. 1;
      CLK_WIFIPWR_LP_SEL_XTAL     at 0 range 2 .. 2;
      CLK_WIFIPWR_LP_SEL_XTAL32K  at 0 range 3 .. 3;
      CLK_WIFIPWR_LP_DIV_NUM      at 0 range 4 .. 15;
      Reserved_16_31              at 0 range 16 .. 31;
   end record;

   type I2C_MST_CLK_CONF_Register is record
      CLK_I2C_MST_SEL_160M : Boolean := False;
      --  unspecified
      Reserved_1_31        : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_MST_CLK_CONF_Register use record
      CLK_I2C_MST_SEL_160M at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   subtype MODEM_32K_CLK_CONF_CLK_MODEM_32K_SEL_Field is HAL.UInt2;

   type MODEM_32K_CLK_CONF_Register is record
      CLK_MODEM_32K_SEL : MODEM_32K_CLK_CONF_CLK_MODEM_32K_SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_31     : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_32K_CLK_CONF_Register use record
      CLK_MODEM_32K_SEL at 0 range 0 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   type CLK_CONF_Register is record
      CLK_WIFIPWR_EN  : Boolean := False;
      CLK_COEX_EN     : Boolean := False;
      CLK_I2C_MST_EN  : Boolean := False;
      CLK_LP_TIMER_EN : Boolean := False;
      --  unspecified
      Reserved_4_31   : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      CLK_WIFIPWR_EN  at 0 range 0 .. 0;
      CLK_COEX_EN     at 0 range 1 .. 1;
      CLK_I2C_MST_EN  at 0 range 2 .. 2;
      CLK_LP_TIMER_EN at 0 range 3 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   type CLK_CONF_FORCE_ON_Register is record
      CLK_WIFIPWR_FO       : Boolean := False;
      CLK_COEX_FO          : Boolean := False;
      CLK_I2C_MST_FO       : Boolean := False;
      CLK_LP_TIMER_FO      : Boolean := False;
      CLK_BCMEM_FO         : Boolean := False;
      CLK_I2C_MST_MEM_FO   : Boolean := False;
      CLK_CHAN_FREQ_MEM_FO : Boolean := False;
      CLK_PBUS_MEM_FO      : Boolean := False;
      CLK_AGC_MEM_FO       : Boolean := False;
      CLK_DC_MEM_FO        : Boolean := False;
      --  unspecified
      Reserved_10_31       : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_FORCE_ON_Register use record
      CLK_WIFIPWR_FO       at 0 range 0 .. 0;
      CLK_COEX_FO          at 0 range 1 .. 1;
      CLK_I2C_MST_FO       at 0 range 2 .. 2;
      CLK_LP_TIMER_FO      at 0 range 3 .. 3;
      CLK_BCMEM_FO         at 0 range 4 .. 4;
      CLK_I2C_MST_MEM_FO   at 0 range 5 .. 5;
      CLK_CHAN_FREQ_MEM_FO at 0 range 6 .. 6;
      CLK_PBUS_MEM_FO      at 0 range 7 .. 7;
      CLK_AGC_MEM_FO       at 0 range 8 .. 8;
      CLK_DC_MEM_FO        at 0 range 9 .. 9;
      Reserved_10_31       at 0 range 10 .. 31;
   end record;

   subtype CLK_CONF_POWER_ST_CLK_WIFIPWR_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_COEX_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_I2C_MST_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_LP_APB_ST_MAP_Field is HAL.UInt4;

   type CLK_CONF_POWER_ST_Register is record
      --  unspecified
      Reserved_0_15      : HAL.UInt16 := 16#0#;
      CLK_WIFIPWR_ST_MAP : CLK_CONF_POWER_ST_CLK_WIFIPWR_ST_MAP_Field :=
                            16#0#;
      CLK_COEX_ST_MAP    : CLK_CONF_POWER_ST_CLK_COEX_ST_MAP_Field := 16#0#;
      CLK_I2C_MST_ST_MAP : CLK_CONF_POWER_ST_CLK_I2C_MST_ST_MAP_Field :=
                            16#0#;
      CLK_LP_APB_ST_MAP  : CLK_CONF_POWER_ST_CLK_LP_APB_ST_MAP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_POWER_ST_Register use record
      Reserved_0_15      at 0 range 0 .. 15;
      CLK_WIFIPWR_ST_MAP at 0 range 16 .. 19;
      CLK_COEX_ST_MAP    at 0 range 20 .. 23;
      CLK_I2C_MST_ST_MAP at 0 range 24 .. 27;
      CLK_LP_APB_ST_MAP  at 0 range 28 .. 31;
   end record;

   type RST_CONF_Register is record
      --  Write-only.
      RST_WIFIPWR   : Boolean := False;
      --  Write-only.
      RST_COEX      : Boolean := False;
      --  Write-only.
      RST_I2C_MST   : Boolean := False;
      --  Write-only.
      RST_LP_TIMER  : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RST_CONF_Register use record
      RST_WIFIPWR   at 0 range 0 .. 0;
      RST_COEX      at 0 range 1 .. 1;
      RST_I2C_MST   at 0 range 2 .. 2;
      RST_LP_TIMER  at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype MEM_CONF_MODEM_PWR_MEM_WP_Field is HAL.UInt3;
   subtype MEM_CONF_MODEM_PWR_MEM_WA_Field is HAL.UInt3;
   subtype MEM_CONF_MODEM_PWR_MEM_RA_Field is HAL.UInt2;

   type MEM_CONF_Register is record
      DC_MEM_FORCE_PU        : Boolean := True;
      DC_MEM_FORCE_PD        : Boolean := False;
      AGC_MEM_FORCE_PU       : Boolean := True;
      AGC_MEM_FORCE_PD       : Boolean := False;
      PBUS_MEM_FORCE_PU      : Boolean := True;
      PBUS_MEM_FORCE_PD      : Boolean := False;
      BC_MEM_FORCE_PU        : Boolean := False;
      BC_MEM_FORCE_PD        : Boolean := False;
      I2C_MST_MEM_FORCE_PU   : Boolean := False;
      I2C_MST_MEM_FORCE_PD   : Boolean := False;
      CHAN_FREQ_MEM_FORCE_PU : Boolean := False;
      CHAN_FREQ_MEM_FORCE_PD : Boolean := False;
      MODEM_PWR_MEM_WP       : MEM_CONF_MODEM_PWR_MEM_WP_Field := 16#0#;
      MODEM_PWR_MEM_WA       : MEM_CONF_MODEM_PWR_MEM_WA_Field := 16#4#;
      MODEM_PWR_MEM_RA       : MEM_CONF_MODEM_PWR_MEM_RA_Field := 16#0#;
      --  unspecified
      Reserved_20_31         : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CONF_Register use record
      DC_MEM_FORCE_PU        at 0 range 0 .. 0;
      DC_MEM_FORCE_PD        at 0 range 1 .. 1;
      AGC_MEM_FORCE_PU       at 0 range 2 .. 2;
      AGC_MEM_FORCE_PD       at 0 range 3 .. 3;
      PBUS_MEM_FORCE_PU      at 0 range 4 .. 4;
      PBUS_MEM_FORCE_PD      at 0 range 5 .. 5;
      BC_MEM_FORCE_PU        at 0 range 6 .. 6;
      BC_MEM_FORCE_PD        at 0 range 7 .. 7;
      I2C_MST_MEM_FORCE_PU   at 0 range 8 .. 8;
      I2C_MST_MEM_FORCE_PD   at 0 range 9 .. 9;
      CHAN_FREQ_MEM_FORCE_PU at 0 range 10 .. 10;
      CHAN_FREQ_MEM_FORCE_PD at 0 range 11 .. 11;
      MODEM_PWR_MEM_WP       at 0 range 12 .. 14;
      MODEM_PWR_MEM_WA       at 0 range 15 .. 17;
      MODEM_PWR_MEM_RA       at 0 range 18 .. 19;
      Reserved_20_31         at 0 range 20 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   type DATE_Register is record
      DATE           : DATE_DATE_Field := 16#2206240#;
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

   --  MODEM_LPCON Peripheral
   type MODEM_LPCON_Peripheral is record
      TEST_CONF          : aliased TEST_CONF_Register;
      LP_TIMER_CONF      : aliased LP_TIMER_CONF_Register;
      COEX_LP_CLK_CONF   : aliased COEX_LP_CLK_CONF_Register;
      WIFI_LP_CLK_CONF   : aliased WIFI_LP_CLK_CONF_Register;
      I2C_MST_CLK_CONF   : aliased I2C_MST_CLK_CONF_Register;
      MODEM_32K_CLK_CONF : aliased MODEM_32K_CLK_CONF_Register;
      CLK_CONF           : aliased CLK_CONF_Register;
      CLK_CONF_FORCE_ON  : aliased CLK_CONF_FORCE_ON_Register;
      CLK_CONF_POWER_ST  : aliased CLK_CONF_POWER_ST_Register;
      RST_CONF           : aliased RST_CONF_Register;
      MEM_CONF           : aliased MEM_CONF_Register;
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for MODEM_LPCON_Peripheral use record
      TEST_CONF          at 16#0# range 0 .. 31;
      LP_TIMER_CONF      at 16#4# range 0 .. 31;
      COEX_LP_CLK_CONF   at 16#8# range 0 .. 31;
      WIFI_LP_CLK_CONF   at 16#C# range 0 .. 31;
      I2C_MST_CLK_CONF   at 16#10# range 0 .. 31;
      MODEM_32K_CLK_CONF at 16#14# range 0 .. 31;
      CLK_CONF           at 16#18# range 0 .. 31;
      CLK_CONF_FORCE_ON  at 16#1C# range 0 .. 31;
      CLK_CONF_POWER_ST  at 16#20# range 0 .. 31;
      RST_CONF           at 16#24# range 0 .. 31;
      MEM_CONF           at 16#28# range 0 .. 31;
      DATE               at 16#2C# range 0 .. 31;
   end record;

   --  MODEM_LPCON Peripheral
   MODEM_LPCON_Periph : aliased MODEM_LPCON_Peripheral
     with Import, Address => MODEM_LPCON_Base;

end ESP32_C6_SVD.MODEM_LPCON;
