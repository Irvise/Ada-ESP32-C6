pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.EXTMEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS array
   type L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS
   type L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  L1_ICACHE_SHUT_IBUS as a value
            Val : HAL.UInt4;
         when True =>
            --  L1_ICACHE_SHUT_IBUS as an array
            Arr : L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype L1_ICACHE_CTRL_L1_ICACHE_UNDEF_OP_Field is HAL.UInt4;

   --  L1 instruction Cache(L1-ICache) control register
   type L1_ICACHE_CTRL_Register is record
      --  Read-only. The bit is used to disable core0 ibus access L1-ICache, 0:
      --  enable, 1: disable
      L1_ICACHE_SHUT_IBUS : L1_ICACHE_CTRL_L1_ICACHE_SHUT_IBUS_Field;
      --  Read-only. Reserved
      L1_ICACHE_UNDEF_OP  : L1_ICACHE_CTRL_L1_ICACHE_UNDEF_OP_Field;
      --  unspecified
      Reserved_8_31       : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE_CTRL_Register use record
      L1_ICACHE_SHUT_IBUS at 0 range 0 .. 3;
      L1_ICACHE_UNDEF_OP  at 0 range 4 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   --  L1_CACHE_CTRL_L1_CACHE_SHUT_BUS array
   type L1_CACHE_CTRL_L1_CACHE_SHUT_BUS_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for L1_CACHE_CTRL_L1_CACHE_SHUT_BUS
   type L1_CACHE_CTRL_L1_CACHE_SHUT_BUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  L1_CACHE_SHUT_BUS as a value
            Val : HAL.UInt2;
         when True =>
            --  L1_CACHE_SHUT_BUS as an array
            Arr : L1_CACHE_CTRL_L1_CACHE_SHUT_BUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for L1_CACHE_CTRL_L1_CACHE_SHUT_BUS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS array
   type L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS_Field_Array is array (2 .. 3)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS
   type L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  L1_CACHE_SHUT_DBUS as a value
            Val : HAL.UInt2;
         when True =>
            --  L1_CACHE_SHUT_DBUS as an array
            Arr : L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype L1_CACHE_CTRL_L1_CACHE_UNDEF_OP_Field is HAL.UInt4;

   --  L1 data Cache(L1-Cache) control register
   type L1_CACHE_CTRL_Register is record
      --  The bit is used to disable core0 dbus access L1-Cache, 0: enable, 1:
      --  disable
      L1_CACHE_SHUT_BUS  : L1_CACHE_CTRL_L1_CACHE_SHUT_BUS_Field :=
                            (As_Array => False, Val => 16#0#);
      --  Read-only. Reserved
      L1_CACHE_SHUT_DBUS : L1_CACHE_CTRL_L1_CACHE_SHUT_DBUS_Field :=
                            (As_Array => False, Val => 16#0#);
      --  Read-only. The bit is used to disable DMA access L1-Cache, 0: enable,
      --  1: disable
      L1_CACHE_SHUT_DMA  : Boolean := False;
      --  unspecified
      Reserved_5_7       : HAL.UInt3 := 16#0#;
      --  Reserved
      L1_CACHE_UNDEF_OP  : L1_CACHE_CTRL_L1_CACHE_UNDEF_OP_Field := 16#0#;
      --  unspecified
      Reserved_12_31     : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_CTRL_Register use record
      L1_CACHE_SHUT_BUS  at 0 range 0 .. 1;
      L1_CACHE_SHUT_DBUS at 0 range 2 .. 3;
      L1_CACHE_SHUT_DMA  at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      L1_CACHE_UNDEF_OP  at 0 range 8 .. 11;
      Reserved_12_31     at 0 range 12 .. 31;
   end record;

   --  Bypass Cache configure register
   type L1_BYPASS_CACHE_CONF_Register is record
      --  Read-only. The bit is used to enable bypass L1-ICache0. 0: disable
      --  bypass, 1: enable bypass.
      BYPASS_L1_ICACHE0_EN : Boolean;
      --  Read-only. The bit is used to enable bypass L1-ICache1. 0: disable
      --  bypass, 1: enable bypass.
      BYPASS_L1_ICACHE1_EN : Boolean;
      --  Read-only. Reserved
      BYPASS_L1_ICACHE2_EN : Boolean;
      --  Read-only. Reserved
      BYPASS_L1_ICACHE3_EN : Boolean;
      --  Read-only. The bit is used to enable bypass L1-DCache. 0: disable
      --  bypass, 1: enable bypass.
      BYPASS_L1_DCACHE_EN  : Boolean;
      --  unspecified
      Reserved_5_31        : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_BYPASS_CACHE_CONF_Register use record
      BYPASS_L1_ICACHE0_EN at 0 range 0 .. 0;
      BYPASS_L1_ICACHE1_EN at 0 range 1 .. 1;
      BYPASS_L1_ICACHE2_EN at 0 range 2 .. 2;
      BYPASS_L1_ICACHE3_EN at 0 range 3 .. 3;
      BYPASS_L1_DCACHE_EN  at 0 range 4 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   --  L1 Cache atomic feature configure register
   type L1_CACHE_ATOMIC_CONF_Register is record
      --  Read-only. The bit is used to enable atomic feature on L1-Cache when
      --  multiple cores access L1-Cache. 1: disable, 1: enable.
      L1_CACHE_ATOMIC_EN : Boolean;
      --  unspecified
      Reserved_1_31      : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ATOMIC_CONF_Register use record
      L1_CACHE_ATOMIC_EN at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  L1 instruction Cache CacheSize mode configure register
   type L1_ICACHE_CACHESIZE_CONF_Register is record
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  1k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_1K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  2k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_2K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  4k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_4K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  8k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_8K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  16k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_16K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  32k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_32K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  64k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_64K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  128k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_128K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  256k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_256K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  512k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_512K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  1024k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_1024K : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  2048k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_2048K : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-ICache as
      --  4096k bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_CACHESIZE_4096K : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE_CACHESIZE_CONF_Register use record
      L1_ICACHE_CACHESIZE_1K    at 0 range 0 .. 0;
      L1_ICACHE_CACHESIZE_2K    at 0 range 1 .. 1;
      L1_ICACHE_CACHESIZE_4K    at 0 range 2 .. 2;
      L1_ICACHE_CACHESIZE_8K    at 0 range 3 .. 3;
      L1_ICACHE_CACHESIZE_16K   at 0 range 4 .. 4;
      L1_ICACHE_CACHESIZE_32K   at 0 range 5 .. 5;
      L1_ICACHE_CACHESIZE_64K   at 0 range 6 .. 6;
      L1_ICACHE_CACHESIZE_128K  at 0 range 7 .. 7;
      L1_ICACHE_CACHESIZE_256K  at 0 range 8 .. 8;
      L1_ICACHE_CACHESIZE_512K  at 0 range 9 .. 9;
      L1_ICACHE_CACHESIZE_1024K at 0 range 10 .. 10;
      L1_ICACHE_CACHESIZE_2048K at 0 range 11 .. 11;
      L1_ICACHE_CACHESIZE_4096K at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  L1 instruction Cache BlockSize mode configure register
   type L1_ICACHE_BLOCKSIZE_CONF_Register is record
      --  Read-only. The field is used to configureblocksize of L1-ICache as 8
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_8   : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-ICache as 16
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_16  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-ICache as 32
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_32  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-ICache as 64
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_64  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-ICache as
      --  128 bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_128 : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-ICache as
      --  256 bytes. This field and all other fields within this register is
      --  onehot.
      L1_ICACHE_BLOCKSIZE_256 : Boolean;
      --  unspecified
      Reserved_6_31           : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE_BLOCKSIZE_CONF_Register use record
      L1_ICACHE_BLOCKSIZE_8   at 0 range 0 .. 0;
      L1_ICACHE_BLOCKSIZE_16  at 0 range 1 .. 1;
      L1_ICACHE_BLOCKSIZE_32  at 0 range 2 .. 2;
      L1_ICACHE_BLOCKSIZE_64  at 0 range 3 .. 3;
      L1_ICACHE_BLOCKSIZE_128 at 0 range 4 .. 4;
      L1_ICACHE_BLOCKSIZE_256 at 0 range 5 .. 5;
      Reserved_6_31           at 0 range 6 .. 31;
   end record;

   --  L1 data Cache CacheSize mode configure register
   type L1_CACHE_CACHESIZE_CONF_Register is record
      --  Read-only. The field is used to configure cachesize of L1-Cache as 1k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_1K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as 2k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_2K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as 4k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_4K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as 8k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_8K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  16k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_16K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  32k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_32K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  64k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_64K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  128k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_128K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  256k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_256K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  512k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_512K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  1024k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_1024K : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  2048k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_2048K : Boolean;
      --  Read-only. The field is used to configure cachesize of L1-Cache as
      --  4096k bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_CACHESIZE_4096K : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_CACHESIZE_CONF_Register use record
      L1_CACHE_CACHESIZE_1K    at 0 range 0 .. 0;
      L1_CACHE_CACHESIZE_2K    at 0 range 1 .. 1;
      L1_CACHE_CACHESIZE_4K    at 0 range 2 .. 2;
      L1_CACHE_CACHESIZE_8K    at 0 range 3 .. 3;
      L1_CACHE_CACHESIZE_16K   at 0 range 4 .. 4;
      L1_CACHE_CACHESIZE_32K   at 0 range 5 .. 5;
      L1_CACHE_CACHESIZE_64K   at 0 range 6 .. 6;
      L1_CACHE_CACHESIZE_128K  at 0 range 7 .. 7;
      L1_CACHE_CACHESIZE_256K  at 0 range 8 .. 8;
      L1_CACHE_CACHESIZE_512K  at 0 range 9 .. 9;
      L1_CACHE_CACHESIZE_1024K at 0 range 10 .. 10;
      L1_CACHE_CACHESIZE_2048K at 0 range 11 .. 11;
      L1_CACHE_CACHESIZE_4096K at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  L1 data Cache BlockSize mode configure register
   type L1_CACHE_BLOCKSIZE_CONF_Register is record
      --  Read-only. The field is used to configureblocksize of L1-DCache as 8
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_8   : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-DCache as 16
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_16  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-DCache as 32
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_32  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-DCache as 64
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_64  : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-DCache as
      --  128 bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_128 : Boolean;
      --  Read-only. The field is used to configureblocksize of L1-DCache as
      --  256 bytes. This field and all other fields within this register is
      --  onehot.
      L1_CACHE_BLOCKSIZE_256 : Boolean;
      --  unspecified
      Reserved_6_31          : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_BLOCKSIZE_CONF_Register use record
      L1_CACHE_BLOCKSIZE_8   at 0 range 0 .. 0;
      L1_CACHE_BLOCKSIZE_16  at 0 range 1 .. 1;
      L1_CACHE_BLOCKSIZE_32  at 0 range 2 .. 2;
      L1_CACHE_BLOCKSIZE_64  at 0 range 3 .. 3;
      L1_CACHE_BLOCKSIZE_128 at 0 range 4 .. 4;
      L1_CACHE_BLOCKSIZE_256 at 0 range 5 .. 5;
      Reserved_6_31          at 0 range 6 .. 31;
   end record;

   --  Cache wrap around control register
   type L1_CACHE_WRAP_AROUND_CTRL_Register is record
      --  Read-only. Set this bit as 1 to enable L1-ICache0 wrap around mode.
      L1_ICACHE0_WRAP : Boolean := False;
      --  Read-only. Set this bit as 1 to enable L1-ICache1 wrap around mode.
      L1_ICACHE1_WRAP : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_WRAP : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_WRAP : Boolean := False;
      --  Set this bit as 1 to enable L1-DCache wrap around mode.
      L1_CACHE_WRAP   : Boolean := False;
      --  unspecified
      Reserved_5_31   : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_WRAP_AROUND_CTRL_Register use record
      L1_ICACHE0_WRAP at 0 range 0 .. 0;
      L1_ICACHE1_WRAP at 0 range 1 .. 1;
      L1_ICACHE2_WRAP at 0 range 2 .. 2;
      L1_ICACHE3_WRAP at 0 range 3 .. 3;
      L1_CACHE_WRAP   at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   --  Cache tag memory power control register
   type L1_CACHE_TAG_MEM_POWER_CTRL_Register is record
      --  Read-only. The bit is used to close clock gating of L1-ICache0 tag
      --  memory. 1: close gating, 0: open clock gating.
      L1_ICACHE0_TAG_MEM_FORCE_ON : Boolean := True;
      --  Read-only. The bit is used to power L1-ICache0 tag memory down. 0:
      --  follow rtc_lslp, 1: power down
      L1_ICACHE0_TAG_MEM_FORCE_PD : Boolean := False;
      --  Read-only. The bit is used to power L1-ICache0 tag memory up. 0:
      --  follow rtc_lslp, 1: power up
      L1_ICACHE0_TAG_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_3_3                : HAL.Bit := 16#0#;
      --  Read-only. The bit is used to close clock gating of L1-ICache1 tag
      --  memory. 1: close gating, 0: open clock gating.
      L1_ICACHE1_TAG_MEM_FORCE_ON : Boolean := True;
      --  Read-only. The bit is used to power L1-ICache1 tag memory down. 0:
      --  follow rtc_lslp, 1: power down
      L1_ICACHE1_TAG_MEM_FORCE_PD : Boolean := False;
      --  Read-only. The bit is used to power L1-ICache1 tag memory up. 0:
      --  follow rtc_lslp, 1: power up
      L1_ICACHE1_TAG_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_7_7                : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_MEM_FORCE_ON : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_MEM_FORCE_PD : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_11_11              : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_MEM_FORCE_ON : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_MEM_FORCE_PD : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_15_15              : HAL.Bit := 16#0#;
      --  The bit is used to close clock gating of L1-Cache tag memory. 1:
      --  close gating, 0: open clock gating.
      L1_CACHE_TAG_MEM_FORCE_ON   : Boolean := True;
      --  The bit is used to power L1-Cache tag memory down. 0: follow
      --  rtc_lslp, 1: power down
      L1_CACHE_TAG_MEM_FORCE_PD   : Boolean := False;
      --  The bit is used to power L1-Cache tag memory up. 0: follow rtc_lslp,
      --  1: power up
      L1_CACHE_TAG_MEM_FORCE_PU   : Boolean := True;
      --  unspecified
      Reserved_19_31              : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_TAG_MEM_POWER_CTRL_Register use record
      L1_ICACHE0_TAG_MEM_FORCE_ON at 0 range 0 .. 0;
      L1_ICACHE0_TAG_MEM_FORCE_PD at 0 range 1 .. 1;
      L1_ICACHE0_TAG_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_3                at 0 range 3 .. 3;
      L1_ICACHE1_TAG_MEM_FORCE_ON at 0 range 4 .. 4;
      L1_ICACHE1_TAG_MEM_FORCE_PD at 0 range 5 .. 5;
      L1_ICACHE1_TAG_MEM_FORCE_PU at 0 range 6 .. 6;
      Reserved_7_7                at 0 range 7 .. 7;
      L1_ICACHE2_TAG_MEM_FORCE_ON at 0 range 8 .. 8;
      L1_ICACHE2_TAG_MEM_FORCE_PD at 0 range 9 .. 9;
      L1_ICACHE2_TAG_MEM_FORCE_PU at 0 range 10 .. 10;
      Reserved_11_11              at 0 range 11 .. 11;
      L1_ICACHE3_TAG_MEM_FORCE_ON at 0 range 12 .. 12;
      L1_ICACHE3_TAG_MEM_FORCE_PD at 0 range 13 .. 13;
      L1_ICACHE3_TAG_MEM_FORCE_PU at 0 range 14 .. 14;
      Reserved_15_15              at 0 range 15 .. 15;
      L1_CACHE_TAG_MEM_FORCE_ON   at 0 range 16 .. 16;
      L1_CACHE_TAG_MEM_FORCE_PD   at 0 range 17 .. 17;
      L1_CACHE_TAG_MEM_FORCE_PU   at 0 range 18 .. 18;
      Reserved_19_31              at 0 range 19 .. 31;
   end record;

   --  Cache data memory power control register
   type L1_CACHE_DATA_MEM_POWER_CTRL_Register is record
      --  Read-only. The bit is used to close clock gating of L1-ICache0 data
      --  memory. 1: close gating, 0: open clock gating.
      L1_ICACHE0_DATA_MEM_FORCE_ON : Boolean := True;
      --  Read-only. The bit is used to power L1-ICache0 data memory down. 0:
      --  follow rtc_lslp, 1: power down
      L1_ICACHE0_DATA_MEM_FORCE_PD : Boolean := False;
      --  Read-only. The bit is used to power L1-ICache0 data memory up. 0:
      --  follow rtc_lslp, 1: power up
      L1_ICACHE0_DATA_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_3_3                 : HAL.Bit := 16#0#;
      --  Read-only. The bit is used to close clock gating of L1-ICache1 data
      --  memory. 1: close gating, 0: open clock gating.
      L1_ICACHE1_DATA_MEM_FORCE_ON : Boolean := True;
      --  Read-only. The bit is used to power L1-ICache1 data memory down. 0:
      --  follow rtc_lslp, 1: power down
      L1_ICACHE1_DATA_MEM_FORCE_PD : Boolean := False;
      --  Read-only. The bit is used to power L1-ICache1 data memory up. 0:
      --  follow rtc_lslp, 1: power up
      L1_ICACHE1_DATA_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_7_7                 : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE2_DATA_MEM_FORCE_ON : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE2_DATA_MEM_FORCE_PD : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_DATA_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_11_11               : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE3_DATA_MEM_FORCE_ON : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE3_DATA_MEM_FORCE_PD : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_DATA_MEM_FORCE_PU : Boolean := True;
      --  unspecified
      Reserved_15_15               : HAL.Bit := 16#0#;
      --  The bit is used to close clock gating of L1-Cache data memory. 1:
      --  close gating, 0: open clock gating.
      L1_CACHE_DATA_MEM_FORCE_ON   : Boolean := True;
      --  The bit is used to power L1-Cache data memory down. 0: follow
      --  rtc_lslp, 1: power down
      L1_CACHE_DATA_MEM_FORCE_PD   : Boolean := False;
      --  The bit is used to power L1-Cache data memory up. 0: follow rtc_lslp,
      --  1: power up
      L1_CACHE_DATA_MEM_FORCE_PU   : Boolean := True;
      --  unspecified
      Reserved_19_31               : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_DATA_MEM_POWER_CTRL_Register use record
      L1_ICACHE0_DATA_MEM_FORCE_ON at 0 range 0 .. 0;
      L1_ICACHE0_DATA_MEM_FORCE_PD at 0 range 1 .. 1;
      L1_ICACHE0_DATA_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_3                 at 0 range 3 .. 3;
      L1_ICACHE1_DATA_MEM_FORCE_ON at 0 range 4 .. 4;
      L1_ICACHE1_DATA_MEM_FORCE_PD at 0 range 5 .. 5;
      L1_ICACHE1_DATA_MEM_FORCE_PU at 0 range 6 .. 6;
      Reserved_7_7                 at 0 range 7 .. 7;
      L1_ICACHE2_DATA_MEM_FORCE_ON at 0 range 8 .. 8;
      L1_ICACHE2_DATA_MEM_FORCE_PD at 0 range 9 .. 9;
      L1_ICACHE2_DATA_MEM_FORCE_PU at 0 range 10 .. 10;
      Reserved_11_11               at 0 range 11 .. 11;
      L1_ICACHE3_DATA_MEM_FORCE_ON at 0 range 12 .. 12;
      L1_ICACHE3_DATA_MEM_FORCE_PD at 0 range 13 .. 13;
      L1_ICACHE3_DATA_MEM_FORCE_PU at 0 range 14 .. 14;
      Reserved_15_15               at 0 range 15 .. 15;
      L1_CACHE_DATA_MEM_FORCE_ON   at 0 range 16 .. 16;
      L1_CACHE_DATA_MEM_FORCE_PD   at 0 range 17 .. 17;
      L1_CACHE_DATA_MEM_FORCE_PU   at 0 range 18 .. 18;
      Reserved_19_31               at 0 range 19 .. 31;
   end record;

   --  Cache Freeze control register
   type L1_CACHE_FREEZE_CTRL_Register is record
      --  Read-only. The bit is used to enable freeze operation on L1-ICache0.
      --  It can be cleared by software.
      L1_ICACHE0_FREEZE_EN   : Boolean := False;
      --  Read-only. The bit is used to configure mode of freeze operation
      --  L1-ICache0. 0: a miss-access will not stuck. 1: a miss-access will
      --  stuck.
      L1_ICACHE0_FREEZE_MODE : Boolean := False;
      --  Read-only. The bit is used to indicate whether freeze operation on
      --  L1-ICache0 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE0_FREEZE_DONE : Boolean := False;
      --  unspecified
      Reserved_3_3           : HAL.Bit := 16#0#;
      --  Read-only. The bit is used to enable freeze operation on L1-ICache1.
      --  It can be cleared by software.
      L1_ICACHE1_FREEZE_EN   : Boolean := False;
      --  Read-only. The bit is used to configure mode of freeze operation
      --  L1-ICache1. 0: a miss-access will not stuck. 1: a miss-access will
      --  stuck.
      L1_ICACHE1_FREEZE_MODE : Boolean := False;
      --  Read-only. The bit is used to indicate whether freeze operation on
      --  L1-ICache1 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE1_FREEZE_DONE : Boolean := False;
      --  unspecified
      Reserved_7_7           : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE2_FREEZE_EN   : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_FREEZE_MODE : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_FREEZE_DONE : Boolean := False;
      --  unspecified
      Reserved_11_11         : HAL.Bit := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE3_FREEZE_EN   : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_FREEZE_MODE : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_FREEZE_DONE : Boolean := False;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  The bit is used to enable freeze operation on L1-Cache. It can be
      --  cleared by software.
      L1_CACHE_FREEZE_EN     : Boolean := False;
      --  The bit is used to configure mode of freeze operation L1-Cache. 0: a
      --  miss-access will not stuck. 1: a miss-access will stuck.
      L1_CACHE_FREEZE_MODE   : Boolean := False;
      --  Read-only. The bit is used to indicate whether freeze operation on
      --  L1-Cache is finished or not. 0: not finished. 1: finished.
      L1_CACHE_FREEZE_DONE   : Boolean := False;
      --  unspecified
      Reserved_19_31         : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_FREEZE_CTRL_Register use record
      L1_ICACHE0_FREEZE_EN   at 0 range 0 .. 0;
      L1_ICACHE0_FREEZE_MODE at 0 range 1 .. 1;
      L1_ICACHE0_FREEZE_DONE at 0 range 2 .. 2;
      Reserved_3_3           at 0 range 3 .. 3;
      L1_ICACHE1_FREEZE_EN   at 0 range 4 .. 4;
      L1_ICACHE1_FREEZE_MODE at 0 range 5 .. 5;
      L1_ICACHE1_FREEZE_DONE at 0 range 6 .. 6;
      Reserved_7_7           at 0 range 7 .. 7;
      L1_ICACHE2_FREEZE_EN   at 0 range 8 .. 8;
      L1_ICACHE2_FREEZE_MODE at 0 range 9 .. 9;
      L1_ICACHE2_FREEZE_DONE at 0 range 10 .. 10;
      Reserved_11_11         at 0 range 11 .. 11;
      L1_ICACHE3_FREEZE_EN   at 0 range 12 .. 12;
      L1_ICACHE3_FREEZE_MODE at 0 range 13 .. 13;
      L1_ICACHE3_FREEZE_DONE at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      L1_CACHE_FREEZE_EN     at 0 range 16 .. 16;
      L1_CACHE_FREEZE_MODE   at 0 range 17 .. 17;
      L1_CACHE_FREEZE_DONE   at 0 range 18 .. 18;
      Reserved_19_31         at 0 range 19 .. 31;
   end record;

   --  Cache data memory access configure register
   type L1_CACHE_DATA_MEM_ACS_CONF_Register is record
      --  Read-only. The bit is used to enable config-bus read L1-ICache0 data
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE0_DATA_MEM_RD_EN : Boolean := True;
      --  Read-only. The bit is used to enable config-bus write L1-ICache0 data
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE0_DATA_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_2_3              : HAL.UInt2 := 16#0#;
      --  Read-only. The bit is used to enable config-bus read L1-ICache1 data
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE1_DATA_MEM_RD_EN : Boolean := True;
      --  Read-only. The bit is used to enable config-bus write L1-ICache1 data
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE1_DATA_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_6_7              : HAL.UInt2 := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE2_DATA_MEM_RD_EN : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE2_DATA_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE3_DATA_MEM_RD_EN : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE3_DATA_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_14_15            : HAL.UInt2 := 16#0#;
      --  The bit is used to enable config-bus read L1-Cache data memoryory. 0:
      --  disable, 1: enable.
      L1_CACHE_DATA_MEM_RD_EN   : Boolean := True;
      --  The bit is used to enable config-bus write L1-Cache data memoryory.
      --  0: disable, 1: enable.
      L1_CACHE_DATA_MEM_WR_EN   : Boolean := True;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_DATA_MEM_ACS_CONF_Register use record
      L1_ICACHE0_DATA_MEM_RD_EN at 0 range 0 .. 0;
      L1_ICACHE0_DATA_MEM_WR_EN at 0 range 1 .. 1;
      Reserved_2_3              at 0 range 2 .. 3;
      L1_ICACHE1_DATA_MEM_RD_EN at 0 range 4 .. 4;
      L1_ICACHE1_DATA_MEM_WR_EN at 0 range 5 .. 5;
      Reserved_6_7              at 0 range 6 .. 7;
      L1_ICACHE2_DATA_MEM_RD_EN at 0 range 8 .. 8;
      L1_ICACHE2_DATA_MEM_WR_EN at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      L1_ICACHE3_DATA_MEM_RD_EN at 0 range 12 .. 12;
      L1_ICACHE3_DATA_MEM_WR_EN at 0 range 13 .. 13;
      Reserved_14_15            at 0 range 14 .. 15;
      L1_CACHE_DATA_MEM_RD_EN   at 0 range 16 .. 16;
      L1_CACHE_DATA_MEM_WR_EN   at 0 range 17 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   --  Cache tag memory access configure register
   type L1_CACHE_TAG_MEM_ACS_CONF_Register is record
      --  Read-only. The bit is used to enable config-bus read L1-ICache0 tag
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE0_TAG_MEM_RD_EN : Boolean := True;
      --  Read-only. The bit is used to enable config-bus write L1-ICache0 tag
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE0_TAG_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_2_3             : HAL.UInt2 := 16#0#;
      --  Read-only. The bit is used to enable config-bus read L1-ICache1 tag
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE1_TAG_MEM_RD_EN : Boolean := True;
      --  Read-only. The bit is used to enable config-bus write L1-ICache1 tag
      --  memoryory. 0: disable, 1: enable.
      L1_ICACHE1_TAG_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_6_7             : HAL.UInt2 := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_MEM_RD_EN : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_10_11           : HAL.UInt2 := 16#0#;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_MEM_RD_EN : Boolean := True;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_MEM_WR_EN : Boolean := True;
      --  unspecified
      Reserved_14_15           : HAL.UInt2 := 16#0#;
      --  The bit is used to enable config-bus read L1-Cache tag memoryory. 0:
      --  disable, 1: enable.
      L1_CACHE_TAG_MEM_RD_EN   : Boolean := True;
      --  The bit is used to enable config-bus write L1-Cache tag memoryory. 0:
      --  disable, 1: enable.
      L1_CACHE_TAG_MEM_WR_EN   : Boolean := True;
      --  unspecified
      Reserved_18_31           : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_TAG_MEM_ACS_CONF_Register use record
      L1_ICACHE0_TAG_MEM_RD_EN at 0 range 0 .. 0;
      L1_ICACHE0_TAG_MEM_WR_EN at 0 range 1 .. 1;
      Reserved_2_3             at 0 range 2 .. 3;
      L1_ICACHE1_TAG_MEM_RD_EN at 0 range 4 .. 4;
      L1_ICACHE1_TAG_MEM_WR_EN at 0 range 5 .. 5;
      Reserved_6_7             at 0 range 6 .. 7;
      L1_ICACHE2_TAG_MEM_RD_EN at 0 range 8 .. 8;
      L1_ICACHE2_TAG_MEM_WR_EN at 0 range 9 .. 9;
      Reserved_10_11           at 0 range 10 .. 11;
      L1_ICACHE3_TAG_MEM_RD_EN at 0 range 12 .. 12;
      L1_ICACHE3_TAG_MEM_WR_EN at 0 range 13 .. 13;
      Reserved_14_15           at 0 range 14 .. 15;
      L1_CACHE_TAG_MEM_RD_EN   at 0 range 16 .. 16;
      L1_CACHE_TAG_MEM_WR_EN   at 0 range 17 .. 17;
      Reserved_18_31           at 0 range 18 .. 31;
   end record;

   subtype L1_ICACHE0_PRELOCK_CONF_L1_ICACHE0_PRELOCK_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 0 prelock configure register
   type L1_ICACHE0_PRELOCK_CONF_Register is record
      --  Read-only. The bit is used to enable the first section of prelock
      --  function on L1-ICache0.
      L1_ICACHE0_PRELOCK_SCT0_EN : Boolean;
      --  Read-only. The bit is used to enable the second section of prelock
      --  function on L1-ICache0.
      L1_ICACHE0_PRELOCK_SCT1_EN : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache0 prelock.
      L1_ICACHE0_PRELOCK_RGID    : L1_ICACHE0_PRELOCK_CONF_L1_ICACHE0_PRELOCK_RGID_Field;
      --  unspecified
      Reserved_6_31              : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_PRELOCK_CONF_Register use record
      L1_ICACHE0_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L1_ICACHE0_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L1_ICACHE0_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31              at 0 range 6 .. 31;
   end record;

   subtype L1_ICACHE0_PRELOCK_SCT_SIZE_L1_ICACHE0_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt14;
   subtype L1_ICACHE0_PRELOCK_SCT_SIZE_L1_ICACHE0_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt14;

   --  L1 instruction Cache 0 prelock section size configure register
   type L1_ICACHE0_PRELOCK_SCT_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache0, which should be used together with
      --  L1_ICACHE0_PRELOCK_SCT0_ADDR_REG
      L1_ICACHE0_PRELOCK_SCT0_SIZE : L1_ICACHE0_PRELOCK_SCT_SIZE_L1_ICACHE0_PRELOCK_SCT0_SIZE_Field;
      --  unspecified
      Reserved_14_15               : HAL.UInt2;
      --  Read-only. Those bits are used to configure the size of the second
      --  section of prelock on L1-ICache0, which should be used together with
      --  L1_ICACHE0_PRELOCK_SCT1_ADDR_REG
      L1_ICACHE0_PRELOCK_SCT1_SIZE : L1_ICACHE0_PRELOCK_SCT_SIZE_L1_ICACHE0_PRELOCK_SCT1_SIZE_Field;
      --  unspecified
      Reserved_30_31               : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_PRELOCK_SCT_SIZE_Register use record
      L1_ICACHE0_PRELOCK_SCT0_SIZE at 0 range 0 .. 13;
      Reserved_14_15               at 0 range 14 .. 15;
      L1_ICACHE0_PRELOCK_SCT1_SIZE at 0 range 16 .. 29;
      Reserved_30_31               at 0 range 30 .. 31;
   end record;

   subtype L1_ICACHE1_PRELOCK_CONF_L1_ICACHE1_PRELOCK_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 1 prelock configure register
   type L1_ICACHE1_PRELOCK_CONF_Register is record
      --  Read-only. The bit is used to enable the first section of prelock
      --  function on L1-ICache1.
      L1_ICACHE1_PRELOCK_SCT0_EN : Boolean;
      --  Read-only. The bit is used to enable the second section of prelock
      --  function on L1-ICache1.
      L1_ICACHE1_PRELOCK_SCT1_EN : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache1 prelock.
      L1_ICACHE1_PRELOCK_RGID    : L1_ICACHE1_PRELOCK_CONF_L1_ICACHE1_PRELOCK_RGID_Field;
      --  unspecified
      Reserved_6_31              : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_PRELOCK_CONF_Register use record
      L1_ICACHE1_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L1_ICACHE1_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L1_ICACHE1_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31              at 0 range 6 .. 31;
   end record;

   subtype L1_ICACHE1_PRELOCK_SCT_SIZE_L1_ICACHE1_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt14;
   subtype L1_ICACHE1_PRELOCK_SCT_SIZE_L1_ICACHE1_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt14;

   --  L1 instruction Cache 1 prelock section size configure register
   type L1_ICACHE1_PRELOCK_SCT_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache1, which should be used together with
      --  L1_ICACHE1_PRELOCK_SCT0_ADDR_REG
      L1_ICACHE1_PRELOCK_SCT0_SIZE : L1_ICACHE1_PRELOCK_SCT_SIZE_L1_ICACHE1_PRELOCK_SCT0_SIZE_Field;
      --  unspecified
      Reserved_14_15               : HAL.UInt2;
      --  Read-only. Those bits are used to configure the size of the second
      --  section of prelock on L1-ICache1, which should be used together with
      --  L1_ICACHE1_PRELOCK_SCT1_ADDR_REG
      L1_ICACHE1_PRELOCK_SCT1_SIZE : L1_ICACHE1_PRELOCK_SCT_SIZE_L1_ICACHE1_PRELOCK_SCT1_SIZE_Field;
      --  unspecified
      Reserved_30_31               : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_PRELOCK_SCT_SIZE_Register use record
      L1_ICACHE1_PRELOCK_SCT0_SIZE at 0 range 0 .. 13;
      Reserved_14_15               at 0 range 14 .. 15;
      L1_ICACHE1_PRELOCK_SCT1_SIZE at 0 range 16 .. 29;
      Reserved_30_31               at 0 range 30 .. 31;
   end record;

   subtype L1_ICACHE2_PRELOCK_CONF_L1_ICACHE2_PRELOCK_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 2 prelock configure register
   type L1_ICACHE2_PRELOCK_CONF_Register is record
      --  Read-only. The bit is used to enable the first section of prelock
      --  function on L1-ICache2.
      L1_ICACHE2_PRELOCK_SCT0_EN : Boolean;
      --  Read-only. The bit is used to enable the second section of prelock
      --  function on L1-ICache2.
      L1_ICACHE2_PRELOCK_SCT1_EN : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache2 prelock.
      L1_ICACHE2_PRELOCK_RGID    : L1_ICACHE2_PRELOCK_CONF_L1_ICACHE2_PRELOCK_RGID_Field;
      --  unspecified
      Reserved_6_31              : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_PRELOCK_CONF_Register use record
      L1_ICACHE2_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L1_ICACHE2_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L1_ICACHE2_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31              at 0 range 6 .. 31;
   end record;

   subtype L1_ICACHE2_PRELOCK_SCT_SIZE_L1_ICACHE2_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt14;
   subtype L1_ICACHE2_PRELOCK_SCT_SIZE_L1_ICACHE2_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt14;

   --  L1 instruction Cache 2 prelock section size configure register
   type L1_ICACHE2_PRELOCK_SCT_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache2, which should be used together with
      --  L1_ICACHE2_PRELOCK_SCT0_ADDR_REG
      L1_ICACHE2_PRELOCK_SCT0_SIZE : L1_ICACHE2_PRELOCK_SCT_SIZE_L1_ICACHE2_PRELOCK_SCT0_SIZE_Field;
      --  unspecified
      Reserved_14_15               : HAL.UInt2;
      --  Read-only. Those bits are used to configure the size of the second
      --  section of prelock on L1-ICache2, which should be used together with
      --  L1_ICACHE2_PRELOCK_SCT1_ADDR_REG
      L1_ICACHE2_PRELOCK_SCT1_SIZE : L1_ICACHE2_PRELOCK_SCT_SIZE_L1_ICACHE2_PRELOCK_SCT1_SIZE_Field;
      --  unspecified
      Reserved_30_31               : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_PRELOCK_SCT_SIZE_Register use record
      L1_ICACHE2_PRELOCK_SCT0_SIZE at 0 range 0 .. 13;
      Reserved_14_15               at 0 range 14 .. 15;
      L1_ICACHE2_PRELOCK_SCT1_SIZE at 0 range 16 .. 29;
      Reserved_30_31               at 0 range 30 .. 31;
   end record;

   subtype L1_ICACHE3_PRELOCK_CONF_L1_ICACHE3_PRELOCK_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 3 prelock configure register
   type L1_ICACHE3_PRELOCK_CONF_Register is record
      --  Read-only. The bit is used to enable the first section of prelock
      --  function on L1-ICache3.
      L1_ICACHE3_PRELOCK_SCT0_EN : Boolean;
      --  Read-only. The bit is used to enable the second section of prelock
      --  function on L1-ICache3.
      L1_ICACHE3_PRELOCK_SCT1_EN : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache3 prelock.
      L1_ICACHE3_PRELOCK_RGID    : L1_ICACHE3_PRELOCK_CONF_L1_ICACHE3_PRELOCK_RGID_Field;
      --  unspecified
      Reserved_6_31              : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_PRELOCK_CONF_Register use record
      L1_ICACHE3_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L1_ICACHE3_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L1_ICACHE3_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31              at 0 range 6 .. 31;
   end record;

   subtype L1_ICACHE3_PRELOCK_SCT_SIZE_L1_ICACHE3_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt14;
   subtype L1_ICACHE3_PRELOCK_SCT_SIZE_L1_ICACHE3_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt14;

   --  L1 instruction Cache 3 prelock section size configure register
   type L1_ICACHE3_PRELOCK_SCT_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache3, which should be used together with
      --  L1_ICACHE3_PRELOCK_SCT0_ADDR_REG
      L1_ICACHE3_PRELOCK_SCT0_SIZE : L1_ICACHE3_PRELOCK_SCT_SIZE_L1_ICACHE3_PRELOCK_SCT0_SIZE_Field;
      --  unspecified
      Reserved_14_15               : HAL.UInt2;
      --  Read-only. Those bits are used to configure the size of the second
      --  section of prelock on L1-ICache3, which should be used together with
      --  L1_ICACHE3_PRELOCK_SCT1_ADDR_REG
      L1_ICACHE3_PRELOCK_SCT1_SIZE : L1_ICACHE3_PRELOCK_SCT_SIZE_L1_ICACHE3_PRELOCK_SCT1_SIZE_Field;
      --  unspecified
      Reserved_30_31               : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_PRELOCK_SCT_SIZE_Register use record
      L1_ICACHE3_PRELOCK_SCT0_SIZE at 0 range 0 .. 13;
      Reserved_14_15               at 0 range 14 .. 15;
      L1_ICACHE3_PRELOCK_SCT1_SIZE at 0 range 16 .. 29;
      Reserved_30_31               at 0 range 30 .. 31;
   end record;

   subtype L1_CACHE_PRELOCK_CONF_L1_CACHE_PRELOCK_RGID_Field is HAL.UInt4;

   --  L1 Cache prelock configure register
   type L1_CACHE_PRELOCK_CONF_Register is record
      --  The bit is used to enable the first section of prelock function on
      --  L1-Cache.
      L1_CACHE_PRELOCK_SCT0_EN : Boolean := False;
      --  The bit is used to enable the second section of prelock function on
      --  L1-Cache.
      L1_CACHE_PRELOCK_SCT1_EN : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 cache prelock.
      L1_CACHE_PRELOCK_RGID    : L1_CACHE_PRELOCK_CONF_L1_CACHE_PRELOCK_RGID_Field :=
                                  16#0#;
      --  unspecified
      Reserved_6_31            : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_PRELOCK_CONF_Register use record
      L1_CACHE_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L1_CACHE_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L1_CACHE_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31            at 0 range 6 .. 31;
   end record;

   subtype L1_DCACHE_PRELOCK_SCT_SIZE_L1_CACHE_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt14;
   subtype L1_DCACHE_PRELOCK_SCT_SIZE_L1_CACHE_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt14;

   --  L1 Cache prelock section size configure register
   type L1_DCACHE_PRELOCK_SCT_SIZE_Register is record
      --  Those bits are used to configure the size of the first section of
      --  prelock on L1-Cache, which should be used together with
      --  L1_CACHE_PRELOCK_SCT0_ADDR_REG
      L1_CACHE_PRELOCK_SCT0_SIZE : L1_DCACHE_PRELOCK_SCT_SIZE_L1_CACHE_PRELOCK_SCT0_SIZE_Field :=
                                    16#3FFF#;
      --  unspecified
      Reserved_14_15             : HAL.UInt2 := 16#0#;
      --  Those bits are used to configure the size of the second section of
      --  prelock on L1-Cache, which should be used together with
      --  L1_CACHE_PRELOCK_SCT1_ADDR_REG
      L1_CACHE_PRELOCK_SCT1_SIZE : L1_DCACHE_PRELOCK_SCT_SIZE_L1_CACHE_PRELOCK_SCT1_SIZE_Field :=
                                    16#3FFF#;
      --  unspecified
      Reserved_30_31             : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_DCACHE_PRELOCK_SCT_SIZE_Register use record
      L1_CACHE_PRELOCK_SCT0_SIZE at 0 range 0 .. 13;
      Reserved_14_15             at 0 range 14 .. 15;
      L1_CACHE_PRELOCK_SCT1_SIZE at 0 range 16 .. 29;
      Reserved_30_31             at 0 range 30 .. 31;
   end record;

   subtype CACHE_LOCK_CTRL_CACHE_LOCK_RGID_Field is HAL.UInt4;

   --  Lock-class (manual lock) operation control register
   type CACHE_LOCK_CTRL_Register is record
      --  The bit is used to enable lock operation. It will be cleared by
      --  hardware after lock operation done
      CACHE_LOCK_ENA   : Boolean := False;
      --  The bit is used to enable unlock operation. It will be cleared by
      --  hardware after unlock operation done
      CACHE_UNLOCK_ENA : Boolean := False;
      --  Read-only. The bit is used to indicate whether unlock/lock operation
      --  is finished or not. 0: not finished. 1: finished.
      CACHE_LOCK_DONE  : Boolean := True;
      --  Read-only. The bit is used to set the gid of cache lock/unlock.
      CACHE_LOCK_RGID  : CACHE_LOCK_CTRL_CACHE_LOCK_RGID_Field := 16#0#;
      --  unspecified
      Reserved_7_31    : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_LOCK_CTRL_Register use record
      CACHE_LOCK_ENA   at 0 range 0 .. 0;
      CACHE_UNLOCK_ENA at 0 range 1 .. 1;
      CACHE_LOCK_DONE  at 0 range 2 .. 2;
      CACHE_LOCK_RGID  at 0 range 3 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   subtype CACHE_LOCK_MAP_CACHE_LOCK_MAP_Field is HAL.UInt6;

   --  Lock (manual lock) map configure register
   type CACHE_LOCK_MAP_Register is record
      --  Those bits are used to indicate which caches in the two-level cache
      --  structure will apply this lock/unlock operation. [4]: L1-Cache
      CACHE_LOCK_MAP : CACHE_LOCK_MAP_CACHE_LOCK_MAP_Field := 16#0#;
      --  unspecified
      Reserved_6_31  : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_LOCK_MAP_Register use record
      CACHE_LOCK_MAP at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CACHE_LOCK_SIZE_CACHE_LOCK_SIZE_Field is HAL.UInt16;

   --  Lock (manual lock) size configure register
   type CACHE_LOCK_SIZE_Register is record
      --  Those bits are used to configure the size of the lock/unlock
      --  operation, which should be used together with CACHE_LOCK_ADDR_REG
      CACHE_LOCK_SIZE : CACHE_LOCK_SIZE_CACHE_LOCK_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_LOCK_SIZE_Register use record
      CACHE_LOCK_SIZE at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype CACHE_SYNC_CTRL_CACHE_SYNC_RGID_Field is HAL.UInt4;

   --  Sync-class operation control register
   type CACHE_SYNC_CTRL_Register is record
      --  The bit is used to enable invalidate operation. It will be cleared by
      --  hardware after invalidate operation done. Note that this bit and the
      --  other sync-bits (clean_ena, writeback_ena, writeback_invalidate_ena)
      --  are mutually exclusive, that is, those bits can not be set to 1 at
      --  the same time.
      CACHE_INVALIDATE_ENA           : Boolean := True;
      --  The bit is used to enable clean operation. It will be cleared by
      --  hardware after clean operation done. Note that this bit and the other
      --  sync-bits (invalidate_ena, writeback_ena, writeback_invalidate_ena)
      --  are mutually exclusive, that is, those bits can not be set to 1 at
      --  the same time.
      CACHE_CLEAN_ENA                : Boolean := False;
      --  The bit is used to enable writeback operation. It will be cleared by
      --  hardware after writeback operation done. Note that this bit and the
      --  other sync-bits (invalidate_ena, clean_ena, writeback_invalidate_ena)
      --  are mutually exclusive, that is, those bits can not be set to 1 at
      --  the same time.
      CACHE_WRITEBACK_ENA            : Boolean := False;
      --  The bit is used to enable writeback-invalidate operation. It will be
      --  cleared by hardware after writeback-invalidate operation done. Note
      --  that this bit and the other sync-bits (invalidate_ena, clean_ena,
      --  writeback_ena) are mutually exclusive, that is, those bits can not be
      --  set to 1 at the same time.
      CACHE_WRITEBACK_INVALIDATE_ENA : Boolean := False;
      --  Read-only. The bit is used to indicate whether sync operation
      --  (invalidate, clean, writeback, writeback_invalidate) is finished or
      --  not. 0: not finished. 1: finished.
      CACHE_SYNC_DONE                : Boolean := False;
      --  Read-only. The bit is used to set the gid of cache sync operation
      --  (invalidate, clean, writeback, writeback_invalidate)
      CACHE_SYNC_RGID                : CACHE_SYNC_CTRL_CACHE_SYNC_RGID_Field :=
                                        16#0#;
      --  unspecified
      Reserved_9_31                  : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_SYNC_CTRL_Register use record
      CACHE_INVALIDATE_ENA           at 0 range 0 .. 0;
      CACHE_CLEAN_ENA                at 0 range 1 .. 1;
      CACHE_WRITEBACK_ENA            at 0 range 2 .. 2;
      CACHE_WRITEBACK_INVALIDATE_ENA at 0 range 3 .. 3;
      CACHE_SYNC_DONE                at 0 range 4 .. 4;
      CACHE_SYNC_RGID                at 0 range 5 .. 8;
      Reserved_9_31                  at 0 range 9 .. 31;
   end record;

   subtype CACHE_SYNC_MAP_CACHE_SYNC_MAP_Field is HAL.UInt6;

   --  Sync map configure register
   type CACHE_SYNC_MAP_Register is record
      --  Those bits are used to indicate which caches in the two-level cache
      --  structure will apply the sync operation. [4]: L1-Cache
      CACHE_SYNC_MAP : CACHE_SYNC_MAP_CACHE_SYNC_MAP_Field := 16#3F#;
      --  unspecified
      Reserved_6_31  : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_SYNC_MAP_Register use record
      CACHE_SYNC_MAP at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype CACHE_SYNC_SIZE_CACHE_SYNC_SIZE_Field is HAL.UInt24;

   --  Sync size configure register
   type CACHE_SYNC_SIZE_Register is record
      --  Those bits are used to configure the size of the sync operation,
      --  which should be used together with CACHE_SYNC_ADDR_REG
      CACHE_SYNC_SIZE : CACHE_SYNC_SIZE_CACHE_SYNC_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_SYNC_SIZE_Register use record
      CACHE_SYNC_SIZE at 0 range 0 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   subtype L1_ICACHE0_PRELOAD_CTRL_L1_ICACHE0_PRELOAD_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 0 preload-operation control register
   type L1_ICACHE0_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L1-ICache0. It will be
      --  cleared by hardware automatically after preload operation is done.
      L1_ICACHE0_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L1_ICACHE0_PRELOAD_DONE  : Boolean := True;
      --  Read-only. The bit is used to configure the direction of preload
      --  operation. 0: ascending, 1: descending.
      L1_ICACHE0_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 icache0 preload.
      L1_ICACHE0_PRELOAD_RGID  : L1_ICACHE0_PRELOAD_CTRL_L1_ICACHE0_PRELOAD_RGID_Field :=
                                  16#0#;
      --  unspecified
      Reserved_7_31            : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_PRELOAD_CTRL_Register use record
      L1_ICACHE0_PRELOAD_ENA   at 0 range 0 .. 0;
      L1_ICACHE0_PRELOAD_DONE  at 0 range 1 .. 1;
      L1_ICACHE0_PRELOAD_ORDER at 0 range 2 .. 2;
      L1_ICACHE0_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31            at 0 range 7 .. 31;
   end record;

   subtype L1_ICACHE0_PRELOAD_SIZE_L1_ICACHE0_PRELOAD_SIZE_Field is HAL.UInt14;

   --  L1 instruction Cache 0 preload size configure register
   type L1_ICACHE0_PRELOAD_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache0, which should be used together with
      --  L1_ICACHE0_PRELOAD_ADDR_REG
      L1_ICACHE0_PRELOAD_SIZE : L1_ICACHE0_PRELOAD_SIZE_L1_ICACHE0_PRELOAD_SIZE_Field;
      --  unspecified
      Reserved_14_31          : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_PRELOAD_SIZE_Register use record
      L1_ICACHE0_PRELOAD_SIZE at 0 range 0 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE1_PRELOAD_CTRL_L1_ICACHE1_PRELOAD_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 1 preload-operation control register
   type L1_ICACHE1_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L1-ICache1. It will be
      --  cleared by hardware automatically after preload operation is done.
      L1_ICACHE1_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L1_ICACHE1_PRELOAD_DONE  : Boolean := True;
      --  Read-only. The bit is used to configure the direction of preload
      --  operation. 0: ascending, 1: descending.
      L1_ICACHE1_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 icache1 preload.
      L1_ICACHE1_PRELOAD_RGID  : L1_ICACHE1_PRELOAD_CTRL_L1_ICACHE1_PRELOAD_RGID_Field :=
                                  16#0#;
      --  unspecified
      Reserved_7_31            : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_PRELOAD_CTRL_Register use record
      L1_ICACHE1_PRELOAD_ENA   at 0 range 0 .. 0;
      L1_ICACHE1_PRELOAD_DONE  at 0 range 1 .. 1;
      L1_ICACHE1_PRELOAD_ORDER at 0 range 2 .. 2;
      L1_ICACHE1_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31            at 0 range 7 .. 31;
   end record;

   subtype L1_ICACHE1_PRELOAD_SIZE_L1_ICACHE1_PRELOAD_SIZE_Field is HAL.UInt14;

   --  L1 instruction Cache 1 preload size configure register
   type L1_ICACHE1_PRELOAD_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache1, which should be used together with
      --  L1_ICACHE1_PRELOAD_ADDR_REG
      L1_ICACHE1_PRELOAD_SIZE : L1_ICACHE1_PRELOAD_SIZE_L1_ICACHE1_PRELOAD_SIZE_Field;
      --  unspecified
      Reserved_14_31          : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_PRELOAD_SIZE_Register use record
      L1_ICACHE1_PRELOAD_SIZE at 0 range 0 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE2_PRELOAD_CTRL_L1_ICACHE2_PRELOAD_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 2 preload-operation control register
   type L1_ICACHE2_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L1-ICache2. It will be
      --  cleared by hardware automatically after preload operation is done.
      L1_ICACHE2_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L1_ICACHE2_PRELOAD_DONE  : Boolean := True;
      --  Read-only. The bit is used to configure the direction of preload
      --  operation. 0: ascending, 1: descending.
      L1_ICACHE2_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 icache2 preload.
      L1_ICACHE2_PRELOAD_RGID  : L1_ICACHE2_PRELOAD_CTRL_L1_ICACHE2_PRELOAD_RGID_Field :=
                                  16#0#;
      --  unspecified
      Reserved_7_31            : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_PRELOAD_CTRL_Register use record
      L1_ICACHE2_PRELOAD_ENA   at 0 range 0 .. 0;
      L1_ICACHE2_PRELOAD_DONE  at 0 range 1 .. 1;
      L1_ICACHE2_PRELOAD_ORDER at 0 range 2 .. 2;
      L1_ICACHE2_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31            at 0 range 7 .. 31;
   end record;

   subtype L1_ICACHE2_PRELOAD_SIZE_L1_ICACHE2_PRELOAD_SIZE_Field is HAL.UInt14;

   --  L1 instruction Cache 2 preload size configure register
   type L1_ICACHE2_PRELOAD_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache2, which should be used together with
      --  L1_ICACHE2_PRELOAD_ADDR_REG
      L1_ICACHE2_PRELOAD_SIZE : L1_ICACHE2_PRELOAD_SIZE_L1_ICACHE2_PRELOAD_SIZE_Field;
      --  unspecified
      Reserved_14_31          : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_PRELOAD_SIZE_Register use record
      L1_ICACHE2_PRELOAD_SIZE at 0 range 0 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE3_PRELOAD_CTRL_L1_ICACHE3_PRELOAD_RGID_Field is HAL.UInt4;

   --  L1 instruction Cache 3 preload-operation control register
   type L1_ICACHE3_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L1-ICache3. It will be
      --  cleared by hardware automatically after preload operation is done.
      L1_ICACHE3_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L1_ICACHE3_PRELOAD_DONE  : Boolean := True;
      --  Read-only. The bit is used to configure the direction of preload
      --  operation. 0: ascending, 1: descending.
      L1_ICACHE3_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 icache3 preload.
      L1_ICACHE3_PRELOAD_RGID  : L1_ICACHE3_PRELOAD_CTRL_L1_ICACHE3_PRELOAD_RGID_Field :=
                                  16#0#;
      --  unspecified
      Reserved_7_31            : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_PRELOAD_CTRL_Register use record
      L1_ICACHE3_PRELOAD_ENA   at 0 range 0 .. 0;
      L1_ICACHE3_PRELOAD_DONE  at 0 range 1 .. 1;
      L1_ICACHE3_PRELOAD_ORDER at 0 range 2 .. 2;
      L1_ICACHE3_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31            at 0 range 7 .. 31;
   end record;

   subtype L1_ICACHE3_PRELOAD_SIZE_L1_ICACHE3_PRELOAD_SIZE_Field is HAL.UInt14;

   --  L1 instruction Cache 3 preload size configure register
   type L1_ICACHE3_PRELOAD_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L1-ICache3, which should be used together with
      --  L1_ICACHE3_PRELOAD_ADDR_REG
      L1_ICACHE3_PRELOAD_SIZE : L1_ICACHE3_PRELOAD_SIZE_L1_ICACHE3_PRELOAD_SIZE_Field;
      --  unspecified
      Reserved_14_31          : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_PRELOAD_SIZE_Register use record
      L1_ICACHE3_PRELOAD_SIZE at 0 range 0 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   subtype L1_CACHE_PRELOAD_CTRL_L1_CACHE_PRELOAD_RGID_Field is HAL.UInt4;

   --  L1 Cache preload-operation control register
   type L1_CACHE_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L1-Cache. It will be
      --  cleared by hardware automatically after preload operation is done.
      L1_CACHE_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L1_CACHE_PRELOAD_DONE  : Boolean := True;
      --  The bit is used to configure the direction of preload operation. 0:
      --  ascending, 1: descending.
      L1_CACHE_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 cache preload.
      L1_CACHE_PRELOAD_RGID  : L1_CACHE_PRELOAD_CTRL_L1_CACHE_PRELOAD_RGID_Field :=
                                16#0#;
      --  unspecified
      Reserved_7_31          : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_PRELOAD_CTRL_Register use record
      L1_CACHE_PRELOAD_ENA   at 0 range 0 .. 0;
      L1_CACHE_PRELOAD_DONE  at 0 range 1 .. 1;
      L1_CACHE_PRELOAD_ORDER at 0 range 2 .. 2;
      L1_CACHE_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31          at 0 range 7 .. 31;
   end record;

   subtype L1_DCACHE_PRELOAD_SIZE_L1_CACHE_PRELOAD_SIZE_Field is HAL.UInt14;

   --  L1 Cache preload size configure register
   type L1_DCACHE_PRELOAD_SIZE_Register is record
      --  Those bits are used to configure the size of the first section of
      --  prelock on L1-Cache, which should be used together with
      --  L1_CACHE_PRELOAD_ADDR_REG
      L1_CACHE_PRELOAD_SIZE : L1_DCACHE_PRELOAD_SIZE_L1_CACHE_PRELOAD_SIZE_Field :=
                               16#0#;
      --  unspecified
      Reserved_14_31        : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_DCACHE_PRELOAD_SIZE_Register use record
      L1_CACHE_PRELOAD_SIZE at 0 range 0 .. 13;
      Reserved_14_31        at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE0_AUTOLOAD_CTRL_L1_ICACHE0_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L1_ICACHE0_AUTOLOAD_CTRL_L1_ICACHE0_AUTOLOAD_RGID_Field is
     HAL.UInt4;

   --  L1 instruction Cache 0 autoload-operation control register
   type L1_ICACHE0_AUTOLOAD_CTRL_Register is record
      --  Read-only. The bit is used to enable and disable autoload operation
      --  on L1-ICache0. 1: enable, 0: disable.
      L1_ICACHE0_AUTOLOAD_ENA          : Boolean;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L1-ICache0 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE0_AUTOLOAD_DONE         : Boolean;
      --  Read-only. The bit is used to configure the direction of autoload
      --  operation on L1-ICache0. 0: ascending. 1: descending.
      L1_ICACHE0_AUTOLOAD_ORDER        : Boolean;
      --  Read-only. The field is used to configure trigger mode of autoload
      --  operation on L1-ICache0. 0/3: miss-trigger, 1: hit-trigger, 2:
      --  miss-hit-trigger.
      L1_ICACHE0_AUTOLOAD_TRIGGER_MODE : L1_ICACHE0_AUTOLOAD_CTRL_L1_ICACHE0_AUTOLOAD_TRIGGER_MODE_Field;
      --  unspecified
      Reserved_5_7                     : HAL.UInt3;
      --  Read-only. The bit is used to enable the first section for autoload
      --  operation on L1-ICache0.
      L1_ICACHE0_AUTOLOAD_SCT0_ENA     : Boolean;
      --  Read-only. The bit is used to enable the second section for autoload
      --  operation on L1-ICache0.
      L1_ICACHE0_AUTOLOAD_SCT1_ENA     : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache0 autoload.
      L1_ICACHE0_AUTOLOAD_RGID         : L1_ICACHE0_AUTOLOAD_CTRL_L1_ICACHE0_AUTOLOAD_RGID_Field;
      --  unspecified
      Reserved_14_31                   : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_AUTOLOAD_CTRL_Register use record
      L1_ICACHE0_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L1_ICACHE0_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L1_ICACHE0_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L1_ICACHE0_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                     at 0 range 5 .. 7;
      L1_ICACHE0_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L1_ICACHE0_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L1_ICACHE0_AUTOLOAD_RGID         at 0 range 10 .. 13;
      Reserved_14_31                   at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE0_AUTOLOAD_SCT0_SIZE_L1_ICACHE0_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 0 autoload section 0 size configure register
   type L1_ICACHE0_AUTOLOAD_SCT0_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section for autoload operation on L1-ICache0. Note that it should be
      --  used together with L1_ICACHE0_AUTOLOAD_SCT0_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT0_ENA.
      L1_ICACHE0_AUTOLOAD_SCT0_SIZE : L1_ICACHE0_AUTOLOAD_SCT0_SIZE_L1_ICACHE0_AUTOLOAD_SCT0_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_AUTOLOAD_SCT0_SIZE_Register use record
      L1_ICACHE0_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE0_AUTOLOAD_SCT1_SIZE_L1_ICACHE0_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 0 autoload section 1 size configure register
   type L1_ICACHE0_AUTOLOAD_SCT1_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the second
      --  section for autoload operation on L1-ICache0. Note that it should be
      --  used together with L1_ICACHE0_AUTOLOAD_SCT1_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT1_ENA.
      L1_ICACHE0_AUTOLOAD_SCT1_SIZE : L1_ICACHE0_AUTOLOAD_SCT1_SIZE_L1_ICACHE0_AUTOLOAD_SCT1_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_AUTOLOAD_SCT1_SIZE_Register use record
      L1_ICACHE0_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE1_AUTOLOAD_CTRL_L1_ICACHE1_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L1_ICACHE1_AUTOLOAD_CTRL_L1_ICACHE1_AUTOLOAD_RGID_Field is
     HAL.UInt4;

   --  L1 instruction Cache 1 autoload-operation control register
   type L1_ICACHE1_AUTOLOAD_CTRL_Register is record
      --  Read-only. The bit is used to enable and disable autoload operation
      --  on L1-ICache1. 1: enable, 0: disable.
      L1_ICACHE1_AUTOLOAD_ENA          : Boolean;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L1-ICache1 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE1_AUTOLOAD_DONE         : Boolean;
      --  Read-only. The bit is used to configure the direction of autoload
      --  operation on L1-ICache1. 0: ascending. 1: descending.
      L1_ICACHE1_AUTOLOAD_ORDER        : Boolean;
      --  Read-only. The field is used to configure trigger mode of autoload
      --  operation on L1-ICache1. 0/3: miss-trigger, 1: hit-trigger, 2:
      --  miss-hit-trigger.
      L1_ICACHE1_AUTOLOAD_TRIGGER_MODE : L1_ICACHE1_AUTOLOAD_CTRL_L1_ICACHE1_AUTOLOAD_TRIGGER_MODE_Field;
      --  unspecified
      Reserved_5_7                     : HAL.UInt3;
      --  Read-only. The bit is used to enable the first section for autoload
      --  operation on L1-ICache1.
      L1_ICACHE1_AUTOLOAD_SCT0_ENA     : Boolean;
      --  Read-only. The bit is used to enable the second section for autoload
      --  operation on L1-ICache1.
      L1_ICACHE1_AUTOLOAD_SCT1_ENA     : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache1 autoload.
      L1_ICACHE1_AUTOLOAD_RGID         : L1_ICACHE1_AUTOLOAD_CTRL_L1_ICACHE1_AUTOLOAD_RGID_Field;
      --  unspecified
      Reserved_14_31                   : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_AUTOLOAD_CTRL_Register use record
      L1_ICACHE1_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L1_ICACHE1_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L1_ICACHE1_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L1_ICACHE1_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                     at 0 range 5 .. 7;
      L1_ICACHE1_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L1_ICACHE1_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L1_ICACHE1_AUTOLOAD_RGID         at 0 range 10 .. 13;
      Reserved_14_31                   at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE1_AUTOLOAD_SCT0_SIZE_L1_ICACHE1_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 1 autoload section 0 size configure register
   type L1_ICACHE1_AUTOLOAD_SCT0_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section for autoload operation on L1-ICache1. Note that it should be
      --  used together with L1_ICACHE1_AUTOLOAD_SCT0_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT0_ENA.
      L1_ICACHE1_AUTOLOAD_SCT0_SIZE : L1_ICACHE1_AUTOLOAD_SCT0_SIZE_L1_ICACHE1_AUTOLOAD_SCT0_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_AUTOLOAD_SCT0_SIZE_Register use record
      L1_ICACHE1_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE1_AUTOLOAD_SCT1_SIZE_L1_ICACHE1_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 1 autoload section 1 size configure register
   type L1_ICACHE1_AUTOLOAD_SCT1_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the second
      --  section for autoload operation on L1-ICache1. Note that it should be
      --  used together with L1_ICACHE1_AUTOLOAD_SCT1_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT1_ENA.
      L1_ICACHE1_AUTOLOAD_SCT1_SIZE : L1_ICACHE1_AUTOLOAD_SCT1_SIZE_L1_ICACHE1_AUTOLOAD_SCT1_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_AUTOLOAD_SCT1_SIZE_Register use record
      L1_ICACHE1_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE2_AUTOLOAD_CTRL_L1_ICACHE2_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L1_ICACHE2_AUTOLOAD_CTRL_L1_ICACHE2_AUTOLOAD_RGID_Field is
     HAL.UInt4;

   --  L1 instruction Cache 2 autoload-operation control register
   type L1_ICACHE2_AUTOLOAD_CTRL_Register is record
      --  Read-only. The bit is used to enable and disable autoload operation
      --  on L1-ICache2. 1: enable, 0: disable.
      L1_ICACHE2_AUTOLOAD_ENA          : Boolean;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L1-ICache2 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE2_AUTOLOAD_DONE         : Boolean;
      --  Read-only. The bit is used to configure the direction of autoload
      --  operation on L1-ICache2. 0: ascending. 1: descending.
      L1_ICACHE2_AUTOLOAD_ORDER        : Boolean;
      --  Read-only. The field is used to configure trigger mode of autoload
      --  operation on L1-ICache2. 0/3: miss-trigger, 1: hit-trigger, 2:
      --  miss-hit-trigger.
      L1_ICACHE2_AUTOLOAD_TRIGGER_MODE : L1_ICACHE2_AUTOLOAD_CTRL_L1_ICACHE2_AUTOLOAD_TRIGGER_MODE_Field;
      --  unspecified
      Reserved_5_7                     : HAL.UInt3;
      --  Read-only. The bit is used to enable the first section for autoload
      --  operation on L1-ICache2.
      L1_ICACHE2_AUTOLOAD_SCT0_ENA     : Boolean;
      --  Read-only. The bit is used to enable the second section for autoload
      --  operation on L1-ICache2.
      L1_ICACHE2_AUTOLOAD_SCT1_ENA     : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache2 autoload.
      L1_ICACHE2_AUTOLOAD_RGID         : L1_ICACHE2_AUTOLOAD_CTRL_L1_ICACHE2_AUTOLOAD_RGID_Field;
      --  unspecified
      Reserved_14_31                   : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_AUTOLOAD_CTRL_Register use record
      L1_ICACHE2_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L1_ICACHE2_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L1_ICACHE2_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L1_ICACHE2_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                     at 0 range 5 .. 7;
      L1_ICACHE2_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L1_ICACHE2_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L1_ICACHE2_AUTOLOAD_RGID         at 0 range 10 .. 13;
      Reserved_14_31                   at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE2_AUTOLOAD_SCT0_SIZE_L1_ICACHE2_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 2 autoload section 0 size configure register
   type L1_ICACHE2_AUTOLOAD_SCT0_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section for autoload operation on L1-ICache2. Note that it should be
      --  used together with L1_ICACHE2_AUTOLOAD_SCT0_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT0_ENA.
      L1_ICACHE2_AUTOLOAD_SCT0_SIZE : L1_ICACHE2_AUTOLOAD_SCT0_SIZE_L1_ICACHE2_AUTOLOAD_SCT0_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_AUTOLOAD_SCT0_SIZE_Register use record
      L1_ICACHE2_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE2_AUTOLOAD_SCT1_SIZE_L1_ICACHE2_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 2 autoload section 1 size configure register
   type L1_ICACHE2_AUTOLOAD_SCT1_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the second
      --  section for autoload operation on L1-ICache2. Note that it should be
      --  used together with L1_ICACHE2_AUTOLOAD_SCT1_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT1_ENA.
      L1_ICACHE2_AUTOLOAD_SCT1_SIZE : L1_ICACHE2_AUTOLOAD_SCT1_SIZE_L1_ICACHE2_AUTOLOAD_SCT1_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_AUTOLOAD_SCT1_SIZE_Register use record
      L1_ICACHE2_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE3_AUTOLOAD_CTRL_L1_ICACHE3_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L1_ICACHE3_AUTOLOAD_CTRL_L1_ICACHE3_AUTOLOAD_RGID_Field is
     HAL.UInt4;

   --  L1 instruction Cache 3 autoload-operation control register
   type L1_ICACHE3_AUTOLOAD_CTRL_Register is record
      --  Read-only. The bit is used to enable and disable autoload operation
      --  on L1-ICache3. 1: enable, 0: disable.
      L1_ICACHE3_AUTOLOAD_ENA          : Boolean;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L1-ICache3 is finished or not. 0: not finished. 1: finished.
      L1_ICACHE3_AUTOLOAD_DONE         : Boolean;
      --  Read-only. The bit is used to configure the direction of autoload
      --  operation on L1-ICache3. 0: ascending. 1: descending.
      L1_ICACHE3_AUTOLOAD_ORDER        : Boolean;
      --  Read-only. The field is used to configure trigger mode of autoload
      --  operation on L1-ICache3. 0/3: miss-trigger, 1: hit-trigger, 2:
      --  miss-hit-trigger.
      L1_ICACHE3_AUTOLOAD_TRIGGER_MODE : L1_ICACHE3_AUTOLOAD_CTRL_L1_ICACHE3_AUTOLOAD_TRIGGER_MODE_Field;
      --  unspecified
      Reserved_5_7                     : HAL.UInt3;
      --  Read-only. The bit is used to enable the first section for autoload
      --  operation on L1-ICache3.
      L1_ICACHE3_AUTOLOAD_SCT0_ENA     : Boolean;
      --  Read-only. The bit is used to enable the second section for autoload
      --  operation on L1-ICache3.
      L1_ICACHE3_AUTOLOAD_SCT1_ENA     : Boolean;
      --  Read-only. The bit is used to set the gid of l1 icache3 autoload.
      L1_ICACHE3_AUTOLOAD_RGID         : L1_ICACHE3_AUTOLOAD_CTRL_L1_ICACHE3_AUTOLOAD_RGID_Field;
      --  unspecified
      Reserved_14_31                   : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_AUTOLOAD_CTRL_Register use record
      L1_ICACHE3_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L1_ICACHE3_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L1_ICACHE3_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L1_ICACHE3_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                     at 0 range 5 .. 7;
      L1_ICACHE3_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L1_ICACHE3_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L1_ICACHE3_AUTOLOAD_RGID         at 0 range 10 .. 13;
      Reserved_14_31                   at 0 range 14 .. 31;
   end record;

   subtype L1_ICACHE3_AUTOLOAD_SCT0_SIZE_L1_ICACHE3_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 3 autoload section 0 size configure register
   type L1_ICACHE3_AUTOLOAD_SCT0_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section for autoload operation on L1-ICache3. Note that it should be
      --  used together with L1_ICACHE3_AUTOLOAD_SCT0_ADDR and
      --  L1_ICACHE_AUTOLOAD_SCT0_ENA.
      L1_ICACHE3_AUTOLOAD_SCT0_SIZE : L1_ICACHE3_AUTOLOAD_SCT0_SIZE_L1_ICACHE3_AUTOLOAD_SCT0_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_AUTOLOAD_SCT0_SIZE_Register use record
      L1_ICACHE3_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_ICACHE3_AUTOLOAD_SCT1_SIZE_L1_ICACHE3_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L1 instruction Cache 3 autoload section 1 size configure register
   type L1_ICACHE3_AUTOLOAD_SCT1_SIZE_Register is record
      --  Read-only. Reserved
      L1_ICACHE3_AUTOLOAD_SCT1_SIZE : L1_ICACHE3_AUTOLOAD_SCT1_SIZE_L1_ICACHE3_AUTOLOAD_SCT1_SIZE_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_AUTOLOAD_SCT1_SIZE_Register use record
      L1_ICACHE3_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype L1_CACHE_AUTOLOAD_CTRL_L1_CACHE_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_AUTOLOAD_CTRL_L1_CACHE_AUTOLOAD_RGID_Field is HAL.UInt4;

   --  L1 Cache autoload-operation control register
   type L1_CACHE_AUTOLOAD_CTRL_Register is record
      --  The bit is used to enable and disable autoload operation on L1-Cache.
      --  1: enable, 0: disable.
      L1_CACHE_AUTOLOAD_ENA          : Boolean := False;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L1-Cache is finished or not. 0: not finished. 1: finished.
      L1_CACHE_AUTOLOAD_DONE         : Boolean := True;
      --  The bit is used to configure the direction of autoload operation on
      --  L1-Cache. 0: ascending. 1: descending.
      L1_CACHE_AUTOLOAD_ORDER        : Boolean := False;
      --  The field is used to configure trigger mode of autoload operation on
      --  L1-Cache. 0/3: miss-trigger, 1: hit-trigger, 2: miss-hit-trigger.
      L1_CACHE_AUTOLOAD_TRIGGER_MODE : L1_CACHE_AUTOLOAD_CTRL_L1_CACHE_AUTOLOAD_TRIGGER_MODE_Field :=
                                        16#0#;
      --  unspecified
      Reserved_5_7                   : HAL.UInt3 := 16#0#;
      --  The bit is used to enable the first section for autoload operation on
      --  L1-Cache.
      L1_CACHE_AUTOLOAD_SCT0_ENA     : Boolean := False;
      --  The bit is used to enable the second section for autoload operation
      --  on L1-Cache.
      L1_CACHE_AUTOLOAD_SCT1_ENA     : Boolean := False;
      --  Read-only. The bit is used to enable the third section for autoload
      --  operation on L1-Cache.
      L1_CACHE_AUTOLOAD_SCT2_ENA     : Boolean := False;
      --  Read-only. The bit is used to enable the fourth section for autoload
      --  operation on L1-Cache.
      L1_CACHE_AUTOLOAD_SCT3_ENA     : Boolean := False;
      --  Read-only. The bit is used to set the gid of l1 cache autoload.
      L1_CACHE_AUTOLOAD_RGID         : L1_CACHE_AUTOLOAD_CTRL_L1_CACHE_AUTOLOAD_RGID_Field :=
                                        16#0#;
      --  unspecified
      Reserved_16_31                 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_CTRL_Register use record
      L1_CACHE_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L1_CACHE_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L1_CACHE_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L1_CACHE_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                   at 0 range 5 .. 7;
      L1_CACHE_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L1_CACHE_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L1_CACHE_AUTOLOAD_SCT2_ENA     at 0 range 10 .. 10;
      L1_CACHE_AUTOLOAD_SCT3_ENA     at 0 range 11 .. 11;
      L1_CACHE_AUTOLOAD_RGID         at 0 range 12 .. 15;
      Reserved_16_31                 at 0 range 16 .. 31;
   end record;

   subtype L1_CACHE_AUTOLOAD_SCT0_SIZE_L1_CACHE_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L1 Cache autoload section 0 size configure register
   type L1_CACHE_AUTOLOAD_SCT0_SIZE_Register is record
      --  Those bits are used to configure the size of the first section for
      --  autoload operation on L1-Cache. Note that it should be used together
      --  with L1_CACHE_AUTOLOAD_SCT0_ADDR and L1_CACHE_AUTOLOAD_SCT0_ENA.
      L1_CACHE_AUTOLOAD_SCT0_SIZE : L1_CACHE_AUTOLOAD_SCT0_SIZE_L1_CACHE_AUTOLOAD_SCT0_SIZE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_28_31              : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_SCT0_SIZE_Register use record
      L1_CACHE_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L1_CACHE_AUTOLOAD_SCT1_SIZE_L1_CACHE_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L1 Cache autoload section 1 size configure register
   type L1_CACHE_AUTOLOAD_SCT1_SIZE_Register is record
      --  Those bits are used to configure the size of the second section for
      --  autoload operation on L1-Cache. Note that it should be used together
      --  with L1_CACHE_AUTOLOAD_SCT1_ADDR and L1_CACHE_AUTOLOAD_SCT1_ENA.
      L1_CACHE_AUTOLOAD_SCT1_SIZE : L1_CACHE_AUTOLOAD_SCT1_SIZE_L1_CACHE_AUTOLOAD_SCT1_SIZE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_28_31              : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_SCT1_SIZE_Register use record
      L1_CACHE_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L1_CACHE_AUTOLOAD_SCT2_SIZE_L1_CACHE_AUTOLOAD_SCT2_SIZE_Field is
     HAL.UInt28;

   --  L1 Cache autoload section 2 size configure register
   type L1_CACHE_AUTOLOAD_SCT2_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the third
      --  section for autoload operation on L1-Cache. Note that it should be
      --  used together with L1_CACHE_AUTOLOAD_SCT2_ADDR and
      --  L1_CACHE_AUTOLOAD_SCT2_ENA.
      L1_CACHE_AUTOLOAD_SCT2_SIZE : L1_CACHE_AUTOLOAD_SCT2_SIZE_L1_CACHE_AUTOLOAD_SCT2_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_SCT2_SIZE_Register use record
      L1_CACHE_AUTOLOAD_SCT2_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L1_CACHE_AUTOLOAD_SCT3_SIZE_L1_CACHE_AUTOLOAD_SCT3_SIZE_Field is
     HAL.UInt28;

   --  L1 Cache autoload section 1 size configure register
   type L1_CACHE_AUTOLOAD_SCT3_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the fourth
      --  section for autoload operation on L1-Cache. Note that it should be
      --  used together with L1_CACHE_AUTOLOAD_SCT3_ADDR and
      --  L1_CACHE_AUTOLOAD_SCT3_ENA.
      L1_CACHE_AUTOLOAD_SCT3_SIZE : L1_CACHE_AUTOLOAD_SCT3_SIZE_L1_CACHE_AUTOLOAD_SCT3_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_SCT3_SIZE_Register use record
      L1_CACHE_AUTOLOAD_SCT3_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   --  Cache Access Counter Interrupt enable register
   type L1_CACHE_ACS_CNT_INT_ENA_Register is record
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L1-ICache0 due to bus0 accesses L1-ICache0.
      L1_IBUS0_OVF_INT_ENA : Boolean := False;
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L1-ICache1 due to bus1 accesses L1-ICache1.
      L1_IBUS1_OVF_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS2_OVF_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS3_OVF_INT_ENA : Boolean := False;
      --  The bit is used to enable interrupt of one of counters overflow that
      --  occurs in L1-DCache due to bus0 accesses L1-DCache.
      L1_BUS0_OVF_INT_ENA  : Boolean := False;
      --  The bit is used to enable interrupt of one of counters overflow that
      --  occurs in L1-DCache due to bus1 accesses L1-DCache.
      L1_BUS1_OVF_INT_ENA  : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS2_OVF_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS3_OVF_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_8_31        : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_CNT_INT_ENA_Register use record
      L1_IBUS0_OVF_INT_ENA at 0 range 0 .. 0;
      L1_IBUS1_OVF_INT_ENA at 0 range 1 .. 1;
      L1_IBUS2_OVF_INT_ENA at 0 range 2 .. 2;
      L1_IBUS3_OVF_INT_ENA at 0 range 3 .. 3;
      L1_BUS0_OVF_INT_ENA  at 0 range 4 .. 4;
      L1_BUS1_OVF_INT_ENA  at 0 range 5 .. 5;
      L1_DBUS2_OVF_INT_ENA at 0 range 6 .. 6;
      L1_DBUS3_OVF_INT_ENA at 0 range 7 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   --  Cache Access Counter Interrupt clear register
   type L1_CACHE_ACS_CNT_INT_CLR_Register is record
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L1-ICache0 due to bus0 accesses L1-ICache0.
      L1_IBUS0_OVF_INT_CLR : Boolean := False;
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L1-ICache1 due to bus1 accesses L1-ICache1.
      L1_IBUS1_OVF_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS2_OVF_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS3_OVF_INT_CLR : Boolean := False;
      --  Write-only. The bit is used to clear counters overflow interrupt and
      --  counters in L1-DCache due to bus0 accesses L1-DCache.
      L1_BUS0_OVF_INT_CLR  : Boolean := False;
      --  Write-only. The bit is used to clear counters overflow interrupt and
      --  counters in L1-DCache due to bus1 accesses L1-DCache.
      L1_BUS1_OVF_INT_CLR  : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS2_OVF_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS3_OVF_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_8_31        : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_CNT_INT_CLR_Register use record
      L1_IBUS0_OVF_INT_CLR at 0 range 0 .. 0;
      L1_IBUS1_OVF_INT_CLR at 0 range 1 .. 1;
      L1_IBUS2_OVF_INT_CLR at 0 range 2 .. 2;
      L1_IBUS3_OVF_INT_CLR at 0 range 3 .. 3;
      L1_BUS0_OVF_INT_CLR  at 0 range 4 .. 4;
      L1_BUS1_OVF_INT_CLR  at 0 range 5 .. 5;
      L1_DBUS2_OVF_INT_CLR at 0 range 6 .. 6;
      L1_DBUS3_OVF_INT_CLR at 0 range 7 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   --  Cache Access Counter Interrupt raw register
   type L1_CACHE_ACS_CNT_INT_RAW_Register is record
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-ICache0 due to bus0 accesses L1-ICache0.
      L1_IBUS0_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-ICache1 due to bus1 accesses L1-ICache1.
      L1_IBUS1_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-ICache2 due to bus2 accesses L1-ICache2.
      L1_IBUS2_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-ICache3 due to bus3 accesses L1-ICache3.
      L1_IBUS3_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-DCache due to bus0 accesses L1-DCache.
      L1_BUS0_OVF_INT_RAW  : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-DCache due to bus1 accesses L1-DCache.
      L1_BUS1_OVF_INT_RAW  : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-DCache due to bus2 accesses L1-DCache.
      L1_DBUS2_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L1-DCache due to bus3 accesses L1-DCache.
      L1_DBUS3_OVF_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_8_31        : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_CNT_INT_RAW_Register use record
      L1_IBUS0_OVF_INT_RAW at 0 range 0 .. 0;
      L1_IBUS1_OVF_INT_RAW at 0 range 1 .. 1;
      L1_IBUS2_OVF_INT_RAW at 0 range 2 .. 2;
      L1_IBUS3_OVF_INT_RAW at 0 range 3 .. 3;
      L1_BUS0_OVF_INT_RAW  at 0 range 4 .. 4;
      L1_BUS1_OVF_INT_RAW  at 0 range 5 .. 5;
      L1_DBUS2_OVF_INT_RAW at 0 range 6 .. 6;
      L1_DBUS3_OVF_INT_RAW at 0 range 7 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   --  Cache Access Counter Interrupt status register
   type L1_CACHE_ACS_CNT_INT_ST_Register is record
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L1-ICache0 due to bus0 accesses L1-ICache0.
      L1_IBUS0_OVF_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L1-ICache1 due to bus1 accesses L1-ICache1.
      L1_IBUS1_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_IBUS2_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_IBUS3_OVF_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L1-DCache due to bus0 accesses L1-DCache.
      L1_BUS0_OVF_INT_ST  : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L1-DCache due to bus1 accesses L1-DCache.
      L1_BUS1_OVF_INT_ST  : Boolean;
      --  Read-only. Reserved
      L1_DBUS2_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_DBUS3_OVF_INT_ST : Boolean;
      --  unspecified
      Reserved_8_31       : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_CNT_INT_ST_Register use record
      L1_IBUS0_OVF_INT_ST at 0 range 0 .. 0;
      L1_IBUS1_OVF_INT_ST at 0 range 1 .. 1;
      L1_IBUS2_OVF_INT_ST at 0 range 2 .. 2;
      L1_IBUS3_OVF_INT_ST at 0 range 3 .. 3;
      L1_BUS0_OVF_INT_ST  at 0 range 4 .. 4;
      L1_BUS1_OVF_INT_ST  at 0 range 5 .. 5;
      L1_DBUS2_OVF_INT_ST at 0 range 6 .. 6;
      L1_DBUS3_OVF_INT_ST at 0 range 7 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   --  Cache Access Fail Interrupt enable register
   type L1_CACHE_ACS_FAIL_INT_ENA_Register is record
      --  Read-only. The bit is used to enable interrupt of access fail that
      --  occurs in L1-ICache0 due to cpu accesses L1-ICache0.
      L1_ICACHE0_FAIL_INT_ENA : Boolean := False;
      --  Read-only. The bit is used to enable interrupt of access fail that
      --  occurs in L1-ICache1 due to cpu accesses L1-ICache1.
      L1_ICACHE1_FAIL_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_FAIL_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_FAIL_INT_ENA : Boolean := False;
      --  The bit is used to enable interrupt of access fail that occurs in
      --  L1-DCache due to cpu accesses L1-DCache.
      L1_CACHE_FAIL_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_FAIL_INT_ENA_Register use record
      L1_ICACHE0_FAIL_INT_ENA at 0 range 0 .. 0;
      L1_ICACHE1_FAIL_INT_ENA at 0 range 1 .. 1;
      L1_ICACHE2_FAIL_INT_ENA at 0 range 2 .. 2;
      L1_ICACHE3_FAIL_INT_ENA at 0 range 3 .. 3;
      L1_CACHE_FAIL_INT_ENA   at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt clear register
   type L1_CACHE_ACS_FAIL_INT_CLR_Register is record
      --  Read-only. The bit is used to clear interrupt of access fail that
      --  occurs in L1-ICache0 due to cpu accesses L1-ICache0.
      L1_ICACHE0_FAIL_INT_CLR : Boolean := False;
      --  Read-only. The bit is used to clear interrupt of access fail that
      --  occurs in L1-ICache1 due to cpu accesses L1-ICache1.
      L1_ICACHE1_FAIL_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_FAIL_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_FAIL_INT_CLR : Boolean := False;
      --  Write-only. The bit is used to clear interrupt of access fail that
      --  occurs in L1-DCache due to cpu accesses L1-DCache.
      L1_CACHE_FAIL_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_FAIL_INT_CLR_Register use record
      L1_ICACHE0_FAIL_INT_CLR at 0 range 0 .. 0;
      L1_ICACHE1_FAIL_INT_CLR at 0 range 1 .. 1;
      L1_ICACHE2_FAIL_INT_CLR at 0 range 2 .. 2;
      L1_ICACHE3_FAIL_INT_CLR at 0 range 3 .. 3;
      L1_CACHE_FAIL_INT_CLR   at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  Cache Access Fail Interrupt raw register
   type L1_CACHE_ACS_FAIL_INT_RAW_Register is record
      --  The raw bit of the interrupt of access fail that occurs in
      --  L1-ICache0.
      L1_ICACHE0_FAIL_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of access fail that occurs in
      --  L1-ICache1.
      L1_ICACHE1_FAIL_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of access fail that occurs in
      --  L1-ICache2.
      L1_ICACHE2_FAIL_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of access fail that occurs in
      --  L1-ICache3.
      L1_ICACHE3_FAIL_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of access fail that occurs in L1-DCache.
      L1_CACHE_FAIL_INT_RAW   : Boolean := False;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_FAIL_INT_RAW_Register use record
      L1_ICACHE0_FAIL_INT_RAW at 0 range 0 .. 0;
      L1_ICACHE1_FAIL_INT_RAW at 0 range 1 .. 1;
      L1_ICACHE2_FAIL_INT_RAW at 0 range 2 .. 2;
      L1_ICACHE3_FAIL_INT_RAW at 0 range 3 .. 3;
      L1_CACHE_FAIL_INT_RAW   at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  Cache Access Fail Interrupt status register
   type L1_CACHE_ACS_FAIL_INT_ST_Register is record
      --  Read-only. The bit indicates the interrupt status of access fail that
      --  occurs in L1-ICache0 due to cpu accesses L1-ICache.
      L1_ICACHE0_FAIL_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of access fail that
      --  occurs in L1-ICache1 due to cpu accesses L1-ICache.
      L1_ICACHE1_FAIL_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_ICACHE2_FAIL_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_ICACHE3_FAIL_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of access fail that
      --  occurs in L1-DCache due to cpu accesses L1-DCache.
      L1_CACHE_FAIL_INT_ST   : Boolean;
      --  unspecified
      Reserved_5_31          : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_FAIL_INT_ST_Register use record
      L1_ICACHE0_FAIL_INT_ST at 0 range 0 .. 0;
      L1_ICACHE1_FAIL_INT_ST at 0 range 1 .. 1;
      L1_ICACHE2_FAIL_INT_ST at 0 range 2 .. 2;
      L1_ICACHE3_FAIL_INT_ST at 0 range 3 .. 3;
      L1_CACHE_FAIL_INT_ST   at 0 range 4 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   --  Cache Access Counter enable and clear register
   type L1_CACHE_ACS_CNT_CTRL_Register is record
      --  Read-only. The bit is used to enable ibus0 counter in L1-ICache0.
      L1_IBUS0_CNT_ENA : Boolean := False;
      --  Read-only. The bit is used to enable ibus1 counter in L1-ICache1.
      L1_IBUS1_CNT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS2_CNT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS3_CNT_ENA : Boolean := False;
      --  The bit is used to enable dbus0 counter in L1-DCache.
      L1_BUS0_CNT_ENA  : Boolean := False;
      --  The bit is used to enable dbus1 counter in L1-DCache.
      L1_BUS1_CNT_ENA  : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS2_CNT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS3_CNT_ENA : Boolean := False;
      --  unspecified
      Reserved_8_15    : HAL.UInt8 := 16#0#;
      --  Read-only. The bit is used to clear ibus0 counter in L1-ICache0.
      L1_IBUS0_CNT_CLR : Boolean := False;
      --  Read-only. The bit is used to clear ibus1 counter in L1-ICache1.
      L1_IBUS1_CNT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS2_CNT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_IBUS3_CNT_CLR : Boolean := False;
      --  Write-only. The bit is used to clear dbus0 counter in L1-DCache.
      L1_BUS0_CNT_CLR  : Boolean := False;
      --  Write-only. The bit is used to clear dbus1 counter in L1-DCache.
      L1_BUS1_CNT_CLR  : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS2_CNT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_DBUS3_CNT_CLR : Boolean := False;
      --  unspecified
      Reserved_24_31   : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_CNT_CTRL_Register use record
      L1_IBUS0_CNT_ENA at 0 range 0 .. 0;
      L1_IBUS1_CNT_ENA at 0 range 1 .. 1;
      L1_IBUS2_CNT_ENA at 0 range 2 .. 2;
      L1_IBUS3_CNT_ENA at 0 range 3 .. 3;
      L1_BUS0_CNT_ENA  at 0 range 4 .. 4;
      L1_BUS1_CNT_ENA  at 0 range 5 .. 5;
      L1_DBUS2_CNT_ENA at 0 range 6 .. 6;
      L1_DBUS3_CNT_ENA at 0 range 7 .. 7;
      Reserved_8_15    at 0 range 8 .. 15;
      L1_IBUS0_CNT_CLR at 0 range 16 .. 16;
      L1_IBUS1_CNT_CLR at 0 range 17 .. 17;
      L1_IBUS2_CNT_CLR at 0 range 18 .. 18;
      L1_IBUS3_CNT_CLR at 0 range 19 .. 19;
      L1_BUS0_CNT_CLR  at 0 range 20 .. 20;
      L1_BUS1_CNT_CLR  at 0 range 21 .. 21;
      L1_DBUS2_CNT_CLR at 0 range 22 .. 22;
      L1_DBUS3_CNT_CLR at 0 range 23 .. 23;
      Reserved_24_31   at 0 range 24 .. 31;
   end record;

   subtype L1_ICACHE0_ACS_FAIL_ID_ATTR_L1_ICACHE0_FAIL_ID_Field is HAL.UInt16;
   subtype L1_ICACHE0_ACS_FAIL_ID_ATTR_L1_ICACHE0_FAIL_ATTR_Field is
     HAL.UInt16;

   --  L1-ICache0 Access Fail ID/attribution information register
   type L1_ICACHE0_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when cache0
      --  accesses L1-ICache.
      L1_ICACHE0_FAIL_ID   : L1_ICACHE0_ACS_FAIL_ID_ATTR_L1_ICACHE0_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  cache0 accesses L1-ICache.
      L1_ICACHE0_FAIL_ATTR : L1_ICACHE0_ACS_FAIL_ID_ATTR_L1_ICACHE0_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE0_ACS_FAIL_ID_ATTR_Register use record
      L1_ICACHE0_FAIL_ID   at 0 range 0 .. 15;
      L1_ICACHE0_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   subtype L1_ICACHE1_ACS_FAIL_ID_ATTR_L1_ICACHE1_FAIL_ID_Field is HAL.UInt16;
   subtype L1_ICACHE1_ACS_FAIL_ID_ATTR_L1_ICACHE1_FAIL_ATTR_Field is
     HAL.UInt16;

   --  L1-ICache0 Access Fail ID/attribution information register
   type L1_ICACHE1_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when cache1
      --  accesses L1-ICache.
      L1_ICACHE1_FAIL_ID   : L1_ICACHE1_ACS_FAIL_ID_ATTR_L1_ICACHE1_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  cache1 accesses L1-ICache.
      L1_ICACHE1_FAIL_ATTR : L1_ICACHE1_ACS_FAIL_ID_ATTR_L1_ICACHE1_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE1_ACS_FAIL_ID_ATTR_Register use record
      L1_ICACHE1_FAIL_ID   at 0 range 0 .. 15;
      L1_ICACHE1_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   subtype L1_ICACHE2_ACS_FAIL_ID_ATTR_L1_ICACHE2_FAIL_ID_Field is HAL.UInt16;
   subtype L1_ICACHE2_ACS_FAIL_ID_ATTR_L1_ICACHE2_FAIL_ATTR_Field is
     HAL.UInt16;

   --  L1-ICache0 Access Fail ID/attribution information register
   type L1_ICACHE2_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when cache2
      --  accesses L1-ICache.
      L1_ICACHE2_FAIL_ID   : L1_ICACHE2_ACS_FAIL_ID_ATTR_L1_ICACHE2_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  cache2 accesses L1-ICache.
      L1_ICACHE2_FAIL_ATTR : L1_ICACHE2_ACS_FAIL_ID_ATTR_L1_ICACHE2_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE2_ACS_FAIL_ID_ATTR_Register use record
      L1_ICACHE2_FAIL_ID   at 0 range 0 .. 15;
      L1_ICACHE2_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   subtype L1_ICACHE3_ACS_FAIL_ID_ATTR_L1_ICACHE3_FAIL_ID_Field is HAL.UInt16;
   subtype L1_ICACHE3_ACS_FAIL_ID_ATTR_L1_ICACHE3_FAIL_ATTR_Field is
     HAL.UInt16;

   --  L1-ICache0 Access Fail ID/attribution information register
   type L1_ICACHE3_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when cache3
      --  accesses L1-ICache.
      L1_ICACHE3_FAIL_ID   : L1_ICACHE3_ACS_FAIL_ID_ATTR_L1_ICACHE3_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  cache3 accesses L1-ICache.
      L1_ICACHE3_FAIL_ATTR : L1_ICACHE3_ACS_FAIL_ID_ATTR_L1_ICACHE3_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_ICACHE3_ACS_FAIL_ID_ATTR_Register use record
      L1_ICACHE3_FAIL_ID   at 0 range 0 .. 15;
      L1_ICACHE3_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   subtype L1_CACHE_ACS_FAIL_ID_ATTR_L1_CACHE_FAIL_ID_Field is HAL.UInt16;
   subtype L1_CACHE_ACS_FAIL_ID_ATTR_L1_CACHE_FAIL_ATTR_Field is HAL.UInt16;

   --  L1-Cache Access Fail ID/attribution information register
   type L1_CACHE_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when cache
      --  accesses L1-Cache.
      L1_CACHE_FAIL_ID   : L1_CACHE_ACS_FAIL_ID_ATTR_L1_CACHE_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  cache accesses L1-Cache.
      L1_CACHE_FAIL_ATTR : L1_CACHE_ACS_FAIL_ID_ATTR_L1_CACHE_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_ACS_FAIL_ID_ATTR_Register use record
      L1_CACHE_FAIL_ID   at 0 range 0 .. 15;
      L1_CACHE_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt enable register
   type L1_CACHE_SYNC_PRELOAD_INT_ENA_Register is record
      --  Read-only. The bit is used to enable interrupt of L1-ICache0
      --  preload-operation. If preload operation is done, interrupt occurs.
      L1_ICACHE0_PLD_DONE_INT_ENA : Boolean := False;
      --  Read-only. The bit is used to enable interrupt of L1-ICache1
      --  preload-operation. If preload operation is done, interrupt occurs.
      L1_ICACHE1_PLD_DONE_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_DONE_INT_ENA : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_DONE_INT_ENA : Boolean := False;
      --  The bit is used to enable interrupt of L1-Cache preload-operation. If
      --  preload operation is done, interrupt occurs.
      L1_CACHE_PLD_DONE_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_5_5                : HAL.Bit := 16#0#;
      --  The bit is used to enable interrupt of Cache sync-operation done.
      CACHE_SYNC_DONE_INT_ENA     : Boolean := False;
      --  Read-only. The bit is used to enable interrupt of L1-ICache0
      --  preload-operation error.
      L1_ICACHE0_PLD_ERR_INT_ENA  : Boolean := False;
      --  Read-only. The bit is used to enable interrupt of L1-ICache1
      --  preload-operation error.
      L1_ICACHE1_PLD_ERR_INT_ENA  : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_ERR_INT_ENA  : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_ERR_INT_ENA  : Boolean := False;
      --  The bit is used to enable interrupt of L1-Cache preload-operation
      --  error.
      L1_CACHE_PLD_ERR_INT_ENA    : Boolean := False;
      --  unspecified
      Reserved_12_12              : HAL.Bit := 16#0#;
      --  The bit is used to enable interrupt of Cache sync-operation error.
      CACHE_SYNC_ERR_INT_ENA      : Boolean := False;
      --  unspecified
      Reserved_14_31              : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_PRELOAD_INT_ENA_Register use record
      L1_ICACHE0_PLD_DONE_INT_ENA at 0 range 0 .. 0;
      L1_ICACHE1_PLD_DONE_INT_ENA at 0 range 1 .. 1;
      L1_ICACHE2_PLD_DONE_INT_ENA at 0 range 2 .. 2;
      L1_ICACHE3_PLD_DONE_INT_ENA at 0 range 3 .. 3;
      L1_CACHE_PLD_DONE_INT_ENA   at 0 range 4 .. 4;
      Reserved_5_5                at 0 range 5 .. 5;
      CACHE_SYNC_DONE_INT_ENA     at 0 range 6 .. 6;
      L1_ICACHE0_PLD_ERR_INT_ENA  at 0 range 7 .. 7;
      L1_ICACHE1_PLD_ERR_INT_ENA  at 0 range 8 .. 8;
      L1_ICACHE2_PLD_ERR_INT_ENA  at 0 range 9 .. 9;
      L1_ICACHE3_PLD_ERR_INT_ENA  at 0 range 10 .. 10;
      L1_CACHE_PLD_ERR_INT_ENA    at 0 range 11 .. 11;
      Reserved_12_12              at 0 range 12 .. 12;
      CACHE_SYNC_ERR_INT_ENA      at 0 range 13 .. 13;
      Reserved_14_31              at 0 range 14 .. 31;
   end record;

   --  Sync Preload operation Interrupt clear register
   type L1_CACHE_SYNC_PRELOAD_INT_CLR_Register is record
      --  Read-only. The bit is used to clear interrupt that occurs only when
      --  L1-ICache0 preload-operation is done.
      L1_ICACHE0_PLD_DONE_INT_CLR : Boolean := False;
      --  Read-only. The bit is used to clear interrupt that occurs only when
      --  L1-ICache1 preload-operation is done.
      L1_ICACHE1_PLD_DONE_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_DONE_INT_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_DONE_INT_CLR : Boolean := False;
      --  Write-only. The bit is used to clear interrupt that occurs only when
      --  L1-Cache preload-operation is done.
      L1_CACHE_PLD_DONE_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_5_5                : HAL.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt that occurs only when
      --  Cache sync-operation is done.
      CACHE_SYNC_DONE_INT_CLR     : Boolean := False;
      --  Read-only. The bit is used to clear interrupt of L1-ICache0
      --  preload-operation error.
      L1_ICACHE0_PLD_ERR_INT_CLR  : Boolean := False;
      --  Read-only. The bit is used to clear interrupt of L1-ICache1
      --  preload-operation error.
      L1_ICACHE1_PLD_ERR_INT_CLR  : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_ERR_INT_CLR  : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_ERR_INT_CLR  : Boolean := False;
      --  Write-only. The bit is used to clear interrupt of L1-Cache
      --  preload-operation error.
      L1_CACHE_PLD_ERR_INT_CLR    : Boolean := False;
      --  unspecified
      Reserved_12_12              : HAL.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt of Cache
      --  sync-operation error.
      CACHE_SYNC_ERR_INT_CLR      : Boolean := False;
      --  unspecified
      Reserved_14_31              : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_PRELOAD_INT_CLR_Register use record
      L1_ICACHE0_PLD_DONE_INT_CLR at 0 range 0 .. 0;
      L1_ICACHE1_PLD_DONE_INT_CLR at 0 range 1 .. 1;
      L1_ICACHE2_PLD_DONE_INT_CLR at 0 range 2 .. 2;
      L1_ICACHE3_PLD_DONE_INT_CLR at 0 range 3 .. 3;
      L1_CACHE_PLD_DONE_INT_CLR   at 0 range 4 .. 4;
      Reserved_5_5                at 0 range 5 .. 5;
      CACHE_SYNC_DONE_INT_CLR     at 0 range 6 .. 6;
      L1_ICACHE0_PLD_ERR_INT_CLR  at 0 range 7 .. 7;
      L1_ICACHE1_PLD_ERR_INT_CLR  at 0 range 8 .. 8;
      L1_ICACHE2_PLD_ERR_INT_CLR  at 0 range 9 .. 9;
      L1_ICACHE3_PLD_ERR_INT_CLR  at 0 range 10 .. 10;
      L1_CACHE_PLD_ERR_INT_CLR    at 0 range 11 .. 11;
      Reserved_12_12              at 0 range 12 .. 12;
      CACHE_SYNC_ERR_INT_CLR      at 0 range 13 .. 13;
      Reserved_14_31              at 0 range 14 .. 31;
   end record;

   --  Sync Preload operation Interrupt raw register
   type L1_CACHE_SYNC_PRELOAD_INT_RAW_Register is record
      --  The raw bit of the interrupt that occurs only when L1-ICache0
      --  preload-operation is done.
      L1_ICACHE0_PLD_DONE_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt that occurs only when L1-ICache1
      --  preload-operation is done.
      L1_ICACHE1_PLD_DONE_INT_RAW : Boolean := False;
      --  Reserved
      L1_ICACHE2_PLD_DONE_INT_RAW : Boolean := False;
      --  Reserved
      L1_ICACHE3_PLD_DONE_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt that occurs only when L1-Cache
      --  preload-operation is done.
      L1_CACHE_PLD_DONE_INT_RAW   : Boolean := False;
      --  unspecified
      Reserved_5_5                : HAL.Bit := 16#0#;
      --  The raw bit of the interrupt that occurs only when Cache
      --  sync-operation is done.
      CACHE_SYNC_DONE_INT_RAW     : Boolean := False;
      --  The raw bit of the interrupt that occurs only when L1-ICache0
      --  preload-operation error occurs.
      L1_ICACHE0_PLD_ERR_INT_RAW  : Boolean := False;
      --  The raw bit of the interrupt that occurs only when L1-ICache1
      --  preload-operation error occurs.
      L1_ICACHE1_PLD_ERR_INT_RAW  : Boolean := False;
      --  Reserved
      L1_ICACHE2_PLD_ERR_INT_RAW  : Boolean := False;
      --  Reserved
      L1_ICACHE3_PLD_ERR_INT_RAW  : Boolean := False;
      --  The raw bit of the interrupt that occurs only when L1-Cache
      --  preload-operation error occurs.
      L1_CACHE_PLD_ERR_INT_RAW    : Boolean := False;
      --  unspecified
      Reserved_12_12              : HAL.Bit := 16#0#;
      --  The raw bit of the interrupt that occurs only when Cache
      --  sync-operation error occurs.
      CACHE_SYNC_ERR_INT_RAW      : Boolean := False;
      --  unspecified
      Reserved_14_31              : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_PRELOAD_INT_RAW_Register use record
      L1_ICACHE0_PLD_DONE_INT_RAW at 0 range 0 .. 0;
      L1_ICACHE1_PLD_DONE_INT_RAW at 0 range 1 .. 1;
      L1_ICACHE2_PLD_DONE_INT_RAW at 0 range 2 .. 2;
      L1_ICACHE3_PLD_DONE_INT_RAW at 0 range 3 .. 3;
      L1_CACHE_PLD_DONE_INT_RAW   at 0 range 4 .. 4;
      Reserved_5_5                at 0 range 5 .. 5;
      CACHE_SYNC_DONE_INT_RAW     at 0 range 6 .. 6;
      L1_ICACHE0_PLD_ERR_INT_RAW  at 0 range 7 .. 7;
      L1_ICACHE1_PLD_ERR_INT_RAW  at 0 range 8 .. 8;
      L1_ICACHE2_PLD_ERR_INT_RAW  at 0 range 9 .. 9;
      L1_ICACHE3_PLD_ERR_INT_RAW  at 0 range 10 .. 10;
      L1_CACHE_PLD_ERR_INT_RAW    at 0 range 11 .. 11;
      Reserved_12_12              at 0 range 12 .. 12;
      CACHE_SYNC_ERR_INT_RAW      at 0 range 13 .. 13;
      Reserved_14_31              at 0 range 14 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt status register
   type L1_CACHE_SYNC_PRELOAD_INT_ST_Register is record
      --  Read-only. The bit indicates the status of the interrupt that occurs
      --  only when L1-ICache0 preload-operation is done.
      L1_ICACHE0_PLD_DONE_INT_ST : Boolean;
      --  Read-only. The bit indicates the status of the interrupt that occurs
      --  only when L1-ICache1 preload-operation is done.
      L1_ICACHE1_PLD_DONE_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_DONE_INT_ST : Boolean;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_DONE_INT_ST : Boolean;
      --  Read-only. The bit indicates the status of the interrupt that occurs
      --  only when L1-Cache preload-operation is done.
      L1_CACHE_PLD_DONE_INT_ST   : Boolean;
      --  unspecified
      Reserved_5_5               : HAL.Bit;
      --  Read-only. The bit indicates the status of the interrupt that occurs
      --  only when Cache sync-operation is done.
      CACHE_SYNC_DONE_INT_ST     : Boolean;
      --  Read-only. The bit indicates the status of the interrupt of
      --  L1-ICache0 preload-operation error.
      L1_ICACHE0_PLD_ERR_INT_ST  : Boolean;
      --  Read-only. The bit indicates the status of the interrupt of
      --  L1-ICache1 preload-operation error.
      L1_ICACHE1_PLD_ERR_INT_ST  : Boolean;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_ERR_INT_ST  : Boolean;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_ERR_INT_ST  : Boolean;
      --  Read-only. The bit indicates the status of the interrupt of L1-Cache
      --  preload-operation error.
      L1_CACHE_PLD_ERR_INT_ST    : Boolean;
      --  unspecified
      Reserved_12_12             : HAL.Bit;
      --  Read-only. The bit indicates the status of the interrupt of Cache
      --  sync-operation error.
      CACHE_SYNC_ERR_INT_ST      : Boolean;
      --  unspecified
      Reserved_14_31             : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_PRELOAD_INT_ST_Register use record
      L1_ICACHE0_PLD_DONE_INT_ST at 0 range 0 .. 0;
      L1_ICACHE1_PLD_DONE_INT_ST at 0 range 1 .. 1;
      L1_ICACHE2_PLD_DONE_INT_ST at 0 range 2 .. 2;
      L1_ICACHE3_PLD_DONE_INT_ST at 0 range 3 .. 3;
      L1_CACHE_PLD_DONE_INT_ST   at 0 range 4 .. 4;
      Reserved_5_5               at 0 range 5 .. 5;
      CACHE_SYNC_DONE_INT_ST     at 0 range 6 .. 6;
      L1_ICACHE0_PLD_ERR_INT_ST  at 0 range 7 .. 7;
      L1_ICACHE1_PLD_ERR_INT_ST  at 0 range 8 .. 8;
      L1_ICACHE2_PLD_ERR_INT_ST  at 0 range 9 .. 9;
      L1_ICACHE3_PLD_ERR_INT_ST  at 0 range 10 .. 10;
      L1_CACHE_PLD_ERR_INT_ST    at 0 range 11 .. 11;
      Reserved_12_12             at 0 range 12 .. 12;
      CACHE_SYNC_ERR_INT_ST      at 0 range 13 .. 13;
      Reserved_14_31             at 0 range 14 .. 31;
   end record;

   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE0_PLD_ERR_CODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE1_PLD_ERR_CODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE2_PLD_ERR_CODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE3_PLD_ERR_CODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_CACHE_PLD_ERR_CODE_Field is
     HAL.UInt2;
   subtype L1_CACHE_SYNC_PRELOAD_EXCEPTION_CACHE_SYNC_ERR_CODE_Field is
     HAL.UInt2;

   --  Cache Sync/Preload Operation exception register
   type L1_CACHE_SYNC_PRELOAD_EXCEPTION_Register is record
      --  Read-only. The value 2 is Only available which means preload size is
      --  error in L1-ICache0.
      L1_ICACHE0_PLD_ERR_CODE : L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE0_PLD_ERR_CODE_Field;
      --  Read-only. The value 2 is Only available which means preload size is
      --  error in L1-ICache1.
      L1_ICACHE1_PLD_ERR_CODE : L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE1_PLD_ERR_CODE_Field;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_ERR_CODE : L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE2_PLD_ERR_CODE_Field;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_ERR_CODE : L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_ICACHE3_PLD_ERR_CODE_Field;
      --  Read-only. The value 2 is Only available which means preload size is
      --  error in L1-Cache.
      L1_CACHE_PLD_ERR_CODE   : L1_CACHE_SYNC_PRELOAD_EXCEPTION_L1_CACHE_PLD_ERR_CODE_Field;
      --  unspecified
      Reserved_10_11          : HAL.UInt2;
      --  Read-only. The values 0-2 are available which means sync map, command
      --  conflict and size are error in Cache System.
      CACHE_SYNC_ERR_CODE     : L1_CACHE_SYNC_PRELOAD_EXCEPTION_CACHE_SYNC_ERR_CODE_Field;
      --  unspecified
      Reserved_14_31          : HAL.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_PRELOAD_EXCEPTION_Register use record
      L1_ICACHE0_PLD_ERR_CODE at 0 range 0 .. 1;
      L1_ICACHE1_PLD_ERR_CODE at 0 range 2 .. 3;
      L1_ICACHE2_PLD_ERR_CODE at 0 range 4 .. 5;
      L1_ICACHE3_PLD_ERR_CODE at 0 range 6 .. 7;
      L1_CACHE_PLD_ERR_CODE   at 0 range 8 .. 9;
      Reserved_10_11          at 0 range 10 .. 11;
      CACHE_SYNC_ERR_CODE     at 0 range 12 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   --  Cache Sync Reset control register
   type L1_CACHE_SYNC_RST_CTRL_Register is record
      --  Read-only. set this bit to reset sync-logic inside L1-ICache0.
      --  Recommend that this should only be used to initialize sync-logic when
      --  some fatal error of sync-logic occurs.
      L1_ICACHE0_SYNC_RST : Boolean := False;
      --  Read-only. set this bit to reset sync-logic inside L1-ICache1.
      --  Recommend that this should only be used to initialize sync-logic when
      --  some fatal error of sync-logic occurs.
      L1_ICACHE1_SYNC_RST : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_SYNC_RST : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_SYNC_RST : Boolean := False;
      --  set this bit to reset sync-logic inside L1-Cache. Recommend that this
      --  should only be used to initialize sync-logic when some fatal error of
      --  sync-logic occurs.
      L1_CACHE_SYNC_RST   : Boolean := False;
      --  unspecified
      Reserved_5_31       : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_SYNC_RST_CTRL_Register use record
      L1_ICACHE0_SYNC_RST at 0 range 0 .. 0;
      L1_ICACHE1_SYNC_RST at 0 range 1 .. 1;
      L1_ICACHE2_SYNC_RST at 0 range 2 .. 2;
      L1_ICACHE3_SYNC_RST at 0 range 3 .. 3;
      L1_CACHE_SYNC_RST   at 0 range 4 .. 4;
      Reserved_5_31       at 0 range 5 .. 31;
   end record;

   --  Cache Preload Reset control register
   type L1_CACHE_PRELOAD_RST_CTRL_Register is record
      --  Read-only. set this bit to reset preload-logic inside L1-ICache0.
      --  Recommend that this should only be used to initialize preload-logic
      --  when some fatal error of preload-logic occurs.
      L1_ICACHE0_PLD_RST : Boolean := False;
      --  Read-only. set this bit to reset preload-logic inside L1-ICache1.
      --  Recommend that this should only be used to initialize preload-logic
      --  when some fatal error of preload-logic occurs.
      L1_ICACHE1_PLD_RST : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_PLD_RST : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_PLD_RST : Boolean := False;
      --  set this bit to reset preload-logic inside L1-Cache. Recommend that
      --  this should only be used to initialize preload-logic when some fatal
      --  error of preload-logic occurs.
      L1_CACHE_PLD_RST   : Boolean := False;
      --  unspecified
      Reserved_5_31      : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_PRELOAD_RST_CTRL_Register use record
      L1_ICACHE0_PLD_RST at 0 range 0 .. 0;
      L1_ICACHE1_PLD_RST at 0 range 1 .. 1;
      L1_ICACHE2_PLD_RST at 0 range 2 .. 2;
      L1_ICACHE3_PLD_RST at 0 range 3 .. 3;
      L1_CACHE_PLD_RST   at 0 range 4 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   --  Cache Autoload buffer clear control register
   type L1_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register is record
      --  Read-only. set this bit to clear autoload-buffer inside L1-ICache0.
      --  If this bit is active, autoload will not work in L1-ICache0. This bit
      --  should not be active when autoload works in L1-ICache0.
      L1_ICACHE0_ALD_BUF_CLR : Boolean := False;
      --  Read-only. set this bit to clear autoload-buffer inside L1-ICache1.
      --  If this bit is active, autoload will not work in L1-ICache1. This bit
      --  should not be active when autoload works in L1-ICache1.
      L1_ICACHE1_ALD_BUF_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_ALD_BUF_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_ALD_BUF_CLR : Boolean := False;
      --  set this bit to clear autoload-buffer inside L1-Cache. If this bit is
      --  active, autoload will not work in L1-Cache. This bit should not be
      --  active when autoload works in L1-Cache.
      L1_CACHE_ALD_BUF_CLR   : Boolean := False;
      --  unspecified
      Reserved_5_31          : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register use record
      L1_ICACHE0_ALD_BUF_CLR at 0 range 0 .. 0;
      L1_ICACHE1_ALD_BUF_CLR at 0 range 1 .. 1;
      L1_ICACHE2_ALD_BUF_CLR at 0 range 2 .. 2;
      L1_ICACHE3_ALD_BUF_CLR at 0 range 3 .. 3;
      L1_CACHE_ALD_BUF_CLR   at 0 range 4 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   --  Unallocate request buffer clear registers
   type L1_UNALLOCATE_BUFFER_CLEAR_Register is record
      --  Read-only. The bit is used to clear the unallocate request buffer of
      --  l1 icache0 where the unallocate request is responsed but not
      --  completed.
      L1_ICACHE0_UNALLOC_CLR : Boolean := False;
      --  Read-only. The bit is used to clear the unallocate request buffer of
      --  l1 icache1 where the unallocate request is responsed but not
      --  completed.
      L1_ICACHE1_UNALLOC_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_UNALLOC_CLR : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_UNALLOC_CLR : Boolean := False;
      --  The bit is used to clear the unallocate request buffer of l1 cache
      --  where the unallocate request is responsed but not completed.
      L1_CACHE_UNALLOC_CLR   : Boolean := False;
      --  unspecified
      Reserved_5_31          : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_UNALLOCATE_BUFFER_CLEAR_Register use record
      L1_ICACHE0_UNALLOC_CLR at 0 range 0 .. 0;
      L1_ICACHE1_UNALLOC_CLR at 0 range 1 .. 1;
      L1_ICACHE2_UNALLOC_CLR at 0 range 2 .. 2;
      L1_ICACHE3_UNALLOC_CLR at 0 range 3 .. 3;
      L1_CACHE_UNALLOC_CLR   at 0 range 4 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   --  Cache Tag and Data memory Object control register
   type L1_CACHE_OBJECT_CTRL_Register is record
      --  Read-only. Set this bit to set L1-ICache0 tag memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L1_ICACHE0_TAG_OBJECT : Boolean := False;
      --  Read-only. Set this bit to set L1-ICache1 tag memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L1_ICACHE1_TAG_OBJECT : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_TAG_OBJECT : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_TAG_OBJECT : Boolean := False;
      --  Set this bit to set L1-Cache tag memory as object. This bit should be
      --  onehot with the others fields inside this register.
      L1_CACHE_TAG_OBJECT   : Boolean := False;
      --  unspecified
      Reserved_5_5          : HAL.Bit := 16#0#;
      --  Read-only. Set this bit to set L1-ICache0 data memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L1_ICACHE0_MEM_OBJECT : Boolean := False;
      --  Read-only. Set this bit to set L1-ICache1 data memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L1_ICACHE1_MEM_OBJECT : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE2_MEM_OBJECT : Boolean := False;
      --  Read-only. Reserved
      L1_ICACHE3_MEM_OBJECT : Boolean := False;
      --  Set this bit to set L1-Cache data memory as object. This bit should
      --  be onehot with the others fields inside this register.
      L1_CACHE_MEM_OBJECT   : Boolean := False;
      --  unspecified
      Reserved_11_31        : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_OBJECT_CTRL_Register use record
      L1_ICACHE0_TAG_OBJECT at 0 range 0 .. 0;
      L1_ICACHE1_TAG_OBJECT at 0 range 1 .. 1;
      L1_ICACHE2_TAG_OBJECT at 0 range 2 .. 2;
      L1_ICACHE3_TAG_OBJECT at 0 range 3 .. 3;
      L1_CACHE_TAG_OBJECT   at 0 range 4 .. 4;
      Reserved_5_5          at 0 range 5 .. 5;
      L1_ICACHE0_MEM_OBJECT at 0 range 6 .. 6;
      L1_ICACHE1_MEM_OBJECT at 0 range 7 .. 7;
      L1_ICACHE2_MEM_OBJECT at 0 range 8 .. 8;
      L1_ICACHE3_MEM_OBJECT at 0 range 9 .. 9;
      L1_CACHE_MEM_OBJECT   at 0 range 10 .. 10;
      Reserved_11_31        at 0 range 11 .. 31;
   end record;

   subtype L1_CACHE_WAY_OBJECT_L1_CACHE_WAY_OBJECT_Field is HAL.UInt3;

   --  Cache Tag and Data memory way register
   type L1_CACHE_WAY_OBJECT_Register is record
      --  Set this bits to select which way of the tag-object will be accessed.
      --  0: way0, 1: way1, 2: way2, 3: way3, ?, 7: way7.
      L1_CACHE_WAY_OBJECT : L1_CACHE_WAY_OBJECT_L1_CACHE_WAY_OBJECT_Field :=
                             16#0#;
      --  unspecified
      Reserved_3_31       : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L1_CACHE_WAY_OBJECT_Register use record
      L1_CACHE_WAY_OBJECT at 0 range 0 .. 2;
      Reserved_3_31       at 0 range 3 .. 31;
   end record;

   subtype L2_CACHE_CTRL_L2_CACHE_UNDEF_OP_Field is HAL.UInt4;

   --  L2 Cache(L2-Cache) control register
   type L2_CACHE_CTRL_Register is record
      --  unspecified
      Reserved_0_3      : HAL.UInt4;
      --  Read-only. The bit is used to disable DMA access L2-Cache, 0: enable,
      --  1: disable
      L2_CACHE_SHUT_DMA : Boolean;
      --  Read-only. Reserved
      L2_CACHE_UNDEF_OP : L2_CACHE_CTRL_L2_CACHE_UNDEF_OP_Field;
      --  unspecified
      Reserved_9_31     : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_CTRL_Register use record
      Reserved_0_3      at 0 range 0 .. 3;
      L2_CACHE_SHUT_DMA at 0 range 4 .. 4;
      L2_CACHE_UNDEF_OP at 0 range 5 .. 8;
      Reserved_9_31     at 0 range 9 .. 31;
   end record;

   --  Bypass Cache configure register
   type L2_BYPASS_CACHE_CONF_Register is record
      --  unspecified
      Reserved_0_4       : HAL.UInt5;
      --  Read-only. The bit is used to enable bypass L2-Cache. 0: disable
      --  bypass, 1: enable bypass.
      BYPASS_L2_CACHE_EN : Boolean;
      --  unspecified
      Reserved_6_31      : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_BYPASS_CACHE_CONF_Register use record
      Reserved_0_4       at 0 range 0 .. 4;
      BYPASS_L2_CACHE_EN at 0 range 5 .. 5;
      Reserved_6_31      at 0 range 6 .. 31;
   end record;

   --  L2 Cache CacheSize mode configure register
   type L2_CACHE_CACHESIZE_CONF_Register is record
      --  Read-only. The field is used to configure cachesize of L2-Cache as 1k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_1K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as 2k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_2K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as 4k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_4K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as 8k
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_8K    : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  16k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_16K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  32k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_32K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  64k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_64K   : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  128k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_128K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  256k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_256K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  512k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_512K  : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  1024k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_1024K : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  2048k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_2048K : Boolean;
      --  Read-only. The field is used to configure cachesize of L2-Cache as
      --  4096k bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_CACHESIZE_4096K : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_CACHESIZE_CONF_Register use record
      L2_CACHE_CACHESIZE_1K    at 0 range 0 .. 0;
      L2_CACHE_CACHESIZE_2K    at 0 range 1 .. 1;
      L2_CACHE_CACHESIZE_4K    at 0 range 2 .. 2;
      L2_CACHE_CACHESIZE_8K    at 0 range 3 .. 3;
      L2_CACHE_CACHESIZE_16K   at 0 range 4 .. 4;
      L2_CACHE_CACHESIZE_32K   at 0 range 5 .. 5;
      L2_CACHE_CACHESIZE_64K   at 0 range 6 .. 6;
      L2_CACHE_CACHESIZE_128K  at 0 range 7 .. 7;
      L2_CACHE_CACHESIZE_256K  at 0 range 8 .. 8;
      L2_CACHE_CACHESIZE_512K  at 0 range 9 .. 9;
      L2_CACHE_CACHESIZE_1024K at 0 range 10 .. 10;
      L2_CACHE_CACHESIZE_2048K at 0 range 11 .. 11;
      L2_CACHE_CACHESIZE_4096K at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   --  L2 Cache BlockSize mode configure register
   type L2_CACHE_BLOCKSIZE_CONF_Register is record
      --  Read-only. The field is used to configureblocksize of L2-Cache as 8
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_8   : Boolean;
      --  Read-only. The field is used to configureblocksize of L2-Cache as 16
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_16  : Boolean;
      --  Read-only. The field is used to configureblocksize of L2-Cache as 32
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_32  : Boolean;
      --  Read-only. The field is used to configureblocksize of L2-Cache as 64
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_64  : Boolean;
      --  Read-only. The field is used to configureblocksize of L2-Cache as 128
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_128 : Boolean;
      --  Read-only. The field is used to configureblocksize of L2-Cache as 256
      --  bytes. This field and all other fields within this register is
      --  onehot.
      L2_CACHE_BLOCKSIZE_256 : Boolean;
      --  unspecified
      Reserved_6_31          : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_BLOCKSIZE_CONF_Register use record
      L2_CACHE_BLOCKSIZE_8   at 0 range 0 .. 0;
      L2_CACHE_BLOCKSIZE_16  at 0 range 1 .. 1;
      L2_CACHE_BLOCKSIZE_32  at 0 range 2 .. 2;
      L2_CACHE_BLOCKSIZE_64  at 0 range 3 .. 3;
      L2_CACHE_BLOCKSIZE_128 at 0 range 4 .. 4;
      L2_CACHE_BLOCKSIZE_256 at 0 range 5 .. 5;
      Reserved_6_31          at 0 range 6 .. 31;
   end record;

   --  Cache wrap around control register
   type L2_CACHE_WRAP_AROUND_CTRL_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5;
      --  Read-only. Set this bit as 1 to enable L2-Cache wrap around mode.
      L2_CACHE_WRAP : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_WRAP_AROUND_CTRL_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      L2_CACHE_WRAP at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Cache tag memory power control register
   type L2_CACHE_TAG_MEM_POWER_CTRL_Register is record
      --  unspecified
      Reserved_0_19             : HAL.UInt20;
      --  Read-only. The bit is used to close clock gating of L2-Cache tag
      --  memory. 1: close gating, 0: open clock gating.
      L2_CACHE_TAG_MEM_FORCE_ON : Boolean;
      --  Read-only. The bit is used to power L2-Cache tag memory down. 0:
      --  follow rtc_lslp, 1: power down
      L2_CACHE_TAG_MEM_FORCE_PD : Boolean;
      --  Read-only. The bit is used to power L2-Cache tag memory up. 0: follow
      --  rtc_lslp, 1: power up
      L2_CACHE_TAG_MEM_FORCE_PU : Boolean;
      --  unspecified
      Reserved_23_31            : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_TAG_MEM_POWER_CTRL_Register use record
      Reserved_0_19             at 0 range 0 .. 19;
      L2_CACHE_TAG_MEM_FORCE_ON at 0 range 20 .. 20;
      L2_CACHE_TAG_MEM_FORCE_PD at 0 range 21 .. 21;
      L2_CACHE_TAG_MEM_FORCE_PU at 0 range 22 .. 22;
      Reserved_23_31            at 0 range 23 .. 31;
   end record;

   --  Cache data memory power control register
   type L2_CACHE_DATA_MEM_POWER_CTRL_Register is record
      --  unspecified
      Reserved_0_19              : HAL.UInt20;
      --  Read-only. The bit is used to close clock gating of L2-Cache data
      --  memory. 1: close gating, 0: open clock gating.
      L2_CACHE_DATA_MEM_FORCE_ON : Boolean;
      --  Read-only. The bit is used to power L2-Cache data memory down. 0:
      --  follow rtc_lslp, 1: power down
      L2_CACHE_DATA_MEM_FORCE_PD : Boolean;
      --  Read-only. The bit is used to power L2-Cache data memory up. 0:
      --  follow rtc_lslp, 1: power up
      L2_CACHE_DATA_MEM_FORCE_PU : Boolean;
      --  unspecified
      Reserved_23_31             : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_DATA_MEM_POWER_CTRL_Register use record
      Reserved_0_19              at 0 range 0 .. 19;
      L2_CACHE_DATA_MEM_FORCE_ON at 0 range 20 .. 20;
      L2_CACHE_DATA_MEM_FORCE_PD at 0 range 21 .. 21;
      L2_CACHE_DATA_MEM_FORCE_PU at 0 range 22 .. 22;
      Reserved_23_31             at 0 range 23 .. 31;
   end record;

   --  Cache Freeze control register
   type L2_CACHE_FREEZE_CTRL_Register is record
      --  unspecified
      Reserved_0_19        : HAL.UInt20;
      --  Read-only. The bit is used to enable freeze operation on L2-Cache. It
      --  can be cleared by software.
      L2_CACHE_FREEZE_EN   : Boolean;
      --  Read-only. The bit is used to configure mode of freeze operation
      --  L2-Cache. 0: a miss-access will not stuck. 1: a miss-access will
      --  stuck.
      L2_CACHE_FREEZE_MODE : Boolean;
      --  Read-only. The bit is used to indicate whether freeze operation on
      --  L2-Cache is finished or not. 0: not finished. 1: finished.
      L2_CACHE_FREEZE_DONE : Boolean;
      --  unspecified
      Reserved_23_31       : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_FREEZE_CTRL_Register use record
      Reserved_0_19        at 0 range 0 .. 19;
      L2_CACHE_FREEZE_EN   at 0 range 20 .. 20;
      L2_CACHE_FREEZE_MODE at 0 range 21 .. 21;
      L2_CACHE_FREEZE_DONE at 0 range 22 .. 22;
      Reserved_23_31       at 0 range 23 .. 31;
   end record;

   --  Cache data memory access configure register
   type L2_CACHE_DATA_MEM_ACS_CONF_Register is record
      --  unspecified
      Reserved_0_19           : HAL.UInt20;
      --  Read-only. The bit is used to enable config-bus read L2-Cache data
      --  memoryory. 0: disable, 1: enable.
      L2_CACHE_DATA_MEM_RD_EN : Boolean;
      --  Read-only. The bit is used to enable config-bus write L2-Cache data
      --  memoryory. 0: disable, 1: enable.
      L2_CACHE_DATA_MEM_WR_EN : Boolean;
      --  unspecified
      Reserved_22_31          : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_DATA_MEM_ACS_CONF_Register use record
      Reserved_0_19           at 0 range 0 .. 19;
      L2_CACHE_DATA_MEM_RD_EN at 0 range 20 .. 20;
      L2_CACHE_DATA_MEM_WR_EN at 0 range 21 .. 21;
      Reserved_22_31          at 0 range 22 .. 31;
   end record;

   --  Cache tag memory access configure register
   type L2_CACHE_TAG_MEM_ACS_CONF_Register is record
      --  unspecified
      Reserved_0_19          : HAL.UInt20;
      --  Read-only. The bit is used to enable config-bus read L2-Cache tag
      --  memoryory. 0: disable, 1: enable.
      L2_CACHE_TAG_MEM_RD_EN : Boolean;
      --  Read-only. The bit is used to enable config-bus write L2-Cache tag
      --  memoryory. 0: disable, 1: enable.
      L2_CACHE_TAG_MEM_WR_EN : Boolean;
      --  unspecified
      Reserved_22_31         : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_TAG_MEM_ACS_CONF_Register use record
      Reserved_0_19          at 0 range 0 .. 19;
      L2_CACHE_TAG_MEM_RD_EN at 0 range 20 .. 20;
      L2_CACHE_TAG_MEM_WR_EN at 0 range 21 .. 21;
      Reserved_22_31         at 0 range 22 .. 31;
   end record;

   subtype L2_CACHE_PRELOCK_CONF_L2_CACHE_PRELOCK_RGID_Field is HAL.UInt4;

   --  L2 Cache prelock configure register
   type L2_CACHE_PRELOCK_CONF_Register is record
      --  Read-only. The bit is used to enable the first section of prelock
      --  function on L2-Cache.
      L2_CACHE_PRELOCK_SCT0_EN : Boolean;
      --  Read-only. The bit is used to enable the second section of prelock
      --  function on L2-Cache.
      L2_CACHE_PRELOCK_SCT1_EN : Boolean;
      --  Read-only. The bit is used to set the gid of l2 cache prelock.
      L2_CACHE_PRELOCK_RGID    : L2_CACHE_PRELOCK_CONF_L2_CACHE_PRELOCK_RGID_Field;
      --  unspecified
      Reserved_6_31            : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_PRELOCK_CONF_Register use record
      L2_CACHE_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      L2_CACHE_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      L2_CACHE_PRELOCK_RGID    at 0 range 2 .. 5;
      Reserved_6_31            at 0 range 6 .. 31;
   end record;

   subtype L2_CACHE_PRELOCK_SCT_SIZE_L2_CACHE_PRELOCK_SCT0_SIZE_Field is
     HAL.UInt16;
   subtype L2_CACHE_PRELOCK_SCT_SIZE_L2_CACHE_PRELOCK_SCT1_SIZE_Field is
     HAL.UInt16;

   --  L2 Cache prelock section size configure register
   type L2_CACHE_PRELOCK_SCT_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L2-Cache, which should be used together with
      --  L2_CACHE_PRELOCK_SCT0_ADDR_REG
      L2_CACHE_PRELOCK_SCT0_SIZE : L2_CACHE_PRELOCK_SCT_SIZE_L2_CACHE_PRELOCK_SCT0_SIZE_Field;
      --  Read-only. Those bits are used to configure the size of the second
      --  section of prelock on L2-Cache, which should be used together with
      --  L2_CACHE_PRELOCK_SCT1_ADDR_REG
      L2_CACHE_PRELOCK_SCT1_SIZE : L2_CACHE_PRELOCK_SCT_SIZE_L2_CACHE_PRELOCK_SCT1_SIZE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_PRELOCK_SCT_SIZE_Register use record
      L2_CACHE_PRELOCK_SCT0_SIZE at 0 range 0 .. 15;
      L2_CACHE_PRELOCK_SCT1_SIZE at 0 range 16 .. 31;
   end record;

   subtype L2_CACHE_PRELOAD_CTRL_L2_CACHE_PRELOAD_RGID_Field is HAL.UInt4;

   --  L2 Cache preload-operation control register
   type L2_CACHE_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation on L2-Cache. It will be
      --  cleared by hardware automatically after preload operation is done.
      L2_CACHE_PRELOAD_ENA   : Boolean := False;
      --  Read-only. The bit is used to indicate whether preload operation is
      --  finished or not. 0: not finished. 1: finished.
      L2_CACHE_PRELOAD_DONE  : Boolean := True;
      --  Read-only. The bit is used to configure the direction of preload
      --  operation. 0: ascending, 1: descending.
      L2_CACHE_PRELOAD_ORDER : Boolean := False;
      --  Read-only. The bit is used to set the gid of l2 cache preload.
      L2_CACHE_PRELOAD_RGID  : L2_CACHE_PRELOAD_CTRL_L2_CACHE_PRELOAD_RGID_Field :=
                                16#0#;
      --  unspecified
      Reserved_7_31          : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_PRELOAD_CTRL_Register use record
      L2_CACHE_PRELOAD_ENA   at 0 range 0 .. 0;
      L2_CACHE_PRELOAD_DONE  at 0 range 1 .. 1;
      L2_CACHE_PRELOAD_ORDER at 0 range 2 .. 2;
      L2_CACHE_PRELOAD_RGID  at 0 range 3 .. 6;
      Reserved_7_31          at 0 range 7 .. 31;
   end record;

   subtype L2_CACHE_PRELOAD_SIZE_L2_CACHE_PRELOAD_SIZE_Field is HAL.UInt16;

   --  L2 Cache preload size configure register
   type L2_CACHE_PRELOAD_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section of prelock on L2-Cache, which should be used together with
      --  L2_CACHE_PRELOAD_ADDR_REG
      L2_CACHE_PRELOAD_SIZE : L2_CACHE_PRELOAD_SIZE_L2_CACHE_PRELOAD_SIZE_Field;
      --  unspecified
      Reserved_16_31        : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_PRELOAD_SIZE_Register use record
      L2_CACHE_PRELOAD_SIZE at 0 range 0 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   subtype L2_CACHE_AUTOLOAD_CTRL_L2_CACHE_AUTOLOAD_TRIGGER_MODE_Field is
     HAL.UInt2;
   subtype L2_CACHE_AUTOLOAD_CTRL_L2_CACHE_AUTOLOAD_RGID_Field is HAL.UInt4;

   --  L2 Cache autoload-operation control register
   type L2_CACHE_AUTOLOAD_CTRL_Register is record
      --  Read-only. The bit is used to enable and disable autoload operation
      --  on L2-Cache. 1: enable, 0: disable.
      L2_CACHE_AUTOLOAD_ENA          : Boolean;
      --  Read-only. The bit is used to indicate whether autoload operation on
      --  L2-Cache is finished or not. 0: not finished. 1: finished.
      L2_CACHE_AUTOLOAD_DONE         : Boolean;
      --  Read-only. The bit is used to configure the direction of autoload
      --  operation on L2-Cache. 0: ascending. 1: descending.
      L2_CACHE_AUTOLOAD_ORDER        : Boolean;
      --  Read-only. The field is used to configure trigger mode of autoload
      --  operation on L2-Cache. 0/3: miss-trigger, 1: hit-trigger, 2:
      --  miss-hit-trigger.
      L2_CACHE_AUTOLOAD_TRIGGER_MODE : L2_CACHE_AUTOLOAD_CTRL_L2_CACHE_AUTOLOAD_TRIGGER_MODE_Field;
      --  unspecified
      Reserved_5_7                   : HAL.UInt3;
      --  Read-only. The bit is used to enable the first section for autoload
      --  operation on L2-Cache.
      L2_CACHE_AUTOLOAD_SCT0_ENA     : Boolean;
      --  Read-only. The bit is used to enable the second section for autoload
      --  operation on L2-Cache.
      L2_CACHE_AUTOLOAD_SCT1_ENA     : Boolean;
      --  Read-only. The bit is used to enable the third section for autoload
      --  operation on L2-Cache.
      L2_CACHE_AUTOLOAD_SCT2_ENA     : Boolean;
      --  Read-only. The bit is used to enable the fourth section for autoload
      --  operation on L2-Cache.
      L2_CACHE_AUTOLOAD_SCT3_ENA     : Boolean;
      --  Read-only. The bit is used to set the gid of l2 cache autoload.
      L2_CACHE_AUTOLOAD_RGID         : L2_CACHE_AUTOLOAD_CTRL_L2_CACHE_AUTOLOAD_RGID_Field;
      --  unspecified
      Reserved_16_31                 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_CTRL_Register use record
      L2_CACHE_AUTOLOAD_ENA          at 0 range 0 .. 0;
      L2_CACHE_AUTOLOAD_DONE         at 0 range 1 .. 1;
      L2_CACHE_AUTOLOAD_ORDER        at 0 range 2 .. 2;
      L2_CACHE_AUTOLOAD_TRIGGER_MODE at 0 range 3 .. 4;
      Reserved_5_7                   at 0 range 5 .. 7;
      L2_CACHE_AUTOLOAD_SCT0_ENA     at 0 range 8 .. 8;
      L2_CACHE_AUTOLOAD_SCT1_ENA     at 0 range 9 .. 9;
      L2_CACHE_AUTOLOAD_SCT2_ENA     at 0 range 10 .. 10;
      L2_CACHE_AUTOLOAD_SCT3_ENA     at 0 range 11 .. 11;
      L2_CACHE_AUTOLOAD_RGID         at 0 range 12 .. 15;
      Reserved_16_31                 at 0 range 16 .. 31;
   end record;

   subtype L2_CACHE_AUTOLOAD_SCT0_SIZE_L2_CACHE_AUTOLOAD_SCT0_SIZE_Field is
     HAL.UInt28;

   --  L2 Cache autoload section 0 size configure register
   type L2_CACHE_AUTOLOAD_SCT0_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the first
      --  section for autoload operation on L2-Cache. Note that it should be
      --  used together with L2_CACHE_AUTOLOAD_SCT0_ADDR and
      --  L2_CACHE_AUTOLOAD_SCT0_ENA.
      L2_CACHE_AUTOLOAD_SCT0_SIZE : L2_CACHE_AUTOLOAD_SCT0_SIZE_L2_CACHE_AUTOLOAD_SCT0_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_SCT0_SIZE_Register use record
      L2_CACHE_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L2_CACHE_AUTOLOAD_SCT1_SIZE_L2_CACHE_AUTOLOAD_SCT1_SIZE_Field is
     HAL.UInt28;

   --  L2 Cache autoload section 1 size configure register
   type L2_CACHE_AUTOLOAD_SCT1_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the second
      --  section for autoload operation on L2-Cache. Note that it should be
      --  used together with L2_CACHE_AUTOLOAD_SCT1_ADDR and
      --  L2_CACHE_AUTOLOAD_SCT1_ENA.
      L2_CACHE_AUTOLOAD_SCT1_SIZE : L2_CACHE_AUTOLOAD_SCT1_SIZE_L2_CACHE_AUTOLOAD_SCT1_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_SCT1_SIZE_Register use record
      L2_CACHE_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L2_CACHE_AUTOLOAD_SCT2_SIZE_L2_CACHE_AUTOLOAD_SCT2_SIZE_Field is
     HAL.UInt28;

   --  L2 Cache autoload section 2 size configure register
   type L2_CACHE_AUTOLOAD_SCT2_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the third
      --  section for autoload operation on L2-Cache. Note that it should be
      --  used together with L2_CACHE_AUTOLOAD_SCT2_ADDR and
      --  L2_CACHE_AUTOLOAD_SCT2_ENA.
      L2_CACHE_AUTOLOAD_SCT2_SIZE : L2_CACHE_AUTOLOAD_SCT2_SIZE_L2_CACHE_AUTOLOAD_SCT2_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_SCT2_SIZE_Register use record
      L2_CACHE_AUTOLOAD_SCT2_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype L2_CACHE_AUTOLOAD_SCT3_SIZE_L2_CACHE_AUTOLOAD_SCT3_SIZE_Field is
     HAL.UInt28;

   --  L2 Cache autoload section 3 size configure register
   type L2_CACHE_AUTOLOAD_SCT3_SIZE_Register is record
      --  Read-only. Those bits are used to configure the size of the fourth
      --  section for autoload operation on L2-Cache. Note that it should be
      --  used together with L2_CACHE_AUTOLOAD_SCT3_ADDR and
      --  L2_CACHE_AUTOLOAD_SCT3_ENA.
      L2_CACHE_AUTOLOAD_SCT3_SIZE : L2_CACHE_AUTOLOAD_SCT3_SIZE_L2_CACHE_AUTOLOAD_SCT3_SIZE_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_SCT3_SIZE_Register use record
      L2_CACHE_AUTOLOAD_SCT3_SIZE at 0 range 0 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   --  Cache Access Counter Interrupt enable register
   type L2_CACHE_ACS_CNT_INT_ENA_Register is record
      --  unspecified
      Reserved_0_7         : HAL.UInt8;
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L2-Cache due to bus0 accesses L2-Cache.
      L2_IBUS0_OVF_INT_ENA : Boolean;
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L2-Cache due to bus1 accesses L2-Cache.
      L2_IBUS1_OVF_INT_ENA : Boolean;
      --  Read-only. Reserved
      L2_IBUS2_OVF_INT_ENA : Boolean;
      --  Read-only. Reserved
      L2_IBUS3_OVF_INT_ENA : Boolean;
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L2-Cache due to bus0 accesses L2-Cache.
      L2_DBUS0_OVF_INT_ENA : Boolean;
      --  Read-only. The bit is used to enable interrupt of one of counters
      --  overflow that occurs in L2-Cache due to bus1 accesses L2-Cache.
      L2_DBUS1_OVF_INT_ENA : Boolean;
      --  Read-only. Reserved
      L2_DBUS2_OVF_INT_ENA : Boolean;
      --  Read-only. Reserved
      L2_DBUS3_OVF_INT_ENA : Boolean;
      --  unspecified
      Reserved_16_31       : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_CNT_INT_ENA_Register use record
      Reserved_0_7         at 0 range 0 .. 7;
      L2_IBUS0_OVF_INT_ENA at 0 range 8 .. 8;
      L2_IBUS1_OVF_INT_ENA at 0 range 9 .. 9;
      L2_IBUS2_OVF_INT_ENA at 0 range 10 .. 10;
      L2_IBUS3_OVF_INT_ENA at 0 range 11 .. 11;
      L2_DBUS0_OVF_INT_ENA at 0 range 12 .. 12;
      L2_DBUS1_OVF_INT_ENA at 0 range 13 .. 13;
      L2_DBUS2_OVF_INT_ENA at 0 range 14 .. 14;
      L2_DBUS3_OVF_INT_ENA at 0 range 15 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  Cache Access Counter Interrupt clear register
   type L2_CACHE_ACS_CNT_INT_CLR_Register is record
      --  unspecified
      Reserved_0_7         : HAL.UInt8;
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L2-Cache due to bus0 accesses L2-Cache.
      L2_IBUS0_OVF_INT_CLR : Boolean;
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L2-Cache due to bus1 accesses L2-Cache.
      L2_IBUS1_OVF_INT_CLR : Boolean;
      --  Read-only. Reserved
      L2_IBUS2_OVF_INT_CLR : Boolean;
      --  Read-only. Reserved
      L2_IBUS3_OVF_INT_CLR : Boolean;
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L2-Cache due to bus0 accesses L2-Cache.
      L2_DBUS0_OVF_INT_CLR : Boolean;
      --  Read-only. The bit is used to clear counters overflow interrupt and
      --  counters in L2-Cache due to bus1 accesses L2-Cache.
      L2_DBUS1_OVF_INT_CLR : Boolean;
      --  Read-only. Reserved
      L2_DBUS2_OVF_INT_CLR : Boolean;
      --  Read-only. Reserved
      L2_DBUS3_OVF_INT_CLR : Boolean;
      --  unspecified
      Reserved_16_31       : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_CNT_INT_CLR_Register use record
      Reserved_0_7         at 0 range 0 .. 7;
      L2_IBUS0_OVF_INT_CLR at 0 range 8 .. 8;
      L2_IBUS1_OVF_INT_CLR at 0 range 9 .. 9;
      L2_IBUS2_OVF_INT_CLR at 0 range 10 .. 10;
      L2_IBUS3_OVF_INT_CLR at 0 range 11 .. 11;
      L2_DBUS0_OVF_INT_CLR at 0 range 12 .. 12;
      L2_DBUS1_OVF_INT_CLR at 0 range 13 .. 13;
      L2_DBUS2_OVF_INT_CLR at 0 range 14 .. 14;
      L2_DBUS3_OVF_INT_CLR at 0 range 15 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  Cache Access Counter Interrupt raw register
   type L2_CACHE_ACS_CNT_INT_RAW_Register is record
      --  unspecified
      Reserved_0_7         : HAL.UInt8 := 16#0#;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus0 accesses L2-ICache0.
      L2_IBUS0_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus1 accesses L2-ICache1.
      L2_IBUS1_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus2 accesses L2-ICache2.
      L2_IBUS2_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus3 accesses L2-ICache3.
      L2_IBUS3_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus0 accesses L2-DCache.
      L2_DBUS0_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus1 accesses L2-DCache.
      L2_DBUS1_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus2 accesses L2-DCache.
      L2_DBUS2_OVF_INT_RAW : Boolean := False;
      --  The raw bit of the interrupt of one of counters overflow that occurs
      --  in L2-Cache due to bus3 accesses L2-DCache.
      L2_DBUS3_OVF_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_CNT_INT_RAW_Register use record
      Reserved_0_7         at 0 range 0 .. 7;
      L2_IBUS0_OVF_INT_RAW at 0 range 8 .. 8;
      L2_IBUS1_OVF_INT_RAW at 0 range 9 .. 9;
      L2_IBUS2_OVF_INT_RAW at 0 range 10 .. 10;
      L2_IBUS3_OVF_INT_RAW at 0 range 11 .. 11;
      L2_DBUS0_OVF_INT_RAW at 0 range 12 .. 12;
      L2_DBUS1_OVF_INT_RAW at 0 range 13 .. 13;
      L2_DBUS2_OVF_INT_RAW at 0 range 14 .. 14;
      L2_DBUS3_OVF_INT_RAW at 0 range 15 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  Cache Access Counter Interrupt status register
   type L2_CACHE_ACS_CNT_INT_ST_Register is record
      --  unspecified
      Reserved_0_7        : HAL.UInt8;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L2-Cache due to bus0 accesses L2-Cache.
      L2_IBUS0_OVF_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L2-Cache due to bus1 accesses L2-Cache.
      L2_IBUS1_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L2_IBUS2_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L2_IBUS3_OVF_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L2-Cache due to bus0 accesses L2-Cache.
      L2_DBUS0_OVF_INT_ST : Boolean;
      --  Read-only. The bit indicates the interrupt status of one of counters
      --  overflow that occurs in L2-Cache due to bus1 accesses L2-Cache.
      L2_DBUS1_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L2_DBUS2_OVF_INT_ST : Boolean;
      --  Read-only. Reserved
      L2_DBUS3_OVF_INT_ST : Boolean;
      --  unspecified
      Reserved_16_31      : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_CNT_INT_ST_Register use record
      Reserved_0_7        at 0 range 0 .. 7;
      L2_IBUS0_OVF_INT_ST at 0 range 8 .. 8;
      L2_IBUS1_OVF_INT_ST at 0 range 9 .. 9;
      L2_IBUS2_OVF_INT_ST at 0 range 10 .. 10;
      L2_IBUS3_OVF_INT_ST at 0 range 11 .. 11;
      L2_DBUS0_OVF_INT_ST at 0 range 12 .. 12;
      L2_DBUS1_OVF_INT_ST at 0 range 13 .. 13;
      L2_DBUS2_OVF_INT_ST at 0 range 14 .. 14;
      L2_DBUS3_OVF_INT_ST at 0 range 15 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   --  Cache Access Fail Interrupt enable register
   type L2_CACHE_ACS_FAIL_INT_ENA_Register is record
      --  unspecified
      Reserved_0_4          : HAL.UInt5;
      --  Read-only. The bit is used to enable interrupt of access fail that
      --  occurs in L2-Cache due to l1 cache accesses L2-Cache.
      L2_CACHE_FAIL_INT_ENA : Boolean;
      --  unspecified
      Reserved_6_31         : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_FAIL_INT_ENA_Register use record
      Reserved_0_4          at 0 range 0 .. 4;
      L2_CACHE_FAIL_INT_ENA at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt clear register
   type L2_CACHE_ACS_FAIL_INT_CLR_Register is record
      --  unspecified
      Reserved_0_4          : HAL.UInt5;
      --  Read-only. The bit is used to clear interrupt of access fail that
      --  occurs in L2-Cache due to l1 cache accesses L2-Cache.
      L2_CACHE_FAIL_INT_CLR : Boolean;
      --  unspecified
      Reserved_6_31         : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_FAIL_INT_CLR_Register use record
      Reserved_0_4          at 0 range 0 .. 4;
      L2_CACHE_FAIL_INT_CLR at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  Cache Access Fail Interrupt raw register
   type L2_CACHE_ACS_FAIL_INT_RAW_Register is record
      --  unspecified
      Reserved_0_4          : HAL.UInt5 := 16#0#;
      --  The raw bit of the interrupt of access fail that occurs in L2-Cache.
      L2_CACHE_FAIL_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_6_31         : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_FAIL_INT_RAW_Register use record
      Reserved_0_4          at 0 range 0 .. 4;
      L2_CACHE_FAIL_INT_RAW at 0 range 5 .. 5;
      Reserved_6_31         at 0 range 6 .. 31;
   end record;

   --  Cache Access Fail Interrupt status register
   type L2_CACHE_ACS_FAIL_INT_ST_Register is record
      --  unspecified
      Reserved_0_4         : HAL.UInt5;
      --  Read-only. The bit indicates the interrupt status of access fail that
      --  occurs in L2-Cache due to l1 cache accesses L2-Cache.
      L2_CACHE_FAIL_INT_ST : Boolean;
      --  unspecified
      Reserved_6_31        : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_FAIL_INT_ST_Register use record
      Reserved_0_4         at 0 range 0 .. 4;
      L2_CACHE_FAIL_INT_ST at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Cache Access Counter enable and clear register
   type L2_CACHE_ACS_CNT_CTRL_Register is record
      --  unspecified
      Reserved_0_7     : HAL.UInt8;
      --  Read-only. The bit is used to enable ibus0 counter in L2-Cache.
      L2_IBUS0_CNT_ENA : Boolean;
      --  Read-only. The bit is used to enable ibus1 counter in L2-Cache.
      L2_IBUS1_CNT_ENA : Boolean;
      --  Read-only. Reserved
      L2_IBUS2_CNT_ENA : Boolean;
      --  Read-only. Reserved
      L2_IBUS3_CNT_ENA : Boolean;
      --  Read-only. The bit is used to enable dbus0 counter in L2-Cache.
      L2_DBUS0_CNT_ENA : Boolean;
      --  Read-only. The bit is used to enable dbus1 counter in L2-Cache.
      L2_DBUS1_CNT_ENA : Boolean;
      --  Read-only. Reserved
      L2_DBUS2_CNT_ENA : Boolean;
      --  Read-only. Reserved
      L2_DBUS3_CNT_ENA : Boolean;
      --  unspecified
      Reserved_16_23   : HAL.UInt8;
      --  Read-only. The bit is used to clear ibus0 counter in L2-Cache.
      L2_IBUS0_CNT_CLR : Boolean;
      --  Read-only. The bit is used to clear ibus1 counter in L2-Cache.
      L2_IBUS1_CNT_CLR : Boolean;
      --  Read-only. Reserved
      L2_IBUS2_CNT_CLR : Boolean;
      --  Read-only. Reserved
      L2_IBUS3_CNT_CLR : Boolean;
      --  Read-only. The bit is used to clear dbus0 counter in L2-Cache.
      L2_DBUS0_CNT_CLR : Boolean;
      --  Read-only. The bit is used to clear dbus1 counter in L2-Cache.
      L2_DBUS1_CNT_CLR : Boolean;
      --  Read-only. Reserved
      L2_DBUS2_CNT_CLR : Boolean;
      --  Read-only. Reserved
      L2_DBUS3_CNT_CLR : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_CNT_CTRL_Register use record
      Reserved_0_7     at 0 range 0 .. 7;
      L2_IBUS0_CNT_ENA at 0 range 8 .. 8;
      L2_IBUS1_CNT_ENA at 0 range 9 .. 9;
      L2_IBUS2_CNT_ENA at 0 range 10 .. 10;
      L2_IBUS3_CNT_ENA at 0 range 11 .. 11;
      L2_DBUS0_CNT_ENA at 0 range 12 .. 12;
      L2_DBUS1_CNT_ENA at 0 range 13 .. 13;
      L2_DBUS2_CNT_ENA at 0 range 14 .. 14;
      L2_DBUS3_CNT_ENA at 0 range 15 .. 15;
      Reserved_16_23   at 0 range 16 .. 23;
      L2_IBUS0_CNT_CLR at 0 range 24 .. 24;
      L2_IBUS1_CNT_CLR at 0 range 25 .. 25;
      L2_IBUS2_CNT_CLR at 0 range 26 .. 26;
      L2_IBUS3_CNT_CLR at 0 range 27 .. 27;
      L2_DBUS0_CNT_CLR at 0 range 28 .. 28;
      L2_DBUS1_CNT_CLR at 0 range 29 .. 29;
      L2_DBUS2_CNT_CLR at 0 range 30 .. 30;
      L2_DBUS3_CNT_CLR at 0 range 31 .. 31;
   end record;

   subtype L2_CACHE_ACS_FAIL_ID_ATTR_L2_CACHE_FAIL_ID_Field is HAL.UInt16;
   subtype L2_CACHE_ACS_FAIL_ID_ATTR_L2_CACHE_FAIL_ATTR_Field is HAL.UInt16;

   --  L2-Cache Access Fail ID/attribution information register
   type L2_CACHE_ACS_FAIL_ID_ATTR_Register is record
      --  Read-only. The register records the ID of fail-access when L1-Cache
      --  accesses L2-Cache.
      L2_CACHE_FAIL_ID   : L2_CACHE_ACS_FAIL_ID_ATTR_L2_CACHE_FAIL_ID_Field;
      --  Read-only. The register records the attribution of fail-access when
      --  L1-Cache accesses L2-Cache due to cache accessing L1-Cache.
      L2_CACHE_FAIL_ATTR : L2_CACHE_ACS_FAIL_ID_ATTR_L2_CACHE_FAIL_ATTR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACS_FAIL_ID_ATTR_Register use record
      L2_CACHE_FAIL_ID   at 0 range 0 .. 15;
      L2_CACHE_FAIL_ATTR at 0 range 16 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt enable register
   type L2_CACHE_SYNC_PRELOAD_INT_ENA_Register is record
      --  unspecified
      Reserved_0_4              : HAL.UInt5;
      --  Read-only. The bit is used to enable interrupt of L2-Cache
      --  preload-operation done.
      L2_CACHE_PLD_DONE_INT_ENA : Boolean;
      --  unspecified
      Reserved_6_11             : HAL.UInt6;
      --  Read-only. The bit is used to enable interrupt of L2-Cache
      --  preload-operation error.
      L2_CACHE_PLD_ERR_INT_ENA  : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_PRELOAD_INT_ENA_Register use record
      Reserved_0_4              at 0 range 0 .. 4;
      L2_CACHE_PLD_DONE_INT_ENA at 0 range 5 .. 5;
      Reserved_6_11             at 0 range 6 .. 11;
      L2_CACHE_PLD_ERR_INT_ENA  at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  Sync Preload operation Interrupt clear register
   type L2_CACHE_SYNC_PRELOAD_INT_CLR_Register is record
      --  unspecified
      Reserved_0_4              : HAL.UInt5;
      --  Read-only. The bit is used to clear interrupt that occurs only when
      --  L2-Cache preload-operation is done.
      L2_CACHE_PLD_DONE_INT_CLR : Boolean;
      --  unspecified
      Reserved_6_11             : HAL.UInt6;
      --  Read-only. The bit is used to clear interrupt of L2-Cache
      --  preload-operation error.
      L2_CACHE_PLD_ERR_INT_CLR  : Boolean;
      --  unspecified
      Reserved_13_31            : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_PRELOAD_INT_CLR_Register use record
      Reserved_0_4              at 0 range 0 .. 4;
      L2_CACHE_PLD_DONE_INT_CLR at 0 range 5 .. 5;
      Reserved_6_11             at 0 range 6 .. 11;
      L2_CACHE_PLD_ERR_INT_CLR  at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  Sync Preload operation Interrupt raw register
   type L2_CACHE_SYNC_PRELOAD_INT_RAW_Register is record
      --  unspecified
      Reserved_0_4              : HAL.UInt5 := 16#0#;
      --  The raw bit of the interrupt that occurs only when L2-Cache
      --  preload-operation is done.
      L2_CACHE_PLD_DONE_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_6_11             : HAL.UInt6 := 16#0#;
      --  The raw bit of the interrupt that occurs only when L2-Cache
      --  preload-operation error occurs.
      L2_CACHE_PLD_ERR_INT_RAW  : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_PRELOAD_INT_RAW_Register use record
      Reserved_0_4              at 0 range 0 .. 4;
      L2_CACHE_PLD_DONE_INT_RAW at 0 range 5 .. 5;
      Reserved_6_11             at 0 range 6 .. 11;
      L2_CACHE_PLD_ERR_INT_RAW  at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  L1-Cache Access Fail Interrupt status register
   type L2_CACHE_SYNC_PRELOAD_INT_ST_Register is record
      --  unspecified
      Reserved_0_4             : HAL.UInt5;
      --  Read-only. The bit indicates the status of the interrupt that occurs
      --  only when L2-Cache preload-operation is done.
      L2_CACHE_PLD_DONE_INT_ST : Boolean;
      --  unspecified
      Reserved_6_11            : HAL.UInt6;
      --  Read-only. The bit indicates the status of the interrupt of L2-Cache
      --  preload-operation error.
      L2_CACHE_PLD_ERR_INT_ST  : Boolean;
      --  unspecified
      Reserved_13_31           : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_PRELOAD_INT_ST_Register use record
      Reserved_0_4             at 0 range 0 .. 4;
      L2_CACHE_PLD_DONE_INT_ST at 0 range 5 .. 5;
      Reserved_6_11            at 0 range 6 .. 11;
      L2_CACHE_PLD_ERR_INT_ST  at 0 range 12 .. 12;
      Reserved_13_31           at 0 range 13 .. 31;
   end record;

   subtype L2_CACHE_SYNC_PRELOAD_EXCEPTION_L2_CACHE_PLD_ERR_CODE_Field is
     HAL.UInt2;

   --  Cache Sync/Preload Operation exception register
   type L2_CACHE_SYNC_PRELOAD_EXCEPTION_Register is record
      --  unspecified
      Reserved_0_9          : HAL.UInt10;
      --  Read-only. The value 2 is Only available which means preload size is
      --  error in L2-Cache.
      L2_CACHE_PLD_ERR_CODE : L2_CACHE_SYNC_PRELOAD_EXCEPTION_L2_CACHE_PLD_ERR_CODE_Field;
      --  unspecified
      Reserved_12_31        : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_PRELOAD_EXCEPTION_Register use record
      Reserved_0_9          at 0 range 0 .. 9;
      L2_CACHE_PLD_ERR_CODE at 0 range 10 .. 11;
      Reserved_12_31        at 0 range 12 .. 31;
   end record;

   --  Cache Sync Reset control register
   type L2_CACHE_SYNC_RST_CTRL_Register is record
      --  unspecified
      Reserved_0_4      : HAL.UInt5;
      --  Read-only. set this bit to reset sync-logic inside L2-Cache.
      --  Recommend that this should only be used to initialize sync-logic when
      --  some fatal error of sync-logic occurs.
      L2_CACHE_SYNC_RST : Boolean;
      --  unspecified
      Reserved_6_31     : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_SYNC_RST_CTRL_Register use record
      Reserved_0_4      at 0 range 0 .. 4;
      L2_CACHE_SYNC_RST at 0 range 5 .. 5;
      Reserved_6_31     at 0 range 6 .. 31;
   end record;

   --  Cache Preload Reset control register
   type L2_CACHE_PRELOAD_RST_CTRL_Register is record
      --  unspecified
      Reserved_0_4     : HAL.UInt5;
      --  Read-only. set this bit to reset preload-logic inside L2-Cache.
      --  Recommend that this should only be used to initialize preload-logic
      --  when some fatal error of preload-logic occurs.
      L2_CACHE_PLD_RST : Boolean;
      --  unspecified
      Reserved_6_31    : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_PRELOAD_RST_CTRL_Register use record
      Reserved_0_4     at 0 range 0 .. 4;
      L2_CACHE_PLD_RST at 0 range 5 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   --  Cache Autoload buffer clear control register
   type L2_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register is record
      --  unspecified
      Reserved_0_4         : HAL.UInt5;
      --  Read-only. set this bit to clear autoload-buffer inside L2-Cache. If
      --  this bit is active, autoload will not work in L2-Cache. This bit
      --  should not be active when autoload works in L2-Cache.
      L2_CACHE_ALD_BUF_CLR : Boolean;
      --  unspecified
      Reserved_6_31        : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register use record
      Reserved_0_4         at 0 range 0 .. 4;
      L2_CACHE_ALD_BUF_CLR at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Unallocate request buffer clear registers
   type L2_UNALLOCATE_BUFFER_CLEAR_Register is record
      --  unspecified
      Reserved_0_4         : HAL.UInt5;
      --  Read-only. The bit is used to clear the unallocate request buffer of
      --  l2 icache where the unallocate request is responsed but not
      --  completed.
      L2_CACHE_UNALLOC_CLR : Boolean;
      --  unspecified
      Reserved_6_31        : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_UNALLOCATE_BUFFER_CLEAR_Register use record
      Reserved_0_4         at 0 range 0 .. 4;
      L2_CACHE_UNALLOC_CLR at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  L1 Cache access Attribute propagation control register
   type L2_CACHE_ACCESS_ATTR_CTRL_Register is record
      --  Read-only. Set this bit to force the request to l2 cache with
      --  cacheable attribute, otherwise, the attribute is propagated from L1
      --  cache or CPU, it could be one of cacheable and non-cacheable.
      L2_CACHE_ACCESS_FORCE_CC  : Boolean;
      --  Read-only. Set this bit to force the request to l2 cache with
      --  write-back attribute, otherwise, the attribute is propagated from L1
      --  cache or CPU, it could be one of write-back and write-through.
      L2_CACHE_ACCESS_FORCE_WB  : Boolean;
      --  Read-only. Set this bit to force the request to l2 cache with
      --  write-miss-allocate attribute, otherwise, the attribute is propagated
      --  from L1 cache or CPU, it could be one of write-miss-allocate and
      --  write-miss-no-allocate.
      L2_CACHE_ACCESS_FORCE_WMA : Boolean;
      --  Read-only. Set this bit to force the request to l2 cache with
      --  read-miss-allocate attribute, otherwise, the attribute is propagated
      --  from L1 cache or CPU, it could be one of read-miss-allocate and
      --  read-miss-no-allocate.
      L2_CACHE_ACCESS_FORCE_RMA : Boolean;
      --  unspecified
      Reserved_4_31             : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_ACCESS_ATTR_CTRL_Register use record
      L2_CACHE_ACCESS_FORCE_CC  at 0 range 0 .. 0;
      L2_CACHE_ACCESS_FORCE_WB  at 0 range 1 .. 1;
      L2_CACHE_ACCESS_FORCE_WMA at 0 range 2 .. 2;
      L2_CACHE_ACCESS_FORCE_RMA at 0 range 3 .. 3;
      Reserved_4_31             at 0 range 4 .. 31;
   end record;

   --  Cache Tag and Data memory Object control register
   type L2_CACHE_OBJECT_CTRL_Register is record
      --  unspecified
      Reserved_0_4        : HAL.UInt5;
      --  Read-only. Set this bit to set L2-Cache tag memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L2_CACHE_TAG_OBJECT : Boolean;
      --  unspecified
      Reserved_6_10       : HAL.UInt5;
      --  Read-only. Set this bit to set L2-Cache data memory as object. This
      --  bit should be onehot with the others fields inside this register.
      L2_CACHE_MEM_OBJECT : Boolean;
      --  unspecified
      Reserved_12_31      : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_OBJECT_CTRL_Register use record
      Reserved_0_4        at 0 range 0 .. 4;
      L2_CACHE_TAG_OBJECT at 0 range 5 .. 5;
      Reserved_6_10       at 0 range 6 .. 10;
      L2_CACHE_MEM_OBJECT at 0 range 11 .. 11;
      Reserved_12_31      at 0 range 12 .. 31;
   end record;

   subtype L2_CACHE_WAY_OBJECT_L2_CACHE_WAY_OBJECT_Field is HAL.UInt3;

   --  Cache Tag and Data memory way register
   type L2_CACHE_WAY_OBJECT_Register is record
      --  Read-only. Set this bits to select which way of the tag-object will
      --  be accessed. 0: way0, 1: way1, 2: way2, 3: way3, ?, 7: way7.
      L2_CACHE_WAY_OBJECT : L2_CACHE_WAY_OBJECT_L2_CACHE_WAY_OBJECT_Field;
      --  unspecified
      Reserved_3_31       : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for L2_CACHE_WAY_OBJECT_Register use record
      L2_CACHE_WAY_OBJECT at 0 range 0 .. 2;
      Reserved_3_31       at 0 range 3 .. 31;
   end record;

   --  Clock gate control register
   type CLOCK_GATE_Register is record
      --  The bit is used to enable clock gate when access all registers in
      --  this module.
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

   subtype REDUNDANCY_SIG4_CACHE_REDCY_SIG4_Field is HAL.UInt4;

   --  Cache redundancy signal 0 register
   type REDUNDANCY_SIG4_Register is record
      --  Read-only. Those bits are prepared for ECO.
      CACHE_REDCY_SIG4 : REDUNDANCY_SIG4_CACHE_REDCY_SIG4_Field;
      --  unspecified
      Reserved_4_31    : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REDUNDANCY_SIG4_Register use record
      CACHE_REDCY_SIG4 at 0 range 0 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Version control register
   type DATE_Register is record
      --  version control register. Note that this default value stored is the
      --  latest date when the hardware logic was updated.
      DATE           : DATE_DATE_Field := 16#2202080#;
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

   --  External Memory
   type EXTMEM_Peripheral is record
      --  L1 instruction Cache(L1-ICache) control register
      L1_ICACHE_CTRL                  : aliased L1_ICACHE_CTRL_Register;
      --  L1 data Cache(L1-Cache) control register
      L1_CACHE_CTRL                   : aliased L1_CACHE_CTRL_Register;
      --  Bypass Cache configure register
      L1_BYPASS_CACHE_CONF            : aliased L1_BYPASS_CACHE_CONF_Register;
      --  L1 Cache atomic feature configure register
      L1_CACHE_ATOMIC_CONF            : aliased L1_CACHE_ATOMIC_CONF_Register;
      --  L1 instruction Cache CacheSize mode configure register
      L1_ICACHE_CACHESIZE_CONF        : aliased L1_ICACHE_CACHESIZE_CONF_Register;
      --  L1 instruction Cache BlockSize mode configure register
      L1_ICACHE_BLOCKSIZE_CONF        : aliased L1_ICACHE_BLOCKSIZE_CONF_Register;
      --  L1 data Cache CacheSize mode configure register
      L1_CACHE_CACHESIZE_CONF         : aliased L1_CACHE_CACHESIZE_CONF_Register;
      --  L1 data Cache BlockSize mode configure register
      L1_CACHE_BLOCKSIZE_CONF         : aliased L1_CACHE_BLOCKSIZE_CONF_Register;
      --  Cache wrap around control register
      L1_CACHE_WRAP_AROUND_CTRL       : aliased L1_CACHE_WRAP_AROUND_CTRL_Register;
      --  Cache tag memory power control register
      L1_CACHE_TAG_MEM_POWER_CTRL     : aliased L1_CACHE_TAG_MEM_POWER_CTRL_Register;
      --  Cache data memory power control register
      L1_CACHE_DATA_MEM_POWER_CTRL    : aliased L1_CACHE_DATA_MEM_POWER_CTRL_Register;
      --  Cache Freeze control register
      L1_CACHE_FREEZE_CTRL            : aliased L1_CACHE_FREEZE_CTRL_Register;
      --  Cache data memory access configure register
      L1_CACHE_DATA_MEM_ACS_CONF      : aliased L1_CACHE_DATA_MEM_ACS_CONF_Register;
      --  Cache tag memory access configure register
      L1_CACHE_TAG_MEM_ACS_CONF       : aliased L1_CACHE_TAG_MEM_ACS_CONF_Register;
      --  L1 instruction Cache 0 prelock configure register
      L1_ICACHE0_PRELOCK_CONF         : aliased L1_ICACHE0_PRELOCK_CONF_Register;
      --  L1 instruction Cache 0 prelock section0 address configure register
      L1_ICACHE0_PRELOCK_SCT0_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 0 prelock section1 address configure register
      L1_ICACHE0_PRELOCK_SCT1_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 0 prelock section size configure register
      L1_ICACHE0_PRELOCK_SCT_SIZE     : aliased L1_ICACHE0_PRELOCK_SCT_SIZE_Register;
      --  L1 instruction Cache 1 prelock configure register
      L1_ICACHE1_PRELOCK_CONF         : aliased L1_ICACHE1_PRELOCK_CONF_Register;
      --  L1 instruction Cache 1 prelock section0 address configure register
      L1_ICACHE1_PRELOCK_SCT0_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 1 prelock section1 address configure register
      L1_ICACHE1_PRELOCK_SCT1_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 1 prelock section size configure register
      L1_ICACHE1_PRELOCK_SCT_SIZE     : aliased L1_ICACHE1_PRELOCK_SCT_SIZE_Register;
      --  L1 instruction Cache 2 prelock configure register
      L1_ICACHE2_PRELOCK_CONF         : aliased L1_ICACHE2_PRELOCK_CONF_Register;
      --  L1 instruction Cache 2 prelock section0 address configure register
      L1_ICACHE2_PRELOCK_SCT0_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 2 prelock section1 address configure register
      L1_ICACHE2_PRELOCK_SCT1_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 2 prelock section size configure register
      L1_ICACHE2_PRELOCK_SCT_SIZE     : aliased L1_ICACHE2_PRELOCK_SCT_SIZE_Register;
      --  L1 instruction Cache 3 prelock configure register
      L1_ICACHE3_PRELOCK_CONF         : aliased L1_ICACHE3_PRELOCK_CONF_Register;
      --  L1 instruction Cache 3 prelock section0 address configure register
      L1_ICACHE3_PRELOCK_SCT0_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 3 prelock section1 address configure register
      L1_ICACHE3_PRELOCK_SCT1_ADDR    : aliased HAL.UInt32;
      --  L1 instruction Cache 3 prelock section size configure register
      L1_ICACHE3_PRELOCK_SCT_SIZE     : aliased L1_ICACHE3_PRELOCK_SCT_SIZE_Register;
      --  L1 Cache prelock configure register
      L1_CACHE_PRELOCK_CONF           : aliased L1_CACHE_PRELOCK_CONF_Register;
      --  L1 Cache prelock section0 address configure register
      L1_CACHE_PRELOCK_SCT0_ADDR      : aliased HAL.UInt32;
      --  L1 Cache prelock section1 address configure register
      L1_DCACHE_PRELOCK_SCT1_ADDR     : aliased HAL.UInt32;
      --  L1 Cache prelock section size configure register
      L1_DCACHE_PRELOCK_SCT_SIZE      : aliased L1_DCACHE_PRELOCK_SCT_SIZE_Register;
      --  Lock-class (manual lock) operation control register
      CACHE_LOCK_CTRL                 : aliased CACHE_LOCK_CTRL_Register;
      --  Lock (manual lock) map configure register
      CACHE_LOCK_MAP                  : aliased CACHE_LOCK_MAP_Register;
      --  Lock (manual lock) address configure register
      CACHE_LOCK_ADDR                 : aliased HAL.UInt32;
      --  Lock (manual lock) size configure register
      CACHE_LOCK_SIZE                 : aliased CACHE_LOCK_SIZE_Register;
      --  Sync-class operation control register
      CACHE_SYNC_CTRL                 : aliased CACHE_SYNC_CTRL_Register;
      --  Sync map configure register
      CACHE_SYNC_MAP                  : aliased CACHE_SYNC_MAP_Register;
      --  Sync address configure register
      CACHE_SYNC_ADDR                 : aliased HAL.UInt32;
      --  Sync size configure register
      CACHE_SYNC_SIZE                 : aliased CACHE_SYNC_SIZE_Register;
      --  L1 instruction Cache 0 preload-operation control register
      L1_ICACHE0_PRELOAD_CTRL         : aliased L1_ICACHE0_PRELOAD_CTRL_Register;
      --  L1 instruction Cache 0 preload address configure register
      L1_ICACHE0_PRELOAD_ADDR         : aliased HAL.UInt32;
      --  L1 instruction Cache 0 preload size configure register
      L1_ICACHE0_PRELOAD_SIZE         : aliased L1_ICACHE0_PRELOAD_SIZE_Register;
      --  L1 instruction Cache 1 preload-operation control register
      L1_ICACHE1_PRELOAD_CTRL         : aliased L1_ICACHE1_PRELOAD_CTRL_Register;
      --  L1 instruction Cache 1 preload address configure register
      L1_ICACHE1_PRELOAD_ADDR         : aliased HAL.UInt32;
      --  L1 instruction Cache 1 preload size configure register
      L1_ICACHE1_PRELOAD_SIZE         : aliased L1_ICACHE1_PRELOAD_SIZE_Register;
      --  L1 instruction Cache 2 preload-operation control register
      L1_ICACHE2_PRELOAD_CTRL         : aliased L1_ICACHE2_PRELOAD_CTRL_Register;
      --  L1 instruction Cache 2 preload address configure register
      L1_ICACHE2_PRELOAD_ADDR         : aliased HAL.UInt32;
      --  L1 instruction Cache 2 preload size configure register
      L1_ICACHE2_PRELOAD_SIZE         : aliased L1_ICACHE2_PRELOAD_SIZE_Register;
      --  L1 instruction Cache 3 preload-operation control register
      L1_ICACHE3_PRELOAD_CTRL         : aliased L1_ICACHE3_PRELOAD_CTRL_Register;
      --  L1 instruction Cache 3 preload address configure register
      L1_ICACHE3_PRELOAD_ADDR         : aliased HAL.UInt32;
      --  L1 instruction Cache 3 preload size configure register
      L1_ICACHE3_PRELOAD_SIZE         : aliased L1_ICACHE3_PRELOAD_SIZE_Register;
      --  L1 Cache preload-operation control register
      L1_CACHE_PRELOAD_CTRL           : aliased L1_CACHE_PRELOAD_CTRL_Register;
      --  L1 Cache preload address configure register
      L1_DCACHE_PRELOAD_ADDR          : aliased HAL.UInt32;
      --  L1 Cache preload size configure register
      L1_DCACHE_PRELOAD_SIZE          : aliased L1_DCACHE_PRELOAD_SIZE_Register;
      --  L1 instruction Cache 0 autoload-operation control register
      L1_ICACHE0_AUTOLOAD_CTRL        : aliased L1_ICACHE0_AUTOLOAD_CTRL_Register;
      --  L1 instruction Cache 0 autoload section 0 address configure register
      L1_ICACHE0_AUTOLOAD_SCT0_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 0 autoload section 0 size configure register
      L1_ICACHE0_AUTOLOAD_SCT0_SIZE   : aliased L1_ICACHE0_AUTOLOAD_SCT0_SIZE_Register;
      --  L1 instruction Cache 0 autoload section 1 address configure register
      L1_ICACHE0_AUTOLOAD_SCT1_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 0 autoload section 1 size configure register
      L1_ICACHE0_AUTOLOAD_SCT1_SIZE   : aliased L1_ICACHE0_AUTOLOAD_SCT1_SIZE_Register;
      --  L1 instruction Cache 1 autoload-operation control register
      L1_ICACHE1_AUTOLOAD_CTRL        : aliased L1_ICACHE1_AUTOLOAD_CTRL_Register;
      --  L1 instruction Cache 1 autoload section 0 address configure register
      L1_ICACHE1_AUTOLOAD_SCT0_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 1 autoload section 0 size configure register
      L1_ICACHE1_AUTOLOAD_SCT0_SIZE   : aliased L1_ICACHE1_AUTOLOAD_SCT0_SIZE_Register;
      --  L1 instruction Cache 1 autoload section 1 address configure register
      L1_ICACHE1_AUTOLOAD_SCT1_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 1 autoload section 1 size configure register
      L1_ICACHE1_AUTOLOAD_SCT1_SIZE   : aliased L1_ICACHE1_AUTOLOAD_SCT1_SIZE_Register;
      --  L1 instruction Cache 2 autoload-operation control register
      L1_ICACHE2_AUTOLOAD_CTRL        : aliased L1_ICACHE2_AUTOLOAD_CTRL_Register;
      --  L1 instruction Cache 2 autoload section 0 address configure register
      L1_ICACHE2_AUTOLOAD_SCT0_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 2 autoload section 0 size configure register
      L1_ICACHE2_AUTOLOAD_SCT0_SIZE   : aliased L1_ICACHE2_AUTOLOAD_SCT0_SIZE_Register;
      --  L1 instruction Cache 2 autoload section 1 address configure register
      L1_ICACHE2_AUTOLOAD_SCT1_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 2 autoload section 1 size configure register
      L1_ICACHE2_AUTOLOAD_SCT1_SIZE   : aliased L1_ICACHE2_AUTOLOAD_SCT1_SIZE_Register;
      --  L1 instruction Cache 3 autoload-operation control register
      L1_ICACHE3_AUTOLOAD_CTRL        : aliased L1_ICACHE3_AUTOLOAD_CTRL_Register;
      --  L1 instruction Cache 3 autoload section 0 address configure register
      L1_ICACHE3_AUTOLOAD_SCT0_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 3 autoload section 0 size configure register
      L1_ICACHE3_AUTOLOAD_SCT0_SIZE   : aliased L1_ICACHE3_AUTOLOAD_SCT0_SIZE_Register;
      --  L1 instruction Cache 3 autoload section 1 address configure register
      L1_ICACHE3_AUTOLOAD_SCT1_ADDR   : aliased HAL.UInt32;
      --  L1 instruction Cache 3 autoload section 1 size configure register
      L1_ICACHE3_AUTOLOAD_SCT1_SIZE   : aliased L1_ICACHE3_AUTOLOAD_SCT1_SIZE_Register;
      --  L1 Cache autoload-operation control register
      L1_CACHE_AUTOLOAD_CTRL          : aliased L1_CACHE_AUTOLOAD_CTRL_Register;
      --  L1 Cache autoload section 0 address configure register
      L1_CACHE_AUTOLOAD_SCT0_ADDR     : aliased HAL.UInt32;
      --  L1 Cache autoload section 0 size configure register
      L1_CACHE_AUTOLOAD_SCT0_SIZE     : aliased L1_CACHE_AUTOLOAD_SCT0_SIZE_Register;
      --  L1 Cache autoload section 1 address configure register
      L1_CACHE_AUTOLOAD_SCT1_ADDR     : aliased HAL.UInt32;
      --  L1 Cache autoload section 1 size configure register
      L1_CACHE_AUTOLOAD_SCT1_SIZE     : aliased L1_CACHE_AUTOLOAD_SCT1_SIZE_Register;
      --  L1 Cache autoload section 2 address configure register
      L1_CACHE_AUTOLOAD_SCT2_ADDR     : aliased HAL.UInt32;
      --  L1 Cache autoload section 2 size configure register
      L1_CACHE_AUTOLOAD_SCT2_SIZE     : aliased L1_CACHE_AUTOLOAD_SCT2_SIZE_Register;
      --  L1 Cache autoload section 1 address configure register
      L1_CACHE_AUTOLOAD_SCT3_ADDR     : aliased HAL.UInt32;
      --  L1 Cache autoload section 1 size configure register
      L1_CACHE_AUTOLOAD_SCT3_SIZE     : aliased L1_CACHE_AUTOLOAD_SCT3_SIZE_Register;
      --  Cache Access Counter Interrupt enable register
      L1_CACHE_ACS_CNT_INT_ENA        : aliased L1_CACHE_ACS_CNT_INT_ENA_Register;
      --  Cache Access Counter Interrupt clear register
      L1_CACHE_ACS_CNT_INT_CLR        : aliased L1_CACHE_ACS_CNT_INT_CLR_Register;
      --  Cache Access Counter Interrupt raw register
      L1_CACHE_ACS_CNT_INT_RAW        : aliased L1_CACHE_ACS_CNT_INT_RAW_Register;
      --  Cache Access Counter Interrupt status register
      L1_CACHE_ACS_CNT_INT_ST         : aliased L1_CACHE_ACS_CNT_INT_ST_Register;
      --  Cache Access Fail Interrupt enable register
      L1_CACHE_ACS_FAIL_INT_ENA       : aliased L1_CACHE_ACS_FAIL_INT_ENA_Register;
      --  L1-Cache Access Fail Interrupt clear register
      L1_CACHE_ACS_FAIL_INT_CLR       : aliased L1_CACHE_ACS_FAIL_INT_CLR_Register;
      --  Cache Access Fail Interrupt raw register
      L1_CACHE_ACS_FAIL_INT_RAW       : aliased L1_CACHE_ACS_FAIL_INT_RAW_Register;
      --  Cache Access Fail Interrupt status register
      L1_CACHE_ACS_FAIL_INT_ST        : aliased L1_CACHE_ACS_FAIL_INT_ST_Register;
      --  Cache Access Counter enable and clear register
      L1_CACHE_ACS_CNT_CTRL           : aliased L1_CACHE_ACS_CNT_CTRL_Register;
      --  L1-ICache bus0 Hit-Access Counter register
      L1_IBUS0_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-ICache bus0 Miss-Access Counter register
      L1_IBUS0_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-ICache bus0 Conflict-Access Counter register
      L1_IBUS0_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-ICache bus0 Next-Level-Access Counter register
      L1_IBUS0_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-ICache bus1 Hit-Access Counter register
      L1_IBUS1_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-ICache bus1 Miss-Access Counter register
      L1_IBUS1_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-ICache bus1 Conflict-Access Counter register
      L1_IBUS1_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-ICache bus1 Next-Level-Access Counter register
      L1_IBUS1_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-ICache bus2 Hit-Access Counter register
      L1_IBUS2_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-ICache bus2 Miss-Access Counter register
      L1_IBUS2_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-ICache bus2 Conflict-Access Counter register
      L1_IBUS2_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-ICache bus2 Next-Level-Access Counter register
      L1_IBUS2_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-ICache bus3 Hit-Access Counter register
      L1_IBUS3_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-ICache bus3 Miss-Access Counter register
      L1_IBUS3_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-ICache bus3 Conflict-Access Counter register
      L1_IBUS3_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-ICache bus3 Next-Level-Access Counter register
      L1_IBUS3_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-Cache bus0 Hit-Access Counter register
      L1_BUS0_ACS_HIT_CNT             : aliased HAL.UInt32;
      --  L1-Cache bus0 Miss-Access Counter register
      L1_BUS0_ACS_MISS_CNT            : aliased HAL.UInt32;
      --  L1-Cache bus0 Conflict-Access Counter register
      L1_BUS0_ACS_CONFLICT_CNT        : aliased HAL.UInt32;
      --  L1-Cache bus0 Next-Level-Access Counter register
      L1_BUS0_ACS_NXTLVL_CNT          : aliased HAL.UInt32;
      --  L1-Cache bus1 Hit-Access Counter register
      L1_BUS1_ACS_HIT_CNT             : aliased HAL.UInt32;
      --  L1-Cache bus1 Miss-Access Counter register
      L1_BUS1_ACS_MISS_CNT            : aliased HAL.UInt32;
      --  L1-Cache bus1 Conflict-Access Counter register
      L1_BUS1_ACS_CONFLICT_CNT        : aliased HAL.UInt32;
      --  L1-Cache bus1 Next-Level-Access Counter register
      L1_BUS1_ACS_NXTLVL_CNT          : aliased HAL.UInt32;
      --  L1-DCache bus2 Hit-Access Counter register
      L1_DBUS2_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-DCache bus2 Miss-Access Counter register
      L1_DBUS2_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-DCache bus2 Conflict-Access Counter register
      L1_DBUS2_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-DCache bus2 Next-Level-Access Counter register
      L1_DBUS2_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-DCache bus3 Hit-Access Counter register
      L1_DBUS3_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L1-DCache bus3 Miss-Access Counter register
      L1_DBUS3_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L1-DCache bus3 Conflict-Access Counter register
      L1_DBUS3_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L1-DCache bus3 Next-Level-Access Counter register
      L1_DBUS3_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L1-ICache0 Access Fail ID/attribution information register
      L1_ICACHE0_ACS_FAIL_ID_ATTR     : aliased L1_ICACHE0_ACS_FAIL_ID_ATTR_Register;
      --  L1-ICache0 Access Fail Address information register
      L1_ICACHE0_ACS_FAIL_ADDR        : aliased HAL.UInt32;
      --  L1-ICache0 Access Fail ID/attribution information register
      L1_ICACHE1_ACS_FAIL_ID_ATTR     : aliased L1_ICACHE1_ACS_FAIL_ID_ATTR_Register;
      --  L1-ICache0 Access Fail Address information register
      L1_ICACHE1_ACS_FAIL_ADDR        : aliased HAL.UInt32;
      --  L1-ICache0 Access Fail ID/attribution information register
      L1_ICACHE2_ACS_FAIL_ID_ATTR     : aliased L1_ICACHE2_ACS_FAIL_ID_ATTR_Register;
      --  L1-ICache0 Access Fail Address information register
      L1_ICACHE2_ACS_FAIL_ADDR        : aliased HAL.UInt32;
      --  L1-ICache0 Access Fail ID/attribution information register
      L1_ICACHE3_ACS_FAIL_ID_ATTR     : aliased L1_ICACHE3_ACS_FAIL_ID_ATTR_Register;
      --  L1-ICache0 Access Fail Address information register
      L1_ICACHE3_ACS_FAIL_ADDR        : aliased HAL.UInt32;
      --  L1-Cache Access Fail ID/attribution information register
      L1_CACHE_ACS_FAIL_ID_ATTR       : aliased L1_CACHE_ACS_FAIL_ID_ATTR_Register;
      --  L1-Cache Access Fail Address information register
      L1_DCACHE_ACS_FAIL_ADDR         : aliased HAL.UInt32;
      --  L1-Cache Access Fail Interrupt enable register
      L1_CACHE_SYNC_PRELOAD_INT_ENA   : aliased L1_CACHE_SYNC_PRELOAD_INT_ENA_Register;
      --  Sync Preload operation Interrupt clear register
      L1_CACHE_SYNC_PRELOAD_INT_CLR   : aliased L1_CACHE_SYNC_PRELOAD_INT_CLR_Register;
      --  Sync Preload operation Interrupt raw register
      L1_CACHE_SYNC_PRELOAD_INT_RAW   : aliased L1_CACHE_SYNC_PRELOAD_INT_RAW_Register;
      --  L1-Cache Access Fail Interrupt status register
      L1_CACHE_SYNC_PRELOAD_INT_ST    : aliased L1_CACHE_SYNC_PRELOAD_INT_ST_Register;
      --  Cache Sync/Preload Operation exception register
      L1_CACHE_SYNC_PRELOAD_EXCEPTION : aliased L1_CACHE_SYNC_PRELOAD_EXCEPTION_Register;
      --  Cache Sync Reset control register
      L1_CACHE_SYNC_RST_CTRL          : aliased L1_CACHE_SYNC_RST_CTRL_Register;
      --  Cache Preload Reset control register
      L1_CACHE_PRELOAD_RST_CTRL       : aliased L1_CACHE_PRELOAD_RST_CTRL_Register;
      --  Cache Autoload buffer clear control register
      L1_CACHE_AUTOLOAD_BUF_CLR_CTRL  : aliased L1_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register;
      --  Unallocate request buffer clear registers
      L1_UNALLOCATE_BUFFER_CLEAR      : aliased L1_UNALLOCATE_BUFFER_CLEAR_Register;
      --  Cache Tag and Data memory Object control register
      L1_CACHE_OBJECT_CTRL            : aliased L1_CACHE_OBJECT_CTRL_Register;
      --  Cache Tag and Data memory way register
      L1_CACHE_WAY_OBJECT             : aliased L1_CACHE_WAY_OBJECT_Register;
      --  Cache Vaddr register
      L1_CACHE_VADDR                  : aliased HAL.UInt32;
      --  Cache Tag/data memory content register
      L1_CACHE_DEBUG_BUS              : aliased HAL.UInt32;
      --  USED TO SPLIT L1 CACHE AND L2 CACHE
      LEVEL_SPLIT0                    : aliased HAL.UInt32;
      --  L2 Cache(L2-Cache) control register
      L2_CACHE_CTRL                   : aliased L2_CACHE_CTRL_Register;
      --  Bypass Cache configure register
      L2_BYPASS_CACHE_CONF            : aliased L2_BYPASS_CACHE_CONF_Register;
      --  L2 Cache CacheSize mode configure register
      L2_CACHE_CACHESIZE_CONF         : aliased L2_CACHE_CACHESIZE_CONF_Register;
      --  L2 Cache BlockSize mode configure register
      L2_CACHE_BLOCKSIZE_CONF         : aliased L2_CACHE_BLOCKSIZE_CONF_Register;
      --  Cache wrap around control register
      L2_CACHE_WRAP_AROUND_CTRL       : aliased L2_CACHE_WRAP_AROUND_CTRL_Register;
      --  Cache tag memory power control register
      L2_CACHE_TAG_MEM_POWER_CTRL     : aliased L2_CACHE_TAG_MEM_POWER_CTRL_Register;
      --  Cache data memory power control register
      L2_CACHE_DATA_MEM_POWER_CTRL    : aliased L2_CACHE_DATA_MEM_POWER_CTRL_Register;
      --  Cache Freeze control register
      L2_CACHE_FREEZE_CTRL            : aliased L2_CACHE_FREEZE_CTRL_Register;
      --  Cache data memory access configure register
      L2_CACHE_DATA_MEM_ACS_CONF      : aliased L2_CACHE_DATA_MEM_ACS_CONF_Register;
      --  Cache tag memory access configure register
      L2_CACHE_TAG_MEM_ACS_CONF       : aliased L2_CACHE_TAG_MEM_ACS_CONF_Register;
      --  L2 Cache prelock configure register
      L2_CACHE_PRELOCK_CONF           : aliased L2_CACHE_PRELOCK_CONF_Register;
      --  L2 Cache prelock section0 address configure register
      L2_CACHE_PRELOCK_SCT0_ADDR      : aliased HAL.UInt32;
      --  L2 Cache prelock section1 address configure register
      L2_CACHE_PRELOCK_SCT1_ADDR      : aliased HAL.UInt32;
      --  L2 Cache prelock section size configure register
      L2_CACHE_PRELOCK_SCT_SIZE       : aliased L2_CACHE_PRELOCK_SCT_SIZE_Register;
      --  L2 Cache preload-operation control register
      L2_CACHE_PRELOAD_CTRL           : aliased L2_CACHE_PRELOAD_CTRL_Register;
      --  L2 Cache preload address configure register
      L2_CACHE_PRELOAD_ADDR           : aliased HAL.UInt32;
      --  L2 Cache preload size configure register
      L2_CACHE_PRELOAD_SIZE           : aliased L2_CACHE_PRELOAD_SIZE_Register;
      --  L2 Cache autoload-operation control register
      L2_CACHE_AUTOLOAD_CTRL          : aliased L2_CACHE_AUTOLOAD_CTRL_Register;
      --  L2 Cache autoload section 0 address configure register
      L2_CACHE_AUTOLOAD_SCT0_ADDR     : aliased HAL.UInt32;
      --  L2 Cache autoload section 0 size configure register
      L2_CACHE_AUTOLOAD_SCT0_SIZE     : aliased L2_CACHE_AUTOLOAD_SCT0_SIZE_Register;
      --  L2 Cache autoload section 1 address configure register
      L2_CACHE_AUTOLOAD_SCT1_ADDR     : aliased HAL.UInt32;
      --  L2 Cache autoload section 1 size configure register
      L2_CACHE_AUTOLOAD_SCT1_SIZE     : aliased L2_CACHE_AUTOLOAD_SCT1_SIZE_Register;
      --  L2 Cache autoload section 2 address configure register
      L2_CACHE_AUTOLOAD_SCT2_ADDR     : aliased HAL.UInt32;
      --  L2 Cache autoload section 2 size configure register
      L2_CACHE_AUTOLOAD_SCT2_SIZE     : aliased L2_CACHE_AUTOLOAD_SCT2_SIZE_Register;
      --  L2 Cache autoload section 3 address configure register
      L2_CACHE_AUTOLOAD_SCT3_ADDR     : aliased HAL.UInt32;
      --  L2 Cache autoload section 3 size configure register
      L2_CACHE_AUTOLOAD_SCT3_SIZE     : aliased L2_CACHE_AUTOLOAD_SCT3_SIZE_Register;
      --  Cache Access Counter Interrupt enable register
      L2_CACHE_ACS_CNT_INT_ENA        : aliased L2_CACHE_ACS_CNT_INT_ENA_Register;
      --  Cache Access Counter Interrupt clear register
      L2_CACHE_ACS_CNT_INT_CLR        : aliased L2_CACHE_ACS_CNT_INT_CLR_Register;
      --  Cache Access Counter Interrupt raw register
      L2_CACHE_ACS_CNT_INT_RAW        : aliased L2_CACHE_ACS_CNT_INT_RAW_Register;
      --  Cache Access Counter Interrupt status register
      L2_CACHE_ACS_CNT_INT_ST         : aliased L2_CACHE_ACS_CNT_INT_ST_Register;
      --  Cache Access Fail Interrupt enable register
      L2_CACHE_ACS_FAIL_INT_ENA       : aliased L2_CACHE_ACS_FAIL_INT_ENA_Register;
      --  L1-Cache Access Fail Interrupt clear register
      L2_CACHE_ACS_FAIL_INT_CLR       : aliased L2_CACHE_ACS_FAIL_INT_CLR_Register;
      --  Cache Access Fail Interrupt raw register
      L2_CACHE_ACS_FAIL_INT_RAW       : aliased L2_CACHE_ACS_FAIL_INT_RAW_Register;
      --  Cache Access Fail Interrupt status register
      L2_CACHE_ACS_FAIL_INT_ST        : aliased L2_CACHE_ACS_FAIL_INT_ST_Register;
      --  Cache Access Counter enable and clear register
      L2_CACHE_ACS_CNT_CTRL           : aliased L2_CACHE_ACS_CNT_CTRL_Register;
      --  L2-Cache bus0 Hit-Access Counter register
      L2_IBUS0_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus0 Miss-Access Counter register
      L2_IBUS0_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus0 Conflict-Access Counter register
      L2_IBUS0_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus0 Next-Level-Access Counter register
      L2_IBUS0_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus1 Hit-Access Counter register
      L2_IBUS1_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus1 Miss-Access Counter register
      L2_IBUS1_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus1 Conflict-Access Counter register
      L2_IBUS1_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus1 Next-Level-Access Counter register
      L2_IBUS1_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus2 Hit-Access Counter register
      L2_IBUS2_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus2 Miss-Access Counter register
      L2_IBUS2_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus2 Conflict-Access Counter register
      L2_IBUS2_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus2 Next-Level-Access Counter register
      L2_IBUS2_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus3 Hit-Access Counter register
      L2_IBUS3_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus3 Miss-Access Counter register
      L2_IBUS3_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus3 Conflict-Access Counter register
      L2_IBUS3_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus3 Next-Level-Access Counter register
      L2_IBUS3_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus0 Hit-Access Counter register
      L2_DBUS0_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus0 Miss-Access Counter register
      L2_DBUS0_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus0 Conflict-Access Counter register
      L2_DBUS0_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus0 Next-Level-Access Counter register
      L2_DBUS0_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus1 Hit-Access Counter register
      L2_DBUS1_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus1 Miss-Access Counter register
      L2_DBUS1_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus1 Conflict-Access Counter register
      L2_DBUS1_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus1 Next-Level-Access Counter register
      L2_DBUS1_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus2 Hit-Access Counter register
      L2_DBUS2_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus2 Miss-Access Counter register
      L2_DBUS2_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus2 Conflict-Access Counter register
      L2_DBUS2_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus2 Next-Level-Access Counter register
      L2_DBUS2_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache bus3 Hit-Access Counter register
      L2_DBUS3_ACS_HIT_CNT            : aliased HAL.UInt32;
      --  L2-Cache bus3 Miss-Access Counter register
      L2_DBUS3_ACS_MISS_CNT           : aliased HAL.UInt32;
      --  L2-Cache bus3 Conflict-Access Counter register
      L2_DBUS3_ACS_CONFLICT_CNT       : aliased HAL.UInt32;
      --  L2-Cache bus3 Next-Level-Access Counter register
      L2_DBUS3_ACS_NXTLVL_CNT         : aliased HAL.UInt32;
      --  L2-Cache Access Fail ID/attribution information register
      L2_CACHE_ACS_FAIL_ID_ATTR       : aliased L2_CACHE_ACS_FAIL_ID_ATTR_Register;
      --  L2-Cache Access Fail Address information register
      L2_CACHE_ACS_FAIL_ADDR          : aliased HAL.UInt32;
      --  L1-Cache Access Fail Interrupt enable register
      L2_CACHE_SYNC_PRELOAD_INT_ENA   : aliased L2_CACHE_SYNC_PRELOAD_INT_ENA_Register;
      --  Sync Preload operation Interrupt clear register
      L2_CACHE_SYNC_PRELOAD_INT_CLR   : aliased L2_CACHE_SYNC_PRELOAD_INT_CLR_Register;
      --  Sync Preload operation Interrupt raw register
      L2_CACHE_SYNC_PRELOAD_INT_RAW   : aliased L2_CACHE_SYNC_PRELOAD_INT_RAW_Register;
      --  L1-Cache Access Fail Interrupt status register
      L2_CACHE_SYNC_PRELOAD_INT_ST    : aliased L2_CACHE_SYNC_PRELOAD_INT_ST_Register;
      --  Cache Sync/Preload Operation exception register
      L2_CACHE_SYNC_PRELOAD_EXCEPTION : aliased L2_CACHE_SYNC_PRELOAD_EXCEPTION_Register;
      --  Cache Sync Reset control register
      L2_CACHE_SYNC_RST_CTRL          : aliased L2_CACHE_SYNC_RST_CTRL_Register;
      --  Cache Preload Reset control register
      L2_CACHE_PRELOAD_RST_CTRL       : aliased L2_CACHE_PRELOAD_RST_CTRL_Register;
      --  Cache Autoload buffer clear control register
      L2_CACHE_AUTOLOAD_BUF_CLR_CTRL  : aliased L2_CACHE_AUTOLOAD_BUF_CLR_CTRL_Register;
      --  Unallocate request buffer clear registers
      L2_UNALLOCATE_BUFFER_CLEAR      : aliased L2_UNALLOCATE_BUFFER_CLEAR_Register;
      --  L1 Cache access Attribute propagation control register
      L2_CACHE_ACCESS_ATTR_CTRL       : aliased L2_CACHE_ACCESS_ATTR_CTRL_Register;
      --  Cache Tag and Data memory Object control register
      L2_CACHE_OBJECT_CTRL            : aliased L2_CACHE_OBJECT_CTRL_Register;
      --  Cache Tag and Data memory way register
      L2_CACHE_WAY_OBJECT             : aliased L2_CACHE_WAY_OBJECT_Register;
      --  Cache Vaddr register
      L2_CACHE_VADDR                  : aliased HAL.UInt32;
      --  Cache Tag/data memory content register
      L2_CACHE_DEBUG_BUS              : aliased HAL.UInt32;
      --  USED TO SPLIT L1 CACHE AND L2 CACHE
      LEVEL_SPLIT1                    : aliased HAL.UInt32;
      --  Clock gate control register
      CLOCK_GATE                      : aliased CLOCK_GATE_Register;
      --  Cache redundancy signal 0 register
      REDUNDANCY_SIG0                 : aliased HAL.UInt32;
      --  Cache redundancy signal 1 register
      REDUNDANCY_SIG1                 : aliased HAL.UInt32;
      --  Cache redundancy signal 2 register
      REDUNDANCY_SIG2                 : aliased HAL.UInt32;
      --  Cache redundancy signal 3 register
      REDUNDANCY_SIG3                 : aliased HAL.UInt32;
      --  Cache redundancy signal 0 register
      REDUNDANCY_SIG4                 : aliased REDUNDANCY_SIG4_Register;
      --  Version control register
      DATE                            : aliased DATE_Register;
   end record
     with Volatile;

   for EXTMEM_Peripheral use record
      L1_ICACHE_CTRL                  at 16#0# range 0 .. 31;
      L1_CACHE_CTRL                   at 16#4# range 0 .. 31;
      L1_BYPASS_CACHE_CONF            at 16#8# range 0 .. 31;
      L1_CACHE_ATOMIC_CONF            at 16#C# range 0 .. 31;
      L1_ICACHE_CACHESIZE_CONF        at 16#10# range 0 .. 31;
      L1_ICACHE_BLOCKSIZE_CONF        at 16#14# range 0 .. 31;
      L1_CACHE_CACHESIZE_CONF         at 16#18# range 0 .. 31;
      L1_CACHE_BLOCKSIZE_CONF         at 16#1C# range 0 .. 31;
      L1_CACHE_WRAP_AROUND_CTRL       at 16#20# range 0 .. 31;
      L1_CACHE_TAG_MEM_POWER_CTRL     at 16#24# range 0 .. 31;
      L1_CACHE_DATA_MEM_POWER_CTRL    at 16#28# range 0 .. 31;
      L1_CACHE_FREEZE_CTRL            at 16#2C# range 0 .. 31;
      L1_CACHE_DATA_MEM_ACS_CONF      at 16#30# range 0 .. 31;
      L1_CACHE_TAG_MEM_ACS_CONF       at 16#34# range 0 .. 31;
      L1_ICACHE0_PRELOCK_CONF         at 16#38# range 0 .. 31;
      L1_ICACHE0_PRELOCK_SCT0_ADDR    at 16#3C# range 0 .. 31;
      L1_ICACHE0_PRELOCK_SCT1_ADDR    at 16#40# range 0 .. 31;
      L1_ICACHE0_PRELOCK_SCT_SIZE     at 16#44# range 0 .. 31;
      L1_ICACHE1_PRELOCK_CONF         at 16#48# range 0 .. 31;
      L1_ICACHE1_PRELOCK_SCT0_ADDR    at 16#4C# range 0 .. 31;
      L1_ICACHE1_PRELOCK_SCT1_ADDR    at 16#50# range 0 .. 31;
      L1_ICACHE1_PRELOCK_SCT_SIZE     at 16#54# range 0 .. 31;
      L1_ICACHE2_PRELOCK_CONF         at 16#58# range 0 .. 31;
      L1_ICACHE2_PRELOCK_SCT0_ADDR    at 16#5C# range 0 .. 31;
      L1_ICACHE2_PRELOCK_SCT1_ADDR    at 16#60# range 0 .. 31;
      L1_ICACHE2_PRELOCK_SCT_SIZE     at 16#64# range 0 .. 31;
      L1_ICACHE3_PRELOCK_CONF         at 16#68# range 0 .. 31;
      L1_ICACHE3_PRELOCK_SCT0_ADDR    at 16#6C# range 0 .. 31;
      L1_ICACHE3_PRELOCK_SCT1_ADDR    at 16#70# range 0 .. 31;
      L1_ICACHE3_PRELOCK_SCT_SIZE     at 16#74# range 0 .. 31;
      L1_CACHE_PRELOCK_CONF           at 16#78# range 0 .. 31;
      L1_CACHE_PRELOCK_SCT0_ADDR      at 16#7C# range 0 .. 31;
      L1_DCACHE_PRELOCK_SCT1_ADDR     at 16#80# range 0 .. 31;
      L1_DCACHE_PRELOCK_SCT_SIZE      at 16#84# range 0 .. 31;
      CACHE_LOCK_CTRL                 at 16#88# range 0 .. 31;
      CACHE_LOCK_MAP                  at 16#8C# range 0 .. 31;
      CACHE_LOCK_ADDR                 at 16#90# range 0 .. 31;
      CACHE_LOCK_SIZE                 at 16#94# range 0 .. 31;
      CACHE_SYNC_CTRL                 at 16#98# range 0 .. 31;
      CACHE_SYNC_MAP                  at 16#9C# range 0 .. 31;
      CACHE_SYNC_ADDR                 at 16#A0# range 0 .. 31;
      CACHE_SYNC_SIZE                 at 16#A4# range 0 .. 31;
      L1_ICACHE0_PRELOAD_CTRL         at 16#A8# range 0 .. 31;
      L1_ICACHE0_PRELOAD_ADDR         at 16#AC# range 0 .. 31;
      L1_ICACHE0_PRELOAD_SIZE         at 16#B0# range 0 .. 31;
      L1_ICACHE1_PRELOAD_CTRL         at 16#B4# range 0 .. 31;
      L1_ICACHE1_PRELOAD_ADDR         at 16#B8# range 0 .. 31;
      L1_ICACHE1_PRELOAD_SIZE         at 16#BC# range 0 .. 31;
      L1_ICACHE2_PRELOAD_CTRL         at 16#C0# range 0 .. 31;
      L1_ICACHE2_PRELOAD_ADDR         at 16#C4# range 0 .. 31;
      L1_ICACHE2_PRELOAD_SIZE         at 16#C8# range 0 .. 31;
      L1_ICACHE3_PRELOAD_CTRL         at 16#CC# range 0 .. 31;
      L1_ICACHE3_PRELOAD_ADDR         at 16#D0# range 0 .. 31;
      L1_ICACHE3_PRELOAD_SIZE         at 16#D4# range 0 .. 31;
      L1_CACHE_PRELOAD_CTRL           at 16#D8# range 0 .. 31;
      L1_DCACHE_PRELOAD_ADDR          at 16#DC# range 0 .. 31;
      L1_DCACHE_PRELOAD_SIZE          at 16#E0# range 0 .. 31;
      L1_ICACHE0_AUTOLOAD_CTRL        at 16#E4# range 0 .. 31;
      L1_ICACHE0_AUTOLOAD_SCT0_ADDR   at 16#E8# range 0 .. 31;
      L1_ICACHE0_AUTOLOAD_SCT0_SIZE   at 16#EC# range 0 .. 31;
      L1_ICACHE0_AUTOLOAD_SCT1_ADDR   at 16#F0# range 0 .. 31;
      L1_ICACHE0_AUTOLOAD_SCT1_SIZE   at 16#F4# range 0 .. 31;
      L1_ICACHE1_AUTOLOAD_CTRL        at 16#F8# range 0 .. 31;
      L1_ICACHE1_AUTOLOAD_SCT0_ADDR   at 16#FC# range 0 .. 31;
      L1_ICACHE1_AUTOLOAD_SCT0_SIZE   at 16#100# range 0 .. 31;
      L1_ICACHE1_AUTOLOAD_SCT1_ADDR   at 16#104# range 0 .. 31;
      L1_ICACHE1_AUTOLOAD_SCT1_SIZE   at 16#108# range 0 .. 31;
      L1_ICACHE2_AUTOLOAD_CTRL        at 16#10C# range 0 .. 31;
      L1_ICACHE2_AUTOLOAD_SCT0_ADDR   at 16#110# range 0 .. 31;
      L1_ICACHE2_AUTOLOAD_SCT0_SIZE   at 16#114# range 0 .. 31;
      L1_ICACHE2_AUTOLOAD_SCT1_ADDR   at 16#118# range 0 .. 31;
      L1_ICACHE2_AUTOLOAD_SCT1_SIZE   at 16#11C# range 0 .. 31;
      L1_ICACHE3_AUTOLOAD_CTRL        at 16#120# range 0 .. 31;
      L1_ICACHE3_AUTOLOAD_SCT0_ADDR   at 16#124# range 0 .. 31;
      L1_ICACHE3_AUTOLOAD_SCT0_SIZE   at 16#128# range 0 .. 31;
      L1_ICACHE3_AUTOLOAD_SCT1_ADDR   at 16#12C# range 0 .. 31;
      L1_ICACHE3_AUTOLOAD_SCT1_SIZE   at 16#130# range 0 .. 31;
      L1_CACHE_AUTOLOAD_CTRL          at 16#134# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT0_ADDR     at 16#138# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT0_SIZE     at 16#13C# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT1_ADDR     at 16#140# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT1_SIZE     at 16#144# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT2_ADDR     at 16#148# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT2_SIZE     at 16#14C# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT3_ADDR     at 16#150# range 0 .. 31;
      L1_CACHE_AUTOLOAD_SCT3_SIZE     at 16#154# range 0 .. 31;
      L1_CACHE_ACS_CNT_INT_ENA        at 16#158# range 0 .. 31;
      L1_CACHE_ACS_CNT_INT_CLR        at 16#15C# range 0 .. 31;
      L1_CACHE_ACS_CNT_INT_RAW        at 16#160# range 0 .. 31;
      L1_CACHE_ACS_CNT_INT_ST         at 16#164# range 0 .. 31;
      L1_CACHE_ACS_FAIL_INT_ENA       at 16#168# range 0 .. 31;
      L1_CACHE_ACS_FAIL_INT_CLR       at 16#16C# range 0 .. 31;
      L1_CACHE_ACS_FAIL_INT_RAW       at 16#170# range 0 .. 31;
      L1_CACHE_ACS_FAIL_INT_ST        at 16#174# range 0 .. 31;
      L1_CACHE_ACS_CNT_CTRL           at 16#178# range 0 .. 31;
      L1_IBUS0_ACS_HIT_CNT            at 16#17C# range 0 .. 31;
      L1_IBUS0_ACS_MISS_CNT           at 16#180# range 0 .. 31;
      L1_IBUS0_ACS_CONFLICT_CNT       at 16#184# range 0 .. 31;
      L1_IBUS0_ACS_NXTLVL_CNT         at 16#188# range 0 .. 31;
      L1_IBUS1_ACS_HIT_CNT            at 16#18C# range 0 .. 31;
      L1_IBUS1_ACS_MISS_CNT           at 16#190# range 0 .. 31;
      L1_IBUS1_ACS_CONFLICT_CNT       at 16#194# range 0 .. 31;
      L1_IBUS1_ACS_NXTLVL_CNT         at 16#198# range 0 .. 31;
      L1_IBUS2_ACS_HIT_CNT            at 16#19C# range 0 .. 31;
      L1_IBUS2_ACS_MISS_CNT           at 16#1A0# range 0 .. 31;
      L1_IBUS2_ACS_CONFLICT_CNT       at 16#1A4# range 0 .. 31;
      L1_IBUS2_ACS_NXTLVL_CNT         at 16#1A8# range 0 .. 31;
      L1_IBUS3_ACS_HIT_CNT            at 16#1AC# range 0 .. 31;
      L1_IBUS3_ACS_MISS_CNT           at 16#1B0# range 0 .. 31;
      L1_IBUS3_ACS_CONFLICT_CNT       at 16#1B4# range 0 .. 31;
      L1_IBUS3_ACS_NXTLVL_CNT         at 16#1B8# range 0 .. 31;
      L1_BUS0_ACS_HIT_CNT             at 16#1BC# range 0 .. 31;
      L1_BUS0_ACS_MISS_CNT            at 16#1C0# range 0 .. 31;
      L1_BUS0_ACS_CONFLICT_CNT        at 16#1C4# range 0 .. 31;
      L1_BUS0_ACS_NXTLVL_CNT          at 16#1C8# range 0 .. 31;
      L1_BUS1_ACS_HIT_CNT             at 16#1CC# range 0 .. 31;
      L1_BUS1_ACS_MISS_CNT            at 16#1D0# range 0 .. 31;
      L1_BUS1_ACS_CONFLICT_CNT        at 16#1D4# range 0 .. 31;
      L1_BUS1_ACS_NXTLVL_CNT          at 16#1D8# range 0 .. 31;
      L1_DBUS2_ACS_HIT_CNT            at 16#1DC# range 0 .. 31;
      L1_DBUS2_ACS_MISS_CNT           at 16#1E0# range 0 .. 31;
      L1_DBUS2_ACS_CONFLICT_CNT       at 16#1E4# range 0 .. 31;
      L1_DBUS2_ACS_NXTLVL_CNT         at 16#1E8# range 0 .. 31;
      L1_DBUS3_ACS_HIT_CNT            at 16#1EC# range 0 .. 31;
      L1_DBUS3_ACS_MISS_CNT           at 16#1F0# range 0 .. 31;
      L1_DBUS3_ACS_CONFLICT_CNT       at 16#1F4# range 0 .. 31;
      L1_DBUS3_ACS_NXTLVL_CNT         at 16#1F8# range 0 .. 31;
      L1_ICACHE0_ACS_FAIL_ID_ATTR     at 16#1FC# range 0 .. 31;
      L1_ICACHE0_ACS_FAIL_ADDR        at 16#200# range 0 .. 31;
      L1_ICACHE1_ACS_FAIL_ID_ATTR     at 16#204# range 0 .. 31;
      L1_ICACHE1_ACS_FAIL_ADDR        at 16#208# range 0 .. 31;
      L1_ICACHE2_ACS_FAIL_ID_ATTR     at 16#20C# range 0 .. 31;
      L1_ICACHE2_ACS_FAIL_ADDR        at 16#210# range 0 .. 31;
      L1_ICACHE3_ACS_FAIL_ID_ATTR     at 16#214# range 0 .. 31;
      L1_ICACHE3_ACS_FAIL_ADDR        at 16#218# range 0 .. 31;
      L1_CACHE_ACS_FAIL_ID_ATTR       at 16#21C# range 0 .. 31;
      L1_DCACHE_ACS_FAIL_ADDR         at 16#220# range 0 .. 31;
      L1_CACHE_SYNC_PRELOAD_INT_ENA   at 16#224# range 0 .. 31;
      L1_CACHE_SYNC_PRELOAD_INT_CLR   at 16#228# range 0 .. 31;
      L1_CACHE_SYNC_PRELOAD_INT_RAW   at 16#22C# range 0 .. 31;
      L1_CACHE_SYNC_PRELOAD_INT_ST    at 16#230# range 0 .. 31;
      L1_CACHE_SYNC_PRELOAD_EXCEPTION at 16#234# range 0 .. 31;
      L1_CACHE_SYNC_RST_CTRL          at 16#238# range 0 .. 31;
      L1_CACHE_PRELOAD_RST_CTRL       at 16#23C# range 0 .. 31;
      L1_CACHE_AUTOLOAD_BUF_CLR_CTRL  at 16#240# range 0 .. 31;
      L1_UNALLOCATE_BUFFER_CLEAR      at 16#244# range 0 .. 31;
      L1_CACHE_OBJECT_CTRL            at 16#248# range 0 .. 31;
      L1_CACHE_WAY_OBJECT             at 16#24C# range 0 .. 31;
      L1_CACHE_VADDR                  at 16#250# range 0 .. 31;
      L1_CACHE_DEBUG_BUS              at 16#254# range 0 .. 31;
      LEVEL_SPLIT0                    at 16#258# range 0 .. 31;
      L2_CACHE_CTRL                   at 16#25C# range 0 .. 31;
      L2_BYPASS_CACHE_CONF            at 16#260# range 0 .. 31;
      L2_CACHE_CACHESIZE_CONF         at 16#264# range 0 .. 31;
      L2_CACHE_BLOCKSIZE_CONF         at 16#268# range 0 .. 31;
      L2_CACHE_WRAP_AROUND_CTRL       at 16#26C# range 0 .. 31;
      L2_CACHE_TAG_MEM_POWER_CTRL     at 16#270# range 0 .. 31;
      L2_CACHE_DATA_MEM_POWER_CTRL    at 16#274# range 0 .. 31;
      L2_CACHE_FREEZE_CTRL            at 16#278# range 0 .. 31;
      L2_CACHE_DATA_MEM_ACS_CONF      at 16#27C# range 0 .. 31;
      L2_CACHE_TAG_MEM_ACS_CONF       at 16#280# range 0 .. 31;
      L2_CACHE_PRELOCK_CONF           at 16#284# range 0 .. 31;
      L2_CACHE_PRELOCK_SCT0_ADDR      at 16#288# range 0 .. 31;
      L2_CACHE_PRELOCK_SCT1_ADDR      at 16#28C# range 0 .. 31;
      L2_CACHE_PRELOCK_SCT_SIZE       at 16#290# range 0 .. 31;
      L2_CACHE_PRELOAD_CTRL           at 16#294# range 0 .. 31;
      L2_CACHE_PRELOAD_ADDR           at 16#298# range 0 .. 31;
      L2_CACHE_PRELOAD_SIZE           at 16#29C# range 0 .. 31;
      L2_CACHE_AUTOLOAD_CTRL          at 16#2A0# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT0_ADDR     at 16#2A4# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT0_SIZE     at 16#2A8# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT1_ADDR     at 16#2AC# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT1_SIZE     at 16#2B0# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT2_ADDR     at 16#2B4# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT2_SIZE     at 16#2B8# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT3_ADDR     at 16#2BC# range 0 .. 31;
      L2_CACHE_AUTOLOAD_SCT3_SIZE     at 16#2C0# range 0 .. 31;
      L2_CACHE_ACS_CNT_INT_ENA        at 16#2C4# range 0 .. 31;
      L2_CACHE_ACS_CNT_INT_CLR        at 16#2C8# range 0 .. 31;
      L2_CACHE_ACS_CNT_INT_RAW        at 16#2CC# range 0 .. 31;
      L2_CACHE_ACS_CNT_INT_ST         at 16#2D0# range 0 .. 31;
      L2_CACHE_ACS_FAIL_INT_ENA       at 16#2D4# range 0 .. 31;
      L2_CACHE_ACS_FAIL_INT_CLR       at 16#2D8# range 0 .. 31;
      L2_CACHE_ACS_FAIL_INT_RAW       at 16#2DC# range 0 .. 31;
      L2_CACHE_ACS_FAIL_INT_ST        at 16#2E0# range 0 .. 31;
      L2_CACHE_ACS_CNT_CTRL           at 16#2E4# range 0 .. 31;
      L2_IBUS0_ACS_HIT_CNT            at 16#2E8# range 0 .. 31;
      L2_IBUS0_ACS_MISS_CNT           at 16#2EC# range 0 .. 31;
      L2_IBUS0_ACS_CONFLICT_CNT       at 16#2F0# range 0 .. 31;
      L2_IBUS0_ACS_NXTLVL_CNT         at 16#2F4# range 0 .. 31;
      L2_IBUS1_ACS_HIT_CNT            at 16#2F8# range 0 .. 31;
      L2_IBUS1_ACS_MISS_CNT           at 16#2FC# range 0 .. 31;
      L2_IBUS1_ACS_CONFLICT_CNT       at 16#300# range 0 .. 31;
      L2_IBUS1_ACS_NXTLVL_CNT         at 16#304# range 0 .. 31;
      L2_IBUS2_ACS_HIT_CNT            at 16#308# range 0 .. 31;
      L2_IBUS2_ACS_MISS_CNT           at 16#30C# range 0 .. 31;
      L2_IBUS2_ACS_CONFLICT_CNT       at 16#310# range 0 .. 31;
      L2_IBUS2_ACS_NXTLVL_CNT         at 16#314# range 0 .. 31;
      L2_IBUS3_ACS_HIT_CNT            at 16#318# range 0 .. 31;
      L2_IBUS3_ACS_MISS_CNT           at 16#31C# range 0 .. 31;
      L2_IBUS3_ACS_CONFLICT_CNT       at 16#320# range 0 .. 31;
      L2_IBUS3_ACS_NXTLVL_CNT         at 16#324# range 0 .. 31;
      L2_DBUS0_ACS_HIT_CNT            at 16#328# range 0 .. 31;
      L2_DBUS0_ACS_MISS_CNT           at 16#32C# range 0 .. 31;
      L2_DBUS0_ACS_CONFLICT_CNT       at 16#330# range 0 .. 31;
      L2_DBUS0_ACS_NXTLVL_CNT         at 16#334# range 0 .. 31;
      L2_DBUS1_ACS_HIT_CNT            at 16#338# range 0 .. 31;
      L2_DBUS1_ACS_MISS_CNT           at 16#33C# range 0 .. 31;
      L2_DBUS1_ACS_CONFLICT_CNT       at 16#340# range 0 .. 31;
      L2_DBUS1_ACS_NXTLVL_CNT         at 16#344# range 0 .. 31;
      L2_DBUS2_ACS_HIT_CNT            at 16#348# range 0 .. 31;
      L2_DBUS2_ACS_MISS_CNT           at 16#34C# range 0 .. 31;
      L2_DBUS2_ACS_CONFLICT_CNT       at 16#350# range 0 .. 31;
      L2_DBUS2_ACS_NXTLVL_CNT         at 16#354# range 0 .. 31;
      L2_DBUS3_ACS_HIT_CNT            at 16#358# range 0 .. 31;
      L2_DBUS3_ACS_MISS_CNT           at 16#35C# range 0 .. 31;
      L2_DBUS3_ACS_CONFLICT_CNT       at 16#360# range 0 .. 31;
      L2_DBUS3_ACS_NXTLVL_CNT         at 16#364# range 0 .. 31;
      L2_CACHE_ACS_FAIL_ID_ATTR       at 16#368# range 0 .. 31;
      L2_CACHE_ACS_FAIL_ADDR          at 16#36C# range 0 .. 31;
      L2_CACHE_SYNC_PRELOAD_INT_ENA   at 16#370# range 0 .. 31;
      L2_CACHE_SYNC_PRELOAD_INT_CLR   at 16#374# range 0 .. 31;
      L2_CACHE_SYNC_PRELOAD_INT_RAW   at 16#378# range 0 .. 31;
      L2_CACHE_SYNC_PRELOAD_INT_ST    at 16#37C# range 0 .. 31;
      L2_CACHE_SYNC_PRELOAD_EXCEPTION at 16#380# range 0 .. 31;
      L2_CACHE_SYNC_RST_CTRL          at 16#384# range 0 .. 31;
      L2_CACHE_PRELOAD_RST_CTRL       at 16#388# range 0 .. 31;
      L2_CACHE_AUTOLOAD_BUF_CLR_CTRL  at 16#38C# range 0 .. 31;
      L2_UNALLOCATE_BUFFER_CLEAR      at 16#390# range 0 .. 31;
      L2_CACHE_ACCESS_ATTR_CTRL       at 16#394# range 0 .. 31;
      L2_CACHE_OBJECT_CTRL            at 16#398# range 0 .. 31;
      L2_CACHE_WAY_OBJECT             at 16#39C# range 0 .. 31;
      L2_CACHE_VADDR                  at 16#3A0# range 0 .. 31;
      L2_CACHE_DEBUG_BUS              at 16#3A4# range 0 .. 31;
      LEVEL_SPLIT1                    at 16#3A8# range 0 .. 31;
      CLOCK_GATE                      at 16#3AC# range 0 .. 31;
      REDUNDANCY_SIG0                 at 16#3B0# range 0 .. 31;
      REDUNDANCY_SIG1                 at 16#3B4# range 0 .. 31;
      REDUNDANCY_SIG2                 at 16#3B8# range 0 .. 31;
      REDUNDANCY_SIG3                 at 16#3BC# range 0 .. 31;
      REDUNDANCY_SIG4                 at 16#3C0# range 0 .. 31;
      DATE                            at 16#3FC# range 0 .. 31;
   end record;

   --  External Memory
   EXTMEM_Periph : aliased EXTMEM_Peripheral
     with Import, Address => EXTMEM_Base;

end ESP32_C6_SVD.EXTMEM;
