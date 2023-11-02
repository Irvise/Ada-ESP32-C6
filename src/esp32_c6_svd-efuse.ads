pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.EFUSE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RD_REPEAT_DATA0_RD_DIS_Field is HAL.UInt7;
   subtype RD_REPEAT_DATA0_SOFT_DIS_JTAG_Field is HAL.UInt3;
   subtype RD_REPEAT_DATA0_USB_DREFH_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA0_USB_DREFL_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA0_RPT4_RESERVED0_2_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA0_RPT4_RESERVED0_0_Field is HAL.UInt2;

   --  BLOCK0 data register 1.
   type RD_REPEAT_DATA0_Register is record
      --  Read-only. Represents whether reading of individual eFuse
      --  block(block4~block10) is disabled or enabled. 1: disabled. 0:
      --  enabled.
      RD_DIS                      : RD_REPEAT_DATA0_RD_DIS_Field;
      --  Read-only. Represents whether pad of uart and sdio is swapped or not.
      --  1: swapped. 0: not swapped.
      SWAP_UART_SDIO_EN           : Boolean;
      --  Read-only. Represents whether icache is disabled or enabled. 1:
      --  disabled. 0: enabled.
      DIS_ICACHE                  : Boolean;
      --  Read-only. Represents whether the function of usb switch to jtag is
      --  disabled or enabled. 1: disabled. 0: enabled.
      DIS_USB_JTAG                : Boolean;
      --  Read-only. Represents whether icache is disabled or enabled in
      --  Download mode. 1: disabled. 0: enabled.
      DIS_DOWNLOAD_ICACHE         : Boolean;
      --  Read-only. Represents whether USB-Serial-JTAG is disabled or enabled.
      --  1: disabled. 0: enabled.
      DIS_USB_SERIAL_JTAG         : Boolean;
      --  Read-only. Represents whether the function that forces chip into
      --  download mode is disabled or enabled. 1: disabled. 0: enabled.
      DIS_FORCE_DOWNLOAD          : Boolean;
      --  Read-only. Represents whether SPI0 controller during
      --  boot_mode_download is disabled or enabled. 1: disabled. 0: enabled.
      SPI_DOWNLOAD_MSPI_DIS       : Boolean;
      --  Read-only. Represents whether TWAI function is disabled or enabled.
      --  1: disabled. 0: enabled.
      DIS_CAN                     : Boolean;
      --  Read-only. Represents whether the selection between usb_to_jtag and
      --  pad_to_jtag through strapping gpio15 when both EFUSE_DIS_PAD_JTAG and
      --  EFUSE_DIS_USB_JTAG are equal to 0 is enabled or disabled. 1: enabled.
      --  0: disabled.
      JTAG_SEL_ENABLE             : Boolean;
      --  Read-only. Represents whether JTAG is disabled in soft way. Odd
      --  number: disabled. Even number: enabled.
      SOFT_DIS_JTAG               : RD_REPEAT_DATA0_SOFT_DIS_JTAG_Field;
      --  Read-only. Represents whether JTAG is disabled in the hard
      --  way(permanently). 1: disabled. 0: enabled.
      DIS_PAD_JTAG                : Boolean;
      --  Read-only. Represents whether flash encrypt function is disabled or
      --  enabled(except in SPI boot mode). 1: disabled. 0: enabled.
      DIS_DOWNLOAD_MANUAL_ENCRYPT : Boolean;
      --  Read-only. Represents the single-end input threhold vrefh, 1.76 V to
      --  2 V with step of 80 mV.
      USB_DREFH                   : RD_REPEAT_DATA0_USB_DREFH_Field;
      --  Read-only. Represents the single-end input threhold vrefl, 1.76 V to
      --  2 V with step of 80 mV.
      USB_DREFL                   : RD_REPEAT_DATA0_USB_DREFL_Field;
      --  Read-only. Represents whether the D+ and D- pins is exchanged. 1:
      --  exchanged. 0: not exchanged.
      USB_EXCHG_PINS              : Boolean;
      --  Read-only. Represents whether vdd spi pin is functioned as gpio. 1:
      --  functioned. 0: not functioned.
      VDD_SPI_AS_GPIO             : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED0_2            : RD_REPEAT_DATA0_RPT4_RESERVED0_2_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED0_1            : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED0_0            : RD_REPEAT_DATA0_RPT4_RESERVED0_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA0_Register use record
      RD_DIS                      at 0 range 0 .. 6;
      SWAP_UART_SDIO_EN           at 0 range 7 .. 7;
      DIS_ICACHE                  at 0 range 8 .. 8;
      DIS_USB_JTAG                at 0 range 9 .. 9;
      DIS_DOWNLOAD_ICACHE         at 0 range 10 .. 10;
      DIS_USB_SERIAL_JTAG         at 0 range 11 .. 11;
      DIS_FORCE_DOWNLOAD          at 0 range 12 .. 12;
      SPI_DOWNLOAD_MSPI_DIS       at 0 range 13 .. 13;
      DIS_CAN                     at 0 range 14 .. 14;
      JTAG_SEL_ENABLE             at 0 range 15 .. 15;
      SOFT_DIS_JTAG               at 0 range 16 .. 18;
      DIS_PAD_JTAG                at 0 range 19 .. 19;
      DIS_DOWNLOAD_MANUAL_ENCRYPT at 0 range 20 .. 20;
      USB_DREFH                   at 0 range 21 .. 22;
      USB_DREFL                   at 0 range 23 .. 24;
      USB_EXCHG_PINS              at 0 range 25 .. 25;
      VDD_SPI_AS_GPIO             at 0 range 26 .. 26;
      RPT4_RESERVED0_2            at 0 range 27 .. 28;
      RPT4_RESERVED0_1            at 0 range 29 .. 29;
      RPT4_RESERVED0_0            at 0 range 30 .. 31;
   end record;

   subtype RD_REPEAT_DATA1_RPT4_RESERVED1_0_Field is HAL.UInt16;
   subtype RD_REPEAT_DATA1_WDT_DELAY_SEL_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA1_SPI_BOOT_CRYPT_CNT_Field is HAL.UInt3;

   --  RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE array
   type RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field_Array is array (0 .. 2)
     of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE
   type RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SECURE_BOOT_KEY_REVOKE as a value
            Val : HAL.UInt3;
         when True =>
            --  SECURE_BOOT_KEY_REVOKE as an array
            Arr : RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype RD_REPEAT_DATA1_KEY_PURPOSE_0_Field is HAL.UInt4;
   subtype RD_REPEAT_DATA1_KEY_PURPOSE_1_Field is HAL.UInt4;

   --  BLOCK0 data register 2.
   type RD_REPEAT_DATA1_Register is record
      --  Read-only. Reserved.
      RPT4_RESERVED1_0       : RD_REPEAT_DATA1_RPT4_RESERVED1_0_Field;
      --  Read-only. Represents whether RTC watchdog timeout threshold is
      --  selected at startup. 1: selected. 0: not selected.
      WDT_DELAY_SEL          : RD_REPEAT_DATA1_WDT_DELAY_SEL_Field;
      --  Read-only. Represents whether SPI boot encrypt/decrypt is disabled or
      --  enabled. Odd number of 1: enabled. Even number of 1: disabled.
      SPI_BOOT_CRYPT_CNT     : RD_REPEAT_DATA1_SPI_BOOT_CRYPT_CNT_Field;
      --  Read-only. Represents whether revoking first secure boot key is
      --  enabled or disabled. 1: enabled. 0: disabled.
      SECURE_BOOT_KEY_REVOKE : RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field;
      --  Read-only. Represents the purpose of Key0.
      KEY_PURPOSE_0          : RD_REPEAT_DATA1_KEY_PURPOSE_0_Field;
      --  Read-only. Represents the purpose of Key1.
      KEY_PURPOSE_1          : RD_REPEAT_DATA1_KEY_PURPOSE_1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA1_Register use record
      RPT4_RESERVED1_0       at 0 range 0 .. 15;
      WDT_DELAY_SEL          at 0 range 16 .. 17;
      SPI_BOOT_CRYPT_CNT     at 0 range 18 .. 20;
      SECURE_BOOT_KEY_REVOKE at 0 range 21 .. 23;
      KEY_PURPOSE_0          at 0 range 24 .. 27;
      KEY_PURPOSE_1          at 0 range 28 .. 31;
   end record;

   subtype RD_REPEAT_DATA2_KEY_PURPOSE_2_Field is HAL.UInt4;
   subtype RD_REPEAT_DATA2_KEY_PURPOSE_3_Field is HAL.UInt4;
   subtype RD_REPEAT_DATA2_KEY_PURPOSE_4_Field is HAL.UInt4;
   subtype RD_REPEAT_DATA2_KEY_PURPOSE_5_Field is HAL.UInt4;
   subtype RD_REPEAT_DATA2_DPA_SEC_LEVEL_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA2_RPT4_RESERVED2_0_Field is HAL.UInt6;
   subtype RD_REPEAT_DATA2_FLASH_TPUW_Field is HAL.UInt4;

   --  BLOCK0 data register 3.
   type RD_REPEAT_DATA2_Register is record
      --  Read-only. Represents the purpose of Key2.
      KEY_PURPOSE_2                 : RD_REPEAT_DATA2_KEY_PURPOSE_2_Field;
      --  Read-only. Represents the purpose of Key3.
      KEY_PURPOSE_3                 : RD_REPEAT_DATA2_KEY_PURPOSE_3_Field;
      --  Read-only. Represents the purpose of Key4.
      KEY_PURPOSE_4                 : RD_REPEAT_DATA2_KEY_PURPOSE_4_Field;
      --  Read-only. Represents the purpose of Key5.
      KEY_PURPOSE_5                 : RD_REPEAT_DATA2_KEY_PURPOSE_5_Field;
      --  Read-only. Represents the spa secure level by configuring the clock
      --  random divide mode.
      DPA_SEC_LEVEL                 : RD_REPEAT_DATA2_DPA_SEC_LEVEL_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED2_1              : Boolean;
      --  Read-only. Represents whether anti-dpa attack is enabled. 1:enabled.
      --  0: disabled.
      CRYPT_DPA_ENABLE              : Boolean;
      --  Read-only. Represents whether secure boot is enabled or disabled. 1:
      --  enabled. 0: disabled.
      SECURE_BOOT_EN                : Boolean;
      --  Read-only. Represents whether revoking aggressive secure boot is
      --  enabled or disabled. 1: enabled. 0: disabled.
      SECURE_BOOT_AGGRESSIVE_REVOKE : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED2_0              : RD_REPEAT_DATA2_RPT4_RESERVED2_0_Field;
      --  Read-only. Represents the flash waiting time after power-up, in unit
      --  of ms. When the value less than 15, the waiting time is the
      --  programmed value. Otherwise, the waiting time is 2 times the
      --  programmed value.
      FLASH_TPUW                    : RD_REPEAT_DATA2_FLASH_TPUW_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA2_Register use record
      KEY_PURPOSE_2                 at 0 range 0 .. 3;
      KEY_PURPOSE_3                 at 0 range 4 .. 7;
      KEY_PURPOSE_4                 at 0 range 8 .. 11;
      KEY_PURPOSE_5                 at 0 range 12 .. 15;
      DPA_SEC_LEVEL                 at 0 range 16 .. 17;
      RPT4_RESERVED2_1              at 0 range 18 .. 18;
      CRYPT_DPA_ENABLE              at 0 range 19 .. 19;
      SECURE_BOOT_EN                at 0 range 20 .. 20;
      SECURE_BOOT_AGGRESSIVE_REVOKE at 0 range 21 .. 21;
      RPT4_RESERVED2_0              at 0 range 22 .. 27;
      FLASH_TPUW                    at 0 range 28 .. 31;
   end record;

   subtype RD_REPEAT_DATA3_UART_PRINT_CONTROL_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA3_RPT4_RESERVED3_2_Field is HAL.UInt2;
   subtype RD_REPEAT_DATA3_SECURE_VERSION_Field is HAL.UInt16;

   --  BLOCK0 data register 4.
   type RD_REPEAT_DATA3_Register is record
      --  Read-only. Represents whether Download mode is disabled or enabled.
      --  1: disabled. 0: enabled.
      DIS_DOWNLOAD_MODE                 : Boolean;
      --  Read-only. Represents whether direct boot mode is disabled or
      --  enabled. 1: disabled. 0: enabled.
      DIS_DIRECT_BOOT                   : Boolean;
      --  Read-only. Represents whether print from USB-Serial-JTAG is disabled
      --  or enabled. 1: disabled. 0: enabled.
      DIS_USB_PRINT                     : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_5                  : Boolean;
      --  Read-only. Represents whether the USB-Serial-JTAG download function
      --  is disabled or enabled. 1: disabled. 0: enabled.
      DIS_USB_SERIAL_JTAG_DOWNLOAD_MODE : Boolean;
      --  Read-only. Represents whether security download is enabled or
      --  disabled. 1: enabled. 0: disabled.
      ENABLE_SECURITY_DOWNLOAD          : Boolean;
      --  Read-only. Represents the type of UART printing. 00: force enable
      --  printing. 01: enable printing when GPIO8 is reset at low level. 10:
      --  enable printing when GPIO8 is reset at high level. 11: force disable
      --  printing.
      UART_PRINT_CONTROL                : RD_REPEAT_DATA3_UART_PRINT_CONTROL_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED3_4                  : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_3                  : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_2                  : RD_REPEAT_DATA3_RPT4_RESERVED3_2_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED3_1                  : Boolean;
      --  Read-only. Represents whether ROM code is forced to send a resume
      --  command during SPI boot. 1: forced. 0:not forced.
      FORCE_SEND_RESUME                 : Boolean;
      --  Read-only. Represents the version used by ESP-IDF anti-rollback
      --  feature.
      SECURE_VERSION                    : RD_REPEAT_DATA3_SECURE_VERSION_Field;
      --  Read-only. Represents whether FAST VERIFY ON WAKE is disabled or
      --  enabled when Secure Boot is enabled. 1: disabled. 0: enabled.
      SECURE_BOOT_DISABLE_FAST_WAKE     : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_0                  : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA3_Register use record
      DIS_DOWNLOAD_MODE                 at 0 range 0 .. 0;
      DIS_DIRECT_BOOT                   at 0 range 1 .. 1;
      DIS_USB_PRINT                     at 0 range 2 .. 2;
      RPT4_RESERVED3_5                  at 0 range 3 .. 3;
      DIS_USB_SERIAL_JTAG_DOWNLOAD_MODE at 0 range 4 .. 4;
      ENABLE_SECURITY_DOWNLOAD          at 0 range 5 .. 5;
      UART_PRINT_CONTROL                at 0 range 6 .. 7;
      RPT4_RESERVED3_4                  at 0 range 8 .. 8;
      RPT4_RESERVED3_3                  at 0 range 9 .. 9;
      RPT4_RESERVED3_2                  at 0 range 10 .. 11;
      RPT4_RESERVED3_1                  at 0 range 12 .. 12;
      FORCE_SEND_RESUME                 at 0 range 13 .. 13;
      SECURE_VERSION                    at 0 range 14 .. 29;
      SECURE_BOOT_DISABLE_FAST_WAKE     at 0 range 30 .. 30;
      RPT4_RESERVED3_0                  at 0 range 31 .. 31;
   end record;

   subtype RD_REPEAT_DATA4_RPT4_RESERVED4_1_Field is HAL.UInt24;
   subtype RD_REPEAT_DATA4_RPT4_RESERVED4_0_Field is HAL.UInt8;

   --  BLOCK0 data register 5.
   type RD_REPEAT_DATA4_Register is record
      --  Read-only. Reserved.
      RPT4_RESERVED4_1 : RD_REPEAT_DATA4_RPT4_RESERVED4_1_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED4_0 : RD_REPEAT_DATA4_RPT4_RESERVED4_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA4_Register use record
      RPT4_RESERVED4_1 at 0 range 0 .. 23;
      RPT4_RESERVED4_0 at 0 range 24 .. 31;
   end record;

   subtype RD_MAC_SPI_SYS_1_MAC_1_Field is HAL.UInt16;
   subtype RD_MAC_SPI_SYS_1_MAC_EXT_Field is HAL.UInt16;

   --  BLOCK1 data register $n.
   type RD_MAC_SPI_SYS_1_Register is record
      --  Read-only. Stores the high 16 bits of MAC address.
      MAC_1   : RD_MAC_SPI_SYS_1_MAC_1_Field;
      --  Read-only. Stores the extended bits of MAC address.
      MAC_EXT : RD_MAC_SPI_SYS_1_MAC_EXT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_MAC_SPI_SYS_1_Register use record
      MAC_1   at 0 range 0 .. 15;
      MAC_EXT at 0 range 16 .. 31;
   end record;

   subtype RD_MAC_SPI_SYS_2_MAC_SPI_RESERVED_Field is HAL.UInt14;
   subtype RD_MAC_SPI_SYS_2_SPI_PAD_CONF_1_Field is HAL.UInt18;

   --  BLOCK1 data register $n.
   type RD_MAC_SPI_SYS_2_Register is record
      --  Read-only. Reserved.
      MAC_SPI_RESERVED : RD_MAC_SPI_SYS_2_MAC_SPI_RESERVED_Field;
      --  Read-only. Stores the first part of SPI_PAD_CONF.
      SPI_PAD_CONF_1   : RD_MAC_SPI_SYS_2_SPI_PAD_CONF_1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_MAC_SPI_SYS_2_Register use record
      MAC_SPI_RESERVED at 0 range 0 .. 13;
      SPI_PAD_CONF_1   at 0 range 14 .. 31;
   end record;

   subtype RD_MAC_SPI_SYS_3_SPI_PAD_CONF_2_Field is HAL.UInt18;
   subtype RD_MAC_SPI_SYS_3_SYS_DATA_PART0_0_Field is HAL.UInt14;

   --  BLOCK1 data register $n.
   type RD_MAC_SPI_SYS_3_Register is record
      --  Read-only. Stores the second part of SPI_PAD_CONF.
      SPI_PAD_CONF_2   : RD_MAC_SPI_SYS_3_SPI_PAD_CONF_2_Field;
      --  Read-only. Stores the first 14 bits of the zeroth part of system
      --  data.
      SYS_DATA_PART0_0 : RD_MAC_SPI_SYS_3_SYS_DATA_PART0_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_MAC_SPI_SYS_3_Register use record
      SPI_PAD_CONF_2   at 0 range 0 .. 17;
      SYS_DATA_PART0_0 at 0 range 18 .. 31;
   end record;

   subtype RD_REPEAT_ERR0_RD_DIS_ERR_Field is HAL.UInt7;
   subtype RD_REPEAT_ERR0_SOFT_DIS_JTAG_ERR_Field is HAL.UInt3;
   subtype RD_REPEAT_ERR0_USB_DREFH_ERR_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR0_USB_DREFL_ERR_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR0_RPT4_RESERVED0_ERR_2_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR0_RPT4_RESERVED0_ERR_0_Field is HAL.UInt2;

   --  Programming error record register 0 of BLOCK0.
   type RD_REPEAT_ERR0_Register is record
      --  Read-only. Indicates a programming error of RD_DIS.
      RD_DIS_ERR                      : RD_REPEAT_ERR0_RD_DIS_ERR_Field;
      --  Read-only. Indicates a programming error of SWAP_UART_SDIO_EN.
      SWAP_UART_SDIO_EN_ERR           : Boolean;
      --  Read-only. Indicates a programming error of DIS_ICACHE.
      DIS_ICACHE_ERR                  : Boolean;
      --  Read-only. Indicates a programming error of DIS_USB_JTAG.
      DIS_USB_JTAG_ERR                : Boolean;
      --  Read-only. Indicates a programming error of DIS_DOWNLOAD_ICACHE.
      DIS_DOWNLOAD_ICACHE_ERR         : Boolean;
      --  Read-only. Indicates a programming error of DIS_USB_DEVICE.
      DIS_USB_SERIAL_JTAG_ERR         : Boolean;
      --  Read-only. Indicates a programming error of DIS_FORCE_DOWNLOAD.
      DIS_FORCE_DOWNLOAD_ERR          : Boolean;
      --  Read-only. Indicates a programming error of SPI_DOWNLOAD_MSPI_DIS.
      SPI_DOWNLOAD_MSPI_DIS_ERR       : Boolean;
      --  Read-only. Indicates a programming error of DIS_CAN.
      DIS_TWAI_ERR                    : Boolean;
      --  Read-only. Indicates a programming error of JTAG_SEL_ENABLE.
      JTAG_SEL_ENABLE_ERR             : Boolean;
      --  Read-only. Indicates a programming error of SOFT_DIS_JTAG.
      SOFT_DIS_JTAG_ERR               : RD_REPEAT_ERR0_SOFT_DIS_JTAG_ERR_Field;
      --  Read-only. Indicates a programming error of DIS_PAD_JTAG.
      DIS_PAD_JTAG_ERR                : Boolean;
      --  Read-only. Indicates a programming error of
      --  DIS_DOWNLOAD_MANUAL_ENCRYPT.
      DIS_DOWNLOAD_MANUAL_ENCRYPT_ERR : Boolean;
      --  Read-only. Indicates a programming error of USB_DREFH.
      USB_DREFH_ERR                   : RD_REPEAT_ERR0_USB_DREFH_ERR_Field;
      --  Read-only. Indicates a programming error of USB_DREFL.
      USB_DREFL_ERR                   : RD_REPEAT_ERR0_USB_DREFL_ERR_Field;
      --  Read-only. Indicates a programming error of USB_EXCHG_PINS.
      USB_EXCHG_PINS_ERR              : Boolean;
      --  Read-only. Indicates a programming error of VDD_SPI_AS_GPIO.
      VDD_SPI_AS_GPIO_ERR             : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED0_ERR_2            : RD_REPEAT_ERR0_RPT4_RESERVED0_ERR_2_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED0_ERR_1            : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED0_ERR_0            : RD_REPEAT_ERR0_RPT4_RESERVED0_ERR_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR0_Register use record
      RD_DIS_ERR                      at 0 range 0 .. 6;
      SWAP_UART_SDIO_EN_ERR           at 0 range 7 .. 7;
      DIS_ICACHE_ERR                  at 0 range 8 .. 8;
      DIS_USB_JTAG_ERR                at 0 range 9 .. 9;
      DIS_DOWNLOAD_ICACHE_ERR         at 0 range 10 .. 10;
      DIS_USB_SERIAL_JTAG_ERR         at 0 range 11 .. 11;
      DIS_FORCE_DOWNLOAD_ERR          at 0 range 12 .. 12;
      SPI_DOWNLOAD_MSPI_DIS_ERR       at 0 range 13 .. 13;
      DIS_TWAI_ERR                    at 0 range 14 .. 14;
      JTAG_SEL_ENABLE_ERR             at 0 range 15 .. 15;
      SOFT_DIS_JTAG_ERR               at 0 range 16 .. 18;
      DIS_PAD_JTAG_ERR                at 0 range 19 .. 19;
      DIS_DOWNLOAD_MANUAL_ENCRYPT_ERR at 0 range 20 .. 20;
      USB_DREFH_ERR                   at 0 range 21 .. 22;
      USB_DREFL_ERR                   at 0 range 23 .. 24;
      USB_EXCHG_PINS_ERR              at 0 range 25 .. 25;
      VDD_SPI_AS_GPIO_ERR             at 0 range 26 .. 26;
      RPT4_RESERVED0_ERR_2            at 0 range 27 .. 28;
      RPT4_RESERVED0_ERR_1            at 0 range 29 .. 29;
      RPT4_RESERVED0_ERR_0            at 0 range 30 .. 31;
   end record;

   subtype RD_REPEAT_ERR1_RPT4_RESERVED1_ERR_0_Field is HAL.UInt16;
   subtype RD_REPEAT_ERR1_WDT_DELAY_SEL_ERR_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR1_SPI_BOOT_CRYPT_CNT_ERR_Field is HAL.UInt3;
   subtype RD_REPEAT_ERR1_KEY_PURPOSE_0_ERR_Field is HAL.UInt4;
   subtype RD_REPEAT_ERR1_KEY_PURPOSE_1_ERR_Field is HAL.UInt4;

   --  Programming error record register 1 of BLOCK0.
   type RD_REPEAT_ERR1_Register is record
      --  Read-only. Reserved.
      RPT4_RESERVED1_ERR_0        : RD_REPEAT_ERR1_RPT4_RESERVED1_ERR_0_Field;
      --  Read-only. Indicates a programming error of WDT_DELAY_SEL.
      WDT_DELAY_SEL_ERR           : RD_REPEAT_ERR1_WDT_DELAY_SEL_ERR_Field;
      --  Read-only. Indicates a programming error of SPI_BOOT_CRYPT_CNT.
      SPI_BOOT_CRYPT_CNT_ERR      : RD_REPEAT_ERR1_SPI_BOOT_CRYPT_CNT_ERR_Field;
      --  Read-only. Indicates a programming error of SECURE_BOOT_KEY_REVOKE0.
      SECURE_BOOT_KEY_REVOKE0_ERR : Boolean;
      --  Read-only. Indicates a programming error of SECURE_BOOT_KEY_REVOKE1.
      SECURE_BOOT_KEY_REVOKE1_ERR : Boolean;
      --  Read-only. Indicates a programming error of SECURE_BOOT_KEY_REVOKE2.
      SECURE_BOOT_KEY_REVOKE2_ERR : Boolean;
      --  Read-only. Indicates a programming error of KEY_PURPOSE_0.
      KEY_PURPOSE_0_ERR           : RD_REPEAT_ERR1_KEY_PURPOSE_0_ERR_Field;
      --  Read-only. Indicates a programming error of KEY_PURPOSE_1.
      KEY_PURPOSE_1_ERR           : RD_REPEAT_ERR1_KEY_PURPOSE_1_ERR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR1_Register use record
      RPT4_RESERVED1_ERR_0        at 0 range 0 .. 15;
      WDT_DELAY_SEL_ERR           at 0 range 16 .. 17;
      SPI_BOOT_CRYPT_CNT_ERR      at 0 range 18 .. 20;
      SECURE_BOOT_KEY_REVOKE0_ERR at 0 range 21 .. 21;
      SECURE_BOOT_KEY_REVOKE1_ERR at 0 range 22 .. 22;
      SECURE_BOOT_KEY_REVOKE2_ERR at 0 range 23 .. 23;
      KEY_PURPOSE_0_ERR           at 0 range 24 .. 27;
      KEY_PURPOSE_1_ERR           at 0 range 28 .. 31;
   end record;

   subtype RD_REPEAT_ERR2_KEY_PURPOSE_2_ERR_Field is HAL.UInt4;
   subtype RD_REPEAT_ERR2_KEY_PURPOSE_3_ERR_Field is HAL.UInt4;
   subtype RD_REPEAT_ERR2_KEY_PURPOSE_4_ERR_Field is HAL.UInt4;
   subtype RD_REPEAT_ERR2_KEY_PURPOSE_5_ERR_Field is HAL.UInt4;
   subtype RD_REPEAT_ERR2_SEC_DPA_LEVEL_ERR_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR2_RPT4_RESERVED2_ERR_0_Field is HAL.UInt6;
   subtype RD_REPEAT_ERR2_FLASH_TPUW_ERR_Field is HAL.UInt4;

   --  Programming error record register 2 of BLOCK0.
   type RD_REPEAT_ERR2_Register is record
      --  Read-only. Indicates a programming error of KEY_PURPOSE_2.
      KEY_PURPOSE_2_ERR                 : RD_REPEAT_ERR2_KEY_PURPOSE_2_ERR_Field;
      --  Read-only. Indicates a programming error of KEY_PURPOSE_3.
      KEY_PURPOSE_3_ERR                 : RD_REPEAT_ERR2_KEY_PURPOSE_3_ERR_Field;
      --  Read-only. Indicates a programming error of KEY_PURPOSE_4.
      KEY_PURPOSE_4_ERR                 : RD_REPEAT_ERR2_KEY_PURPOSE_4_ERR_Field;
      --  Read-only. Indicates a programming error of KEY_PURPOSE_5.
      KEY_PURPOSE_5_ERR                 : RD_REPEAT_ERR2_KEY_PURPOSE_5_ERR_Field;
      --  Read-only. Indicates a programming error of SEC_DPA_LEVEL.
      SEC_DPA_LEVEL_ERR                 : RD_REPEAT_ERR2_SEC_DPA_LEVEL_ERR_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED2_ERR_1              : Boolean;
      --  Read-only. Indicates a programming error of CRYPT_DPA_ENABLE.
      CRYPT_DPA_ENABLE_ERR              : Boolean;
      --  Read-only. Indicates a programming error of SECURE_BOOT_EN.
      SECURE_BOOT_EN_ERR                : Boolean;
      --  Read-only. Indicates a programming error of
      --  SECURE_BOOT_AGGRESSIVE_REVOKE.
      SECURE_BOOT_AGGRESSIVE_REVOKE_ERR : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED2_ERR_0              : RD_REPEAT_ERR2_RPT4_RESERVED2_ERR_0_Field;
      --  Read-only. Indicates a programming error of FLASH_TPUW.
      FLASH_TPUW_ERR                    : RD_REPEAT_ERR2_FLASH_TPUW_ERR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR2_Register use record
      KEY_PURPOSE_2_ERR                 at 0 range 0 .. 3;
      KEY_PURPOSE_3_ERR                 at 0 range 4 .. 7;
      KEY_PURPOSE_4_ERR                 at 0 range 8 .. 11;
      KEY_PURPOSE_5_ERR                 at 0 range 12 .. 15;
      SEC_DPA_LEVEL_ERR                 at 0 range 16 .. 17;
      RPT4_RESERVED2_ERR_1              at 0 range 18 .. 18;
      CRYPT_DPA_ENABLE_ERR              at 0 range 19 .. 19;
      SECURE_BOOT_EN_ERR                at 0 range 20 .. 20;
      SECURE_BOOT_AGGRESSIVE_REVOKE_ERR at 0 range 21 .. 21;
      RPT4_RESERVED2_ERR_0              at 0 range 22 .. 27;
      FLASH_TPUW_ERR                    at 0 range 28 .. 31;
   end record;

   subtype RD_REPEAT_ERR3_UART_PRINT_CONTROL_ERR_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR3_RPT4_RESERVED3_ERR_2_Field is HAL.UInt2;
   subtype RD_REPEAT_ERR3_SECURE_VERSION_ERR_Field is HAL.UInt16;
   subtype RD_REPEAT_ERR3_RPT4_RESERVED3_ERR_0_Field is HAL.UInt2;

   --  Programming error record register 3 of BLOCK0.
   type RD_REPEAT_ERR3_Register is record
      --  Read-only. Indicates a programming error of DIS_DOWNLOAD_MODE.
      DIS_DOWNLOAD_MODE_ERR                 : Boolean;
      --  Read-only. Indicates a programming error of DIS_DIRECT_BOOT.
      DIS_DIRECT_BOOT_ERR                   : Boolean;
      --  Read-only. Indicates a programming error of UART_PRINT_CHANNEL.
      USB_PRINT_ERR                         : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_5                  : Boolean;
      --  Read-only. Indicates a programming error of
      --  DIS_USB_SERIAL_JTAG_DOWNLOAD_MODE.
      DIS_USB_SERIAL_JTAG_DOWNLOAD_MODE_ERR : Boolean;
      --  Read-only. Indicates a programming error of ENABLE_SECURITY_DOWNLOAD.
      ENABLE_SECURITY_DOWNLOAD_ERR          : Boolean;
      --  Read-only. Indicates a programming error of UART_PRINT_CONTROL.
      UART_PRINT_CONTROL_ERR                : RD_REPEAT_ERR3_UART_PRINT_CONTROL_ERR_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_4                  : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_3                  : Boolean;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_2                  : RD_REPEAT_ERR3_RPT4_RESERVED3_ERR_2_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_1                  : Boolean;
      --  Read-only. Indicates a programming error of FORCE_SEND_RESUME.
      FORCE_SEND_RESUME_ERR                 : Boolean;
      --  Read-only. Indicates a programming error of SECURE_VERSION.
      SECURE_VERSION_ERR                    : RD_REPEAT_ERR3_SECURE_VERSION_ERR_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED3_ERR_0                  : RD_REPEAT_ERR3_RPT4_RESERVED3_ERR_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR3_Register use record
      DIS_DOWNLOAD_MODE_ERR                 at 0 range 0 .. 0;
      DIS_DIRECT_BOOT_ERR                   at 0 range 1 .. 1;
      USB_PRINT_ERR                         at 0 range 2 .. 2;
      RPT4_RESERVED3_ERR_5                  at 0 range 3 .. 3;
      DIS_USB_SERIAL_JTAG_DOWNLOAD_MODE_ERR at 0 range 4 .. 4;
      ENABLE_SECURITY_DOWNLOAD_ERR          at 0 range 5 .. 5;
      UART_PRINT_CONTROL_ERR                at 0 range 6 .. 7;
      RPT4_RESERVED3_ERR_4                  at 0 range 8 .. 8;
      RPT4_RESERVED3_ERR_3                  at 0 range 9 .. 9;
      RPT4_RESERVED3_ERR_2                  at 0 range 10 .. 11;
      RPT4_RESERVED3_ERR_1                  at 0 range 12 .. 12;
      FORCE_SEND_RESUME_ERR                 at 0 range 13 .. 13;
      SECURE_VERSION_ERR                    at 0 range 14 .. 29;
      RPT4_RESERVED3_ERR_0                  at 0 range 30 .. 31;
   end record;

   subtype RD_REPEAT_ERR4_RPT4_RESERVED4_ERR_1_Field is HAL.UInt24;
   subtype RD_REPEAT_ERR4_RPT4_RESERVED4_ERR_0_Field is HAL.UInt8;

   --  Programming error record register 4 of BLOCK0.
   type RD_REPEAT_ERR4_Register is record
      --  Read-only. Reserved.
      RPT4_RESERVED4_ERR_1 : RD_REPEAT_ERR4_RPT4_RESERVED4_ERR_1_Field;
      --  Read-only. Reserved.
      RPT4_RESERVED4_ERR_0 : RD_REPEAT_ERR4_RPT4_RESERVED4_ERR_0_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR4_Register use record
      RPT4_RESERVED4_ERR_1 at 0 range 0 .. 23;
      RPT4_RESERVED4_ERR_0 at 0 range 24 .. 31;
   end record;

   subtype RD_RS_ERR0_MAC_SPI_8M_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_SYS_PART1_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_USR_DATA_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_KEY0_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_KEY1_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_KEY2_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_KEY3_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR0_KEY4_ERR_NUM_Field is HAL.UInt3;

   --  Programming error record register 0 of BLOCK1-10.
   type RD_RS_ERR0_Register is record
      --  Read-only. The value of this signal means the number of error bytes.
      MAC_SPI_8M_ERR_NUM : RD_RS_ERR0_MAC_SPI_8M_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of MAC_SPI_8M is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      MAC_SPI_8M_FAIL    : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      SYS_PART1_NUM      : RD_RS_ERR0_SYS_PART1_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of system part1 is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      SYS_PART1_FAIL     : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      USR_DATA_ERR_NUM   : RD_RS_ERR0_USR_DATA_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the user data is reliable 1:
      --  Means that programming user data failed and the number of error bytes
      --  is over 6.
      USR_DATA_FAIL      : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY0_ERR_NUM       : RD_RS_ERR0_KEY0_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key0 is reliable
      --  1: Means that programming key0 failed and the number of error bytes
      --  is over 6.
      KEY0_FAIL          : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY1_ERR_NUM       : RD_RS_ERR0_KEY1_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key1 is reliable
      --  1: Means that programming key1 failed and the number of error bytes
      --  is over 6.
      KEY1_FAIL          : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY2_ERR_NUM       : RD_RS_ERR0_KEY2_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key2 is reliable
      --  1: Means that programming key2 failed and the number of error bytes
      --  is over 6.
      KEY2_FAIL          : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY3_ERR_NUM       : RD_RS_ERR0_KEY3_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key3 is reliable
      --  1: Means that programming key3 failed and the number of error bytes
      --  is over 6.
      KEY3_FAIL          : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY4_ERR_NUM       : RD_RS_ERR0_KEY4_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key4 is reliable
      --  1: Means that programming key4 failed and the number of error bytes
      --  is over 6.
      KEY4_FAIL          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_RS_ERR0_Register use record
      MAC_SPI_8M_ERR_NUM at 0 range 0 .. 2;
      MAC_SPI_8M_FAIL    at 0 range 3 .. 3;
      SYS_PART1_NUM      at 0 range 4 .. 6;
      SYS_PART1_FAIL     at 0 range 7 .. 7;
      USR_DATA_ERR_NUM   at 0 range 8 .. 10;
      USR_DATA_FAIL      at 0 range 11 .. 11;
      KEY0_ERR_NUM       at 0 range 12 .. 14;
      KEY0_FAIL          at 0 range 15 .. 15;
      KEY1_ERR_NUM       at 0 range 16 .. 18;
      KEY1_FAIL          at 0 range 19 .. 19;
      KEY2_ERR_NUM       at 0 range 20 .. 22;
      KEY2_FAIL          at 0 range 23 .. 23;
      KEY3_ERR_NUM       at 0 range 24 .. 26;
      KEY3_FAIL          at 0 range 27 .. 27;
      KEY4_ERR_NUM       at 0 range 28 .. 30;
      KEY4_FAIL          at 0 range 31 .. 31;
   end record;

   subtype RD_RS_ERR1_KEY5_ERR_NUM_Field is HAL.UInt3;
   subtype RD_RS_ERR1_SYS_PART2_ERR_NUM_Field is HAL.UInt3;

   --  Programming error record register 1 of BLOCK1-10.
   type RD_RS_ERR1_Register is record
      --  Read-only. The value of this signal means the number of error bytes.
      KEY5_ERR_NUM      : RD_RS_ERR1_KEY5_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of key5 is reliable
      --  1: Means that programming key5 failed and the number of error bytes
      --  is over 6.
      KEY5_FAIL         : Boolean;
      --  Read-only. The value of this signal means the number of error bytes.
      SYS_PART2_ERR_NUM : RD_RS_ERR1_SYS_PART2_ERR_NUM_Field;
      --  Read-only. 0: Means no failure and that the data of system part2 is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      SYS_PART2_FAIL    : Boolean;
      --  unspecified
      Reserved_8_31     : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_RS_ERR1_Register use record
      KEY5_ERR_NUM      at 0 range 0 .. 2;
      KEY5_FAIL         at 0 range 3 .. 3;
      SYS_PART2_ERR_NUM at 0 range 4 .. 6;
      SYS_PART2_FAIL    at 0 range 7 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   --  eFuse clcok configuration register.
   type CLK_Register is record
      --  Set this bit to force eFuse SRAM into power-saving mode.
      MEM_FORCE_PD     : Boolean := False;
      --  Set this bit and force to activate clock signal of eFuse SRAM.
      MEM_CLK_FORCE_ON : Boolean := True;
      --  Set this bit to force eFuse SRAM into working mode.
      MEM_FORCE_PU     : Boolean := False;
      --  unspecified
      Reserved_3_15    : HAL.UInt13 := 16#0#;
      --  Set this bit to force enable eFuse register configuration clock
      --  signal.
      EN               : Boolean := False;
      --  unspecified
      Reserved_17_31   : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      MEM_FORCE_PD     at 0 range 0 .. 0;
      MEM_CLK_FORCE_ON at 0 range 1 .. 1;
      MEM_FORCE_PU     at 0 range 2 .. 2;
      Reserved_3_15    at 0 range 3 .. 15;
      EN               at 0 range 16 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   subtype CONF_OP_CODE_Field is HAL.UInt16;

   --  eFuse operation mode configuraiton register
   type CONF_Register is record
      --  0x5A5A: programming operation command 0x5AA5: read operation command.
      OP_CODE        : CONF_OP_CODE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_Register use record
      OP_CODE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype STATUS_STATE_Field is HAL.UInt4;
   subtype STATUS_BLK0_VALID_BIT_CNT_Field is HAL.UInt10;

   --  eFuse status register.
   type STATUS_Register is record
      --  Read-only. Indicates the state of the eFuse state machine.
      STATE              : STATUS_STATE_Field;
      --  Read-only. The value of OTP_LOAD_SW.
      OTP_LOAD_SW        : Boolean;
      --  Read-only. The value of OTP_VDDQ_C_SYNC2.
      OTP_VDDQ_C_SYNC2   : Boolean;
      --  Read-only. The value of OTP_STROBE_SW.
      OTP_STROBE_SW      : Boolean;
      --  Read-only. The value of OTP_CSB_SW.
      OTP_CSB_SW         : Boolean;
      --  Read-only. The value of OTP_PGENB_SW.
      OTP_PGENB_SW       : Boolean;
      --  Read-only. The value of OTP_VDDQ_IS_SW.
      OTP_VDDQ_IS_SW     : Boolean;
      --  Read-only. Indicates the number of block valid bit.
      BLK0_VALID_BIT_CNT : STATUS_BLK0_VALID_BIT_CNT_Field;
      --  unspecified
      Reserved_20_31     : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      STATE              at 0 range 0 .. 3;
      OTP_LOAD_SW        at 0 range 4 .. 4;
      OTP_VDDQ_C_SYNC2   at 0 range 5 .. 5;
      OTP_STROBE_SW      at 0 range 6 .. 6;
      OTP_CSB_SW         at 0 range 7 .. 7;
      OTP_PGENB_SW       at 0 range 8 .. 8;
      OTP_VDDQ_IS_SW     at 0 range 9 .. 9;
      BLK0_VALID_BIT_CNT at 0 range 10 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype CMD_BLK_NUM_Field is HAL.UInt4;

   --  eFuse command register.
   type CMD_Register is record
      --  Set this bit to send read command.
      READ_CMD      : Boolean := False;
      --  Set this bit to send programming command.
      PGM_CMD       : Boolean := False;
      --  The serial number of the block to be programmed. Value 0-10
      --  corresponds to block number 0-10, respectively.
      BLK_NUM       : CMD_BLK_NUM_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      READ_CMD      at 0 range 0 .. 0;
      PGM_CMD       at 0 range 1 .. 1;
      BLK_NUM       at 0 range 2 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  eFuse raw interrupt register.
   type INT_RAW_Register is record
      --  Read-only. The raw bit signal for read_done interrupt.
      READ_DONE_INT_RAW : Boolean;
      --  Read-only. The raw bit signal for pgm_done interrupt.
      PGM_DONE_INT_RAW  : Boolean;
      --  unspecified
      Reserved_2_31     : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      READ_DONE_INT_RAW at 0 range 0 .. 0;
      PGM_DONE_INT_RAW  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt status register.
   type INT_ST_Register is record
      --  Read-only. The status signal for read_done interrupt.
      READ_DONE_INT_ST : Boolean;
      --  Read-only. The status signal for pgm_done interrupt.
      PGM_DONE_INT_ST  : Boolean;
      --  unspecified
      Reserved_2_31    : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      READ_DONE_INT_ST at 0 range 0 .. 0;
      PGM_DONE_INT_ST  at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt enable register.
   type INT_ENA_Register is record
      --  The enable signal for read_done interrupt.
      READ_DONE_INT_ENA : Boolean := False;
      --  The enable signal for pgm_done interrupt.
      PGM_DONE_INT_ENA  : Boolean := False;
      --  unspecified
      Reserved_2_31     : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      READ_DONE_INT_ENA at 0 range 0 .. 0;
      PGM_DONE_INT_ENA  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt clear register.
   type INT_CLR_Register is record
      --  Write-only. The clear signal for read_done interrupt.
      READ_DONE_INT_CLR : Boolean := False;
      --  Write-only. The clear signal for pgm_done interrupt.
      PGM_DONE_INT_CLR  : Boolean := False;
      --  unspecified
      Reserved_2_31     : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      READ_DONE_INT_CLR at 0 range 0 .. 0;
      PGM_DONE_INT_CLR  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   subtype DAC_CONF_DAC_CLK_DIV_Field is HAL.UInt8;
   subtype DAC_CONF_DAC_NUM_Field is HAL.UInt8;

   --  Controls the eFuse programming voltage.
   type DAC_CONF_Register is record
      --  Controls the division factor of the rising clock of the programming
      --  voltage.
      DAC_CLK_DIV     : DAC_CONF_DAC_CLK_DIV_Field := 16#1C#;
      --  Don't care.
      DAC_CLK_PAD_SEL : Boolean := False;
      --  Controls the rising period of the programming voltage.
      DAC_NUM         : DAC_CONF_DAC_NUM_Field := 16#FF#;
      --  Reduces the power supply of the programming voltage.
      OE_CLR          : Boolean := False;
      --  unspecified
      Reserved_18_31  : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_CONF_Register use record
      DAC_CLK_DIV     at 0 range 0 .. 7;
      DAC_CLK_PAD_SEL at 0 range 8 .. 8;
      DAC_NUM         at 0 range 9 .. 16;
      OE_CLR          at 0 range 17 .. 17;
      Reserved_18_31  at 0 range 18 .. 31;
   end record;

   subtype RD_TIM_CONF_THR_A_Field is HAL.UInt8;
   subtype RD_TIM_CONF_TRD_Field is HAL.UInt8;
   subtype RD_TIM_CONF_TSUR_A_Field is HAL.UInt8;
   subtype RD_TIM_CONF_READ_INIT_NUM_Field is HAL.UInt8;

   --  Configures read timing parameters.
   type RD_TIM_CONF_Register is record
      --  Configures the read hold time.
      THR_A         : RD_TIM_CONF_THR_A_Field := 16#1#;
      --  Configures the read time.
      TRD           : RD_TIM_CONF_TRD_Field := 16#2#;
      --  Configures the read setup time.
      TSUR_A        : RD_TIM_CONF_TSUR_A_Field := 16#1#;
      --  Configures the waiting time of reading eFuse memory.
      READ_INIT_NUM : RD_TIM_CONF_READ_INIT_NUM_Field := 16#12#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_TIM_CONF_Register use record
      THR_A         at 0 range 0 .. 7;
      TRD           at 0 range 8 .. 15;
      TSUR_A        at 0 range 16 .. 23;
      READ_INIT_NUM at 0 range 24 .. 31;
   end record;

   subtype WR_TIM_CONF1_TSUP_A_Field is HAL.UInt8;
   subtype WR_TIM_CONF1_PWR_ON_NUM_Field is HAL.UInt16;
   subtype WR_TIM_CONF1_THP_A_Field is HAL.UInt8;

   --  Configurarion register 1 of eFuse programming timing parameters.
   type WR_TIM_CONF1_Register is record
      --  Configures the programming setup time.
      TSUP_A     : WR_TIM_CONF1_TSUP_A_Field := 16#1#;
      --  Configures the power up time for VDDQ.
      PWR_ON_NUM : WR_TIM_CONF1_PWR_ON_NUM_Field := 16#3000#;
      --  Configures the programming hold time.
      THP_A      : WR_TIM_CONF1_THP_A_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WR_TIM_CONF1_Register use record
      TSUP_A     at 0 range 0 .. 7;
      PWR_ON_NUM at 0 range 8 .. 23;
      THP_A      at 0 range 24 .. 31;
   end record;

   subtype WR_TIM_CONF2_PWR_OFF_NUM_Field is HAL.UInt16;
   subtype WR_TIM_CONF2_TPGM_Field is HAL.UInt16;

   --  Configurarion register 2 of eFuse programming timing parameters.
   type WR_TIM_CONF2_Register is record
      --  Configures the power outage time for VDDQ.
      PWR_OFF_NUM : WR_TIM_CONF2_PWR_OFF_NUM_Field := 16#190#;
      --  Configures the active programming time.
      TPGM        : WR_TIM_CONF2_TPGM_Field := 16#C8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WR_TIM_CONF2_Register use record
      PWR_OFF_NUM at 0 range 0 .. 15;
      TPGM        at 0 range 16 .. 31;
   end record;

   subtype WR_TIM_CONF0_RS_BYPASS_BYPASS_RS_BLK_NUM_Field is HAL.UInt11;
   subtype WR_TIM_CONF0_RS_BYPASS_TPGM_INACTIVE_Field is HAL.UInt8;

   --  Configurarion register0 of eFuse programming time parameters and rs
   --  bypass operation.
   type WR_TIM_CONF0_RS_BYPASS_Register is record
      --  Set this bit to bypass reed solomon correction step.
      BYPASS_RS_CORRECTION : Boolean := False;
      --  Configures block number of programming twice operation.
      BYPASS_RS_BLK_NUM    : WR_TIM_CONF0_RS_BYPASS_BYPASS_RS_BLK_NUM_Field :=
                              16#0#;
      --  Write-only. Set this bit to update multi-bit register signals.
      UPDATE               : Boolean := False;
      --  Configures the inactive programming time.
      TPGM_INACTIVE        : WR_TIM_CONF0_RS_BYPASS_TPGM_INACTIVE_Field :=
                              16#1#;
      --  unspecified
      Reserved_21_31       : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WR_TIM_CONF0_RS_BYPASS_Register use record
      BYPASS_RS_CORRECTION at 0 range 0 .. 0;
      BYPASS_RS_BLK_NUM    at 0 range 1 .. 11;
      UPDATE               at 0 range 12 .. 12;
      TPGM_INACTIVE        at 0 range 13 .. 20;
      Reserved_21_31       at 0 range 21 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  eFuse version register.
   type DATE_Register is record
      --  Stores eFuse version.
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

   --  eFuse Controller
   type EFUSE_Peripheral is record
      --  Register 0 that stores data to be programmed.
      PGM_DATA0              : aliased HAL.UInt32;
      --  Register 1 that stores data to be programmed.
      PGM_DATA1              : aliased HAL.UInt32;
      --  Register 2 that stores data to be programmed.
      PGM_DATA2              : aliased HAL.UInt32;
      --  Register 3 that stores data to be programmed.
      PGM_DATA3              : aliased HAL.UInt32;
      --  Register 4 that stores data to be programmed.
      PGM_DATA4              : aliased HAL.UInt32;
      --  Register 5 that stores data to be programmed.
      PGM_DATA5              : aliased HAL.UInt32;
      --  Register 6 that stores data to be programmed.
      PGM_DATA6              : aliased HAL.UInt32;
      --  Register 7 that stores data to be programmed.
      PGM_DATA7              : aliased HAL.UInt32;
      --  Register 0 that stores the RS code to be programmed.
      PGM_CHECK_VALUE0       : aliased HAL.UInt32;
      --  Register 1 that stores the RS code to be programmed.
      PGM_CHECK_VALUE1       : aliased HAL.UInt32;
      --  Register 2 that stores the RS code to be programmed.
      PGM_CHECK_VALUE2       : aliased HAL.UInt32;
      --  BLOCK0 data register 0.
      RD_WR_DIS              : aliased HAL.UInt32;
      --  BLOCK0 data register 1.
      RD_REPEAT_DATA0        : aliased RD_REPEAT_DATA0_Register;
      --  BLOCK0 data register 2.
      RD_REPEAT_DATA1        : aliased RD_REPEAT_DATA1_Register;
      --  BLOCK0 data register 3.
      RD_REPEAT_DATA2        : aliased RD_REPEAT_DATA2_Register;
      --  BLOCK0 data register 4.
      RD_REPEAT_DATA3        : aliased RD_REPEAT_DATA3_Register;
      --  BLOCK0 data register 5.
      RD_REPEAT_DATA4        : aliased RD_REPEAT_DATA4_Register;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_0       : aliased HAL.UInt32;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_1       : aliased RD_MAC_SPI_SYS_1_Register;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_2       : aliased RD_MAC_SPI_SYS_2_Register;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_3       : aliased RD_MAC_SPI_SYS_3_Register;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_4       : aliased HAL.UInt32;
      --  BLOCK1 data register $n.
      RD_MAC_SPI_SYS_5       : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA0     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA1     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA2     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA3     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA4     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA5     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA6     : aliased HAL.UInt32;
      --  Register $n of BLOCK2 (system).
      RD_SYS_PART1_DATA7     : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA0           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA1           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA2           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA3           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA4           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA5           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA6           : aliased HAL.UInt32;
      --  Register $n of BLOCK3 (user).
      RD_USR_DATA7           : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK4 (KEY0).
      RD_KEY0_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK5 (KEY1).
      RD_KEY1_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK6 (KEY2).
      RD_KEY2_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK7 (KEY3).
      RD_KEY3_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK8 (KEY4).
      RD_KEY4_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA0          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA1          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA2          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA3          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA4          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA5          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA6          : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_KEY5_DATA7          : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA0     : aliased HAL.UInt32;
      --  Register $n of BLOCK9 (KEY5).
      RD_SYS_PART2_DATA1     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA2     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA3     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA4     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA5     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA6     : aliased HAL.UInt32;
      --  Register $n of BLOCK10 (system).
      RD_SYS_PART2_DATA7     : aliased HAL.UInt32;
      --  Programming error record register 0 of BLOCK0.
      RD_REPEAT_ERR0         : aliased RD_REPEAT_ERR0_Register;
      --  Programming error record register 1 of BLOCK0.
      RD_REPEAT_ERR1         : aliased RD_REPEAT_ERR1_Register;
      --  Programming error record register 2 of BLOCK0.
      RD_REPEAT_ERR2         : aliased RD_REPEAT_ERR2_Register;
      --  Programming error record register 3 of BLOCK0.
      RD_REPEAT_ERR3         : aliased RD_REPEAT_ERR3_Register;
      --  Programming error record register 4 of BLOCK0.
      RD_REPEAT_ERR4         : aliased RD_REPEAT_ERR4_Register;
      --  Programming error record register 0 of BLOCK1-10.
      RD_RS_ERR0             : aliased RD_RS_ERR0_Register;
      --  Programming error record register 1 of BLOCK1-10.
      RD_RS_ERR1             : aliased RD_RS_ERR1_Register;
      --  eFuse clcok configuration register.
      CLK                    : aliased CLK_Register;
      --  eFuse operation mode configuraiton register
      CONF                   : aliased CONF_Register;
      --  eFuse status register.
      STATUS                 : aliased STATUS_Register;
      --  eFuse command register.
      CMD                    : aliased CMD_Register;
      --  eFuse raw interrupt register.
      INT_RAW                : aliased INT_RAW_Register;
      --  eFuse interrupt status register.
      INT_ST                 : aliased INT_ST_Register;
      --  eFuse interrupt enable register.
      INT_ENA                : aliased INT_ENA_Register;
      --  eFuse interrupt clear register.
      INT_CLR                : aliased INT_CLR_Register;
      --  Controls the eFuse programming voltage.
      DAC_CONF               : aliased DAC_CONF_Register;
      --  Configures read timing parameters.
      RD_TIM_CONF            : aliased RD_TIM_CONF_Register;
      --  Configurarion register 1 of eFuse programming timing parameters.
      WR_TIM_CONF1           : aliased WR_TIM_CONF1_Register;
      --  Configurarion register 2 of eFuse programming timing parameters.
      WR_TIM_CONF2           : aliased WR_TIM_CONF2_Register;
      --  Configurarion register0 of eFuse programming time parameters and rs
      --  bypass operation.
      WR_TIM_CONF0_RS_BYPASS : aliased WR_TIM_CONF0_RS_BYPASS_Register;
      --  eFuse version register.
      DATE                   : aliased DATE_Register;
   end record
     with Volatile;

   for EFUSE_Peripheral use record
      PGM_DATA0              at 16#0# range 0 .. 31;
      PGM_DATA1              at 16#4# range 0 .. 31;
      PGM_DATA2              at 16#8# range 0 .. 31;
      PGM_DATA3              at 16#C# range 0 .. 31;
      PGM_DATA4              at 16#10# range 0 .. 31;
      PGM_DATA5              at 16#14# range 0 .. 31;
      PGM_DATA6              at 16#18# range 0 .. 31;
      PGM_DATA7              at 16#1C# range 0 .. 31;
      PGM_CHECK_VALUE0       at 16#20# range 0 .. 31;
      PGM_CHECK_VALUE1       at 16#24# range 0 .. 31;
      PGM_CHECK_VALUE2       at 16#28# range 0 .. 31;
      RD_WR_DIS              at 16#2C# range 0 .. 31;
      RD_REPEAT_DATA0        at 16#30# range 0 .. 31;
      RD_REPEAT_DATA1        at 16#34# range 0 .. 31;
      RD_REPEAT_DATA2        at 16#38# range 0 .. 31;
      RD_REPEAT_DATA3        at 16#3C# range 0 .. 31;
      RD_REPEAT_DATA4        at 16#40# range 0 .. 31;
      RD_MAC_SPI_SYS_0       at 16#44# range 0 .. 31;
      RD_MAC_SPI_SYS_1       at 16#48# range 0 .. 31;
      RD_MAC_SPI_SYS_2       at 16#4C# range 0 .. 31;
      RD_MAC_SPI_SYS_3       at 16#50# range 0 .. 31;
      RD_MAC_SPI_SYS_4       at 16#54# range 0 .. 31;
      RD_MAC_SPI_SYS_5       at 16#58# range 0 .. 31;
      RD_SYS_PART1_DATA0     at 16#5C# range 0 .. 31;
      RD_SYS_PART1_DATA1     at 16#60# range 0 .. 31;
      RD_SYS_PART1_DATA2     at 16#64# range 0 .. 31;
      RD_SYS_PART1_DATA3     at 16#68# range 0 .. 31;
      RD_SYS_PART1_DATA4     at 16#6C# range 0 .. 31;
      RD_SYS_PART1_DATA5     at 16#70# range 0 .. 31;
      RD_SYS_PART1_DATA6     at 16#74# range 0 .. 31;
      RD_SYS_PART1_DATA7     at 16#78# range 0 .. 31;
      RD_USR_DATA0           at 16#7C# range 0 .. 31;
      RD_USR_DATA1           at 16#80# range 0 .. 31;
      RD_USR_DATA2           at 16#84# range 0 .. 31;
      RD_USR_DATA3           at 16#88# range 0 .. 31;
      RD_USR_DATA4           at 16#8C# range 0 .. 31;
      RD_USR_DATA5           at 16#90# range 0 .. 31;
      RD_USR_DATA6           at 16#94# range 0 .. 31;
      RD_USR_DATA7           at 16#98# range 0 .. 31;
      RD_KEY0_DATA0          at 16#9C# range 0 .. 31;
      RD_KEY0_DATA1          at 16#A0# range 0 .. 31;
      RD_KEY0_DATA2          at 16#A4# range 0 .. 31;
      RD_KEY0_DATA3          at 16#A8# range 0 .. 31;
      RD_KEY0_DATA4          at 16#AC# range 0 .. 31;
      RD_KEY0_DATA5          at 16#B0# range 0 .. 31;
      RD_KEY0_DATA6          at 16#B4# range 0 .. 31;
      RD_KEY0_DATA7          at 16#B8# range 0 .. 31;
      RD_KEY1_DATA0          at 16#BC# range 0 .. 31;
      RD_KEY1_DATA1          at 16#C0# range 0 .. 31;
      RD_KEY1_DATA2          at 16#C4# range 0 .. 31;
      RD_KEY1_DATA3          at 16#C8# range 0 .. 31;
      RD_KEY1_DATA4          at 16#CC# range 0 .. 31;
      RD_KEY1_DATA5          at 16#D0# range 0 .. 31;
      RD_KEY1_DATA6          at 16#D4# range 0 .. 31;
      RD_KEY1_DATA7          at 16#D8# range 0 .. 31;
      RD_KEY2_DATA0          at 16#DC# range 0 .. 31;
      RD_KEY2_DATA1          at 16#E0# range 0 .. 31;
      RD_KEY2_DATA2          at 16#E4# range 0 .. 31;
      RD_KEY2_DATA3          at 16#E8# range 0 .. 31;
      RD_KEY2_DATA4          at 16#EC# range 0 .. 31;
      RD_KEY2_DATA5          at 16#F0# range 0 .. 31;
      RD_KEY2_DATA6          at 16#F4# range 0 .. 31;
      RD_KEY2_DATA7          at 16#F8# range 0 .. 31;
      RD_KEY3_DATA0          at 16#FC# range 0 .. 31;
      RD_KEY3_DATA1          at 16#100# range 0 .. 31;
      RD_KEY3_DATA2          at 16#104# range 0 .. 31;
      RD_KEY3_DATA3          at 16#108# range 0 .. 31;
      RD_KEY3_DATA4          at 16#10C# range 0 .. 31;
      RD_KEY3_DATA5          at 16#110# range 0 .. 31;
      RD_KEY3_DATA6          at 16#114# range 0 .. 31;
      RD_KEY3_DATA7          at 16#118# range 0 .. 31;
      RD_KEY4_DATA0          at 16#11C# range 0 .. 31;
      RD_KEY4_DATA1          at 16#120# range 0 .. 31;
      RD_KEY4_DATA2          at 16#124# range 0 .. 31;
      RD_KEY4_DATA3          at 16#128# range 0 .. 31;
      RD_KEY4_DATA4          at 16#12C# range 0 .. 31;
      RD_KEY4_DATA5          at 16#130# range 0 .. 31;
      RD_KEY4_DATA6          at 16#134# range 0 .. 31;
      RD_KEY4_DATA7          at 16#138# range 0 .. 31;
      RD_KEY5_DATA0          at 16#13C# range 0 .. 31;
      RD_KEY5_DATA1          at 16#140# range 0 .. 31;
      RD_KEY5_DATA2          at 16#144# range 0 .. 31;
      RD_KEY5_DATA3          at 16#148# range 0 .. 31;
      RD_KEY5_DATA4          at 16#14C# range 0 .. 31;
      RD_KEY5_DATA5          at 16#150# range 0 .. 31;
      RD_KEY5_DATA6          at 16#154# range 0 .. 31;
      RD_KEY5_DATA7          at 16#158# range 0 .. 31;
      RD_SYS_PART2_DATA0     at 16#15C# range 0 .. 31;
      RD_SYS_PART2_DATA1     at 16#160# range 0 .. 31;
      RD_SYS_PART2_DATA2     at 16#164# range 0 .. 31;
      RD_SYS_PART2_DATA3     at 16#168# range 0 .. 31;
      RD_SYS_PART2_DATA4     at 16#16C# range 0 .. 31;
      RD_SYS_PART2_DATA5     at 16#170# range 0 .. 31;
      RD_SYS_PART2_DATA6     at 16#174# range 0 .. 31;
      RD_SYS_PART2_DATA7     at 16#178# range 0 .. 31;
      RD_REPEAT_ERR0         at 16#17C# range 0 .. 31;
      RD_REPEAT_ERR1         at 16#180# range 0 .. 31;
      RD_REPEAT_ERR2         at 16#184# range 0 .. 31;
      RD_REPEAT_ERR3         at 16#188# range 0 .. 31;
      RD_REPEAT_ERR4         at 16#190# range 0 .. 31;
      RD_RS_ERR0             at 16#1C0# range 0 .. 31;
      RD_RS_ERR1             at 16#1C4# range 0 .. 31;
      CLK                    at 16#1C8# range 0 .. 31;
      CONF                   at 16#1CC# range 0 .. 31;
      STATUS                 at 16#1D0# range 0 .. 31;
      CMD                    at 16#1D4# range 0 .. 31;
      INT_RAW                at 16#1D8# range 0 .. 31;
      INT_ST                 at 16#1DC# range 0 .. 31;
      INT_ENA                at 16#1E0# range 0 .. 31;
      INT_CLR                at 16#1E4# range 0 .. 31;
      DAC_CONF               at 16#1E8# range 0 .. 31;
      RD_TIM_CONF            at 16#1EC# range 0 .. 31;
      WR_TIM_CONF1           at 16#1F0# range 0 .. 31;
      WR_TIM_CONF2           at 16#1F4# range 0 .. 31;
      WR_TIM_CONF0_RS_BYPASS at 16#1F8# range 0 .. 31;
      DATE                   at 16#1FC# range 0 .. 31;
   end record;

   --  eFuse Controller
   EFUSE_Periph : aliased EFUSE_Peripheral
     with Import, Address => EFUSE_Base;

end ESP32_C6_SVD.EFUSE;
