pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.HP_SYS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  EXTERNAL DEVICE ENCRYPTION/DECRYPTION configuration register
   type EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL_Register is record
      --  Set this bit as 1 to enable mspi xts manual encrypt in spi boot mode.
      ENABLE_SPI_MANUAL_ENCRYPT      : Boolean := False;
      --  reserved
      ENABLE_DOWNLOAD_DB_ENCRYPT     : Boolean := False;
      --  Set this bit as 1 to enable mspi xts auto decrypt in download boot
      --  mode.
      ENABLE_DOWNLOAD_G0CB_DECRYPT   : Boolean := False;
      --  Set this bit as 1 to enable mspi xts manual encrypt in download boot
      --  mode.
      ENABLE_DOWNLOAD_MANUAL_ENCRYPT : Boolean := False;
      --  unspecified
      Reserved_4_31                  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL_Register use record
      ENABLE_SPI_MANUAL_ENCRYPT      at 0 range 0 .. 0;
      ENABLE_DOWNLOAD_DB_ENCRYPT     at 0 range 1 .. 1;
      ENABLE_DOWNLOAD_G0CB_DECRYPT   at 0 range 2 .. 2;
      ENABLE_DOWNLOAD_MANUAL_ENCRYPT at 0 range 3 .. 3;
      Reserved_4_31                  at 0 range 4 .. 31;
   end record;

   subtype SRAM_USAGE_CONF_SRAM_USAGE_Field is HAL.UInt4;

   --  HP memory usage configuration register
   type SRAM_USAGE_CONF_Register is record
      --  Read-only. reserved
      CACHE_USAGE    : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  0: cpu use hp-memory. 1:mac-dump accessing hp-memory.
      SRAM_USAGE     : SRAM_USAGE_CONF_SRAM_USAGE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Set this bit as 1 to add an offset (64KB) when mac-dump accessing
      --  hp-memory.
      MAC_DUMP_ALLOC : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_USAGE_CONF_Register use record
      CACHE_USAGE    at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SRAM_USAGE     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      MAC_DUMP_ALLOC at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SEC_DPA_CONF_SEC_DPA_LEVEL_Field is HAL.UInt2;

   --  HP anti-DPA security configuration register
   type SEC_DPA_CONF_Register is record
      --  0: anti-DPA disable. 1~3: anti-DPA enable with different security
      --  level. The larger the number, the stronger the ability to resist DPA
      --  attacks and the higher the security level, but it will increase the
      --  computational overhead of the hardware crypto-accelerators. Only
      --  avaliable if HP_SYS_SEC_DPA_CFG_SEL is 0.
      SEC_DPA_LEVEL   : SEC_DPA_CONF_SEC_DPA_LEVEL_Field := 16#0#;
      --  This field is used to select either HP_SYS_SEC_DPA_LEVEL or
      --  EFUSE_SEC_DPA_LEVEL (from efuse) to control dpa_level. 0:
      --  EFUSE_SEC_DPA_LEVEL, 1: HP_SYS_SEC_DPA_LEVEL.
      SEC_DPA_CFG_SEL : Boolean := False;
      --  unspecified
      Reserved_3_31   : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEC_DPA_CONF_Register use record
      SEC_DPA_LEVEL   at 0 range 0 .. 1;
      SEC_DPA_CFG_SEL at 0 range 2 .. 2;
      Reserved_3_31   at 0 range 3 .. 31;
   end record;

   subtype CPU_PERI_TIMEOUT_CONF_CPU_PERI_TIMEOUT_THRES_Field is HAL.UInt16;

   --  CPU_PERI_TIMEOUT configuration register
   type CPU_PERI_TIMEOUT_CONF_Register is record
      --  Set the timeout threshold for bus access, corresponding to the number
      --  of clock cycles of the clock domain.
      CPU_PERI_TIMEOUT_THRES      : CPU_PERI_TIMEOUT_CONF_CPU_PERI_TIMEOUT_THRES_Field :=
                                     16#FFFF#;
      --  Write-only. Set this bit as 1 to clear timeout interrupt
      CPU_PERI_TIMEOUT_INT_CLEAR  : Boolean := False;
      --  Set this bit as 1 to enable timeout protection for accessing cpu
      --  peripheral registers
      CPU_PERI_TIMEOUT_PROTECT_EN : Boolean := True;
      --  unspecified
      Reserved_18_31              : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_PERI_TIMEOUT_CONF_Register use record
      CPU_PERI_TIMEOUT_THRES      at 0 range 0 .. 15;
      CPU_PERI_TIMEOUT_INT_CLEAR  at 0 range 16 .. 16;
      CPU_PERI_TIMEOUT_PROTECT_EN at 0 range 17 .. 17;
      Reserved_18_31              at 0 range 18 .. 31;
   end record;

   subtype CPU_PERI_TIMEOUT_UID_CPU_PERI_TIMEOUT_UID_Field is HAL.UInt7;

   --  CPU_PERI_TIMEOUT_UID register
   type CPU_PERI_TIMEOUT_UID_Register is record
      --  Read-only. Record master id[4:0] & master permission[6:5] when
      --  trigger timeout. This register will be cleared after the interrupt is
      --  cleared.
      CPU_PERI_TIMEOUT_UID : CPU_PERI_TIMEOUT_UID_CPU_PERI_TIMEOUT_UID_Field;
      --  unspecified
      Reserved_7_31        : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_PERI_TIMEOUT_UID_Register use record
      CPU_PERI_TIMEOUT_UID at 0 range 0 .. 6;
      Reserved_7_31        at 0 range 7 .. 31;
   end record;

   subtype HP_PERI_TIMEOUT_CONF_HP_PERI_TIMEOUT_THRES_Field is HAL.UInt16;

   --  HP_PERI_TIMEOUT configuration register
   type HP_PERI_TIMEOUT_CONF_Register is record
      --  Set the timeout threshold for bus access, corresponding to the number
      --  of clock cycles of the clock domain.
      HP_PERI_TIMEOUT_THRES      : HP_PERI_TIMEOUT_CONF_HP_PERI_TIMEOUT_THRES_Field :=
                                    16#FFFF#;
      --  Write-only. Set this bit as 1 to clear timeout interrupt
      HP_PERI_TIMEOUT_INT_CLEAR  : Boolean := False;
      --  Set this bit as 1 to enable timeout protection for accessing hp
      --  peripheral registers
      HP_PERI_TIMEOUT_PROTECT_EN : Boolean := True;
      --  unspecified
      Reserved_18_31             : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_PERI_TIMEOUT_CONF_Register use record
      HP_PERI_TIMEOUT_THRES      at 0 range 0 .. 15;
      HP_PERI_TIMEOUT_INT_CLEAR  at 0 range 16 .. 16;
      HP_PERI_TIMEOUT_PROTECT_EN at 0 range 17 .. 17;
      Reserved_18_31             at 0 range 18 .. 31;
   end record;

   subtype HP_PERI_TIMEOUT_UID_HP_PERI_TIMEOUT_UID_Field is HAL.UInt7;

   --  HP_PERI_TIMEOUT_UID register
   type HP_PERI_TIMEOUT_UID_Register is record
      --  Read-only. Record master id[4:0] & master permission[6:5] when
      --  trigger timeout. This register will be cleared after the interrupt is
      --  cleared.
      HP_PERI_TIMEOUT_UID : HP_PERI_TIMEOUT_UID_HP_PERI_TIMEOUT_UID_Field;
      --  unspecified
      Reserved_7_31       : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HP_PERI_TIMEOUT_UID_Register use record
      HP_PERI_TIMEOUT_UID at 0 range 0 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   subtype MODEM_PERI_TIMEOUT_CONF_MODEM_PERI_TIMEOUT_THRES_Field is
     HAL.UInt16;

   --  MODEM_PERI_TIMEOUT configuration register
   type MODEM_PERI_TIMEOUT_CONF_Register is record
      --  Set the timeout threshold for bus access, corresponding to the number
      --  of clock cycles of the clock domain.
      MODEM_PERI_TIMEOUT_THRES      : MODEM_PERI_TIMEOUT_CONF_MODEM_PERI_TIMEOUT_THRES_Field :=
                                       16#FFFF#;
      --  Write-only. Set this bit as 1 to clear timeout interrupt
      MODEM_PERI_TIMEOUT_INT_CLEAR  : Boolean := False;
      --  Set this bit as 1 to enable timeout protection for accessing modem
      --  registers
      MODEM_PERI_TIMEOUT_PROTECT_EN : Boolean := True;
      --  unspecified
      Reserved_18_31                : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_PERI_TIMEOUT_CONF_Register use record
      MODEM_PERI_TIMEOUT_THRES      at 0 range 0 .. 15;
      MODEM_PERI_TIMEOUT_INT_CLEAR  at 0 range 16 .. 16;
      MODEM_PERI_TIMEOUT_PROTECT_EN at 0 range 17 .. 17;
      Reserved_18_31                at 0 range 18 .. 31;
   end record;

   subtype MODEM_PERI_TIMEOUT_UID_MODEM_PERI_TIMEOUT_UID_Field is HAL.UInt7;

   --  MODEM_PERI_TIMEOUT_UID register
   type MODEM_PERI_TIMEOUT_UID_Register is record
      --  Read-only. Record master id[4:0] & master permission[6:5] when
      --  trigger timeout. This register will be cleared after the interrupt is
      --  cleared.
      MODEM_PERI_TIMEOUT_UID : MODEM_PERI_TIMEOUT_UID_MODEM_PERI_TIMEOUT_UID_Field;
      --  unspecified
      Reserved_7_31          : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_PERI_TIMEOUT_UID_Register use record
      MODEM_PERI_TIMEOUT_UID at 0 range 0 .. 6;
      Reserved_7_31          at 0 range 7 .. 31;
   end record;

   --  SDIO Control configuration register
   type SDIO_CTRL_Register is record
      --  Set this bit as 1 to disable SDIO_PROB function. disable by default.
      DIS_SDIO_PROB      : Boolean := True;
      --  Enable sdio slave to access other peripherals on the chip
      SDIO_WIN_ACCESS_EN : Boolean := True;
      --  unspecified
      Reserved_2_31      : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_CTRL_Register use record
      DIS_SDIO_PROB      at 0 range 0 .. 0;
      SDIO_WIN_ACCESS_EN at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  Retention configuration register
   type RETENTION_CONF_Register is record
      --  Set this bit as 1 to disable retention function. Not disable by
      --  default.
      RETENTION_DISABLE : Boolean := False;
      --  unspecified
      Reserved_1_31     : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CONF_Register use record
      RETENTION_DISABLE at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Rom-Table lock register
   type ROM_TABLE_LOCK_Register is record
      --  XXXX
      ROM_TABLE_LOCK : Boolean := False;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROM_TABLE_LOCK_Register use record
      ROM_TABLE_LOCK at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Core Debug runstall configure register
   type CORE_DEBUG_RUNSTALL_CONF_Register is record
      --  Set this field to 1 to enable debug runstall feature between HP-core
      --  and LP-core.
      CORE_DEBUG_RUNSTALL_ENABLE : Boolean := False;
      --  unspecified
      Reserved_1_31              : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE_DEBUG_RUNSTALL_CONF_Register use record
      CORE_DEBUG_RUNSTALL_ENABLE at 0 range 0 .. 0;
      Reserved_1_31              at 0 range 1 .. 31;
   end record;

   subtype MEM_TEST_CONF_HP_MEM_WPULSE_Field is HAL.UInt3;
   subtype MEM_TEST_CONF_HP_MEM_WA_Field is HAL.UInt3;
   subtype MEM_TEST_CONF_HP_MEM_RA_Field is HAL.UInt2;

   --  MEM_TEST configuration register
   type MEM_TEST_CONF_Register is record
      --  This field controls hp system memory WPULSE parameter.
      HP_MEM_WPULSE : MEM_TEST_CONF_HP_MEM_WPULSE_Field := 16#0#;
      --  This field controls hp system memory WA parameter.
      HP_MEM_WA     : MEM_TEST_CONF_HP_MEM_WA_Field := 16#4#;
      --  This field controls hp system memory RA parameter.
      HP_MEM_RA     : MEM_TEST_CONF_HP_MEM_RA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_TEST_CONF_Register use record
      HP_MEM_WPULSE at 0 range 0 .. 2;
      HP_MEM_WA     at 0 range 3 .. 5;
      HP_MEM_RA     at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  redcy eco register.
   type RND_ECO_Register is record
      --  Only reserved for ECO.
      REDCY_ENA     : Boolean := False;
      --  Read-only. Only reserved for ECO.
      REDCY_RESULT  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RND_ECO_Register use record
      REDCY_ENA     at 0 range 0 .. 0;
      REDCY_RESULT  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HP-SYSTEM clock gating configure register
   type CLOCK_GATE_Register is record
      --  Set this bit as 1 to force on clock gating.
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_GATE_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Date register.
   type DATE_Register is record
      --  HP-SYSTEM date information/ HP-SYSTEM version information.
      DATE           : DATE_DATE_Field := 16#2206110#;
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

   --  High-Power System
   type HP_SYS_Peripheral is record
      --  EXTERNAL DEVICE ENCRYPTION/DECRYPTION configuration register
      EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL : aliased EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL_Register;
      --  HP memory usage configuration register
      SRAM_USAGE_CONF                         : aliased SRAM_USAGE_CONF_Register;
      --  HP anti-DPA security configuration register
      SEC_DPA_CONF                            : aliased SEC_DPA_CONF_Register;
      --  CPU_PERI_TIMEOUT configuration register
      CPU_PERI_TIMEOUT_CONF                   : aliased CPU_PERI_TIMEOUT_CONF_Register;
      --  CPU_PERI_TIMEOUT_ADDR register
      CPU_PERI_TIMEOUT_ADDR                   : aliased HAL.UInt32;
      --  CPU_PERI_TIMEOUT_UID register
      CPU_PERI_TIMEOUT_UID                    : aliased CPU_PERI_TIMEOUT_UID_Register;
      --  HP_PERI_TIMEOUT configuration register
      HP_PERI_TIMEOUT_CONF                    : aliased HP_PERI_TIMEOUT_CONF_Register;
      --  HP_PERI_TIMEOUT_ADDR register
      HP_PERI_TIMEOUT_ADDR                    : aliased HAL.UInt32;
      --  HP_PERI_TIMEOUT_UID register
      HP_PERI_TIMEOUT_UID                     : aliased HP_PERI_TIMEOUT_UID_Register;
      --  MODEM_PERI_TIMEOUT configuration register
      MODEM_PERI_TIMEOUT_CONF                 : aliased MODEM_PERI_TIMEOUT_CONF_Register;
      --  MODEM_PERI_TIMEOUT_ADDR register
      MODEM_PERI_TIMEOUT_ADDR                 : aliased HAL.UInt32;
      --  MODEM_PERI_TIMEOUT_UID register
      MODEM_PERI_TIMEOUT_UID                  : aliased MODEM_PERI_TIMEOUT_UID_Register;
      --  SDIO Control configuration register
      SDIO_CTRL                               : aliased SDIO_CTRL_Register;
      --  Retention configuration register
      RETENTION_CONF                          : aliased RETENTION_CONF_Register;
      --  Rom-Table lock register
      ROM_TABLE_LOCK                          : aliased ROM_TABLE_LOCK_Register;
      --  Rom-Table register
      ROM_TABLE                               : aliased HAL.UInt32;
      --  Core Debug runstall configure register
      CORE_DEBUG_RUNSTALL_CONF                : aliased CORE_DEBUG_RUNSTALL_CONF_Register;
      --  MEM_TEST configuration register
      MEM_TEST_CONF                           : aliased MEM_TEST_CONF_Register;
      --  redcy eco register.
      RND_ECO                                 : aliased RND_ECO_Register;
      --  redcy eco low register.
      RND_ECO_LOW                             : aliased HAL.UInt32;
      --  redcy eco high register.
      RND_ECO_HIGH                            : aliased HAL.UInt32;
      --  HP-SYSTEM clock gating configure register
      CLOCK_GATE                              : aliased CLOCK_GATE_Register;
      --  Date register.
      DATE                                    : aliased DATE_Register;
   end record
     with Volatile;

   for HP_SYS_Peripheral use record
      EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL at 16#0# range 0 .. 31;
      SRAM_USAGE_CONF                         at 16#4# range 0 .. 31;
      SEC_DPA_CONF                            at 16#8# range 0 .. 31;
      CPU_PERI_TIMEOUT_CONF                   at 16#C# range 0 .. 31;
      CPU_PERI_TIMEOUT_ADDR                   at 16#10# range 0 .. 31;
      CPU_PERI_TIMEOUT_UID                    at 16#14# range 0 .. 31;
      HP_PERI_TIMEOUT_CONF                    at 16#18# range 0 .. 31;
      HP_PERI_TIMEOUT_ADDR                    at 16#1C# range 0 .. 31;
      HP_PERI_TIMEOUT_UID                     at 16#20# range 0 .. 31;
      MODEM_PERI_TIMEOUT_CONF                 at 16#24# range 0 .. 31;
      MODEM_PERI_TIMEOUT_ADDR                 at 16#28# range 0 .. 31;
      MODEM_PERI_TIMEOUT_UID                  at 16#2C# range 0 .. 31;
      SDIO_CTRL                               at 16#30# range 0 .. 31;
      RETENTION_CONF                          at 16#34# range 0 .. 31;
      ROM_TABLE_LOCK                          at 16#38# range 0 .. 31;
      ROM_TABLE                               at 16#3C# range 0 .. 31;
      CORE_DEBUG_RUNSTALL_CONF                at 16#40# range 0 .. 31;
      MEM_TEST_CONF                           at 16#44# range 0 .. 31;
      RND_ECO                                 at 16#3E0# range 0 .. 31;
      RND_ECO_LOW                             at 16#3E4# range 0 .. 31;
      RND_ECO_HIGH                            at 16#3E8# range 0 .. 31;
      CLOCK_GATE                              at 16#3F8# range 0 .. 31;
      DATE                                    at 16#3FC# range 0 .. 31;
   end record;

   --  High-Power System
   HP_SYS_Periph : aliased HP_SYS_Peripheral
     with Import, Address => HP_SYS_Base;

end ESP32_C6_SVD.HP_SYS;
