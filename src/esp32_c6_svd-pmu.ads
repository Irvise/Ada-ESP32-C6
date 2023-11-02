pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.PMU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype HP_ACTIVE_DIG_POWER_HP_ACTIVE_PD_HP_MEM_PD_EN_Field is HAL.UInt4;

   --  need_des
   type HP_ACTIVE_DIG_POWER_Register is record
      --  unspecified
      Reserved_0_20              : HAL.UInt21 := 16#0#;
      --  need_des
      HP_ACTIVE_VDD_SPI_PD_EN    : Boolean := False;
      --  need_des
      HP_ACTIVE_HP_MEM_DSLP      : Boolean := False;
      --  need_des
      HP_ACTIVE_PD_HP_MEM_PD_EN  : HP_ACTIVE_DIG_POWER_HP_ACTIVE_PD_HP_MEM_PD_EN_Field :=
                                    16#0#;
      --  need_des
      HP_ACTIVE_PD_HP_WIFI_PD_EN : Boolean := False;
      --  unspecified
      Reserved_28_28             : HAL.Bit := 16#0#;
      --  need_des
      HP_ACTIVE_PD_HP_CPU_PD_EN  : Boolean := False;
      --  need_des
      HP_ACTIVE_PD_HP_AON_PD_EN  : Boolean := False;
      --  need_des
      HP_ACTIVE_PD_TOP_PD_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_DIG_POWER_Register use record
      Reserved_0_20              at 0 range 0 .. 20;
      HP_ACTIVE_VDD_SPI_PD_EN    at 0 range 21 .. 21;
      HP_ACTIVE_HP_MEM_DSLP      at 0 range 22 .. 22;
      HP_ACTIVE_PD_HP_MEM_PD_EN  at 0 range 23 .. 26;
      HP_ACTIVE_PD_HP_WIFI_PD_EN at 0 range 27 .. 27;
      Reserved_28_28             at 0 range 28 .. 28;
      HP_ACTIVE_PD_HP_CPU_PD_EN  at 0 range 29 .. 29;
      HP_ACTIVE_PD_HP_AON_PD_EN  at 0 range 30 .. 30;
      HP_ACTIVE_PD_TOP_PD_EN     at 0 range 31 .. 31;
   end record;

   subtype HP_ACTIVE_ICG_MODEM_HP_ACTIVE_DIG_ICG_MODEM_CODE_Field is HAL.UInt2;

   --  need_des
   type HP_ACTIVE_ICG_MODEM_Register is record
      --  unspecified
      Reserved_0_29                : HAL.UInt30 := 16#0#;
      --  need_des
      HP_ACTIVE_DIG_ICG_MODEM_CODE : HP_ACTIVE_ICG_MODEM_HP_ACTIVE_DIG_ICG_MODEM_CODE_Field :=
                                      16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_ICG_MODEM_Register use record
      Reserved_0_29                at 0 range 0 .. 29;
      HP_ACTIVE_DIG_ICG_MODEM_CODE at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_ACTIVE_HP_SYS_CNTL_Register is record
      --  unspecified
      Reserved_0_23             : HAL.UInt24 := 16#0#;
      --  need_des
      HP_ACTIVE_UART_WAKEUP_EN  : Boolean := False;
      --  need_des
      HP_ACTIVE_LP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_ACTIVE_HP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_ACTIVE_DIG_PAD_SLP_SEL : Boolean := False;
      --  need_des
      HP_ACTIVE_DIG_PAUSE_WDT   : Boolean := False;
      --  need_des
      HP_ACTIVE_DIG_CPU_STALL   : Boolean := False;
      --  unspecified
      Reserved_30_31            : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_HP_SYS_CNTL_Register use record
      Reserved_0_23             at 0 range 0 .. 23;
      HP_ACTIVE_UART_WAKEUP_EN  at 0 range 24 .. 24;
      HP_ACTIVE_LP_PAD_HOLD_ALL at 0 range 25 .. 25;
      HP_ACTIVE_HP_PAD_HOLD_ALL at 0 range 26 .. 26;
      HP_ACTIVE_DIG_PAD_SLP_SEL at 0 range 27 .. 27;
      HP_ACTIVE_DIG_PAUSE_WDT   at 0 range 28 .. 28;
      HP_ACTIVE_DIG_CPU_STALL   at 0 range 29 .. 29;
      Reserved_30_31            at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_ACTIVE_HP_CK_POWER_Register is record
      --  unspecified
      Reserved_0_25           : HAL.UInt26 := 16#0#;
      --  need_des
      HP_ACTIVE_I2C_ISO_EN    : Boolean := False;
      --  need_des
      HP_ACTIVE_I2C_RETENTION : Boolean := False;
      --  need_des
      HP_ACTIVE_XPD_BB_I2C    : Boolean := False;
      --  need_des
      HP_ACTIVE_XPD_BBPLL_I2C : Boolean := False;
      --  need_des
      HP_ACTIVE_XPD_BBPLL     : Boolean := False;
      --  unspecified
      Reserved_31_31          : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_HP_CK_POWER_Register use record
      Reserved_0_25           at 0 range 0 .. 25;
      HP_ACTIVE_I2C_ISO_EN    at 0 range 26 .. 26;
      HP_ACTIVE_I2C_RETENTION at 0 range 27 .. 27;
      HP_ACTIVE_XPD_BB_I2C    at 0 range 28 .. 28;
      HP_ACTIVE_XPD_BBPLL_I2C at 0 range 29 .. 29;
      HP_ACTIVE_XPD_BBPLL     at 0 range 30 .. 30;
      Reserved_31_31          at 0 range 31 .. 31;
   end record;

   subtype HP_ACTIVE_BIAS_HP_ACTIVE_DBG_ATTEN_Field is HAL.UInt4;

   --  need_des
   type HP_ACTIVE_BIAS_Register is record
      --  unspecified
      Reserved_0_24       : HAL.UInt25 := 16#0#;
      --  need_des
      HP_ACTIVE_XPD_BIAS  : Boolean := False;
      --  need_des
      HP_ACTIVE_DBG_ATTEN : HP_ACTIVE_BIAS_HP_ACTIVE_DBG_ATTEN_Field := 16#0#;
      --  need_des
      HP_ACTIVE_PD_CUR    : Boolean := False;
      --  need_des
      SLEEP               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_BIAS_Register use record
      Reserved_0_24       at 0 range 0 .. 24;
      HP_ACTIVE_XPD_BIAS  at 0 range 25 .. 25;
      HP_ACTIVE_DBG_ATTEN at 0 range 26 .. 29;
      HP_ACTIVE_PD_CUR    at 0 range 30 .. 30;
      SLEEP               at 0 range 31 .. 31;
   end record;

   subtype HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_MODEM_CLK_CODE_Field is
     HAL.UInt2;
   subtype HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_MODEM_CLK_CODE_Field is
     HAL.UInt2;
   subtype HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_CLK_SEL_Field is HAL.UInt2;
   subtype HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_CLK_SEL_Field is HAL.UInt2;
   subtype HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_MODE_Field is HAL.UInt3;
   subtype HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_MODE_Field is HAL.UInt3;

   --  need_des
   type HP_ACTIVE_BACKUP_Register is record
      --  unspecified
      Reserved_0_3                          : HAL.UInt4 := 16#0#;
      --  need_des
      HP_SLEEP2ACTIVE_BACKUP_MODEM_CLK_CODE : HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_MODEM_CLK_CODE_Field :=
                                               16#0#;
      --  need_des
      HP_MODEM2ACTIVE_BACKUP_MODEM_CLK_CODE : HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_MODEM_CLK_CODE_Field :=
                                               16#0#;
      --  unspecified
      Reserved_8_9                          : HAL.UInt2 := 16#0#;
      --  need_des
      HP_ACTIVE_RETENTION_MODE              : Boolean := False;
      --  need_des
      HP_SLEEP2ACTIVE_RETENTION_EN          : Boolean := False;
      --  need_des
      HP_MODEM2ACTIVE_RETENTION_EN          : Boolean := False;
      --  unspecified
      Reserved_13_13                        : HAL.Bit := 16#0#;
      --  need_des
      HP_SLEEP2ACTIVE_BACKUP_CLK_SEL        : HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_CLK_SEL_Field :=
                                               16#0#;
      --  need_des
      HP_MODEM2ACTIVE_BACKUP_CLK_SEL        : HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_CLK_SEL_Field :=
                                               16#0#;
      --  unspecified
      Reserved_18_19                        : HAL.UInt2 := 16#0#;
      --  need_des
      HP_SLEEP2ACTIVE_BACKUP_MODE           : HP_ACTIVE_BACKUP_HP_SLEEP2ACTIVE_BACKUP_MODE_Field :=
                                               16#0#;
      --  need_des
      HP_MODEM2ACTIVE_BACKUP_MODE           : HP_ACTIVE_BACKUP_HP_MODEM2ACTIVE_BACKUP_MODE_Field :=
                                               16#0#;
      --  unspecified
      Reserved_26_28                        : HAL.UInt3 := 16#0#;
      --  need_des
      HP_SLEEP2ACTIVE_BACKUP_EN             : Boolean := False;
      --  need_des
      HP_MODEM2ACTIVE_BACKUP_EN             : Boolean := False;
      --  unspecified
      Reserved_31_31                        : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_BACKUP_Register use record
      Reserved_0_3                          at 0 range 0 .. 3;
      HP_SLEEP2ACTIVE_BACKUP_MODEM_CLK_CODE at 0 range 4 .. 5;
      HP_MODEM2ACTIVE_BACKUP_MODEM_CLK_CODE at 0 range 6 .. 7;
      Reserved_8_9                          at 0 range 8 .. 9;
      HP_ACTIVE_RETENTION_MODE              at 0 range 10 .. 10;
      HP_SLEEP2ACTIVE_RETENTION_EN          at 0 range 11 .. 11;
      HP_MODEM2ACTIVE_RETENTION_EN          at 0 range 12 .. 12;
      Reserved_13_13                        at 0 range 13 .. 13;
      HP_SLEEP2ACTIVE_BACKUP_CLK_SEL        at 0 range 14 .. 15;
      HP_MODEM2ACTIVE_BACKUP_CLK_SEL        at 0 range 16 .. 17;
      Reserved_18_19                        at 0 range 18 .. 19;
      HP_SLEEP2ACTIVE_BACKUP_MODE           at 0 range 20 .. 22;
      HP_MODEM2ACTIVE_BACKUP_MODE           at 0 range 23 .. 25;
      Reserved_26_28                        at 0 range 26 .. 28;
      HP_SLEEP2ACTIVE_BACKUP_EN             at 0 range 29 .. 29;
      HP_MODEM2ACTIVE_BACKUP_EN             at 0 range 30 .. 30;
      Reserved_31_31                        at 0 range 31 .. 31;
   end record;

   subtype HP_ACTIVE_SYSCLK_HP_ACTIVE_DIG_SYS_CLK_SEL_Field is HAL.UInt2;

   --  need_des
   type HP_ACTIVE_SYSCLK_Register is record
      --  unspecified
      Reserved_0_25                : HAL.UInt26 := 16#0#;
      --  need_des
      HP_ACTIVE_DIG_SYS_CLK_NO_DIV : Boolean := False;
      --  need_des
      HP_ACTIVE_ICG_SYS_CLOCK_EN   : Boolean := False;
      --  need_des
      HP_ACTIVE_SYS_CLK_SLP_SEL    : Boolean := False;
      --  need_des
      HP_ACTIVE_ICG_SLP_SEL        : Boolean := False;
      --  need_des
      HP_ACTIVE_DIG_SYS_CLK_SEL    : HP_ACTIVE_SYSCLK_HP_ACTIVE_DIG_SYS_CLK_SEL_Field :=
                                      16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_SYSCLK_Register use record
      Reserved_0_25                at 0 range 0 .. 25;
      HP_ACTIVE_DIG_SYS_CLK_NO_DIV at 0 range 26 .. 26;
      HP_ACTIVE_ICG_SYS_CLOCK_EN   at 0 range 27 .. 27;
      HP_ACTIVE_SYS_CLK_SLP_SEL    at 0 range 28 .. 28;
      HP_ACTIVE_ICG_SLP_SEL        at 0 range 29 .. 29;
      HP_ACTIVE_DIG_SYS_CLK_SEL    at 0 range 30 .. 31;
   end record;

   subtype HP_ACTIVE_HP_REGULATOR0_LP_DBIAS_VOL_Field is HAL.UInt5;
   subtype HP_ACTIVE_HP_REGULATOR0_HP_DBIAS_VOL_Field is HAL.UInt5;
   subtype HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_SLP_MEM_DBIAS_Field is
     HAL.UInt4;
   subtype HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_DBIAS_Field is
     HAL.UInt4;
   subtype HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_DBIAS_Field is
     HAL.UInt5;

   --  need_des
   type HP_ACTIVE_HP_REGULATOR0_Register is record
      --  unspecified
      Reserved_0_3                           : HAL.UInt4 := 16#0#;
      --  Read-only. need_des
      LP_DBIAS_VOL                           : HP_ACTIVE_HP_REGULATOR0_LP_DBIAS_VOL_Field :=
                                                16#18#;
      --  Read-only. need_des
      HP_DBIAS_VOL                           : HP_ACTIVE_HP_REGULATOR0_HP_DBIAS_VOL_Field :=
                                                16#18#;
      --  need_des
      DIG_REGULATOR0_DBIAS_SEL               : Boolean := True;
      --  Write-only. need_des
      DIG_DBIAS_INIT                         : Boolean := False;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_SLP_MEM_XPD     : Boolean := True;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_XPD   : Boolean := True;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_XPD             : Boolean := True;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_SLP_MEM_DBIAS   : HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_SLP_MEM_DBIAS_Field :=
                                                16#C#;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_DBIAS : HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_DBIAS_Field :=
                                                16#C#;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_DBIAS           : HP_ACTIVE_HP_REGULATOR0_HP_ACTIVE_HP_REGULATOR_DBIAS_Field :=
                                                16#18#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_HP_REGULATOR0_Register use record
      Reserved_0_3                           at 0 range 0 .. 3;
      LP_DBIAS_VOL                           at 0 range 4 .. 8;
      HP_DBIAS_VOL                           at 0 range 9 .. 13;
      DIG_REGULATOR0_DBIAS_SEL               at 0 range 14 .. 14;
      DIG_DBIAS_INIT                         at 0 range 15 .. 15;
      HP_ACTIVE_HP_REGULATOR_SLP_MEM_XPD     at 0 range 16 .. 16;
      HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_XPD   at 0 range 17 .. 17;
      HP_ACTIVE_HP_REGULATOR_XPD             at 0 range 18 .. 18;
      HP_ACTIVE_HP_REGULATOR_SLP_MEM_DBIAS   at 0 range 19 .. 22;
      HP_ACTIVE_HP_REGULATOR_SLP_LOGIC_DBIAS at 0 range 23 .. 26;
      HP_ACTIVE_HP_REGULATOR_DBIAS           at 0 range 27 .. 31;
   end record;

   subtype HP_ACTIVE_HP_REGULATOR1_HP_ACTIVE_HP_REGULATOR_DRV_B_Field is
     HAL.UInt24;

   --  need_des
   type HP_ACTIVE_HP_REGULATOR1_Register is record
      --  unspecified
      Reserved_0_7                 : HAL.UInt8 := 16#0#;
      --  need_des
      HP_ACTIVE_HP_REGULATOR_DRV_B : HP_ACTIVE_HP_REGULATOR1_HP_ACTIVE_HP_REGULATOR_DRV_B_Field :=
                                      16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_HP_REGULATOR1_Register use record
      Reserved_0_7                 at 0 range 0 .. 7;
      HP_ACTIVE_HP_REGULATOR_DRV_B at 0 range 8 .. 31;
   end record;

   --  need_des
   type HP_ACTIVE_XTAL_Register is record
      --  unspecified
      Reserved_0_30      : HAL.UInt31 := 16#0#;
      --  need_des
      HP_ACTIVE_XPD_XTAL : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_ACTIVE_XTAL_Register use record
      Reserved_0_30      at 0 range 0 .. 30;
      HP_ACTIVE_XPD_XTAL at 0 range 31 .. 31;
   end record;

   subtype HP_MODEM_DIG_POWER_HP_MODEM_PD_HP_MEM_PD_EN_Field is HAL.UInt4;

   --  need_des
   type HP_MODEM_DIG_POWER_Register is record
      --  unspecified
      Reserved_0_20             : HAL.UInt21 := 16#0#;
      --  need_des
      HP_MODEM_VDD_SPI_PD_EN    : Boolean := False;
      --  need_des
      HP_MODEM_HP_MEM_DSLP      : Boolean := False;
      --  need_des
      HP_MODEM_PD_HP_MEM_PD_EN  : HP_MODEM_DIG_POWER_HP_MODEM_PD_HP_MEM_PD_EN_Field :=
                                   16#0#;
      --  need_des
      HP_MODEM_PD_HP_WIFI_PD_EN : Boolean := False;
      --  unspecified
      Reserved_28_28            : HAL.Bit := 16#0#;
      --  need_des
      HP_MODEM_PD_HP_CPU_PD_EN  : Boolean := False;
      --  need_des
      HP_MODEM_PD_HP_AON_PD_EN  : Boolean := False;
      --  need_des
      HP_MODEM_PD_TOP_PD_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_DIG_POWER_Register use record
      Reserved_0_20             at 0 range 0 .. 20;
      HP_MODEM_VDD_SPI_PD_EN    at 0 range 21 .. 21;
      HP_MODEM_HP_MEM_DSLP      at 0 range 22 .. 22;
      HP_MODEM_PD_HP_MEM_PD_EN  at 0 range 23 .. 26;
      HP_MODEM_PD_HP_WIFI_PD_EN at 0 range 27 .. 27;
      Reserved_28_28            at 0 range 28 .. 28;
      HP_MODEM_PD_HP_CPU_PD_EN  at 0 range 29 .. 29;
      HP_MODEM_PD_HP_AON_PD_EN  at 0 range 30 .. 30;
      HP_MODEM_PD_TOP_PD_EN     at 0 range 31 .. 31;
   end record;

   subtype HP_MODEM_ICG_MODEM_HP_MODEM_DIG_ICG_MODEM_CODE_Field is HAL.UInt2;

   --  need_des
   type HP_MODEM_ICG_MODEM_Register is record
      --  unspecified
      Reserved_0_29               : HAL.UInt30 := 16#0#;
      --  need_des
      HP_MODEM_DIG_ICG_MODEM_CODE : HP_MODEM_ICG_MODEM_HP_MODEM_DIG_ICG_MODEM_CODE_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_ICG_MODEM_Register use record
      Reserved_0_29               at 0 range 0 .. 29;
      HP_MODEM_DIG_ICG_MODEM_CODE at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_MODEM_HP_SYS_CNTL_Register is record
      --  unspecified
      Reserved_0_23            : HAL.UInt24 := 16#0#;
      --  need_des
      HP_MODEM_UART_WAKEUP_EN  : Boolean := False;
      --  need_des
      HP_MODEM_LP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_MODEM_HP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_MODEM_DIG_PAD_SLP_SEL : Boolean := False;
      --  need_des
      HP_MODEM_DIG_PAUSE_WDT   : Boolean := False;
      --  need_des
      HP_MODEM_DIG_CPU_STALL   : Boolean := False;
      --  unspecified
      Reserved_30_31           : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_HP_SYS_CNTL_Register use record
      Reserved_0_23            at 0 range 0 .. 23;
      HP_MODEM_UART_WAKEUP_EN  at 0 range 24 .. 24;
      HP_MODEM_LP_PAD_HOLD_ALL at 0 range 25 .. 25;
      HP_MODEM_HP_PAD_HOLD_ALL at 0 range 26 .. 26;
      HP_MODEM_DIG_PAD_SLP_SEL at 0 range 27 .. 27;
      HP_MODEM_DIG_PAUSE_WDT   at 0 range 28 .. 28;
      HP_MODEM_DIG_CPU_STALL   at 0 range 29 .. 29;
      Reserved_30_31           at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_MODEM_HP_CK_POWER_Register is record
      --  unspecified
      Reserved_0_25          : HAL.UInt26 := 16#0#;
      --  need_des
      HP_MODEM_I2C_ISO_EN    : Boolean := False;
      --  need_des
      HP_MODEM_I2C_RETENTION : Boolean := False;
      --  need_des
      HP_MODEM_XPD_BB_I2C    : Boolean := False;
      --  need_des
      HP_MODEM_XPD_BBPLL_I2C : Boolean := False;
      --  need_des
      HP_MODEM_XPD_BBPLL     : Boolean := False;
      --  unspecified
      Reserved_31_31         : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_HP_CK_POWER_Register use record
      Reserved_0_25          at 0 range 0 .. 25;
      HP_MODEM_I2C_ISO_EN    at 0 range 26 .. 26;
      HP_MODEM_I2C_RETENTION at 0 range 27 .. 27;
      HP_MODEM_XPD_BB_I2C    at 0 range 28 .. 28;
      HP_MODEM_XPD_BBPLL_I2C at 0 range 29 .. 29;
      HP_MODEM_XPD_BBPLL     at 0 range 30 .. 30;
      Reserved_31_31         at 0 range 31 .. 31;
   end record;

   subtype HP_MODEM_BIAS_HP_MODEM_DBG_ATTEN_Field is HAL.UInt4;

   --  need_des
   type HP_MODEM_BIAS_Register is record
      --  unspecified
      Reserved_0_24      : HAL.UInt25 := 16#0#;
      --  need_des
      HP_MODEM_XPD_BIAS  : Boolean := False;
      --  need_des
      HP_MODEM_DBG_ATTEN : HP_MODEM_BIAS_HP_MODEM_DBG_ATTEN_Field := 16#0#;
      --  need_des
      HP_MODEM_PD_CUR    : Boolean := False;
      --  need_des
      SLEEP              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_BIAS_Register use record
      Reserved_0_24      at 0 range 0 .. 24;
      HP_MODEM_XPD_BIAS  at 0 range 25 .. 25;
      HP_MODEM_DBG_ATTEN at 0 range 26 .. 29;
      HP_MODEM_PD_CUR    at 0 range 30 .. 30;
      SLEEP              at 0 range 31 .. 31;
   end record;

   subtype HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_MODEM_CLK_CODE_Field is
     HAL.UInt2;
   subtype HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_CLK_SEL_Field is HAL.UInt2;
   subtype HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_MODE_Field is HAL.UInt3;

   --  need_des
   type HP_MODEM_BACKUP_Register is record
      --  unspecified
      Reserved_0_3                         : HAL.UInt4 := 16#0#;
      --  need_des
      HP_SLEEP2MODEM_BACKUP_MODEM_CLK_CODE : HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_MODEM_CLK_CODE_Field :=
                                              16#0#;
      --  unspecified
      Reserved_6_9                         : HAL.UInt4 := 16#0#;
      --  need_des
      HP_MODEM_RETENTION_MODE              : Boolean := False;
      --  need_des
      HP_SLEEP2MODEM_RETENTION_EN          : Boolean := False;
      --  unspecified
      Reserved_12_13                       : HAL.UInt2 := 16#0#;
      --  need_des
      HP_SLEEP2MODEM_BACKUP_CLK_SEL        : HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_CLK_SEL_Field :=
                                              16#0#;
      --  unspecified
      Reserved_16_19                       : HAL.UInt4 := 16#0#;
      --  need_des
      HP_SLEEP2MODEM_BACKUP_MODE           : HP_MODEM_BACKUP_HP_SLEEP2MODEM_BACKUP_MODE_Field :=
                                              16#0#;
      --  unspecified
      Reserved_23_28                       : HAL.UInt6 := 16#0#;
      --  need_des
      HP_SLEEP2MODEM_BACKUP_EN             : Boolean := False;
      --  unspecified
      Reserved_30_31                       : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_BACKUP_Register use record
      Reserved_0_3                         at 0 range 0 .. 3;
      HP_SLEEP2MODEM_BACKUP_MODEM_CLK_CODE at 0 range 4 .. 5;
      Reserved_6_9                         at 0 range 6 .. 9;
      HP_MODEM_RETENTION_MODE              at 0 range 10 .. 10;
      HP_SLEEP2MODEM_RETENTION_EN          at 0 range 11 .. 11;
      Reserved_12_13                       at 0 range 12 .. 13;
      HP_SLEEP2MODEM_BACKUP_CLK_SEL        at 0 range 14 .. 15;
      Reserved_16_19                       at 0 range 16 .. 19;
      HP_SLEEP2MODEM_BACKUP_MODE           at 0 range 20 .. 22;
      Reserved_23_28                       at 0 range 23 .. 28;
      HP_SLEEP2MODEM_BACKUP_EN             at 0 range 29 .. 29;
      Reserved_30_31                       at 0 range 30 .. 31;
   end record;

   subtype HP_MODEM_SYSCLK_HP_MODEM_DIG_SYS_CLK_SEL_Field is HAL.UInt2;

   --  need_des
   type HP_MODEM_SYSCLK_Register is record
      --  unspecified
      Reserved_0_25               : HAL.UInt26 := 16#0#;
      --  need_des
      HP_MODEM_DIG_SYS_CLK_NO_DIV : Boolean := False;
      --  need_des
      HP_MODEM_ICG_SYS_CLOCK_EN   : Boolean := False;
      --  need_des
      HP_MODEM_SYS_CLK_SLP_SEL    : Boolean := False;
      --  need_des
      HP_MODEM_ICG_SLP_SEL        : Boolean := False;
      --  need_des
      HP_MODEM_DIG_SYS_CLK_SEL    : HP_MODEM_SYSCLK_HP_MODEM_DIG_SYS_CLK_SEL_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_SYSCLK_Register use record
      Reserved_0_25               at 0 range 0 .. 25;
      HP_MODEM_DIG_SYS_CLK_NO_DIV at 0 range 26 .. 26;
      HP_MODEM_ICG_SYS_CLOCK_EN   at 0 range 27 .. 27;
      HP_MODEM_SYS_CLK_SLP_SEL    at 0 range 28 .. 28;
      HP_MODEM_ICG_SLP_SEL        at 0 range 29 .. 29;
      HP_MODEM_DIG_SYS_CLK_SEL    at 0 range 30 .. 31;
   end record;

   subtype HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_SLP_MEM_DBIAS_Field is
     HAL.UInt4;
   subtype HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_SLP_LOGIC_DBIAS_Field is
     HAL.UInt4;
   subtype HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_DBIAS_Field is
     HAL.UInt5;

   --  need_des
   type HP_MODEM_HP_REGULATOR0_Register is record
      --  unspecified
      Reserved_0_15                         : HAL.UInt16 := 16#0#;
      --  need_des
      HP_MODEM_HP_REGULATOR_SLP_MEM_XPD     : Boolean := True;
      --  need_des
      HP_MODEM_HP_REGULATOR_SLP_LOGIC_XPD   : Boolean := True;
      --  need_des
      HP_MODEM_HP_REGULATOR_XPD             : Boolean := True;
      --  need_des
      HP_MODEM_HP_REGULATOR_SLP_MEM_DBIAS   : HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_SLP_MEM_DBIAS_Field :=
                                               16#C#;
      --  need_des
      HP_MODEM_HP_REGULATOR_SLP_LOGIC_DBIAS : HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_SLP_LOGIC_DBIAS_Field :=
                                               16#C#;
      --  need_des
      HP_MODEM_HP_REGULATOR_DBIAS           : HP_MODEM_HP_REGULATOR0_HP_MODEM_HP_REGULATOR_DBIAS_Field :=
                                               16#18#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_HP_REGULATOR0_Register use record
      Reserved_0_15                         at 0 range 0 .. 15;
      HP_MODEM_HP_REGULATOR_SLP_MEM_XPD     at 0 range 16 .. 16;
      HP_MODEM_HP_REGULATOR_SLP_LOGIC_XPD   at 0 range 17 .. 17;
      HP_MODEM_HP_REGULATOR_XPD             at 0 range 18 .. 18;
      HP_MODEM_HP_REGULATOR_SLP_MEM_DBIAS   at 0 range 19 .. 22;
      HP_MODEM_HP_REGULATOR_SLP_LOGIC_DBIAS at 0 range 23 .. 26;
      HP_MODEM_HP_REGULATOR_DBIAS           at 0 range 27 .. 31;
   end record;

   subtype HP_MODEM_HP_REGULATOR1_HP_MODEM_HP_REGULATOR_DRV_B_Field is
     HAL.UInt24;

   --  need_des
   type HP_MODEM_HP_REGULATOR1_Register is record
      --  unspecified
      Reserved_0_7                : HAL.UInt8 := 16#0#;
      --  need_des
      HP_MODEM_HP_REGULATOR_DRV_B : HP_MODEM_HP_REGULATOR1_HP_MODEM_HP_REGULATOR_DRV_B_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_HP_REGULATOR1_Register use record
      Reserved_0_7                at 0 range 0 .. 7;
      HP_MODEM_HP_REGULATOR_DRV_B at 0 range 8 .. 31;
   end record;

   --  need_des
   type HP_MODEM_XTAL_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  need_des
      HP_MODEM_XPD_XTAL : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_MODEM_XTAL_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      HP_MODEM_XPD_XTAL at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_DIG_POWER_HP_SLEEP_PD_HP_MEM_PD_EN_Field is HAL.UInt4;

   --  need_des
   type HP_SLEEP_DIG_POWER_Register is record
      --  unspecified
      Reserved_0_20             : HAL.UInt21 := 16#0#;
      --  need_des
      HP_SLEEP_VDD_SPI_PD_EN    : Boolean := False;
      --  need_des
      HP_SLEEP_HP_MEM_DSLP      : Boolean := False;
      --  need_des
      HP_SLEEP_PD_HP_MEM_PD_EN  : HP_SLEEP_DIG_POWER_HP_SLEEP_PD_HP_MEM_PD_EN_Field :=
                                   16#0#;
      --  need_des
      HP_SLEEP_PD_HP_WIFI_PD_EN : Boolean := False;
      --  unspecified
      Reserved_28_28            : HAL.Bit := 16#0#;
      --  need_des
      HP_SLEEP_PD_HP_CPU_PD_EN  : Boolean := False;
      --  need_des
      HP_SLEEP_PD_HP_AON_PD_EN  : Boolean := False;
      --  need_des
      HP_SLEEP_PD_TOP_PD_EN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_DIG_POWER_Register use record
      Reserved_0_20             at 0 range 0 .. 20;
      HP_SLEEP_VDD_SPI_PD_EN    at 0 range 21 .. 21;
      HP_SLEEP_HP_MEM_DSLP      at 0 range 22 .. 22;
      HP_SLEEP_PD_HP_MEM_PD_EN  at 0 range 23 .. 26;
      HP_SLEEP_PD_HP_WIFI_PD_EN at 0 range 27 .. 27;
      Reserved_28_28            at 0 range 28 .. 28;
      HP_SLEEP_PD_HP_CPU_PD_EN  at 0 range 29 .. 29;
      HP_SLEEP_PD_HP_AON_PD_EN  at 0 range 30 .. 30;
      HP_SLEEP_PD_TOP_PD_EN     at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_ICG_MODEM_HP_SLEEP_DIG_ICG_MODEM_CODE_Field is HAL.UInt2;

   --  need_des
   type HP_SLEEP_ICG_MODEM_Register is record
      --  unspecified
      Reserved_0_29               : HAL.UInt30 := 16#0#;
      --  need_des
      HP_SLEEP_DIG_ICG_MODEM_CODE : HP_SLEEP_ICG_MODEM_HP_SLEEP_DIG_ICG_MODEM_CODE_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_ICG_MODEM_Register use record
      Reserved_0_29               at 0 range 0 .. 29;
      HP_SLEEP_DIG_ICG_MODEM_CODE at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_SLEEP_HP_SYS_CNTL_Register is record
      --  unspecified
      Reserved_0_23            : HAL.UInt24 := 16#0#;
      --  need_des
      HP_SLEEP_UART_WAKEUP_EN  : Boolean := False;
      --  need_des
      HP_SLEEP_LP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_SLEEP_HP_PAD_HOLD_ALL : Boolean := False;
      --  need_des
      HP_SLEEP_DIG_PAD_SLP_SEL : Boolean := False;
      --  need_des
      HP_SLEEP_DIG_PAUSE_WDT   : Boolean := False;
      --  need_des
      HP_SLEEP_DIG_CPU_STALL   : Boolean := False;
      --  unspecified
      Reserved_30_31           : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_HP_SYS_CNTL_Register use record
      Reserved_0_23            at 0 range 0 .. 23;
      HP_SLEEP_UART_WAKEUP_EN  at 0 range 24 .. 24;
      HP_SLEEP_LP_PAD_HOLD_ALL at 0 range 25 .. 25;
      HP_SLEEP_HP_PAD_HOLD_ALL at 0 range 26 .. 26;
      HP_SLEEP_DIG_PAD_SLP_SEL at 0 range 27 .. 27;
      HP_SLEEP_DIG_PAUSE_WDT   at 0 range 28 .. 28;
      HP_SLEEP_DIG_CPU_STALL   at 0 range 29 .. 29;
      Reserved_30_31           at 0 range 30 .. 31;
   end record;

   --  need_des
   type HP_SLEEP_HP_CK_POWER_Register is record
      --  unspecified
      Reserved_0_25          : HAL.UInt26 := 16#0#;
      --  need_des
      HP_SLEEP_I2C_ISO_EN    : Boolean := False;
      --  need_des
      HP_SLEEP_I2C_RETENTION : Boolean := False;
      --  need_des
      HP_SLEEP_XPD_BB_I2C    : Boolean := False;
      --  need_des
      HP_SLEEP_XPD_BBPLL_I2C : Boolean := False;
      --  need_des
      HP_SLEEP_XPD_BBPLL     : Boolean := False;
      --  unspecified
      Reserved_31_31         : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_HP_CK_POWER_Register use record
      Reserved_0_25          at 0 range 0 .. 25;
      HP_SLEEP_I2C_ISO_EN    at 0 range 26 .. 26;
      HP_SLEEP_I2C_RETENTION at 0 range 27 .. 27;
      HP_SLEEP_XPD_BB_I2C    at 0 range 28 .. 28;
      HP_SLEEP_XPD_BBPLL_I2C at 0 range 29 .. 29;
      HP_SLEEP_XPD_BBPLL     at 0 range 30 .. 30;
      Reserved_31_31         at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_BIAS_HP_SLEEP_DBG_ATTEN_Field is HAL.UInt4;

   --  need_des
   type HP_SLEEP_BIAS_Register is record
      --  unspecified
      Reserved_0_24      : HAL.UInt25 := 16#0#;
      --  need_des
      HP_SLEEP_XPD_BIAS  : Boolean := False;
      --  need_des
      HP_SLEEP_DBG_ATTEN : HP_SLEEP_BIAS_HP_SLEEP_DBG_ATTEN_Field := 16#0#;
      --  need_des
      HP_SLEEP_PD_CUR    : Boolean := False;
      --  need_des
      SLEEP              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_BIAS_Register use record
      Reserved_0_24      at 0 range 0 .. 24;
      HP_SLEEP_XPD_BIAS  at 0 range 25 .. 25;
      HP_SLEEP_DBG_ATTEN at 0 range 26 .. 29;
      HP_SLEEP_PD_CUR    at 0 range 30 .. 30;
      SLEEP              at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_MODEM_CLK_CODE_Field is
     HAL.UInt2;
   subtype HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_MODEM_CLK_CODE_Field is
     HAL.UInt2;
   subtype HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_CLK_SEL_Field is HAL.UInt2;
   subtype HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_CLK_SEL_Field is HAL.UInt2;
   subtype HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_MODE_Field is HAL.UInt3;
   subtype HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_MODE_Field is HAL.UInt3;

   --  need_des
   type HP_SLEEP_BACKUP_Register is record
      --  unspecified
      Reserved_0_5                          : HAL.UInt6 := 16#0#;
      --  need_des
      HP_MODEM2SLEEP_BACKUP_MODEM_CLK_CODE  : HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_MODEM_CLK_CODE_Field :=
                                               16#0#;
      --  need_des
      HP_ACTIVE2SLEEP_BACKUP_MODEM_CLK_CODE : HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_MODEM_CLK_CODE_Field :=
                                               16#0#;
      --  need_des
      HP_SLEEP_RETENTION_MODE               : Boolean := False;
      --  unspecified
      Reserved_11_11                        : HAL.Bit := 16#0#;
      --  need_des
      HP_MODEM2SLEEP_RETENTION_EN           : Boolean := False;
      --  need_des
      HP_ACTIVE2SLEEP_RETENTION_EN          : Boolean := False;
      --  unspecified
      Reserved_14_15                        : HAL.UInt2 := 16#0#;
      --  need_des
      HP_MODEM2SLEEP_BACKUP_CLK_SEL         : HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_CLK_SEL_Field :=
                                               16#0#;
      --  need_des
      HP_ACTIVE2SLEEP_BACKUP_CLK_SEL        : HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_CLK_SEL_Field :=
                                               16#0#;
      --  unspecified
      Reserved_20_22                        : HAL.UInt3 := 16#0#;
      --  need_des
      HP_MODEM2SLEEP_BACKUP_MODE            : HP_SLEEP_BACKUP_HP_MODEM2SLEEP_BACKUP_MODE_Field :=
                                               16#0#;
      --  need_des
      HP_ACTIVE2SLEEP_BACKUP_MODE           : HP_SLEEP_BACKUP_HP_ACTIVE2SLEEP_BACKUP_MODE_Field :=
                                               16#0#;
      --  unspecified
      Reserved_29_29                        : HAL.Bit := 16#0#;
      --  need_des
      HP_MODEM2SLEEP_BACKUP_EN              : Boolean := False;
      --  need_des
      HP_ACTIVE2SLEEP_BACKUP_EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_BACKUP_Register use record
      Reserved_0_5                          at 0 range 0 .. 5;
      HP_MODEM2SLEEP_BACKUP_MODEM_CLK_CODE  at 0 range 6 .. 7;
      HP_ACTIVE2SLEEP_BACKUP_MODEM_CLK_CODE at 0 range 8 .. 9;
      HP_SLEEP_RETENTION_MODE               at 0 range 10 .. 10;
      Reserved_11_11                        at 0 range 11 .. 11;
      HP_MODEM2SLEEP_RETENTION_EN           at 0 range 12 .. 12;
      HP_ACTIVE2SLEEP_RETENTION_EN          at 0 range 13 .. 13;
      Reserved_14_15                        at 0 range 14 .. 15;
      HP_MODEM2SLEEP_BACKUP_CLK_SEL         at 0 range 16 .. 17;
      HP_ACTIVE2SLEEP_BACKUP_CLK_SEL        at 0 range 18 .. 19;
      Reserved_20_22                        at 0 range 20 .. 22;
      HP_MODEM2SLEEP_BACKUP_MODE            at 0 range 23 .. 25;
      HP_ACTIVE2SLEEP_BACKUP_MODE           at 0 range 26 .. 28;
      Reserved_29_29                        at 0 range 29 .. 29;
      HP_MODEM2SLEEP_BACKUP_EN              at 0 range 30 .. 30;
      HP_ACTIVE2SLEEP_BACKUP_EN             at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_SYSCLK_HP_SLEEP_DIG_SYS_CLK_SEL_Field is HAL.UInt2;

   --  need_des
   type HP_SLEEP_SYSCLK_Register is record
      --  unspecified
      Reserved_0_25               : HAL.UInt26 := 16#0#;
      --  need_des
      HP_SLEEP_DIG_SYS_CLK_NO_DIV : Boolean := False;
      --  need_des
      HP_SLEEP_ICG_SYS_CLOCK_EN   : Boolean := False;
      --  need_des
      HP_SLEEP_SYS_CLK_SLP_SEL    : Boolean := False;
      --  need_des
      HP_SLEEP_ICG_SLP_SEL        : Boolean := False;
      --  need_des
      HP_SLEEP_DIG_SYS_CLK_SEL    : HP_SLEEP_SYSCLK_HP_SLEEP_DIG_SYS_CLK_SEL_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_SYSCLK_Register use record
      Reserved_0_25               at 0 range 0 .. 25;
      HP_SLEEP_DIG_SYS_CLK_NO_DIV at 0 range 26 .. 26;
      HP_SLEEP_ICG_SYS_CLOCK_EN   at 0 range 27 .. 27;
      HP_SLEEP_SYS_CLK_SLP_SEL    at 0 range 28 .. 28;
      HP_SLEEP_ICG_SLP_SEL        at 0 range 29 .. 29;
      HP_SLEEP_DIG_SYS_CLK_SEL    at 0 range 30 .. 31;
   end record;

   subtype HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_SLP_MEM_DBIAS_Field is
     HAL.UInt4;
   subtype HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_SLP_LOGIC_DBIAS_Field is
     HAL.UInt4;
   subtype HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_DBIAS_Field is
     HAL.UInt5;

   --  need_des
   type HP_SLEEP_HP_REGULATOR0_Register is record
      --  unspecified
      Reserved_0_15                         : HAL.UInt16 := 16#0#;
      --  need_des
      HP_SLEEP_HP_REGULATOR_SLP_MEM_XPD     : Boolean := True;
      --  need_des
      HP_SLEEP_HP_REGULATOR_SLP_LOGIC_XPD   : Boolean := True;
      --  need_des
      HP_SLEEP_HP_REGULATOR_XPD             : Boolean := True;
      --  need_des
      HP_SLEEP_HP_REGULATOR_SLP_MEM_DBIAS   : HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_SLP_MEM_DBIAS_Field :=
                                               16#C#;
      --  need_des
      HP_SLEEP_HP_REGULATOR_SLP_LOGIC_DBIAS : HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_SLP_LOGIC_DBIAS_Field :=
                                               16#C#;
      --  need_des
      HP_SLEEP_HP_REGULATOR_DBIAS           : HP_SLEEP_HP_REGULATOR0_HP_SLEEP_HP_REGULATOR_DBIAS_Field :=
                                               16#18#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_HP_REGULATOR0_Register use record
      Reserved_0_15                         at 0 range 0 .. 15;
      HP_SLEEP_HP_REGULATOR_SLP_MEM_XPD     at 0 range 16 .. 16;
      HP_SLEEP_HP_REGULATOR_SLP_LOGIC_XPD   at 0 range 17 .. 17;
      HP_SLEEP_HP_REGULATOR_XPD             at 0 range 18 .. 18;
      HP_SLEEP_HP_REGULATOR_SLP_MEM_DBIAS   at 0 range 19 .. 22;
      HP_SLEEP_HP_REGULATOR_SLP_LOGIC_DBIAS at 0 range 23 .. 26;
      HP_SLEEP_HP_REGULATOR_DBIAS           at 0 range 27 .. 31;
   end record;

   subtype HP_SLEEP_HP_REGULATOR1_HP_SLEEP_HP_REGULATOR_DRV_B_Field is
     HAL.UInt24;

   --  need_des
   type HP_SLEEP_HP_REGULATOR1_Register is record
      --  unspecified
      Reserved_0_7                : HAL.UInt8 := 16#0#;
      --  need_des
      HP_SLEEP_HP_REGULATOR_DRV_B : HP_SLEEP_HP_REGULATOR1_HP_SLEEP_HP_REGULATOR_DRV_B_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_HP_REGULATOR1_Register use record
      Reserved_0_7                at 0 range 0 .. 7;
      HP_SLEEP_HP_REGULATOR_DRV_B at 0 range 8 .. 31;
   end record;

   --  need_des
   type HP_SLEEP_XTAL_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  need_des
      HP_SLEEP_XPD_XTAL : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_XTAL_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      HP_SLEEP_XPD_XTAL at 0 range 31 .. 31;
   end record;

   subtype HP_SLEEP_LP_REGULATOR0_HP_SLEEP_LP_REGULATOR_SLP_DBIAS_Field is
     HAL.UInt4;
   subtype HP_SLEEP_LP_REGULATOR0_HP_SLEEP_LP_REGULATOR_DBIAS_Field is
     HAL.UInt5;

   --  need_des
   type HP_SLEEP_LP_REGULATOR0_Register is record
      --  unspecified
      Reserved_0_20                   : HAL.UInt21 := 16#0#;
      --  need_des
      HP_SLEEP_LP_REGULATOR_SLP_XPD   : Boolean := True;
      --  need_des
      HP_SLEEP_LP_REGULATOR_XPD       : Boolean := True;
      --  need_des
      HP_SLEEP_LP_REGULATOR_SLP_DBIAS : HP_SLEEP_LP_REGULATOR0_HP_SLEEP_LP_REGULATOR_SLP_DBIAS_Field :=
                                         16#C#;
      --  need_des
      HP_SLEEP_LP_REGULATOR_DBIAS     : HP_SLEEP_LP_REGULATOR0_HP_SLEEP_LP_REGULATOR_DBIAS_Field :=
                                         16#18#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_LP_REGULATOR0_Register use record
      Reserved_0_20                   at 0 range 0 .. 20;
      HP_SLEEP_LP_REGULATOR_SLP_XPD   at 0 range 21 .. 21;
      HP_SLEEP_LP_REGULATOR_XPD       at 0 range 22 .. 22;
      HP_SLEEP_LP_REGULATOR_SLP_DBIAS at 0 range 23 .. 26;
      HP_SLEEP_LP_REGULATOR_DBIAS     at 0 range 27 .. 31;
   end record;

   subtype HP_SLEEP_LP_REGULATOR1_HP_SLEEP_LP_REGULATOR_DRV_B_Field is
     HAL.UInt4;

   --  need_des
   type HP_SLEEP_LP_REGULATOR1_Register is record
      --  unspecified
      Reserved_0_27               : HAL.UInt28 := 16#0#;
      --  need_des
      HP_SLEEP_LP_REGULATOR_DRV_B : HP_SLEEP_LP_REGULATOR1_HP_SLEEP_LP_REGULATOR_DRV_B_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_LP_REGULATOR1_Register use record
      Reserved_0_27               at 0 range 0 .. 27;
      HP_SLEEP_LP_REGULATOR_DRV_B at 0 range 28 .. 31;
   end record;

   --  need_des
   type HP_SLEEP_LP_DIG_POWER_Register is record
      --  unspecified
      Reserved_0_29             : HAL.UInt30 := 16#0#;
      --  need_des
      HP_SLEEP_LP_MEM_DSLP      : Boolean := False;
      --  need_des
      HP_SLEEP_PD_LP_PERI_PD_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_LP_DIG_POWER_Register use record
      Reserved_0_29             at 0 range 0 .. 29;
      HP_SLEEP_LP_MEM_DSLP      at 0 range 30 .. 30;
      HP_SLEEP_PD_LP_PERI_PD_EN at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_SLEEP_LP_CK_POWER_Register is record
      --  unspecified
      Reserved_0_27         : HAL.UInt28 := 16#0#;
      --  need_des
      HP_SLEEP_XPD_XTAL32K  : Boolean := False;
      --  need_des
      HP_SLEEP_XPD_RC32K    : Boolean := False;
      --  need_des
      HP_SLEEP_XPD_FOSC_CLK : Boolean := True;
      --  need_des
      HP_SLEEP_PD_OSC_CLK   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_SLEEP_LP_CK_POWER_Register use record
      Reserved_0_27         at 0 range 0 .. 27;
      HP_SLEEP_XPD_XTAL32K  at 0 range 28 .. 28;
      HP_SLEEP_XPD_RC32K    at 0 range 29 .. 29;
      HP_SLEEP_XPD_FOSC_CLK at 0 range 30 .. 30;
      HP_SLEEP_PD_OSC_CLK   at 0 range 31 .. 31;
   end record;

   subtype LP_SLEEP_LP_REGULATOR0_LP_SLEEP_LP_REGULATOR_SLP_DBIAS_Field is
     HAL.UInt4;
   subtype LP_SLEEP_LP_REGULATOR0_LP_SLEEP_LP_REGULATOR_DBIAS_Field is
     HAL.UInt5;

   --  need_des
   type LP_SLEEP_LP_REGULATOR0_Register is record
      --  unspecified
      Reserved_0_20                   : HAL.UInt21 := 16#0#;
      --  need_des
      LP_SLEEP_LP_REGULATOR_SLP_XPD   : Boolean := True;
      --  need_des
      LP_SLEEP_LP_REGULATOR_XPD       : Boolean := True;
      --  need_des
      LP_SLEEP_LP_REGULATOR_SLP_DBIAS : LP_SLEEP_LP_REGULATOR0_LP_SLEEP_LP_REGULATOR_SLP_DBIAS_Field :=
                                         16#C#;
      --  need_des
      LP_SLEEP_LP_REGULATOR_DBIAS     : LP_SLEEP_LP_REGULATOR0_LP_SLEEP_LP_REGULATOR_DBIAS_Field :=
                                         16#18#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_LP_REGULATOR0_Register use record
      Reserved_0_20                   at 0 range 0 .. 20;
      LP_SLEEP_LP_REGULATOR_SLP_XPD   at 0 range 21 .. 21;
      LP_SLEEP_LP_REGULATOR_XPD       at 0 range 22 .. 22;
      LP_SLEEP_LP_REGULATOR_SLP_DBIAS at 0 range 23 .. 26;
      LP_SLEEP_LP_REGULATOR_DBIAS     at 0 range 27 .. 31;
   end record;

   subtype LP_SLEEP_LP_REGULATOR1_LP_SLEEP_LP_REGULATOR_DRV_B_Field is
     HAL.UInt4;

   --  need_des
   type LP_SLEEP_LP_REGULATOR1_Register is record
      --  unspecified
      Reserved_0_27               : HAL.UInt28 := 16#0#;
      --  need_des
      LP_SLEEP_LP_REGULATOR_DRV_B : LP_SLEEP_LP_REGULATOR1_LP_SLEEP_LP_REGULATOR_DRV_B_Field :=
                                     16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_LP_REGULATOR1_Register use record
      Reserved_0_27               at 0 range 0 .. 27;
      LP_SLEEP_LP_REGULATOR_DRV_B at 0 range 28 .. 31;
   end record;

   --  need_des
   type LP_SLEEP_XTAL_Register is record
      --  unspecified
      Reserved_0_30     : HAL.UInt31 := 16#0#;
      --  need_des
      LP_SLEEP_XPD_XTAL : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_XTAL_Register use record
      Reserved_0_30     at 0 range 0 .. 30;
      LP_SLEEP_XPD_XTAL at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_SLEEP_LP_DIG_POWER_Register is record
      --  unspecified
      Reserved_0_29             : HAL.UInt30 := 16#0#;
      --  need_des
      LP_SLEEP_LP_MEM_DSLP      : Boolean := False;
      --  need_des
      LP_SLEEP_PD_LP_PERI_PD_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_LP_DIG_POWER_Register use record
      Reserved_0_29             at 0 range 0 .. 29;
      LP_SLEEP_LP_MEM_DSLP      at 0 range 30 .. 30;
      LP_SLEEP_PD_LP_PERI_PD_EN at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_SLEEP_LP_CK_POWER_Register is record
      --  unspecified
      Reserved_0_27         : HAL.UInt28 := 16#0#;
      --  need_des
      LP_SLEEP_XPD_XTAL32K  : Boolean := False;
      --  need_des
      LP_SLEEP_XPD_RC32K    : Boolean := False;
      --  need_des
      LP_SLEEP_XPD_FOSC_CLK : Boolean := True;
      --  need_des
      LP_SLEEP_PD_OSC_CLK   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_LP_CK_POWER_Register use record
      Reserved_0_27         at 0 range 0 .. 27;
      LP_SLEEP_XPD_XTAL32K  at 0 range 28 .. 28;
      LP_SLEEP_XPD_RC32K    at 0 range 29 .. 29;
      LP_SLEEP_XPD_FOSC_CLK at 0 range 30 .. 30;
      LP_SLEEP_PD_OSC_CLK   at 0 range 31 .. 31;
   end record;

   subtype LP_SLEEP_BIAS_LP_SLEEP_DBG_ATTEN_Field is HAL.UInt4;

   --  need_des
   type LP_SLEEP_BIAS_Register is record
      --  unspecified
      Reserved_0_24      : HAL.UInt25 := 16#0#;
      --  need_des
      LP_SLEEP_XPD_BIAS  : Boolean := False;
      --  need_des
      LP_SLEEP_DBG_ATTEN : LP_SLEEP_BIAS_LP_SLEEP_DBG_ATTEN_Field := 16#0#;
      --  need_des
      LP_SLEEP_PD_CUR    : Boolean := False;
      --  need_des
      SLEEP              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_SLEEP_BIAS_Register use record
      Reserved_0_24      at 0 range 0 .. 24;
      LP_SLEEP_XPD_BIAS  at 0 range 25 .. 25;
      LP_SLEEP_DBG_ATTEN at 0 range 26 .. 29;
      LP_SLEEP_PD_CUR    at 0 range 30 .. 30;
      SLEEP              at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_HP_CK_POWER_Register is record
      --  Write-only. need_des
      TIE_LOW_GLOBAL_BBPLL_ICG  : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_GLOBAL_XTAL_ICG   : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_I2C_RETENTION     : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_XPD_BB_I2C        : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_XPD_BBPLL_I2C     : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_XPD_BBPLL         : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_XPD_XTAL          : Boolean := False;
      --  unspecified
      Reserved_7_24             : HAL.UInt18 := 16#0#;
      --  Write-only. need_des
      TIE_HIGH_GLOBAL_BBPLL_ICG : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_GLOBAL_XTAL_ICG  : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_I2C_RETENTION    : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_XPD_BB_I2C       : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_XPD_BBPLL_I2C    : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_XPD_BBPLL        : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_XPD_XTAL         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_HP_CK_POWER_Register use record
      TIE_LOW_GLOBAL_BBPLL_ICG  at 0 range 0 .. 0;
      TIE_LOW_GLOBAL_XTAL_ICG   at 0 range 1 .. 1;
      TIE_LOW_I2C_RETENTION     at 0 range 2 .. 2;
      TIE_LOW_XPD_BB_I2C        at 0 range 3 .. 3;
      TIE_LOW_XPD_BBPLL_I2C     at 0 range 4 .. 4;
      TIE_LOW_XPD_BBPLL         at 0 range 5 .. 5;
      TIE_LOW_XPD_XTAL          at 0 range 6 .. 6;
      Reserved_7_24             at 0 range 7 .. 24;
      TIE_HIGH_GLOBAL_BBPLL_ICG at 0 range 25 .. 25;
      TIE_HIGH_GLOBAL_XTAL_ICG  at 0 range 26 .. 26;
      TIE_HIGH_I2C_RETENTION    at 0 range 27 .. 27;
      TIE_HIGH_XPD_BB_I2C       at 0 range 28 .. 28;
      TIE_HIGH_XPD_BBPLL_I2C    at 0 range 29 .. 29;
      TIE_HIGH_XPD_BBPLL        at 0 range 30 .. 30;
      TIE_HIGH_XPD_XTAL         at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_SLEEP_SYSCLK_Register is record
      --  unspecified
      Reserved_0_27          : HAL.UInt28 := 16#0#;
      --  Write-only. need_des
      UPDATE_DIG_ICG_SWITCH  : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_ICG_SLP_SEL    : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_ICG_SLP_SEL   : Boolean := False;
      --  Write-only. need_des
      UPDATE_DIG_SYS_CLK_SEL : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_SLEEP_SYSCLK_Register use record
      Reserved_0_27          at 0 range 0 .. 27;
      UPDATE_DIG_ICG_SWITCH  at 0 range 28 .. 28;
      TIE_LOW_ICG_SLP_SEL    at 0 range 29 .. 29;
      TIE_HIGH_ICG_SLP_SEL   at 0 range 30 .. 30;
      UPDATE_DIG_SYS_CLK_SEL at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_HP_FUNC_ICG_Register is record
      --  unspecified
      Reserved_0_30          : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      UPDATE_DIG_ICG_FUNC_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_HP_FUNC_ICG_Register use record
      Reserved_0_30          at 0 range 0 .. 30;
      UPDATE_DIG_ICG_FUNC_EN at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_HP_APB_ICG_Register is record
      --  unspecified
      Reserved_0_30         : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      UPDATE_DIG_ICG_APB_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_HP_APB_ICG_Register use record
      Reserved_0_30         at 0 range 0 .. 30;
      UPDATE_DIG_ICG_APB_EN at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_MODEM_ICG_Register is record
      --  unspecified
      Reserved_0_30           : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      UPDATE_DIG_ICG_MODEM_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_MODEM_ICG_Register use record
      Reserved_0_30           at 0 range 0 .. 30;
      UPDATE_DIG_ICG_MODEM_EN at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_LP_ICG_Register is record
      --  unspecified
      Reserved_0_29           : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      TIE_LOW_LP_ROOTCLK_SEL  : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_LP_ROOTCLK_SEL : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_LP_ICG_Register use record
      Reserved_0_29           at 0 range 0 .. 29;
      TIE_LOW_LP_ROOTCLK_SEL  at 0 range 30 .. 30;
      TIE_HIGH_LP_ROOTCLK_SEL at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_PAD_HOLD_ALL_Register is record
      --  unspecified
      Reserved_0_27            : HAL.UInt28 := 16#0#;
      --  Write-only. need_des
      TIE_HIGH_LP_PAD_HOLD_ALL : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_LP_PAD_HOLD_ALL  : Boolean := False;
      --  Write-only. need_des
      TIE_HIGH_HP_PAD_HOLD_ALL : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_HP_PAD_HOLD_ALL  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_PAD_HOLD_ALL_Register use record
      Reserved_0_27            at 0 range 0 .. 27;
      TIE_HIGH_LP_PAD_HOLD_ALL at 0 range 28 .. 28;
      TIE_LOW_LP_PAD_HOLD_ALL  at 0 range 29 .. 29;
      TIE_HIGH_HP_PAD_HOLD_ALL at 0 range 30 .. 30;
      TIE_LOW_HP_PAD_HOLD_ALL  at 0 range 31 .. 31;
   end record;

   --  need_des
   type IMM_I2C_ISO_Register is record
      --  unspecified
      Reserved_0_29       : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      TIE_HIGH_I2C_ISO_EN : Boolean := False;
      --  Write-only. need_des
      TIE_LOW_I2C_ISO_EN  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMM_I2C_ISO_Register use record
      Reserved_0_29       at 0 range 0 .. 29;
      TIE_HIGH_I2C_ISO_EN at 0 range 30 .. 30;
      TIE_LOW_I2C_ISO_EN  at 0 range 31 .. 31;
   end record;

   subtype POWER_WAIT_TIMER0_DG_HP_POWERDOWN_TIMER_Field is HAL.UInt9;
   subtype POWER_WAIT_TIMER0_DG_HP_POWERUP_TIMER_Field is HAL.UInt9;
   subtype POWER_WAIT_TIMER0_DG_HP_WAIT_TIMER_Field is HAL.UInt9;

   --  need_des
   type POWER_WAIT_TIMER0_Register is record
      --  unspecified
      Reserved_0_4          : HAL.UInt5 := 16#0#;
      --  need_des
      DG_HP_POWERDOWN_TIMER : POWER_WAIT_TIMER0_DG_HP_POWERDOWN_TIMER_Field :=
                               16#FF#;
      --  need_des
      DG_HP_POWERUP_TIMER   : POWER_WAIT_TIMER0_DG_HP_POWERUP_TIMER_Field :=
                               16#FF#;
      --  need_des
      DG_HP_WAIT_TIMER      : POWER_WAIT_TIMER0_DG_HP_WAIT_TIMER_Field :=
                               16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_WAIT_TIMER0_Register use record
      Reserved_0_4          at 0 range 0 .. 4;
      DG_HP_POWERDOWN_TIMER at 0 range 5 .. 13;
      DG_HP_POWERUP_TIMER   at 0 range 14 .. 22;
      DG_HP_WAIT_TIMER      at 0 range 23 .. 31;
   end record;

   subtype POWER_WAIT_TIMER1_DG_LP_POWERDOWN_TIMER_Field is HAL.UInt7;
   subtype POWER_WAIT_TIMER1_DG_LP_POWERUP_TIMER_Field is HAL.UInt7;
   subtype POWER_WAIT_TIMER1_DG_LP_WAIT_TIMER_Field is HAL.UInt9;

   --  need_des
   type POWER_WAIT_TIMER1_Register is record
      --  unspecified
      Reserved_0_8          : HAL.UInt9 := 16#0#;
      --  need_des
      DG_LP_POWERDOWN_TIMER : POWER_WAIT_TIMER1_DG_LP_POWERDOWN_TIMER_Field :=
                               16#7F#;
      --  need_des
      DG_LP_POWERUP_TIMER   : POWER_WAIT_TIMER1_DG_LP_POWERUP_TIMER_Field :=
                               16#7F#;
      --  need_des
      DG_LP_WAIT_TIMER      : POWER_WAIT_TIMER1_DG_LP_WAIT_TIMER_Field :=
                               16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_WAIT_TIMER1_Register use record
      Reserved_0_8          at 0 range 0 .. 8;
      DG_LP_POWERDOWN_TIMER at 0 range 9 .. 15;
      DG_LP_POWERUP_TIMER   at 0 range 16 .. 22;
      DG_LP_WAIT_TIMER      at 0 range 23 .. 31;
   end record;

   subtype POWER_PD_TOP_CNTL_PD_TOP_MASK_Field is HAL.UInt5;
   subtype POWER_PD_TOP_CNTL_PD_TOP_PD_MASK_Field is HAL.UInt5;

   --  need_des
   type POWER_PD_TOP_CNTL_Register is record
      --  need_des
      FORCE_TOP_RESET    : Boolean := False;
      --  need_des
      FORCE_TOP_ISO      : Boolean := False;
      --  need_des
      FORCE_TOP_PU       : Boolean := True;
      --  need_des
      FORCE_TOP_NO_RESET : Boolean := True;
      --  need_des
      FORCE_TOP_NO_ISO   : Boolean := True;
      --  need_des
      FORCE_TOP_PD       : Boolean := False;
      --  need_des
      PD_TOP_MASK        : POWER_PD_TOP_CNTL_PD_TOP_MASK_Field := 16#0#;
      --  unspecified
      Reserved_11_26     : HAL.UInt16 := 16#0#;
      --  need_des
      PD_TOP_PD_MASK     : POWER_PD_TOP_CNTL_PD_TOP_PD_MASK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_TOP_CNTL_Register use record
      FORCE_TOP_RESET    at 0 range 0 .. 0;
      FORCE_TOP_ISO      at 0 range 1 .. 1;
      FORCE_TOP_PU       at 0 range 2 .. 2;
      FORCE_TOP_NO_RESET at 0 range 3 .. 3;
      FORCE_TOP_NO_ISO   at 0 range 4 .. 4;
      FORCE_TOP_PD       at 0 range 5 .. 5;
      PD_TOP_MASK        at 0 range 6 .. 10;
      Reserved_11_26     at 0 range 11 .. 26;
      PD_TOP_PD_MASK     at 0 range 27 .. 31;
   end record;

   subtype POWER_PD_HPAON_CNTL_PD_HP_AON_MASK_Field is HAL.UInt5;
   subtype POWER_PD_HPAON_CNTL_PD_HP_AON_PD_MASK_Field is HAL.UInt5;

   --  need_des
   type POWER_PD_HPAON_CNTL_Register is record
      --  need_des
      FORCE_HP_AON_RESET    : Boolean := False;
      --  need_des
      FORCE_HP_AON_ISO      : Boolean := False;
      --  need_des
      FORCE_HP_AON_PU       : Boolean := True;
      --  need_des
      FORCE_HP_AON_NO_RESET : Boolean := True;
      --  need_des
      FORCE_HP_AON_NO_ISO   : Boolean := True;
      --  need_des
      FORCE_HP_AON_PD       : Boolean := False;
      --  need_des
      PD_HP_AON_MASK        : POWER_PD_HPAON_CNTL_PD_HP_AON_MASK_Field :=
                               16#0#;
      --  unspecified
      Reserved_11_26        : HAL.UInt16 := 16#0#;
      --  need_des
      PD_HP_AON_PD_MASK     : POWER_PD_HPAON_CNTL_PD_HP_AON_PD_MASK_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_HPAON_CNTL_Register use record
      FORCE_HP_AON_RESET    at 0 range 0 .. 0;
      FORCE_HP_AON_ISO      at 0 range 1 .. 1;
      FORCE_HP_AON_PU       at 0 range 2 .. 2;
      FORCE_HP_AON_NO_RESET at 0 range 3 .. 3;
      FORCE_HP_AON_NO_ISO   at 0 range 4 .. 4;
      FORCE_HP_AON_PD       at 0 range 5 .. 5;
      PD_HP_AON_MASK        at 0 range 6 .. 10;
      Reserved_11_26        at 0 range 11 .. 26;
      PD_HP_AON_PD_MASK     at 0 range 27 .. 31;
   end record;

   subtype POWER_PD_HPCPU_CNTL_PD_HP_CPU_MASK_Field is HAL.UInt5;
   subtype POWER_PD_HPCPU_CNTL_PD_HP_CPU_PD_MASK_Field is HAL.UInt5;

   --  need_des
   type POWER_PD_HPCPU_CNTL_Register is record
      --  need_des
      FORCE_HP_CPU_RESET    : Boolean := False;
      --  need_des
      FORCE_HP_CPU_ISO      : Boolean := False;
      --  need_des
      FORCE_HP_CPU_PU       : Boolean := True;
      --  need_des
      FORCE_HP_CPU_NO_RESET : Boolean := True;
      --  need_des
      FORCE_HP_CPU_NO_ISO   : Boolean := True;
      --  need_des
      FORCE_HP_CPU_PD       : Boolean := False;
      --  need_des
      PD_HP_CPU_MASK        : POWER_PD_HPCPU_CNTL_PD_HP_CPU_MASK_Field :=
                               16#0#;
      --  unspecified
      Reserved_11_26        : HAL.UInt16 := 16#0#;
      --  need_des
      PD_HP_CPU_PD_MASK     : POWER_PD_HPCPU_CNTL_PD_HP_CPU_PD_MASK_Field :=
                               16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_HPCPU_CNTL_Register use record
      FORCE_HP_CPU_RESET    at 0 range 0 .. 0;
      FORCE_HP_CPU_ISO      at 0 range 1 .. 1;
      FORCE_HP_CPU_PU       at 0 range 2 .. 2;
      FORCE_HP_CPU_NO_RESET at 0 range 3 .. 3;
      FORCE_HP_CPU_NO_ISO   at 0 range 4 .. 4;
      FORCE_HP_CPU_PD       at 0 range 5 .. 5;
      PD_HP_CPU_MASK        at 0 range 6 .. 10;
      Reserved_11_26        at 0 range 11 .. 26;
      PD_HP_CPU_PD_MASK     at 0 range 27 .. 31;
   end record;

   subtype POWER_PD_HPWIFI_CNTL_PD_HP_WIFI_MASK_Field is HAL.UInt5;
   subtype POWER_PD_HPWIFI_CNTL_PD_HP_WIFI_PD_MASK_Field is HAL.UInt5;

   --  need_des
   type POWER_PD_HPWIFI_CNTL_Register is record
      --  need_des
      FORCE_HP_WIFI_RESET    : Boolean := False;
      --  need_des
      FORCE_HP_WIFI_ISO      : Boolean := False;
      --  need_des
      FORCE_HP_WIFI_PU       : Boolean := True;
      --  need_des
      FORCE_HP_WIFI_NO_RESET : Boolean := True;
      --  need_des
      FORCE_HP_WIFI_NO_ISO   : Boolean := True;
      --  need_des
      FORCE_HP_WIFI_PD       : Boolean := False;
      --  need_des
      PD_HP_WIFI_MASK        : POWER_PD_HPWIFI_CNTL_PD_HP_WIFI_MASK_Field :=
                                16#0#;
      --  unspecified
      Reserved_11_26         : HAL.UInt16 := 16#0#;
      --  need_des
      PD_HP_WIFI_PD_MASK     : POWER_PD_HPWIFI_CNTL_PD_HP_WIFI_PD_MASK_Field :=
                                16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_HPWIFI_CNTL_Register use record
      FORCE_HP_WIFI_RESET    at 0 range 0 .. 0;
      FORCE_HP_WIFI_ISO      at 0 range 1 .. 1;
      FORCE_HP_WIFI_PU       at 0 range 2 .. 2;
      FORCE_HP_WIFI_NO_RESET at 0 range 3 .. 3;
      FORCE_HP_WIFI_NO_ISO   at 0 range 4 .. 4;
      FORCE_HP_WIFI_PD       at 0 range 5 .. 5;
      PD_HP_WIFI_MASK        at 0 range 6 .. 10;
      Reserved_11_26         at 0 range 11 .. 26;
      PD_HP_WIFI_PD_MASK     at 0 range 27 .. 31;
   end record;

   --  need_des
   type POWER_PD_LPPERI_CNTL_Register is record
      --  need_des
      FORCE_LP_PERI_RESET    : Boolean := False;
      --  need_des
      FORCE_LP_PERI_ISO      : Boolean := False;
      --  need_des
      FORCE_LP_PERI_PU       : Boolean := True;
      --  need_des
      FORCE_LP_PERI_NO_RESET : Boolean := True;
      --  need_des
      FORCE_LP_PERI_NO_ISO   : Boolean := True;
      --  need_des
      FORCE_LP_PERI_PD       : Boolean := False;
      --  unspecified
      Reserved_6_31          : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_LPPERI_CNTL_Register use record
      FORCE_LP_PERI_RESET    at 0 range 0 .. 0;
      FORCE_LP_PERI_ISO      at 0 range 1 .. 1;
      FORCE_LP_PERI_PU       at 0 range 2 .. 2;
      FORCE_LP_PERI_NO_RESET at 0 range 3 .. 3;
      FORCE_LP_PERI_NO_ISO   at 0 range 4 .. 4;
      FORCE_LP_PERI_PD       at 0 range 5 .. 5;
      Reserved_6_31          at 0 range 6 .. 31;
   end record;

   subtype POWER_PD_MEM_CNTL_FORCE_HP_MEM_ISO_Field is HAL.UInt4;
   subtype POWER_PD_MEM_CNTL_FORCE_HP_MEM_PD_Field is HAL.UInt4;
   subtype POWER_PD_MEM_CNTL_FORCE_HP_MEM_NO_ISO_Field is HAL.UInt4;
   subtype POWER_PD_MEM_CNTL_FORCE_HP_MEM_PU_Field is HAL.UInt4;

   --  need_des
   type POWER_PD_MEM_CNTL_Register is record
      --  need_des
      FORCE_HP_MEM_ISO    : POWER_PD_MEM_CNTL_FORCE_HP_MEM_ISO_Field := 16#0#;
      --  need_des
      FORCE_HP_MEM_PD     : POWER_PD_MEM_CNTL_FORCE_HP_MEM_PD_Field := 16#0#;
      --  unspecified
      Reserved_8_23       : HAL.UInt16 := 16#0#;
      --  need_des
      FORCE_HP_MEM_NO_ISO : POWER_PD_MEM_CNTL_FORCE_HP_MEM_NO_ISO_Field :=
                             16#F#;
      --  need_des
      FORCE_HP_MEM_PU     : POWER_PD_MEM_CNTL_FORCE_HP_MEM_PU_Field := 16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_MEM_CNTL_Register use record
      FORCE_HP_MEM_ISO    at 0 range 0 .. 3;
      FORCE_HP_MEM_PD     at 0 range 4 .. 7;
      Reserved_8_23       at 0 range 8 .. 23;
      FORCE_HP_MEM_NO_ISO at 0 range 24 .. 27;
      FORCE_HP_MEM_PU     at 0 range 28 .. 31;
   end record;

   subtype POWER_PD_MEM_MASK_PD_HP_MEM2_PD_MASK_Field is HAL.UInt5;
   subtype POWER_PD_MEM_MASK_PD_HP_MEM1_PD_MASK_Field is HAL.UInt5;
   subtype POWER_PD_MEM_MASK_PD_HP_MEM0_PD_MASK_Field is HAL.UInt5;
   subtype POWER_PD_MEM_MASK_PD_HP_MEM2_MASK_Field is HAL.UInt5;
   subtype POWER_PD_MEM_MASK_PD_HP_MEM1_MASK_Field is HAL.UInt5;
   subtype POWER_PD_MEM_MASK_PD_HP_MEM0_MASK_Field is HAL.UInt5;

   --  need_des
   type POWER_PD_MEM_MASK_Register is record
      --  need_des
      PD_HP_MEM2_PD_MASK : POWER_PD_MEM_MASK_PD_HP_MEM2_PD_MASK_Field :=
                            16#0#;
      --  need_des
      PD_HP_MEM1_PD_MASK : POWER_PD_MEM_MASK_PD_HP_MEM1_PD_MASK_Field :=
                            16#0#;
      --  need_des
      PD_HP_MEM0_PD_MASK : POWER_PD_MEM_MASK_PD_HP_MEM0_PD_MASK_Field :=
                            16#0#;
      --  unspecified
      Reserved_15_16     : HAL.UInt2 := 16#0#;
      --  need_des
      PD_HP_MEM2_MASK    : POWER_PD_MEM_MASK_PD_HP_MEM2_MASK_Field := 16#0#;
      --  need_des
      PD_HP_MEM1_MASK    : POWER_PD_MEM_MASK_PD_HP_MEM1_MASK_Field := 16#0#;
      --  need_des
      PD_HP_MEM0_MASK    : POWER_PD_MEM_MASK_PD_HP_MEM0_MASK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_PD_MEM_MASK_Register use record
      PD_HP_MEM2_PD_MASK at 0 range 0 .. 4;
      PD_HP_MEM1_PD_MASK at 0 range 5 .. 9;
      PD_HP_MEM0_PD_MASK at 0 range 10 .. 14;
      Reserved_15_16     at 0 range 15 .. 16;
      PD_HP_MEM2_MASK    at 0 range 17 .. 21;
      PD_HP_MEM1_MASK    at 0 range 22 .. 26;
      PD_HP_MEM0_MASK    at 0 range 27 .. 31;
   end record;

   --  need_des
   type POWER_HP_PAD_Register is record
      --  need_des
      FORCE_HP_PAD_NO_ISO_ALL : Boolean := False;
      --  need_des
      FORCE_HP_PAD_ISO_ALL    : Boolean := False;
      --  unspecified
      Reserved_2_31           : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_HP_PAD_Register use record
      FORCE_HP_PAD_NO_ISO_ALL at 0 range 0 .. 0;
      FORCE_HP_PAD_ISO_ALL    at 0 range 1 .. 1;
      Reserved_2_31           at 0 range 2 .. 31;
   end record;

   subtype POWER_VDD_SPI_CNTL_VDD_SPI_PWR_WAIT_Field is HAL.UInt11;
   subtype POWER_VDD_SPI_CNTL_VDD_SPI_PWR_SW_Field is HAL.UInt2;

   --  need_des
   type POWER_VDD_SPI_CNTL_Register is record
      --  unspecified
      Reserved_0_17      : HAL.UInt18 := 16#0#;
      --  need_des
      VDD_SPI_PWR_WAIT   : POWER_VDD_SPI_CNTL_VDD_SPI_PWR_WAIT_Field :=
                            16#FF#;
      --  need_des
      VDD_SPI_PWR_SW     : POWER_VDD_SPI_CNTL_VDD_SPI_PWR_SW_Field := 16#3#;
      --  need_des
      VDD_SPI_PWR_SEL_SW : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_VDD_SPI_CNTL_Register use record
      Reserved_0_17      at 0 range 0 .. 17;
      VDD_SPI_PWR_WAIT   at 0 range 18 .. 28;
      VDD_SPI_PWR_SW     at 0 range 29 .. 30;
      VDD_SPI_PWR_SEL_SW at 0 range 31 .. 31;
   end record;

   subtype POWER_CK_WAIT_CNTL_WAIT_XTL_STABLE_Field is HAL.UInt16;
   subtype POWER_CK_WAIT_CNTL_WAIT_PLL_STABLE_Field is HAL.UInt16;

   --  need_des
   type POWER_CK_WAIT_CNTL_Register is record
      --  need_des
      WAIT_XTL_STABLE : POWER_CK_WAIT_CNTL_WAIT_XTL_STABLE_Field := 16#100#;
      --  need_des
      WAIT_PLL_STABLE : POWER_CK_WAIT_CNTL_WAIT_PLL_STABLE_Field := 16#100#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_CK_WAIT_CNTL_Register use record
      WAIT_XTL_STABLE at 0 range 0 .. 15;
      WAIT_PLL_STABLE at 0 range 16 .. 31;
   end record;

   --  need_des
   type SLP_WAKEUP_CNTL0_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      SLEEP_REQ     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL0_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      SLEEP_REQ     at 0 range 31 .. 31;
   end record;

   subtype SLP_WAKEUP_CNTL1_SLEEP_REJECT_ENA_Field is HAL.UInt31;

   --  need_des
   type SLP_WAKEUP_CNTL1_Register is record
      --  need_des
      SLEEP_REJECT_ENA : SLP_WAKEUP_CNTL1_SLEEP_REJECT_ENA_Field := 16#0#;
      --  need_des
      SLP_REJECT_EN    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL1_Register use record
      SLEEP_REJECT_ENA at 0 range 0 .. 30;
      SLP_REJECT_EN    at 0 range 31 .. 31;
   end record;

   subtype SLP_WAKEUP_CNTL3_LP_MIN_SLP_VAL_Field is HAL.UInt8;
   subtype SLP_WAKEUP_CNTL3_HP_MIN_SLP_VAL_Field is HAL.UInt8;
   subtype SLP_WAKEUP_CNTL3_SLEEP_PRT_SEL_Field is HAL.UInt2;

   --  need_des
   type SLP_WAKEUP_CNTL3_Register is record
      --  need_des
      LP_MIN_SLP_VAL : SLP_WAKEUP_CNTL3_LP_MIN_SLP_VAL_Field := 16#0#;
      --  need_des
      HP_MIN_SLP_VAL : SLP_WAKEUP_CNTL3_HP_MIN_SLP_VAL_Field := 16#0#;
      --  need_des
      SLEEP_PRT_SEL  : SLP_WAKEUP_CNTL3_SLEEP_PRT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL3_Register use record
      LP_MIN_SLP_VAL at 0 range 0 .. 7;
      HP_MIN_SLP_VAL at 0 range 8 .. 15;
      SLEEP_PRT_SEL  at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  need_des
   type SLP_WAKEUP_CNTL4_Register is record
      --  unspecified
      Reserved_0_30        : HAL.UInt31 := 16#0#;
      --  Write-only. need_des
      SLP_REJECT_CAUSE_CLR : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL4_Register use record
      Reserved_0_30        at 0 range 0 .. 30;
      SLP_REJECT_CAUSE_CLR at 0 range 31 .. 31;
   end record;

   subtype SLP_WAKEUP_CNTL5_MODEM_WAIT_TARGET_Field is HAL.UInt20;
   subtype SLP_WAKEUP_CNTL5_LP_ANA_WAIT_TARGET_Field is HAL.UInt8;

   --  need_des
   type SLP_WAKEUP_CNTL5_Register is record
      --  need_des
      MODEM_WAIT_TARGET  : SLP_WAKEUP_CNTL5_MODEM_WAIT_TARGET_Field := 16#80#;
      --  unspecified
      Reserved_20_23     : HAL.UInt4 := 16#0#;
      --  need_des
      LP_ANA_WAIT_TARGET : SLP_WAKEUP_CNTL5_LP_ANA_WAIT_TARGET_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL5_Register use record
      MODEM_WAIT_TARGET  at 0 range 0 .. 19;
      Reserved_20_23     at 0 range 20 .. 23;
      LP_ANA_WAIT_TARGET at 0 range 24 .. 31;
   end record;

   subtype SLP_WAKEUP_CNTL6_SOC_WAKEUP_WAIT_Field is HAL.UInt20;
   subtype SLP_WAKEUP_CNTL6_SOC_WAKEUP_WAIT_CFG_Field is HAL.UInt2;

   --  need_des
   type SLP_WAKEUP_CNTL6_Register is record
      --  need_des
      SOC_WAKEUP_WAIT     : SLP_WAKEUP_CNTL6_SOC_WAKEUP_WAIT_Field := 16#80#;
      --  unspecified
      Reserved_20_29      : HAL.UInt10 := 16#0#;
      --  need_des
      SOC_WAKEUP_WAIT_CFG : SLP_WAKEUP_CNTL6_SOC_WAKEUP_WAIT_CFG_Field :=
                             16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL6_Register use record
      SOC_WAKEUP_WAIT     at 0 range 0 .. 19;
      Reserved_20_29      at 0 range 20 .. 29;
      SOC_WAKEUP_WAIT_CFG at 0 range 30 .. 31;
   end record;

   subtype SLP_WAKEUP_CNTL7_ANA_WAIT_TARGET_Field is HAL.UInt16;

   --  need_des
   type SLP_WAKEUP_CNTL7_Register is record
      --  unspecified
      Reserved_0_15   : HAL.UInt16 := 16#0#;
      --  need_des
      ANA_WAIT_TARGET : SLP_WAKEUP_CNTL7_ANA_WAIT_TARGET_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CNTL7_Register use record
      Reserved_0_15   at 0 range 0 .. 15;
      ANA_WAIT_TARGET at 0 range 16 .. 31;
   end record;

   subtype HP_CK_POWERON_I2C_POR_WAIT_TARGET_Field is HAL.UInt8;

   --  need_des
   type HP_CK_POWERON_Register is record
      --  need_des
      I2C_POR_WAIT_TARGET : HP_CK_POWERON_I2C_POR_WAIT_TARGET_Field := 16#32#;
      --  unspecified
      Reserved_8_31       : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_CK_POWERON_Register use record
      I2C_POR_WAIT_TARGET at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype HP_CK_CNTL_MODIFY_ICG_CNTL_WAIT_Field is HAL.UInt8;
   subtype HP_CK_CNTL_SWITCH_ICG_CNTL_WAIT_Field is HAL.UInt8;

   --  need_des
   type HP_CK_CNTL_Register is record
      --  need_des
      MODIFY_ICG_CNTL_WAIT : HP_CK_CNTL_MODIFY_ICG_CNTL_WAIT_Field := 16#A#;
      --  need_des
      SWITCH_ICG_CNTL_WAIT : HP_CK_CNTL_SWITCH_ICG_CNTL_WAIT_Field := 16#A#;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_CK_CNTL_Register use record
      MODIFY_ICG_CNTL_WAIT at 0 range 0 .. 7;
      SWITCH_ICG_CNTL_WAIT at 0 range 8 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  need_des
   type POR_STATUS_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31;
      --  Read-only. need_des
      POR_DONE      : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POR_STATUS_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      POR_DONE      at 0 range 31 .. 31;
   end record;

   --  need_des
   type RF_PWC_Register is record
      --  unspecified
      Reserved_0_25  : HAL.UInt26 := 16#0#;
      --  need_des
      PERIF_I2C_RSTB : Boolean := False;
      --  need_des
      XPD_PERIF_I2C  : Boolean := True;
      --  need_des
      XPD_TXRF_I2C   : Boolean := False;
      --  need_des
      XPD_RFRX_PBUS  : Boolean := False;
      --  need_des
      XPD_CKGEN_I2C  : Boolean := False;
      --  need_des
      XPD_PLL_I2C    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RF_PWC_Register use record
      Reserved_0_25  at 0 range 0 .. 25;
      PERIF_I2C_RSTB at 0 range 26 .. 26;
      XPD_PERIF_I2C  at 0 range 27 .. 27;
      XPD_TXRF_I2C   at 0 range 28 .. 28;
      XPD_RFRX_PBUS  at 0 range 29 .. 29;
      XPD_CKGEN_I2C  at 0 range 30 .. 30;
      XPD_PLL_I2C    at 0 range 31 .. 31;
   end record;

   --  need_des
   type BACKUP_CFG_Register is record
      --  unspecified
      Reserved_0_30         : HAL.UInt31 := 16#0#;
      --  need_des
      BACKUP_SYS_CLK_NO_DIV : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BACKUP_CFG_Register use record
      Reserved_0_30         at 0 range 0 .. 30;
      BACKUP_SYS_CLK_NO_DIV at 0 range 31 .. 31;
   end record;

   --  need_des
   type INT_RAW_Register is record
      --  unspecified
      Reserved_0_26            : HAL.UInt27 := 16#0#;
      --  need_des
      LP_CPU_EXC_INT_RAW       : Boolean := False;
      --  need_des
      SDIO_IDLE_INT_RAW        : Boolean := False;
      --  need_des
      SW_INT_RAW               : Boolean := False;
      --  need_des
      SOC_SLEEP_REJECT_INT_RAW : Boolean := False;
      --  need_des
      SOC_WAKEUP_INT_RAW       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      Reserved_0_26            at 0 range 0 .. 26;
      LP_CPU_EXC_INT_RAW       at 0 range 27 .. 27;
      SDIO_IDLE_INT_RAW        at 0 range 28 .. 28;
      SW_INT_RAW               at 0 range 29 .. 29;
      SOC_SLEEP_REJECT_INT_RAW at 0 range 30 .. 30;
      SOC_WAKEUP_INT_RAW       at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_INT_ST_Register is record
      --  unspecified
      Reserved_0_26           : HAL.UInt27;
      --  Read-only. need_des
      LP_CPU_EXC_INT_ST       : Boolean;
      --  Read-only. need_des
      SDIO_IDLE_INT_ST        : Boolean;
      --  Read-only. need_des
      SW_INT_ST               : Boolean;
      --  Read-only. need_des
      SOC_SLEEP_REJECT_INT_ST : Boolean;
      --  Read-only. need_des
      SOC_WAKEUP_INT_ST       : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_INT_ST_Register use record
      Reserved_0_26           at 0 range 0 .. 26;
      LP_CPU_EXC_INT_ST       at 0 range 27 .. 27;
      SDIO_IDLE_INT_ST        at 0 range 28 .. 28;
      SW_INT_ST               at 0 range 29 .. 29;
      SOC_SLEEP_REJECT_INT_ST at 0 range 30 .. 30;
      SOC_WAKEUP_INT_ST       at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_INT_ENA_Register is record
      --  unspecified
      Reserved_0_26            : HAL.UInt27 := 16#0#;
      --  need_des
      LP_CPU_EXC_INT_ENA       : Boolean := False;
      --  need_des
      SDIO_IDLE_INT_ENA        : Boolean := False;
      --  need_des
      SW_INT_ENA               : Boolean := False;
      --  need_des
      SOC_SLEEP_REJECT_INT_ENA : Boolean := False;
      --  need_des
      SOC_WAKEUP_INT_ENA       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_INT_ENA_Register use record
      Reserved_0_26            at 0 range 0 .. 26;
      LP_CPU_EXC_INT_ENA       at 0 range 27 .. 27;
      SDIO_IDLE_INT_ENA        at 0 range 28 .. 28;
      SW_INT_ENA               at 0 range 29 .. 29;
      SOC_SLEEP_REJECT_INT_ENA at 0 range 30 .. 30;
      SOC_WAKEUP_INT_ENA       at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_INT_CLR_Register is record
      --  unspecified
      Reserved_0_26            : HAL.UInt27 := 16#0#;
      --  Write-only. need_des
      LP_CPU_EXC_INT_CLR       : Boolean := False;
      --  Write-only. need_des
      SDIO_IDLE_INT_CLR        : Boolean := False;
      --  Write-only. need_des
      SW_INT_CLR               : Boolean := False;
      --  Write-only. need_des
      SOC_SLEEP_REJECT_INT_CLR : Boolean := False;
      --  Write-only. need_des
      SOC_WAKEUP_INT_CLR       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_INT_CLR_Register use record
      Reserved_0_26            at 0 range 0 .. 26;
      LP_CPU_EXC_INT_CLR       at 0 range 27 .. 27;
      SDIO_IDLE_INT_CLR        at 0 range 28 .. 28;
      SW_INT_CLR               at 0 range 29 .. 29;
      SOC_SLEEP_REJECT_INT_CLR at 0 range 30 .. 30;
      SOC_WAKEUP_INT_CLR       at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_RAW_Register is record
      --  unspecified
      Reserved_0_19                     : HAL.UInt20 := 16#0#;
      --  need_des
      LP_CPU_WAKEUP_INT_RAW             : Boolean := False;
      --  need_des
      MODEM_SWITCH_ACTIVE_END_INT_RAW   : Boolean := False;
      --  need_des
      SLEEP_SWITCH_ACTIVE_END_INT_RAW   : Boolean := False;
      --  need_des
      SLEEP_SWITCH_MODEM_END_INT_RAW    : Boolean := False;
      --  need_des
      MODEM_SWITCH_SLEEP_END_INT_RAW    : Boolean := False;
      --  need_des
      ACTIVE_SWITCH_SLEEP_END_INT_RAW   : Boolean := False;
      --  need_des
      MODEM_SWITCH_ACTIVE_START_INT_RAW : Boolean := False;
      --  need_des
      SLEEP_SWITCH_ACTIVE_START_INT_RAW : Boolean := False;
      --  need_des
      SLEEP_SWITCH_MODEM_START_INT_RAW  : Boolean := False;
      --  need_des
      MODEM_SWITCH_SLEEP_START_INT_RAW  : Boolean := False;
      --  need_des
      ACTIVE_SWITCH_SLEEP_START_INT_RAW : Boolean := False;
      --  need_des
      HP_SW_TRIGGER_INT_RAW             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_RAW_Register use record
      Reserved_0_19                     at 0 range 0 .. 19;
      LP_CPU_WAKEUP_INT_RAW             at 0 range 20 .. 20;
      MODEM_SWITCH_ACTIVE_END_INT_RAW   at 0 range 21 .. 21;
      SLEEP_SWITCH_ACTIVE_END_INT_RAW   at 0 range 22 .. 22;
      SLEEP_SWITCH_MODEM_END_INT_RAW    at 0 range 23 .. 23;
      MODEM_SWITCH_SLEEP_END_INT_RAW    at 0 range 24 .. 24;
      ACTIVE_SWITCH_SLEEP_END_INT_RAW   at 0 range 25 .. 25;
      MODEM_SWITCH_ACTIVE_START_INT_RAW at 0 range 26 .. 26;
      SLEEP_SWITCH_ACTIVE_START_INT_RAW at 0 range 27 .. 27;
      SLEEP_SWITCH_MODEM_START_INT_RAW  at 0 range 28 .. 28;
      MODEM_SWITCH_SLEEP_START_INT_RAW  at 0 range 29 .. 29;
      ACTIVE_SWITCH_SLEEP_START_INT_RAW at 0 range 30 .. 30;
      HP_SW_TRIGGER_INT_RAW             at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ST_Register is record
      --  unspecified
      Reserved_0_19                    : HAL.UInt20;
      --  Read-only. need_des
      LP_CPU_WAKEUP_INT_ST             : Boolean;
      --  Read-only. need_des
      MODEM_SWITCH_ACTIVE_END_INT_ST   : Boolean;
      --  Read-only. need_des
      SLEEP_SWITCH_ACTIVE_END_INT_ST   : Boolean;
      --  Read-only. need_des
      SLEEP_SWITCH_MODEM_END_INT_ST    : Boolean;
      --  Read-only. need_des
      MODEM_SWITCH_SLEEP_END_INT_ST    : Boolean;
      --  Read-only. need_des
      ACTIVE_SWITCH_SLEEP_END_INT_ST   : Boolean;
      --  Read-only. need_des
      MODEM_SWITCH_ACTIVE_START_INT_ST : Boolean;
      --  Read-only. need_des
      SLEEP_SWITCH_ACTIVE_START_INT_ST : Boolean;
      --  Read-only. need_des
      SLEEP_SWITCH_MODEM_START_INT_ST  : Boolean;
      --  Read-only. need_des
      MODEM_SWITCH_SLEEP_START_INT_ST  : Boolean;
      --  Read-only. need_des
      ACTIVE_SWITCH_SLEEP_START_INT_ST : Boolean;
      --  Read-only. need_des
      HP_SW_TRIGGER_INT_ST             : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ST_Register use record
      Reserved_0_19                    at 0 range 0 .. 19;
      LP_CPU_WAKEUP_INT_ST             at 0 range 20 .. 20;
      MODEM_SWITCH_ACTIVE_END_INT_ST   at 0 range 21 .. 21;
      SLEEP_SWITCH_ACTIVE_END_INT_ST   at 0 range 22 .. 22;
      SLEEP_SWITCH_MODEM_END_INT_ST    at 0 range 23 .. 23;
      MODEM_SWITCH_SLEEP_END_INT_ST    at 0 range 24 .. 24;
      ACTIVE_SWITCH_SLEEP_END_INT_ST   at 0 range 25 .. 25;
      MODEM_SWITCH_ACTIVE_START_INT_ST at 0 range 26 .. 26;
      SLEEP_SWITCH_ACTIVE_START_INT_ST at 0 range 27 .. 27;
      SLEEP_SWITCH_MODEM_START_INT_ST  at 0 range 28 .. 28;
      MODEM_SWITCH_SLEEP_START_INT_ST  at 0 range 29 .. 29;
      ACTIVE_SWITCH_SLEEP_START_INT_ST at 0 range 30 .. 30;
      HP_SW_TRIGGER_INT_ST             at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_ENA_Register is record
      --  unspecified
      Reserved_0_19                     : HAL.UInt20 := 16#0#;
      --  need_des
      LP_CPU_WAKEUP_INT_ENA             : Boolean := False;
      --  need_des
      MODEM_SWITCH_ACTIVE_END_INT_ENA   : Boolean := False;
      --  need_des
      SLEEP_SWITCH_ACTIVE_END_INT_ENA   : Boolean := False;
      --  need_des
      SLEEP_SWITCH_MODEM_END_INT_ENA    : Boolean := False;
      --  need_des
      MODEM_SWITCH_SLEEP_END_INT_ENA    : Boolean := False;
      --  need_des
      ACTIVE_SWITCH_SLEEP_END_INT_ENA   : Boolean := False;
      --  need_des
      MODEM_SWITCH_ACTIVE_START_INT_ENA : Boolean := False;
      --  need_des
      SLEEP_SWITCH_ACTIVE_START_INT_ENA : Boolean := False;
      --  need_des
      SLEEP_SWITCH_MODEM_START_INT_ENA  : Boolean := False;
      --  need_des
      MODEM_SWITCH_SLEEP_START_INT_ENA  : Boolean := False;
      --  need_des
      ACTIVE_SWITCH_SLEEP_START_INT_ENA : Boolean := False;
      --  need_des
      HP_SW_TRIGGER_INT_ENA             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_ENA_Register use record
      Reserved_0_19                     at 0 range 0 .. 19;
      LP_CPU_WAKEUP_INT_ENA             at 0 range 20 .. 20;
      MODEM_SWITCH_ACTIVE_END_INT_ENA   at 0 range 21 .. 21;
      SLEEP_SWITCH_ACTIVE_END_INT_ENA   at 0 range 22 .. 22;
      SLEEP_SWITCH_MODEM_END_INT_ENA    at 0 range 23 .. 23;
      MODEM_SWITCH_SLEEP_END_INT_ENA    at 0 range 24 .. 24;
      ACTIVE_SWITCH_SLEEP_END_INT_ENA   at 0 range 25 .. 25;
      MODEM_SWITCH_ACTIVE_START_INT_ENA at 0 range 26 .. 26;
      SLEEP_SWITCH_ACTIVE_START_INT_ENA at 0 range 27 .. 27;
      SLEEP_SWITCH_MODEM_START_INT_ENA  at 0 range 28 .. 28;
      MODEM_SWITCH_SLEEP_START_INT_ENA  at 0 range 29 .. 29;
      ACTIVE_SWITCH_SLEEP_START_INT_ENA at 0 range 30 .. 30;
      HP_SW_TRIGGER_INT_ENA             at 0 range 31 .. 31;
   end record;

   --  need_des
   type LP_INT_CLR_Register is record
      --  unspecified
      Reserved_0_19                     : HAL.UInt20 := 16#0#;
      --  Write-only. need_des
      LP_CPU_WAKEUP_INT_CLR             : Boolean := False;
      --  Write-only. need_des
      MODEM_SWITCH_ACTIVE_END_INT_CLR   : Boolean := False;
      --  Write-only. need_des
      SLEEP_SWITCH_ACTIVE_END_INT_CLR   : Boolean := False;
      --  Write-only. need_des
      SLEEP_SWITCH_MODEM_END_INT_CLR    : Boolean := False;
      --  Write-only. need_des
      MODEM_SWITCH_SLEEP_END_INT_CLR    : Boolean := False;
      --  Write-only. need_des
      ACTIVE_SWITCH_SLEEP_END_INT_CLR   : Boolean := False;
      --  Write-only. need_des
      MODEM_SWITCH_ACTIVE_START_INT_CLR : Boolean := False;
      --  Write-only. need_des
      SLEEP_SWITCH_ACTIVE_START_INT_CLR : Boolean := False;
      --  Write-only. need_des
      SLEEP_SWITCH_MODEM_START_INT_CLR  : Boolean := False;
      --  Write-only. need_des
      MODEM_SWITCH_SLEEP_START_INT_CLR  : Boolean := False;
      --  Write-only. need_des
      ACTIVE_SWITCH_SLEEP_START_INT_CLR : Boolean := False;
      --  Write-only. need_des
      HP_SW_TRIGGER_INT_CLR             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_INT_CLR_Register use record
      Reserved_0_19                     at 0 range 0 .. 19;
      LP_CPU_WAKEUP_INT_CLR             at 0 range 20 .. 20;
      MODEM_SWITCH_ACTIVE_END_INT_CLR   at 0 range 21 .. 21;
      SLEEP_SWITCH_ACTIVE_END_INT_CLR   at 0 range 22 .. 22;
      SLEEP_SWITCH_MODEM_END_INT_CLR    at 0 range 23 .. 23;
      MODEM_SWITCH_SLEEP_END_INT_CLR    at 0 range 24 .. 24;
      ACTIVE_SWITCH_SLEEP_END_INT_CLR   at 0 range 25 .. 25;
      MODEM_SWITCH_ACTIVE_START_INT_CLR at 0 range 26 .. 26;
      SLEEP_SWITCH_ACTIVE_START_INT_CLR at 0 range 27 .. 27;
      SLEEP_SWITCH_MODEM_START_INT_CLR  at 0 range 28 .. 28;
      MODEM_SWITCH_SLEEP_START_INT_CLR  at 0 range 29 .. 29;
      ACTIVE_SWITCH_SLEEP_START_INT_CLR at 0 range 30 .. 30;
      HP_SW_TRIGGER_INT_CLR             at 0 range 31 .. 31;
   end record;

   subtype LP_CPU_PWR0_LP_CPU_SLP_STALL_WAIT_Field is HAL.UInt8;

   --  need_des
   type LP_CPU_PWR0_Register is record
      --  Read-only. need_des
      LP_CPU_WAITI_RDY          : Boolean := False;
      --  Read-only. need_des
      LP_CPU_STALL_RDY          : Boolean := False;
      --  unspecified
      Reserved_2_17             : HAL.UInt16 := 16#0#;
      --  need_des
      LP_CPU_FORCE_STALL        : Boolean := False;
      --  need_des
      LP_CPU_SLP_WAITI_FLAG_EN  : Boolean := False;
      --  need_des
      LP_CPU_SLP_STALL_FLAG_EN  : Boolean := True;
      --  need_des
      LP_CPU_SLP_STALL_WAIT     : LP_CPU_PWR0_LP_CPU_SLP_STALL_WAIT_Field :=
                                   16#FF#;
      --  need_des
      LP_CPU_SLP_STALL_EN       : Boolean := False;
      --  need_des
      LP_CPU_SLP_RESET_EN       : Boolean := False;
      --  need_des
      LP_CPU_SLP_BYPASS_INTR_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_CPU_PWR0_Register use record
      LP_CPU_WAITI_RDY          at 0 range 0 .. 0;
      LP_CPU_STALL_RDY          at 0 range 1 .. 1;
      Reserved_2_17             at 0 range 2 .. 17;
      LP_CPU_FORCE_STALL        at 0 range 18 .. 18;
      LP_CPU_SLP_WAITI_FLAG_EN  at 0 range 19 .. 19;
      LP_CPU_SLP_STALL_FLAG_EN  at 0 range 20 .. 20;
      LP_CPU_SLP_STALL_WAIT     at 0 range 21 .. 28;
      LP_CPU_SLP_STALL_EN       at 0 range 29 .. 29;
      LP_CPU_SLP_RESET_EN       at 0 range 30 .. 30;
      LP_CPU_SLP_BYPASS_INTR_EN at 0 range 31 .. 31;
   end record;

   subtype LP_CPU_PWR1_LP_CPU_WAKEUP_EN_Field is HAL.UInt16;

   --  need_des
   type LP_CPU_PWR1_Register is record
      --  need_des
      LP_CPU_WAKEUP_EN : LP_CPU_PWR1_LP_CPU_WAKEUP_EN_Field := 16#0#;
      --  unspecified
      Reserved_16_30   : HAL.UInt15 := 16#0#;
      --  Write-only. need_des
      LP_CPU_SLEEP_REQ : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LP_CPU_PWR1_Register use record
      LP_CPU_WAKEUP_EN at 0 range 0 .. 15;
      Reserved_16_30   at 0 range 16 .. 30;
      LP_CPU_SLEEP_REQ at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_LP_CPU_COMM_Register is record
      --  unspecified
      Reserved_0_29 : HAL.UInt30 := 16#0#;
      --  Write-only. need_des
      LP_TRIGGER_HP : Boolean := False;
      --  Write-only. need_des
      HP_TRIGGER_LP : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_LP_CPU_COMM_Register use record
      Reserved_0_29 at 0 range 0 .. 29;
      LP_TRIGGER_HP at 0 range 30 .. 30;
      HP_TRIGGER_LP at 0 range 31 .. 31;
   end record;

   --  need_des
   type HP_REGULATOR_CFG_Register is record
      --  unspecified
      Reserved_0_30        : HAL.UInt31 := 16#0#;
      --  need_des
      DIG_REGULATOR_EN_CAL : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_REGULATOR_CFG_Register use record
      Reserved_0_30        at 0 range 0 .. 30;
      DIG_REGULATOR_EN_CAL at 0 range 31 .. 31;
   end record;

   subtype MAIN_STATE_MAIN_LAST_ST_STATE_Field is HAL.UInt7;
   subtype MAIN_STATE_MAIN_TAR_ST_STATE_Field is HAL.UInt7;
   subtype MAIN_STATE_MAIN_CUR_ST_STATE_Field is HAL.UInt7;

   --  need_des
   type MAIN_STATE_Register is record
      --  unspecified
      Reserved_0_10      : HAL.UInt11;
      --  Read-only. need_des
      MAIN_LAST_ST_STATE : MAIN_STATE_MAIN_LAST_ST_STATE_Field;
      --  Read-only. need_des
      MAIN_TAR_ST_STATE  : MAIN_STATE_MAIN_TAR_ST_STATE_Field;
      --  Read-only. need_des
      MAIN_CUR_ST_STATE  : MAIN_STATE_MAIN_CUR_ST_STATE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAIN_STATE_Register use record
      Reserved_0_10      at 0 range 0 .. 10;
      MAIN_LAST_ST_STATE at 0 range 11 .. 17;
      MAIN_TAR_ST_STATE  at 0 range 18 .. 24;
      MAIN_CUR_ST_STATE  at 0 range 25 .. 31;
   end record;

   subtype PWR_STATE_BACKUP_ST_STATE_Field is HAL.UInt5;
   subtype PWR_STATE_LP_PWR_ST_STATE_Field is HAL.UInt5;
   subtype PWR_STATE_HP_PWR_ST_STATE_Field is HAL.UInt9;

   --  need_des
   type PWR_STATE_Register is record
      --  unspecified
      Reserved_0_12   : HAL.UInt13;
      --  Read-only. need_des
      BACKUP_ST_STATE : PWR_STATE_BACKUP_ST_STATE_Field;
      --  Read-only. need_des
      LP_PWR_ST_STATE : PWR_STATE_LP_PWR_ST_STATE_Field;
      --  Read-only. need_des
      HP_PWR_ST_STATE : PWR_STATE_HP_PWR_ST_STATE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_STATE_Register use record
      Reserved_0_12   at 0 range 0 .. 12;
      BACKUP_ST_STATE at 0 range 13 .. 17;
      LP_PWR_ST_STATE at 0 range 18 .. 22;
      HP_PWR_ST_STATE at 0 range 23 .. 31;
   end record;

   subtype CLK_STATE0_SYS_CLK_SEL_STATE_Field is HAL.UInt2;
   subtype CLK_STATE0_ICG_MODEM_CODE_STATE_Field is HAL.UInt2;

   --  need_des
   type CLK_STATE0_Register is record
      --  Read-only. need_des
      STABLE_XPD_BBPLL_STATE  : Boolean;
      --  Read-only. need_des
      STABLE_XPD_XTAL_STATE   : Boolean;
      --  unspecified
      Reserved_2_14           : HAL.UInt13;
      --  Read-only. need_des
      SYS_CLK_SLP_SEL_STATE   : Boolean;
      --  Read-only. need_des
      SYS_CLK_SEL_STATE       : CLK_STATE0_SYS_CLK_SEL_STATE_Field;
      --  Read-only. need_des
      SYS_CLK_NO_DIV_STATE    : Boolean;
      --  Read-only. need_des
      ICG_SYS_CLK_EN_STATE    : Boolean;
      --  Read-only. need_des
      ICG_MODEM_SWITCH_STATE  : Boolean;
      --  Read-only. need_des
      ICG_MODEM_CODE_STATE    : CLK_STATE0_ICG_MODEM_CODE_STATE_Field;
      --  Read-only. need_des
      ICG_SLP_SEL_STATE       : Boolean;
      --  Read-only. need_des
      ICG_GLOBAL_XTAL_STATE   : Boolean;
      --  Read-only. need_des
      ICG_GLOBAL_PLL_STATE    : Boolean;
      --  Read-only. need_des
      ANA_I2C_ISO_EN_STATE    : Boolean;
      --  Read-only. need_des
      ANA_I2C_RETENTION_STATE : Boolean;
      --  Read-only. need_des
      ANA_XPD_BB_I2C_STATE    : Boolean;
      --  Read-only. need_des
      ANA_XPD_BBPLL_I2C_STATE : Boolean;
      --  Read-only. need_des
      ANA_XPD_BBPLL_STATE     : Boolean;
      --  Read-only. need_des
      ANA_XPD_XTAL_STATE      : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_STATE0_Register use record
      STABLE_XPD_BBPLL_STATE  at 0 range 0 .. 0;
      STABLE_XPD_XTAL_STATE   at 0 range 1 .. 1;
      Reserved_2_14           at 0 range 2 .. 14;
      SYS_CLK_SLP_SEL_STATE   at 0 range 15 .. 15;
      SYS_CLK_SEL_STATE       at 0 range 16 .. 17;
      SYS_CLK_NO_DIV_STATE    at 0 range 18 .. 18;
      ICG_SYS_CLK_EN_STATE    at 0 range 19 .. 19;
      ICG_MODEM_SWITCH_STATE  at 0 range 20 .. 20;
      ICG_MODEM_CODE_STATE    at 0 range 21 .. 22;
      ICG_SLP_SEL_STATE       at 0 range 23 .. 23;
      ICG_GLOBAL_XTAL_STATE   at 0 range 24 .. 24;
      ICG_GLOBAL_PLL_STATE    at 0 range 25 .. 25;
      ANA_I2C_ISO_EN_STATE    at 0 range 26 .. 26;
      ANA_I2C_RETENTION_STATE at 0 range 27 .. 27;
      ANA_XPD_BB_I2C_STATE    at 0 range 28 .. 28;
      ANA_XPD_BBPLL_I2C_STATE at 0 range 29 .. 29;
      ANA_XPD_BBPLL_STATE     at 0 range 30 .. 30;
      ANA_XPD_XTAL_STATE      at 0 range 31 .. 31;
   end record;

   --  need_des
   type VDD_SPI_STATUS_Register is record
      --  unspecified
      Reserved_0_30          : HAL.UInt31;
      --  Read-only. need_des
      STABLE_VDD_SPI_PWR_DRV : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VDD_SPI_STATUS_Register use record
      Reserved_0_30          at 0 range 0 .. 30;
      STABLE_VDD_SPI_PWR_DRV at 0 range 31 .. 31;
   end record;

   subtype DATE_PMU_DATE_Field is HAL.UInt31;

   --  need_des
   type DATE_Register is record
      --  need_des
      PMU_DATE : DATE_PMU_DATE_Field := 16#2206250#;
      --  need_des
      CLK_EN   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      PMU_DATE at 0 range 0 .. 30;
      CLK_EN   at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PMU Peripheral
   type PMU_Peripheral is record
      --  need_des
      HP_ACTIVE_DIG_POWER      : aliased HP_ACTIVE_DIG_POWER_Register;
      --  need_des
      HP_ACTIVE_ICG_HP_FUNC    : aliased HAL.UInt32;
      --  need_des
      HP_ACTIVE_ICG_HP_APB     : aliased HAL.UInt32;
      --  need_des
      HP_ACTIVE_ICG_MODEM      : aliased HP_ACTIVE_ICG_MODEM_Register;
      --  need_des
      HP_ACTIVE_HP_SYS_CNTL    : aliased HP_ACTIVE_HP_SYS_CNTL_Register;
      --  need_des
      HP_ACTIVE_HP_CK_POWER    : aliased HP_ACTIVE_HP_CK_POWER_Register;
      --  need_des
      HP_ACTIVE_BIAS           : aliased HP_ACTIVE_BIAS_Register;
      --  need_des
      HP_ACTIVE_BACKUP         : aliased HP_ACTIVE_BACKUP_Register;
      --  need_des
      HP_ACTIVE_BACKUP_CLK     : aliased HAL.UInt32;
      --  need_des
      HP_ACTIVE_SYSCLK         : aliased HP_ACTIVE_SYSCLK_Register;
      --  need_des
      HP_ACTIVE_HP_REGULATOR0  : aliased HP_ACTIVE_HP_REGULATOR0_Register;
      --  need_des
      HP_ACTIVE_HP_REGULATOR1  : aliased HP_ACTIVE_HP_REGULATOR1_Register;
      --  need_des
      HP_ACTIVE_XTAL           : aliased HP_ACTIVE_XTAL_Register;
      --  need_des
      HP_MODEM_DIG_POWER       : aliased HP_MODEM_DIG_POWER_Register;
      --  need_des
      HP_MODEM_ICG_HP_FUNC     : aliased HAL.UInt32;
      --  need_des
      HP_MODEM_ICG_HP_APB      : aliased HAL.UInt32;
      --  need_des
      HP_MODEM_ICG_MODEM       : aliased HP_MODEM_ICG_MODEM_Register;
      --  need_des
      HP_MODEM_HP_SYS_CNTL     : aliased HP_MODEM_HP_SYS_CNTL_Register;
      --  need_des
      HP_MODEM_HP_CK_POWER     : aliased HP_MODEM_HP_CK_POWER_Register;
      --  need_des
      HP_MODEM_BIAS            : aliased HP_MODEM_BIAS_Register;
      --  need_des
      HP_MODEM_BACKUP          : aliased HP_MODEM_BACKUP_Register;
      --  need_des
      HP_MODEM_BACKUP_CLK      : aliased HAL.UInt32;
      --  need_des
      HP_MODEM_SYSCLK          : aliased HP_MODEM_SYSCLK_Register;
      --  need_des
      HP_MODEM_HP_REGULATOR0   : aliased HP_MODEM_HP_REGULATOR0_Register;
      --  need_des
      HP_MODEM_HP_REGULATOR1   : aliased HP_MODEM_HP_REGULATOR1_Register;
      --  need_des
      HP_MODEM_XTAL            : aliased HP_MODEM_XTAL_Register;
      --  need_des
      HP_SLEEP_DIG_POWER       : aliased HP_SLEEP_DIG_POWER_Register;
      --  need_des
      HP_SLEEP_ICG_HP_FUNC     : aliased HAL.UInt32;
      --  need_des
      HP_SLEEP_ICG_HP_APB      : aliased HAL.UInt32;
      --  need_des
      HP_SLEEP_ICG_MODEM       : aliased HP_SLEEP_ICG_MODEM_Register;
      --  need_des
      HP_SLEEP_HP_SYS_CNTL     : aliased HP_SLEEP_HP_SYS_CNTL_Register;
      --  need_des
      HP_SLEEP_HP_CK_POWER     : aliased HP_SLEEP_HP_CK_POWER_Register;
      --  need_des
      HP_SLEEP_BIAS            : aliased HP_SLEEP_BIAS_Register;
      --  need_des
      HP_SLEEP_BACKUP          : aliased HP_SLEEP_BACKUP_Register;
      --  need_des
      HP_SLEEP_BACKUP_CLK      : aliased HAL.UInt32;
      --  need_des
      HP_SLEEP_SYSCLK          : aliased HP_SLEEP_SYSCLK_Register;
      --  need_des
      HP_SLEEP_HP_REGULATOR0   : aliased HP_SLEEP_HP_REGULATOR0_Register;
      --  need_des
      HP_SLEEP_HP_REGULATOR1   : aliased HP_SLEEP_HP_REGULATOR1_Register;
      --  need_des
      HP_SLEEP_XTAL            : aliased HP_SLEEP_XTAL_Register;
      --  need_des
      HP_SLEEP_LP_REGULATOR0   : aliased HP_SLEEP_LP_REGULATOR0_Register;
      --  need_des
      HP_SLEEP_LP_REGULATOR1   : aliased HP_SLEEP_LP_REGULATOR1_Register;
      --  need_des
      HP_SLEEP_LP_DCDC_RESERVE : aliased HAL.UInt32;
      --  need_des
      HP_SLEEP_LP_DIG_POWER    : aliased HP_SLEEP_LP_DIG_POWER_Register;
      --  need_des
      HP_SLEEP_LP_CK_POWER     : aliased HP_SLEEP_LP_CK_POWER_Register;
      --  need_des
      LP_SLEEP_LP_BIAS_RESERVE : aliased HAL.UInt32;
      --  need_des
      LP_SLEEP_LP_REGULATOR0   : aliased LP_SLEEP_LP_REGULATOR0_Register;
      --  need_des
      LP_SLEEP_LP_REGULATOR1   : aliased LP_SLEEP_LP_REGULATOR1_Register;
      --  need_des
      LP_SLEEP_XTAL            : aliased LP_SLEEP_XTAL_Register;
      --  need_des
      LP_SLEEP_LP_DIG_POWER    : aliased LP_SLEEP_LP_DIG_POWER_Register;
      --  need_des
      LP_SLEEP_LP_CK_POWER     : aliased LP_SLEEP_LP_CK_POWER_Register;
      --  need_des
      LP_SLEEP_BIAS            : aliased LP_SLEEP_BIAS_Register;
      --  need_des
      IMM_HP_CK_POWER          : aliased IMM_HP_CK_POWER_Register;
      --  need_des
      IMM_SLEEP_SYSCLK         : aliased IMM_SLEEP_SYSCLK_Register;
      --  need_des
      IMM_HP_FUNC_ICG          : aliased IMM_HP_FUNC_ICG_Register;
      --  need_des
      IMM_HP_APB_ICG           : aliased IMM_HP_APB_ICG_Register;
      --  need_des
      IMM_MODEM_ICG            : aliased IMM_MODEM_ICG_Register;
      --  need_des
      IMM_LP_ICG               : aliased IMM_LP_ICG_Register;
      --  need_des
      IMM_PAD_HOLD_ALL         : aliased IMM_PAD_HOLD_ALL_Register;
      --  need_des
      IMM_I2C_ISO              : aliased IMM_I2C_ISO_Register;
      --  need_des
      POWER_WAIT_TIMER0        : aliased POWER_WAIT_TIMER0_Register;
      --  need_des
      POWER_WAIT_TIMER1        : aliased POWER_WAIT_TIMER1_Register;
      --  need_des
      POWER_PD_TOP_CNTL        : aliased POWER_PD_TOP_CNTL_Register;
      --  need_des
      POWER_PD_HPAON_CNTL      : aliased POWER_PD_HPAON_CNTL_Register;
      --  need_des
      POWER_PD_HPCPU_CNTL      : aliased POWER_PD_HPCPU_CNTL_Register;
      --  need_des
      POWER_PD_HPPERI_RESERVE  : aliased HAL.UInt32;
      --  need_des
      POWER_PD_HPWIFI_CNTL     : aliased POWER_PD_HPWIFI_CNTL_Register;
      --  need_des
      POWER_PD_LPPERI_CNTL     : aliased POWER_PD_LPPERI_CNTL_Register;
      --  need_des
      POWER_PD_MEM_CNTL        : aliased POWER_PD_MEM_CNTL_Register;
      --  need_des
      POWER_PD_MEM_MASK        : aliased POWER_PD_MEM_MASK_Register;
      --  need_des
      POWER_HP_PAD             : aliased POWER_HP_PAD_Register;
      --  need_des
      POWER_VDD_SPI_CNTL       : aliased POWER_VDD_SPI_CNTL_Register;
      --  need_des
      POWER_CK_WAIT_CNTL       : aliased POWER_CK_WAIT_CNTL_Register;
      --  need_des
      SLP_WAKEUP_CNTL0         : aliased SLP_WAKEUP_CNTL0_Register;
      --  need_des
      SLP_WAKEUP_CNTL1         : aliased SLP_WAKEUP_CNTL1_Register;
      --  need_des
      SLP_WAKEUP_CNTL2         : aliased HAL.UInt32;
      --  need_des
      SLP_WAKEUP_CNTL3         : aliased SLP_WAKEUP_CNTL3_Register;
      --  need_des
      SLP_WAKEUP_CNTL4         : aliased SLP_WAKEUP_CNTL4_Register;
      --  need_des
      SLP_WAKEUP_CNTL5         : aliased SLP_WAKEUP_CNTL5_Register;
      --  need_des
      SLP_WAKEUP_CNTL6         : aliased SLP_WAKEUP_CNTL6_Register;
      --  need_des
      SLP_WAKEUP_CNTL7         : aliased SLP_WAKEUP_CNTL7_Register;
      --  need_des
      SLP_WAKEUP_STATUS0       : aliased HAL.UInt32;
      --  need_des
      SLP_WAKEUP_STATUS1       : aliased HAL.UInt32;
      --  need_des
      HP_CK_POWERON            : aliased HP_CK_POWERON_Register;
      --  need_des
      HP_CK_CNTL               : aliased HP_CK_CNTL_Register;
      --  need_des
      POR_STATUS               : aliased POR_STATUS_Register;
      --  need_des
      RF_PWC                   : aliased RF_PWC_Register;
      --  need_des
      BACKUP_CFG               : aliased BACKUP_CFG_Register;
      --  need_des
      INT_RAW                  : aliased INT_RAW_Register;
      --  need_des
      HP_INT_ST                : aliased HP_INT_ST_Register;
      --  need_des
      HP_INT_ENA               : aliased HP_INT_ENA_Register;
      --  need_des
      HP_INT_CLR               : aliased HP_INT_CLR_Register;
      --  need_des
      LP_INT_RAW               : aliased LP_INT_RAW_Register;
      --  need_des
      LP_INT_ST                : aliased LP_INT_ST_Register;
      --  need_des
      LP_INT_ENA               : aliased LP_INT_ENA_Register;
      --  need_des
      LP_INT_CLR               : aliased LP_INT_CLR_Register;
      --  need_des
      LP_CPU_PWR0              : aliased LP_CPU_PWR0_Register;
      --  need_des
      LP_CPU_PWR1              : aliased LP_CPU_PWR1_Register;
      --  need_des
      HP_LP_CPU_COMM           : aliased HP_LP_CPU_COMM_Register;
      --  need_des
      HP_REGULATOR_CFG         : aliased HP_REGULATOR_CFG_Register;
      --  need_des
      MAIN_STATE               : aliased MAIN_STATE_Register;
      --  need_des
      PWR_STATE                : aliased PWR_STATE_Register;
      --  need_des
      CLK_STATE0               : aliased CLK_STATE0_Register;
      --  need_des
      CLK_STATE1               : aliased HAL.UInt32;
      --  need_des
      CLK_STATE2               : aliased HAL.UInt32;
      --  need_des
      VDD_SPI_STATUS           : aliased VDD_SPI_STATUS_Register;
      --  need_des
      DATE                     : aliased DATE_Register;
   end record
     with Volatile;

   for PMU_Peripheral use record
      HP_ACTIVE_DIG_POWER      at 16#0# range 0 .. 31;
      HP_ACTIVE_ICG_HP_FUNC    at 16#4# range 0 .. 31;
      HP_ACTIVE_ICG_HP_APB     at 16#8# range 0 .. 31;
      HP_ACTIVE_ICG_MODEM      at 16#C# range 0 .. 31;
      HP_ACTIVE_HP_SYS_CNTL    at 16#10# range 0 .. 31;
      HP_ACTIVE_HP_CK_POWER    at 16#14# range 0 .. 31;
      HP_ACTIVE_BIAS           at 16#18# range 0 .. 31;
      HP_ACTIVE_BACKUP         at 16#1C# range 0 .. 31;
      HP_ACTIVE_BACKUP_CLK     at 16#20# range 0 .. 31;
      HP_ACTIVE_SYSCLK         at 16#24# range 0 .. 31;
      HP_ACTIVE_HP_REGULATOR0  at 16#28# range 0 .. 31;
      HP_ACTIVE_HP_REGULATOR1  at 16#2C# range 0 .. 31;
      HP_ACTIVE_XTAL           at 16#30# range 0 .. 31;
      HP_MODEM_DIG_POWER       at 16#34# range 0 .. 31;
      HP_MODEM_ICG_HP_FUNC     at 16#38# range 0 .. 31;
      HP_MODEM_ICG_HP_APB      at 16#3C# range 0 .. 31;
      HP_MODEM_ICG_MODEM       at 16#40# range 0 .. 31;
      HP_MODEM_HP_SYS_CNTL     at 16#44# range 0 .. 31;
      HP_MODEM_HP_CK_POWER     at 16#48# range 0 .. 31;
      HP_MODEM_BIAS            at 16#4C# range 0 .. 31;
      HP_MODEM_BACKUP          at 16#50# range 0 .. 31;
      HP_MODEM_BACKUP_CLK      at 16#54# range 0 .. 31;
      HP_MODEM_SYSCLK          at 16#58# range 0 .. 31;
      HP_MODEM_HP_REGULATOR0   at 16#5C# range 0 .. 31;
      HP_MODEM_HP_REGULATOR1   at 16#60# range 0 .. 31;
      HP_MODEM_XTAL            at 16#64# range 0 .. 31;
      HP_SLEEP_DIG_POWER       at 16#68# range 0 .. 31;
      HP_SLEEP_ICG_HP_FUNC     at 16#6C# range 0 .. 31;
      HP_SLEEP_ICG_HP_APB      at 16#70# range 0 .. 31;
      HP_SLEEP_ICG_MODEM       at 16#74# range 0 .. 31;
      HP_SLEEP_HP_SYS_CNTL     at 16#78# range 0 .. 31;
      HP_SLEEP_HP_CK_POWER     at 16#7C# range 0 .. 31;
      HP_SLEEP_BIAS            at 16#80# range 0 .. 31;
      HP_SLEEP_BACKUP          at 16#84# range 0 .. 31;
      HP_SLEEP_BACKUP_CLK      at 16#88# range 0 .. 31;
      HP_SLEEP_SYSCLK          at 16#8C# range 0 .. 31;
      HP_SLEEP_HP_REGULATOR0   at 16#90# range 0 .. 31;
      HP_SLEEP_HP_REGULATOR1   at 16#94# range 0 .. 31;
      HP_SLEEP_XTAL            at 16#98# range 0 .. 31;
      HP_SLEEP_LP_REGULATOR0   at 16#9C# range 0 .. 31;
      HP_SLEEP_LP_REGULATOR1   at 16#A0# range 0 .. 31;
      HP_SLEEP_LP_DCDC_RESERVE at 16#A4# range 0 .. 31;
      HP_SLEEP_LP_DIG_POWER    at 16#A8# range 0 .. 31;
      HP_SLEEP_LP_CK_POWER     at 16#AC# range 0 .. 31;
      LP_SLEEP_LP_BIAS_RESERVE at 16#B0# range 0 .. 31;
      LP_SLEEP_LP_REGULATOR0   at 16#B4# range 0 .. 31;
      LP_SLEEP_LP_REGULATOR1   at 16#B8# range 0 .. 31;
      LP_SLEEP_XTAL            at 16#BC# range 0 .. 31;
      LP_SLEEP_LP_DIG_POWER    at 16#C0# range 0 .. 31;
      LP_SLEEP_LP_CK_POWER     at 16#C4# range 0 .. 31;
      LP_SLEEP_BIAS            at 16#C8# range 0 .. 31;
      IMM_HP_CK_POWER          at 16#CC# range 0 .. 31;
      IMM_SLEEP_SYSCLK         at 16#D0# range 0 .. 31;
      IMM_HP_FUNC_ICG          at 16#D4# range 0 .. 31;
      IMM_HP_APB_ICG           at 16#D8# range 0 .. 31;
      IMM_MODEM_ICG            at 16#DC# range 0 .. 31;
      IMM_LP_ICG               at 16#E0# range 0 .. 31;
      IMM_PAD_HOLD_ALL         at 16#E4# range 0 .. 31;
      IMM_I2C_ISO              at 16#E8# range 0 .. 31;
      POWER_WAIT_TIMER0        at 16#EC# range 0 .. 31;
      POWER_WAIT_TIMER1        at 16#F0# range 0 .. 31;
      POWER_PD_TOP_CNTL        at 16#F4# range 0 .. 31;
      POWER_PD_HPAON_CNTL      at 16#F8# range 0 .. 31;
      POWER_PD_HPCPU_CNTL      at 16#FC# range 0 .. 31;
      POWER_PD_HPPERI_RESERVE  at 16#100# range 0 .. 31;
      POWER_PD_HPWIFI_CNTL     at 16#104# range 0 .. 31;
      POWER_PD_LPPERI_CNTL     at 16#108# range 0 .. 31;
      POWER_PD_MEM_CNTL        at 16#10C# range 0 .. 31;
      POWER_PD_MEM_MASK        at 16#110# range 0 .. 31;
      POWER_HP_PAD             at 16#114# range 0 .. 31;
      POWER_VDD_SPI_CNTL       at 16#118# range 0 .. 31;
      POWER_CK_WAIT_CNTL       at 16#11C# range 0 .. 31;
      SLP_WAKEUP_CNTL0         at 16#120# range 0 .. 31;
      SLP_WAKEUP_CNTL1         at 16#124# range 0 .. 31;
      SLP_WAKEUP_CNTL2         at 16#128# range 0 .. 31;
      SLP_WAKEUP_CNTL3         at 16#12C# range 0 .. 31;
      SLP_WAKEUP_CNTL4         at 16#130# range 0 .. 31;
      SLP_WAKEUP_CNTL5         at 16#134# range 0 .. 31;
      SLP_WAKEUP_CNTL6         at 16#138# range 0 .. 31;
      SLP_WAKEUP_CNTL7         at 16#13C# range 0 .. 31;
      SLP_WAKEUP_STATUS0       at 16#140# range 0 .. 31;
      SLP_WAKEUP_STATUS1       at 16#144# range 0 .. 31;
      HP_CK_POWERON            at 16#148# range 0 .. 31;
      HP_CK_CNTL               at 16#14C# range 0 .. 31;
      POR_STATUS               at 16#150# range 0 .. 31;
      RF_PWC                   at 16#154# range 0 .. 31;
      BACKUP_CFG               at 16#158# range 0 .. 31;
      INT_RAW                  at 16#15C# range 0 .. 31;
      HP_INT_ST                at 16#160# range 0 .. 31;
      HP_INT_ENA               at 16#164# range 0 .. 31;
      HP_INT_CLR               at 16#168# range 0 .. 31;
      LP_INT_RAW               at 16#16C# range 0 .. 31;
      LP_INT_ST                at 16#170# range 0 .. 31;
      LP_INT_ENA               at 16#174# range 0 .. 31;
      LP_INT_CLR               at 16#178# range 0 .. 31;
      LP_CPU_PWR0              at 16#17C# range 0 .. 31;
      LP_CPU_PWR1              at 16#180# range 0 .. 31;
      HP_LP_CPU_COMM           at 16#184# range 0 .. 31;
      HP_REGULATOR_CFG         at 16#188# range 0 .. 31;
      MAIN_STATE               at 16#18C# range 0 .. 31;
      PWR_STATE                at 16#190# range 0 .. 31;
      CLK_STATE0               at 16#194# range 0 .. 31;
      CLK_STATE1               at 16#198# range 0 .. 31;
      CLK_STATE2               at 16#19C# range 0 .. 31;
      VDD_SPI_STATUS           at 16#1A0# range 0 .. 31;
      DATE                     at 16#3FC# range 0 .. 31;
   end record;

   --  PMU Peripheral
   PMU_Periph : aliased PMU_Peripheral
     with Import, Address => PMU_Base;

end ESP32_C6_SVD.PMU;
