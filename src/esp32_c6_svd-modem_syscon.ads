pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.MODEM_SYSCON is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   type TEST_CONF_Register is record
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_CONF_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type CLK_CONF_Register is record
      --  unspecified
      Reserved_0_20        : HAL.UInt21 := 16#0#;
      CLK_DATA_DUMP_MUX    : Boolean := True;
      CLK_ETM_EN           : Boolean := False;
      CLK_ZB_APB_EN        : Boolean := False;
      CLK_ZB_MAC_EN        : Boolean := False;
      CLK_MODEM_SEC_ECB_EN : Boolean := False;
      CLK_MODEM_SEC_CCM_EN : Boolean := False;
      CLK_MODEM_SEC_BAH_EN : Boolean := False;
      CLK_MODEM_SEC_APB_EN : Boolean := False;
      CLK_MODEM_SEC_EN     : Boolean := False;
      CLK_BLE_TIMER_EN     : Boolean := False;
      CLK_DATA_DUMP_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      Reserved_0_20        at 0 range 0 .. 20;
      CLK_DATA_DUMP_MUX    at 0 range 21 .. 21;
      CLK_ETM_EN           at 0 range 22 .. 22;
      CLK_ZB_APB_EN        at 0 range 23 .. 23;
      CLK_ZB_MAC_EN        at 0 range 24 .. 24;
      CLK_MODEM_SEC_ECB_EN at 0 range 25 .. 25;
      CLK_MODEM_SEC_CCM_EN at 0 range 26 .. 26;
      CLK_MODEM_SEC_BAH_EN at 0 range 27 .. 27;
      CLK_MODEM_SEC_APB_EN at 0 range 28 .. 28;
      CLK_MODEM_SEC_EN     at 0 range 29 .. 29;
      CLK_BLE_TIMER_EN     at 0 range 30 .. 30;
      CLK_DATA_DUMP_EN     at 0 range 31 .. 31;
   end record;

   type CLK_CONF_FORCE_ON_Register is record
      --  unspecified
      Reserved_0_21        : HAL.UInt22 := 16#0#;
      CLK_ETM_FO           : Boolean := False;
      CLK_ZB_APB_FO        : Boolean := False;
      CLK_ZB_MAC_FO        : Boolean := False;
      CLK_MODEM_SEC_ECB_FO : Boolean := False;
      CLK_MODEM_SEC_CCM_FO : Boolean := False;
      CLK_MODEM_SEC_BAH_FO : Boolean := False;
      CLK_MODEM_SEC_APB_FO : Boolean := False;
      CLK_MODEM_SEC_FO     : Boolean := False;
      CLK_BLE_TIMER_FO     : Boolean := False;
      CLK_DATA_DUMP_FO     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_FORCE_ON_Register use record
      Reserved_0_21        at 0 range 0 .. 21;
      CLK_ETM_FO           at 0 range 22 .. 22;
      CLK_ZB_APB_FO        at 0 range 23 .. 23;
      CLK_ZB_MAC_FO        at 0 range 24 .. 24;
      CLK_MODEM_SEC_ECB_FO at 0 range 25 .. 25;
      CLK_MODEM_SEC_CCM_FO at 0 range 26 .. 26;
      CLK_MODEM_SEC_BAH_FO at 0 range 27 .. 27;
      CLK_MODEM_SEC_APB_FO at 0 range 28 .. 28;
      CLK_MODEM_SEC_FO     at 0 range 29 .. 29;
      CLK_BLE_TIMER_FO     at 0 range 30 .. 30;
      CLK_DATA_DUMP_FO     at 0 range 31 .. 31;
   end record;

   subtype CLK_CONF_POWER_ST_CLK_ZB_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_FE_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_BT_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_WIFI_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_MODEM_PERI_ST_MAP_Field is HAL.UInt4;
   subtype CLK_CONF_POWER_ST_CLK_MODEM_APB_ST_MAP_Field is HAL.UInt4;

   type CLK_CONF_POWER_ST_Register is record
      --  unspecified
      Reserved_0_7          : HAL.UInt8 := 16#0#;
      CLK_ZB_ST_MAP         : CLK_CONF_POWER_ST_CLK_ZB_ST_MAP_Field := 16#0#;
      CLK_FE_ST_MAP         : CLK_CONF_POWER_ST_CLK_FE_ST_MAP_Field := 16#0#;
      CLK_BT_ST_MAP         : CLK_CONF_POWER_ST_CLK_BT_ST_MAP_Field := 16#0#;
      CLK_WIFI_ST_MAP       : CLK_CONF_POWER_ST_CLK_WIFI_ST_MAP_Field :=
                               16#0#;
      CLK_MODEM_PERI_ST_MAP : CLK_CONF_POWER_ST_CLK_MODEM_PERI_ST_MAP_Field :=
                               16#0#;
      CLK_MODEM_APB_ST_MAP  : CLK_CONF_POWER_ST_CLK_MODEM_APB_ST_MAP_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_POWER_ST_Register use record
      Reserved_0_7          at 0 range 0 .. 7;
      CLK_ZB_ST_MAP         at 0 range 8 .. 11;
      CLK_FE_ST_MAP         at 0 range 12 .. 15;
      CLK_BT_ST_MAP         at 0 range 16 .. 19;
      CLK_WIFI_ST_MAP       at 0 range 20 .. 23;
      CLK_MODEM_PERI_ST_MAP at 0 range 24 .. 27;
      CLK_MODEM_APB_ST_MAP  at 0 range 28 .. 31;
   end record;

   type MODEM_RST_CONF_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      RST_WIFIBB     : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      RST_WIFIMAC    : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      RST_FE         : Boolean := False;
      RST_BTMAC_APB  : Boolean := False;
      RST_BTMAC      : Boolean := False;
      RST_BTBB_APB   : Boolean := False;
      RST_BTBB       : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      RST_ETM        : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      RST_ZBMAC      : Boolean := False;
      RST_MODEM_ECB  : Boolean := False;
      RST_MODEM_CCM  : Boolean := False;
      RST_MODEM_BAH  : Boolean := False;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      RST_MODEM_SEC  : Boolean := False;
      RST_BLE_TIMER  : Boolean := False;
      RST_DATA_DUMP  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_RST_CONF_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RST_WIFIBB     at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      RST_WIFIMAC    at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RST_FE         at 0 range 14 .. 14;
      RST_BTMAC_APB  at 0 range 15 .. 15;
      RST_BTMAC      at 0 range 16 .. 16;
      RST_BTBB_APB   at 0 range 17 .. 17;
      RST_BTBB       at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      RST_ETM        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RST_ZBMAC      at 0 range 24 .. 24;
      RST_MODEM_ECB  at 0 range 25 .. 25;
      RST_MODEM_CCM  at 0 range 26 .. 26;
      RST_MODEM_BAH  at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      RST_MODEM_SEC  at 0 range 29 .. 29;
      RST_BLE_TIMER  at 0 range 30 .. 30;
      RST_DATA_DUMP  at 0 range 31 .. 31;
   end record;

   type CLK_CONF1_Register is record
      CLK_WIFIBB_22M_EN      : Boolean := False;
      CLK_WIFIBB_40M_EN      : Boolean := False;
      CLK_WIFIBB_44M_EN      : Boolean := False;
      CLK_WIFIBB_80M_EN      : Boolean := False;
      CLK_WIFIBB_40X_EN      : Boolean := False;
      CLK_WIFIBB_80X_EN      : Boolean := False;
      CLK_WIFIBB_40X1_EN     : Boolean := False;
      CLK_WIFIBB_80X1_EN     : Boolean := False;
      CLK_WIFIBB_160X1_EN    : Boolean := False;
      CLK_WIFIMAC_EN         : Boolean := False;
      CLK_WIFI_APB_EN        : Boolean := False;
      CLK_FE_20M_EN          : Boolean := False;
      CLK_FE_40M_EN          : Boolean := False;
      CLK_FE_80M_EN          : Boolean := False;
      CLK_FE_160M_EN         : Boolean := False;
      CLK_FE_CAL_160M_EN     : Boolean := False;
      CLK_FE_APB_EN          : Boolean := False;
      CLK_BT_APB_EN          : Boolean := False;
      CLK_BT_EN              : Boolean := False;
      CLK_WIFIBB_480M_EN     : Boolean := False;
      CLK_FE_480M_EN         : Boolean := False;
      CLK_FE_ANAMODE_40M_EN  : Boolean := False;
      CLK_FE_ANAMODE_80M_EN  : Boolean := False;
      CLK_FE_ANAMODE_160M_EN : Boolean := False;
      --  unspecified
      Reserved_24_31         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF1_Register use record
      CLK_WIFIBB_22M_EN      at 0 range 0 .. 0;
      CLK_WIFIBB_40M_EN      at 0 range 1 .. 1;
      CLK_WIFIBB_44M_EN      at 0 range 2 .. 2;
      CLK_WIFIBB_80M_EN      at 0 range 3 .. 3;
      CLK_WIFIBB_40X_EN      at 0 range 4 .. 4;
      CLK_WIFIBB_80X_EN      at 0 range 5 .. 5;
      CLK_WIFIBB_40X1_EN     at 0 range 6 .. 6;
      CLK_WIFIBB_80X1_EN     at 0 range 7 .. 7;
      CLK_WIFIBB_160X1_EN    at 0 range 8 .. 8;
      CLK_WIFIMAC_EN         at 0 range 9 .. 9;
      CLK_WIFI_APB_EN        at 0 range 10 .. 10;
      CLK_FE_20M_EN          at 0 range 11 .. 11;
      CLK_FE_40M_EN          at 0 range 12 .. 12;
      CLK_FE_80M_EN          at 0 range 13 .. 13;
      CLK_FE_160M_EN         at 0 range 14 .. 14;
      CLK_FE_CAL_160M_EN     at 0 range 15 .. 15;
      CLK_FE_APB_EN          at 0 range 16 .. 16;
      CLK_BT_APB_EN          at 0 range 17 .. 17;
      CLK_BT_EN              at 0 range 18 .. 18;
      CLK_WIFIBB_480M_EN     at 0 range 19 .. 19;
      CLK_FE_480M_EN         at 0 range 20 .. 20;
      CLK_FE_ANAMODE_40M_EN  at 0 range 21 .. 21;
      CLK_FE_ANAMODE_80M_EN  at 0 range 22 .. 22;
      CLK_FE_ANAMODE_160M_EN at 0 range 23 .. 23;
      Reserved_24_31         at 0 range 24 .. 31;
   end record;

   type CLK_CONF1_FORCE_ON_Register is record
      CLK_WIFIBB_22M_FO      : Boolean := False;
      CLK_WIFIBB_40M_FO      : Boolean := False;
      CLK_WIFIBB_44M_FO      : Boolean := False;
      CLK_WIFIBB_80M_FO      : Boolean := False;
      CLK_WIFIBB_40X_FO      : Boolean := False;
      CLK_WIFIBB_80X_FO      : Boolean := False;
      CLK_WIFIBB_40X1_FO     : Boolean := False;
      CLK_WIFIBB_80X1_FO     : Boolean := False;
      CLK_WIFIBB_160X1_FO    : Boolean := False;
      CLK_WIFIMAC_FO         : Boolean := False;
      CLK_WIFI_APB_FO        : Boolean := False;
      CLK_FE_20M_FO          : Boolean := False;
      CLK_FE_40M_FO          : Boolean := False;
      CLK_FE_80M_FO          : Boolean := False;
      CLK_FE_160M_FO         : Boolean := False;
      CLK_FE_CAL_160M_FO     : Boolean := False;
      CLK_FE_APB_FO          : Boolean := False;
      CLK_BT_APB_FO          : Boolean := False;
      CLK_BT_FO              : Boolean := False;
      CLK_WIFIBB_480M_FO     : Boolean := False;
      CLK_FE_480M_FO         : Boolean := False;
      CLK_FE_ANAMODE_40M_FO  : Boolean := False;
      CLK_FE_ANAMODE_80M_FO  : Boolean := False;
      CLK_FE_ANAMODE_160M_FO : Boolean := False;
      --  unspecified
      Reserved_24_31         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF1_FORCE_ON_Register use record
      CLK_WIFIBB_22M_FO      at 0 range 0 .. 0;
      CLK_WIFIBB_40M_FO      at 0 range 1 .. 1;
      CLK_WIFIBB_44M_FO      at 0 range 2 .. 2;
      CLK_WIFIBB_80M_FO      at 0 range 3 .. 3;
      CLK_WIFIBB_40X_FO      at 0 range 4 .. 4;
      CLK_WIFIBB_80X_FO      at 0 range 5 .. 5;
      CLK_WIFIBB_40X1_FO     at 0 range 6 .. 6;
      CLK_WIFIBB_80X1_FO     at 0 range 7 .. 7;
      CLK_WIFIBB_160X1_FO    at 0 range 8 .. 8;
      CLK_WIFIMAC_FO         at 0 range 9 .. 9;
      CLK_WIFI_APB_FO        at 0 range 10 .. 10;
      CLK_FE_20M_FO          at 0 range 11 .. 11;
      CLK_FE_40M_FO          at 0 range 12 .. 12;
      CLK_FE_80M_FO          at 0 range 13 .. 13;
      CLK_FE_160M_FO         at 0 range 14 .. 14;
      CLK_FE_CAL_160M_FO     at 0 range 15 .. 15;
      CLK_FE_APB_FO          at 0 range 16 .. 16;
      CLK_BT_APB_FO          at 0 range 17 .. 17;
      CLK_BT_FO              at 0 range 18 .. 18;
      CLK_WIFIBB_480M_FO     at 0 range 19 .. 19;
      CLK_FE_480M_FO         at 0 range 20 .. 20;
      CLK_FE_ANAMODE_40M_FO  at 0 range 21 .. 21;
      CLK_FE_ANAMODE_80M_FO  at 0 range 22 .. 22;
      CLK_FE_ANAMODE_160M_FO at 0 range 23 .. 23;
      Reserved_24_31         at 0 range 24 .. 31;
   end record;

   subtype MEM_CONF_MODEM_MEM_WP_Field is HAL.UInt3;
   subtype MEM_CONF_MODEM_MEM_WA_Field is HAL.UInt3;
   subtype MEM_CONF_MODEM_MEM_RA_Field is HAL.UInt2;

   type MEM_CONF_Register is record
      MODEM_MEM_WP  : MEM_CONF_MODEM_MEM_WP_Field := 16#0#;
      MODEM_MEM_WA  : MEM_CONF_MODEM_MEM_WA_Field := 16#4#;
      MODEM_MEM_RA  : MEM_CONF_MODEM_MEM_RA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CONF_Register use record
      MODEM_MEM_WP  at 0 range 0 .. 2;
      MODEM_MEM_WA  at 0 range 3 .. 5;
      MODEM_MEM_RA  at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   type DATE_Register is record
      DATE           : DATE_DATE_Field := 16#2206300#;
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

   --  MODEM_SYSCON Peripheral
   type MODEM_SYSCON_Peripheral is record
      TEST_CONF          : aliased TEST_CONF_Register;
      CLK_CONF           : aliased CLK_CONF_Register;
      CLK_CONF_FORCE_ON  : aliased CLK_CONF_FORCE_ON_Register;
      CLK_CONF_POWER_ST  : aliased CLK_CONF_POWER_ST_Register;
      MODEM_RST_CONF     : aliased MODEM_RST_CONF_Register;
      CLK_CONF1          : aliased CLK_CONF1_Register;
      CLK_CONF1_FORCE_ON : aliased CLK_CONF1_FORCE_ON_Register;
      WIFI_BB_CFG        : aliased HAL.UInt32;
      MEM_CONF           : aliased MEM_CONF_Register;
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for MODEM_SYSCON_Peripheral use record
      TEST_CONF          at 16#0# range 0 .. 31;
      CLK_CONF           at 16#4# range 0 .. 31;
      CLK_CONF_FORCE_ON  at 16#8# range 0 .. 31;
      CLK_CONF_POWER_ST  at 16#C# range 0 .. 31;
      MODEM_RST_CONF     at 16#10# range 0 .. 31;
      CLK_CONF1          at 16#14# range 0 .. 31;
      CLK_CONF1_FORCE_ON at 16#18# range 0 .. 31;
      WIFI_BB_CFG        at 16#1C# range 0 .. 31;
      MEM_CONF           at 16#20# range 0 .. 31;
      DATE               at 16#24# range 0 .. 31;
   end record;

   --  MODEM_SYSCON Peripheral
   MODEM_SYSCON_Periph : aliased MODEM_SYSCON_Peripheral
     with Import, Address => MODEM_SYSCON_Base;

end ESP32_C6_SVD.MODEM_SYSCON;
