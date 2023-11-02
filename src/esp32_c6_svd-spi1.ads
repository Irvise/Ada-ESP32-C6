pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.SPI1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SPI_MEM_CMD_SPI_MEM_MST_ST_Field is HAL.UInt4;
   subtype SPI_MEM_CMD_SPI_MEM_SLV_ST_Field is HAL.UInt4;

   --  SPI1 memory command register
   type SPI_MEM_CMD_Register is record
      --  Read-only. The current status of SPI1 master FSM.
      SPI_MEM_MST_ST     : SPI_MEM_CMD_SPI_MEM_MST_ST_Field := 16#0#;
      --  Read-only. The current status of SPI1 slave FSM: mspi_st. 0: idle
      --  state, 1: preparation state, 2: send command state, 3: send address
      --  state, 4: wait state, 5: read data state, 6:write data state, 7: done
      --  state, 8: read data end state.
      SPI_MEM_SLV_ST     : SPI_MEM_CMD_SPI_MEM_SLV_ST_Field := 16#0#;
      --  unspecified
      Reserved_8_16      : HAL.UInt9 := 16#0#;
      --  In user mode, it is set to indicate that program/erase operation will
      --  be triggered. The bit is combined with spi_mem_usr bit. The bit will
      --  be cleared once the operation done.1: enable 0: disable.
      SPI_MEM_FLASH_PE   : Boolean := False;
      --  User define command enable. An operation will be triggered when the
      --  bit is set. The bit will be cleared once the operation done.1: enable
      --  0: disable.
      SPI_MEM_USR        : Boolean := False;
      --  Drive Flash into high performance mode. The bit will be cleared once
      --  the operation done.1: enable 0: disable.
      SPI_MEM_FLASH_HPM  : Boolean := False;
      --  This bit combined with reg_resandres bit releases Flash from the
      --  power-down state or high performance mode and obtains the devices ID.
      --  The bit will be cleared once the operation done.1: enable 0: disable.
      SPI_MEM_FLASH_RES  : Boolean := False;
      --  Drive Flash into power down. An operation will be triggered when the
      --  bit is set. The bit will be cleared once the operation done.1: enable
      --  0: disable.
      SPI_MEM_FLASH_DP   : Boolean := False;
      --  Chip erase enable. Chip erase operation will be triggered when the
      --  bit is set. The bit will be cleared once the operation done.1: enable
      --  0: disable.
      SPI_MEM_FLASH_CE   : Boolean := False;
      --  Block erase enable(32KB) . Block erase operation will be triggered
      --  when the bit is set. The bit will be cleared once the operation
      --  done.1: enable 0: disable.
      SPI_MEM_FLASH_BE   : Boolean := False;
      --  Sector erase enable(4KB). Sector erase operation will be triggered
      --  when the bit is set. The bit will be cleared once the operation
      --  done.1: enable 0: disable.
      SPI_MEM_FLASH_SE   : Boolean := False;
      --  Page program enable(1 byte ~256 bytes data to be programmed). Page
      --  program operation will be triggered when the bit is set. The bit will
      --  be cleared once the operation done .1: enable 0: disable.
      SPI_MEM_FLASH_PP   : Boolean := False;
      --  Write status register enable. Write status operation will be
      --  triggered when the bit is set. The bit will be cleared once the
      --  operation done.1: enable 0: disable.
      SPI_MEM_FLASH_WRSR : Boolean := False;
      --  Read status register-1. Read status operation will be triggered when
      --  the bit is set. The bit will be cleared once the operation done.1:
      --  enable 0: disable.
      SPI_MEM_FLASH_RDSR : Boolean := False;
      --  Read JEDEC ID . Read ID command will be sent when the bit is set. The
      --  bit will be cleared once the operation done. 1: enable 0: disable.
      SPI_MEM_FLASH_RDID : Boolean := False;
      --  Write flash disable. Write disable command will be sent when the bit
      --  is set. The bit will be cleared once the operation done. 1: enable 0:
      --  disable.
      SPI_MEM_FLASH_WRDI : Boolean := False;
      --  Write flash enable. Write enable command will be sent when the bit is
      --  set. The bit will be cleared once the operation done. 1: enable 0:
      --  disable.
      SPI_MEM_FLASH_WREN : Boolean := False;
      --  Read flash enable. Read flash operation will be triggered when the
      --  bit is set. The bit will be cleared once the operation done. 1:
      --  enable 0: disable.
      SPI_MEM_FLASH_READ : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CMD_Register use record
      SPI_MEM_MST_ST     at 0 range 0 .. 3;
      SPI_MEM_SLV_ST     at 0 range 4 .. 7;
      Reserved_8_16      at 0 range 8 .. 16;
      SPI_MEM_FLASH_PE   at 0 range 17 .. 17;
      SPI_MEM_USR        at 0 range 18 .. 18;
      SPI_MEM_FLASH_HPM  at 0 range 19 .. 19;
      SPI_MEM_FLASH_RES  at 0 range 20 .. 20;
      SPI_MEM_FLASH_DP   at 0 range 21 .. 21;
      SPI_MEM_FLASH_CE   at 0 range 22 .. 22;
      SPI_MEM_FLASH_BE   at 0 range 23 .. 23;
      SPI_MEM_FLASH_SE   at 0 range 24 .. 24;
      SPI_MEM_FLASH_PP   at 0 range 25 .. 25;
      SPI_MEM_FLASH_WRSR at 0 range 26 .. 26;
      SPI_MEM_FLASH_RDSR at 0 range 27 .. 27;
      SPI_MEM_FLASH_RDID at 0 range 28 .. 28;
      SPI_MEM_FLASH_WRDI at 0 range 29 .. 29;
      SPI_MEM_FLASH_WREN at 0 range 30 .. 30;
      SPI_MEM_FLASH_READ at 0 range 31 .. 31;
   end record;

   --  SPI1 control register.
   type SPI_MEM_CTRL_Register is record
      --  unspecified
      Reserved_0_1        : HAL.UInt2 := 16#0#;
      --  In the dummy phase of a MSPI read data transfer when accesses to
      --  flash, the signal level of SPI bus is output by the MSPI controller.
      SPI_MEM_FDUMMY_RIN  : Boolean := True;
      --  In the dummy phase of a MSPI write data transfer when accesses to
      --  flash, the signal level of SPI bus is output by the MSPI controller.
      SPI_MEM_FDUMMY_WOUT : Boolean := True;
      --  Read-only. Apply 8 signals during write-data phase 1:enable 0:
      --  disable
      SPI_MEM_FDOUT_OCT   : Boolean := False;
      --  Read-only. Apply 8 signals during read-data phase 1:enable 0: disable
      SPI_MEM_FDIN_OCT    : Boolean := False;
      --  Read-only. Apply 8 signals during address phase 1:enable 0: disable
      SPI_MEM_FADDR_OCT   : Boolean := False;
      --  unspecified
      Reserved_7_7        : HAL.Bit := 16#0#;
      --  Apply 4 signals during command phase 1:enable 0: disable
      SPI_MEM_FCMD_QUAD   : Boolean := False;
      --  Read-only. Apply 8 signals during command phase 1:enable 0: disable
      SPI_MEM_FCMD_OCT    : Boolean := False;
      --  Read-only. For SPI1, initialize crc32 module before writing encrypted
      --  data to flash. Active low.
      SPI_MEM_FCS_CRC_EN  : Boolean := False;
      --  Read-only. For SPI1, enable crc32 when writing encrypted data to
      --  flash. 1: enable 0:disable
      SPI_MEM_TX_CRC_EN   : Boolean := False;
      --  unspecified
      Reserved_12_12      : HAL.Bit := 16#0#;
      --  This bit enable the bits: spi_mem_fread_qio, spi_mem_fread_dio,
      --  spi_mem_fread_qout and spi_mem_fread_dout. 1: enable 0: disable.
      SPI_MEM_FASTRD_MODE : Boolean := True;
      --  In the read operations, read-data phase apply 2 signals. 1: enable 0:
      --  disable.
      SPI_MEM_FREAD_DUAL  : Boolean := False;
      --  The Device ID is read out to SPI_MEM_RD_STATUS register, this bit
      --  combine with spi_mem_flash_res bit. 1: enable 0: disable.
      SPI_MEM_RESANDRES   : Boolean := True;
      --  unspecified
      Reserved_16_17      : HAL.UInt2 := 16#0#;
      --  The bit is used to set MISO line polarity, 1: high 0, low
      SPI_MEM_Q_POL       : Boolean := True;
      --  The bit is used to set MOSI line polarity, 1: high 0, low
      SPI_MEM_D_POL       : Boolean := True;
      --  In the read operations read-data phase apply 4 signals. 1: enable 0:
      --  disable.
      SPI_MEM_FREAD_QUAD  : Boolean := False;
      --  Write protect signal output when SPI is idle. 1: output high, 0:
      --  output low.
      SPI_MEM_WP          : Boolean := True;
      --  two bytes data will be written to status register when it is set. 1:
      --  enable 0: disable.
      SPI_MEM_WRSR_2B     : Boolean := False;
      --  In the read operations address phase and read-data phase apply 2
      --  signals. 1: enable 0: disable.
      SPI_MEM_FREAD_DIO   : Boolean := False;
      --  In the read operations address phase and read-data phase apply 4
      --  signals. 1: enable 0: disable.
      SPI_MEM_FREAD_QIO   : Boolean := False;
      --  unspecified
      Reserved_25_31      : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL_Register use record
      Reserved_0_1        at 0 range 0 .. 1;
      SPI_MEM_FDUMMY_RIN  at 0 range 2 .. 2;
      SPI_MEM_FDUMMY_WOUT at 0 range 3 .. 3;
      SPI_MEM_FDOUT_OCT   at 0 range 4 .. 4;
      SPI_MEM_FDIN_OCT    at 0 range 5 .. 5;
      SPI_MEM_FADDR_OCT   at 0 range 6 .. 6;
      Reserved_7_7        at 0 range 7 .. 7;
      SPI_MEM_FCMD_QUAD   at 0 range 8 .. 8;
      SPI_MEM_FCMD_OCT    at 0 range 9 .. 9;
      SPI_MEM_FCS_CRC_EN  at 0 range 10 .. 10;
      SPI_MEM_TX_CRC_EN   at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      SPI_MEM_FASTRD_MODE at 0 range 13 .. 13;
      SPI_MEM_FREAD_DUAL  at 0 range 14 .. 14;
      SPI_MEM_RESANDRES   at 0 range 15 .. 15;
      Reserved_16_17      at 0 range 16 .. 17;
      SPI_MEM_Q_POL       at 0 range 18 .. 18;
      SPI_MEM_D_POL       at 0 range 19 .. 19;
      SPI_MEM_FREAD_QUAD  at 0 range 20 .. 20;
      SPI_MEM_WP          at 0 range 21 .. 21;
      SPI_MEM_WRSR_2B     at 0 range 22 .. 22;
      SPI_MEM_FREAD_DIO   at 0 range 23 .. 23;
      SPI_MEM_FREAD_QIO   at 0 range 24 .. 24;
      Reserved_25_31      at 0 range 25 .. 31;
   end record;

   subtype SPI_MEM_CTRL1_SPI_MEM_CLK_MODE_Field is HAL.UInt2;
   subtype SPI_MEM_CTRL1_SPI_MEM_CS_HOLD_DLY_RES_Field is HAL.UInt10;

   --  SPI1 control1 register.
   type SPI_MEM_CTRL1_Register is record
      --  SPI clock mode bits. 0: SPI clock is off when CS inactive 1: SPI
      --  clock is delayed one cycle after CS inactive 2: SPI clock is delayed
      --  two cycles after CS inactive 3: SPI clock is alwasy on.
      SPI_MEM_CLK_MODE        : SPI_MEM_CTRL1_SPI_MEM_CLK_MODE_Field := 16#0#;
      --  After RES/DP/HPM command is sent, SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 512) SPI_CLK cycles.
      SPI_MEM_CS_HOLD_DLY_RES : SPI_MEM_CTRL1_SPI_MEM_CS_HOLD_DLY_RES_Field :=
                                 16#3FF#;
      --  unspecified
      Reserved_12_31          : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL1_Register use record
      SPI_MEM_CLK_MODE        at 0 range 0 .. 1;
      SPI_MEM_CS_HOLD_DLY_RES at 0 range 2 .. 11;
      Reserved_12_31          at 0 range 12 .. 31;
   end record;

   --  SPI1 control2 register.
   type SPI_MEM_CTRL2_Register is record
      --  unspecified
      Reserved_0_30      : HAL.UInt31 := 16#0#;
      --  Write-only. The FSM will be reset.
      SPI_MEM_SYNC_RESET : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL2_Register use record
      Reserved_0_30      at 0 range 0 .. 30;
      SPI_MEM_SYNC_RESET at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_L_Field is HAL.UInt8;
   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_H_Field is HAL.UInt8;
   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_N_Field is HAL.UInt8;

   --  SPI1 clock division control register.
   type SPI_MEM_CLOCK_Register is record
      --  In the master mode it must be equal to spi_mem_clkcnt_N.
      SPI_MEM_CLKCNT_L       : SPI_MEM_CLOCK_SPI_MEM_CLKCNT_L_Field := 16#3#;
      --  In the master mode it must be floor((spi_mem_clkcnt_N+1)/2-1).
      SPI_MEM_CLKCNT_H       : SPI_MEM_CLOCK_SPI_MEM_CLKCNT_H_Field := 16#1#;
      --  In the master mode it is the divider of spi_mem_clk. So spi_mem_clk
      --  frequency is system/(spi_mem_clkcnt_N+1)
      SPI_MEM_CLKCNT_N       : SPI_MEM_CLOCK_SPI_MEM_CLKCNT_N_Field := 16#3#;
      --  unspecified
      Reserved_24_30         : HAL.UInt7 := 16#0#;
      --  reserved
      SPI_MEM_CLK_EQU_SYSCLK : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CLOCK_Register use record
      SPI_MEM_CLKCNT_L       at 0 range 0 .. 7;
      SPI_MEM_CLKCNT_H       at 0 range 8 .. 15;
      SPI_MEM_CLKCNT_N       at 0 range 16 .. 23;
      Reserved_24_30         at 0 range 24 .. 30;
      SPI_MEM_CLK_EQU_SYSCLK at 0 range 31 .. 31;
   end record;

   --  SPI1 user register.
   type SPI_MEM_USER_Register is record
      --  unspecified
      Reserved_0_8              : HAL.UInt9 := 16#0#;
      --  the bit combined with spi_mem_mosi_delay_mode bits to set mosi signal
      --  delay mode.
      SPI_MEM_CK_OUT_EDGE       : Boolean := False;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  In the write operations read-data phase apply 2 signals
      SPI_MEM_FWRITE_DUAL       : Boolean := False;
      --  In the write operations read-data phase apply 4 signals
      SPI_MEM_FWRITE_QUAD       : Boolean := False;
      --  In the write operations address phase and read-data phase apply 2
      --  signals.
      SPI_MEM_FWRITE_DIO        : Boolean := False;
      --  In the write operations address phase and read-data phase apply 4
      --  signals.
      SPI_MEM_FWRITE_QIO        : Boolean := False;
      --  unspecified
      Reserved_16_23            : HAL.UInt8 := 16#0#;
      --  Read-only. read-data phase only access to high-part of the buffer
      --  spi_mem_w8~spi_mem_w15. 1: enable 0: disable.
      SPI_MEM_USR_MISO_HIGHPART : Boolean := False;
      --  Read-only. write-data phase only access to high-part of the buffer
      --  spi_mem_w8~spi_mem_w15. 1: enable 0: disable.
      SPI_MEM_USR_MOSI_HIGHPART : Boolean := False;
      --  SPI clock is disable in dummy phase when the bit is enable.
      SPI_MEM_USR_DUMMY_IDLE    : Boolean := False;
      --  This bit enable the write-data phase of an operation.
      SPI_MEM_USR_MOSI          : Boolean := False;
      --  This bit enable the read-data phase of an operation.
      SPI_MEM_USR_MISO          : Boolean := False;
      --  This bit enable the dummy phase of an operation.
      SPI_MEM_USR_DUMMY         : Boolean := False;
      --  This bit enable the address phase of an operation.
      SPI_MEM_USR_ADDR          : Boolean := False;
      --  This bit enable the command phase of an operation.
      SPI_MEM_USR_COMMAND       : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_USER_Register use record
      Reserved_0_8              at 0 range 0 .. 8;
      SPI_MEM_CK_OUT_EDGE       at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      SPI_MEM_FWRITE_DUAL       at 0 range 12 .. 12;
      SPI_MEM_FWRITE_QUAD       at 0 range 13 .. 13;
      SPI_MEM_FWRITE_DIO        at 0 range 14 .. 14;
      SPI_MEM_FWRITE_QIO        at 0 range 15 .. 15;
      Reserved_16_23            at 0 range 16 .. 23;
      SPI_MEM_USR_MISO_HIGHPART at 0 range 24 .. 24;
      SPI_MEM_USR_MOSI_HIGHPART at 0 range 25 .. 25;
      SPI_MEM_USR_DUMMY_IDLE    at 0 range 26 .. 26;
      SPI_MEM_USR_MOSI          at 0 range 27 .. 27;
      SPI_MEM_USR_MISO          at 0 range 28 .. 28;
      SPI_MEM_USR_DUMMY         at 0 range 29 .. 29;
      SPI_MEM_USR_ADDR          at 0 range 30 .. 30;
      SPI_MEM_USR_COMMAND       at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_USER1_SPI_MEM_USR_DUMMY_CYCLELEN_Field is HAL.UInt6;
   subtype SPI_MEM_USER1_SPI_MEM_USR_ADDR_BITLEN_Field is HAL.UInt6;

   --  SPI1 user1 register.
   type SPI_MEM_USER1_Register is record
      --  The length in spi_mem_clk cycles of dummy phase. The register value
      --  shall be (cycle_num-1).
      SPI_MEM_USR_DUMMY_CYCLELEN : SPI_MEM_USER1_SPI_MEM_USR_DUMMY_CYCLELEN_Field :=
                                    16#7#;
      --  unspecified
      Reserved_6_25              : HAL.UInt20 := 16#0#;
      --  The length in bits of address phase. The register value shall be
      --  (bit_num-1).
      SPI_MEM_USR_ADDR_BITLEN    : SPI_MEM_USER1_SPI_MEM_USR_ADDR_BITLEN_Field :=
                                    16#17#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_USER1_Register use record
      SPI_MEM_USR_DUMMY_CYCLELEN at 0 range 0 .. 5;
      Reserved_6_25              at 0 range 6 .. 25;
      SPI_MEM_USR_ADDR_BITLEN    at 0 range 26 .. 31;
   end record;

   subtype SPI_MEM_USER2_SPI_MEM_USR_COMMAND_VALUE_Field is HAL.UInt16;
   subtype SPI_MEM_USER2_SPI_MEM_USR_COMMAND_BITLEN_Field is HAL.UInt4;

   --  SPI1 user2 register.
   type SPI_MEM_USER2_Register is record
      --  The value of command.
      SPI_MEM_USR_COMMAND_VALUE  : SPI_MEM_USER2_SPI_MEM_USR_COMMAND_VALUE_Field :=
                                    16#0#;
      --  unspecified
      Reserved_16_27             : HAL.UInt12 := 16#0#;
      --  The length in bits of command phase. The register value shall be
      --  (bit_num-1)
      SPI_MEM_USR_COMMAND_BITLEN : SPI_MEM_USER2_SPI_MEM_USR_COMMAND_BITLEN_Field :=
                                    16#7#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_USER2_Register use record
      SPI_MEM_USR_COMMAND_VALUE  at 0 range 0 .. 15;
      Reserved_16_27             at 0 range 16 .. 27;
      SPI_MEM_USR_COMMAND_BITLEN at 0 range 28 .. 31;
   end record;

   subtype SPI_MEM_MOSI_DLEN_SPI_MEM_USR_MOSI_DBITLEN_Field is HAL.UInt10;

   --  SPI1 send data bit length control register.
   type SPI_MEM_MOSI_DLEN_Register is record
      --  The length in bits of write-data. The register value shall be
      --  (bit_num-1).
      SPI_MEM_USR_MOSI_DBITLEN : SPI_MEM_MOSI_DLEN_SPI_MEM_USR_MOSI_DBITLEN_Field :=
                                  16#0#;
      --  unspecified
      Reserved_10_31           : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_MOSI_DLEN_Register use record
      SPI_MEM_USR_MOSI_DBITLEN at 0 range 0 .. 9;
      Reserved_10_31           at 0 range 10 .. 31;
   end record;

   subtype SPI_MEM_MISO_DLEN_SPI_MEM_USR_MISO_DBITLEN_Field is HAL.UInt10;

   --  SPI1 receive data bit length control register.
   type SPI_MEM_MISO_DLEN_Register is record
      --  The length in bits of read-data. The register value shall be
      --  (bit_num-1).
      SPI_MEM_USR_MISO_DBITLEN : SPI_MEM_MISO_DLEN_SPI_MEM_USR_MISO_DBITLEN_Field :=
                                  16#0#;
      --  unspecified
      Reserved_10_31           : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_MISO_DLEN_Register use record
      SPI_MEM_USR_MISO_DBITLEN at 0 range 0 .. 9;
      Reserved_10_31           at 0 range 10 .. 31;
   end record;

   subtype SPI_MEM_RD_STATUS_SPI_MEM_STATUS_Field is HAL.UInt16;
   subtype SPI_MEM_RD_STATUS_SPI_MEM_WB_MODE_Field is HAL.UInt8;

   --  SPI1 status register.
   type SPI_MEM_RD_STATUS_Register is record
      --  The value is stored when set spi_mem_flash_rdsr bit and
      --  spi_mem_flash_res bit.
      SPI_MEM_STATUS  : SPI_MEM_RD_STATUS_SPI_MEM_STATUS_Field := 16#0#;
      --  Mode bits in the flash fast read mode it is combined with
      --  spi_mem_fastrd_mode bit.
      SPI_MEM_WB_MODE : SPI_MEM_RD_STATUS_SPI_MEM_WB_MODE_Field := 16#0#;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_RD_STATUS_Register use record
      SPI_MEM_STATUS  at 0 range 0 .. 15;
      SPI_MEM_WB_MODE at 0 range 16 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  SPI1 misc register
   type SPI_MEM_MISC_Register is record
      --  SPI_CS0 pin enable, 1: disable SPI_CS0, 0: SPI_CS0 pin is active to
      --  select SPI device, such as flash, external RAM and so on.
      SPI_MEM_CS0_DIS        : Boolean := False;
      --  SPI_CS1 pin enable, 1: disable SPI_CS1, 0: SPI_CS1 pin is active to
      --  select SPI device, such as flash, external RAM and so on.
      SPI_MEM_CS1_DIS        : Boolean := True;
      --  unspecified
      Reserved_2_8           : HAL.UInt7 := 16#0#;
      --  1: spi clk line is high when idle 0: spi clk line is low when idle
      SPI_MEM_CK_IDLE_EDGE   : Boolean := False;
      --  spi cs line keep low when the bit is set.
      SPI_MEM_CS_KEEP_ACTIVE : Boolean := False;
      --  unspecified
      Reserved_11_31         : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_MISC_Register use record
      SPI_MEM_CS0_DIS        at 0 range 0 .. 0;
      SPI_MEM_CS1_DIS        at 0 range 1 .. 1;
      Reserved_2_8           at 0 range 2 .. 8;
      SPI_MEM_CK_IDLE_EDGE   at 0 range 9 .. 9;
      SPI_MEM_CS_KEEP_ACTIVE at 0 range 10 .. 10;
      Reserved_11_31         at 0 range 11 .. 31;
   end record;

   --  SPI1 bit mode control register.
   type SPI_MEM_CACHE_FCTRL_Register is record
      --  unspecified
      Reserved_0_0                 : HAL.Bit := 16#0#;
      --  For SPI1, cache read flash with 4 bytes address, 1: enable,
      --  0:disable.
      SPI_MEM_CACHE_USR_ADDR_4BYTE : Boolean := False;
      --  unspecified
      Reserved_2_2                 : HAL.Bit := 16#0#;
      --  For SPI1, din phase apply 2 signals. 1: enable 0: disable. The bit is
      --  the same with spi_mem_fread_dio.
      SPI_MEM_FDIN_DUAL            : Boolean := False;
      --  For SPI1, dout phase apply 2 signals. 1: enable 0: disable. The bit
      --  is the same with spi_mem_fread_dio.
      SPI_MEM_FDOUT_DUAL           : Boolean := False;
      --  For SPI1, address phase apply 2 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_dio.
      SPI_MEM_FADDR_DUAL           : Boolean := False;
      --  For SPI1, din phase apply 4 signals. 1: enable 0: disable. The bit is
      --  the same with spi_mem_fread_qio.
      SPI_MEM_FDIN_QUAD            : Boolean := False;
      --  For SPI1, dout phase apply 4 signals. 1: enable 0: disable. The bit
      --  is the same with spi_mem_fread_qio.
      SPI_MEM_FDOUT_QUAD           : Boolean := False;
      --  For SPI1, address phase apply 4 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_qio.
      SPI_MEM_FADDR_QUAD           : Boolean := False;
      --  unspecified
      Reserved_9_31                : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CACHE_FCTRL_Register use record
      Reserved_0_0                 at 0 range 0 .. 0;
      SPI_MEM_CACHE_USR_ADDR_4BYTE at 0 range 1 .. 1;
      Reserved_2_2                 at 0 range 2 .. 2;
      SPI_MEM_FDIN_DUAL            at 0 range 3 .. 3;
      SPI_MEM_FDOUT_DUAL           at 0 range 4 .. 4;
      SPI_MEM_FADDR_DUAL           at 0 range 5 .. 5;
      SPI_MEM_FDIN_QUAD            at 0 range 6 .. 6;
      SPI_MEM_FDOUT_QUAD           at 0 range 7 .. 7;
      SPI_MEM_FADDR_QUAD           at 0 range 8 .. 8;
      Reserved_9_31                at 0 range 9 .. 31;
   end record;

   subtype SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_ADDR_CYCLELEN_Field is
     HAL.UInt2;
   subtype SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_DUMMY_CYCLELEN_Field is
     HAL.UInt6;
   subtype SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_CMD_Field is HAL.UInt16;

   --  SPI1 wait idle control register
   type SPI_MEM_FLASH_WAITI_CTRL_Register is record
      --  1: The hardware will wait idle after SE/PP/WRSR automatically, and
      --  hardware auto Suspend/Resume can be enabled. 0: The functions of
      --  hardware wait idle and auto Suspend/Resume are not supported.
      SPI_MEM_WAITI_EN             : Boolean := True;
      --  The dummy phase enable when wait flash idle (RDSR)
      SPI_MEM_WAITI_DUMMY          : Boolean := False;
      --  1: Output address 0 in RDSR or read SUS command transfer. 0: Do not
      --  send out address in RDSR or read SUS command transfer.
      SPI_MEM_WAITI_ADDR_EN        : Boolean := False;
      --  When SPI_MEM_WAITI_ADDR_EN is set, the cycle length of sent out
      --  address is (SPI_MEM_WAITI_ADDR_CYCLELEN[1:0] + 1) SPI bus clock
      --  cycles. It is not active when SPI_MEM_WAITI_ADDR_EN is cleared.
      SPI_MEM_WAITI_ADDR_CYCLELEN  : SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_ADDR_CYCLELEN_Field :=
                                      16#0#;
      --  unspecified
      Reserved_5_8                 : HAL.UInt4 := 16#0#;
      --  1:The wait idle command bit length is 16. 0: The wait idle command
      --  bit length is 8.
      SPI_MEM_WAITI_CMD_2B         : Boolean := False;
      --  The dummy cycle length when wait flash idle(RDSR).
      SPI_MEM_WAITI_DUMMY_CYCLELEN : SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_DUMMY_CYCLELEN_Field :=
                                      16#0#;
      --  The command value to wait flash idle(RDSR).
      SPI_MEM_WAITI_CMD            : SPI_MEM_FLASH_WAITI_CTRL_SPI_MEM_WAITI_CMD_Field :=
                                      16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_FLASH_WAITI_CTRL_Register use record
      SPI_MEM_WAITI_EN             at 0 range 0 .. 0;
      SPI_MEM_WAITI_DUMMY          at 0 range 1 .. 1;
      SPI_MEM_WAITI_ADDR_EN        at 0 range 2 .. 2;
      SPI_MEM_WAITI_ADDR_CYCLELEN  at 0 range 3 .. 4;
      Reserved_5_8                 at 0 range 5 .. 8;
      SPI_MEM_WAITI_CMD_2B         at 0 range 9 .. 9;
      SPI_MEM_WAITI_DUMMY_CYCLELEN at 0 range 10 .. 15;
      SPI_MEM_WAITI_CMD            at 0 range 16 .. 31;
   end record;

   subtype SPI_MEM_FLASH_SUS_CTRL_SPI_MEM_PESR_END_MSK_Field is HAL.UInt16;
   subtype SPI_MEM_FLASH_SUS_CTRL_SPI_MEM_SUS_TIMEOUT_CNT_Field is HAL.UInt7;

   --  SPI1 flash suspend control register
   type SPI_MEM_FLASH_SUS_CTRL_Register is record
      --  program erase resume bit, program erase suspend operation will be
      --  triggered when the bit is set. The bit will be cleared once the
      --  operation done.1: enable 0: disable.
      SPI_MEM_FLASH_PER         : Boolean := False;
      --  program erase suspend bit, program erase suspend operation will be
      --  triggered when the bit is set. The bit will be cleared once the
      --  operation done.1: enable 0: disable.
      SPI_MEM_FLASH_PES         : Boolean := False;
      --  1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4 or *128) SPI_CLK
      --  cycles after program erase resume command is sent. 0: SPI1 does not
      --  wait after program erase resume command is sent.
      SPI_MEM_FLASH_PER_WAIT_EN : Boolean := False;
      --  1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4 or *128) SPI_CLK
      --  cycles after program erase suspend command is sent. 0: SPI1 does not
      --  wait after program erase suspend command is sent.
      SPI_MEM_FLASH_PES_WAIT_EN : Boolean := False;
      --  Set this bit to enable PES end triggers PER transfer option. If this
      --  bit is 0, application should send PER after PES is done.
      SPI_MEM_PES_PER_EN        : Boolean := False;
      --  Set this bit to enable Auto-suspending function.
      SPI_MEM_FLASH_PES_EN      : Boolean := False;
      --  The mask value when check SUS/SUS1/SUS2 status bit. If the read
      --  status value is status_in[15:0](only status_in[7:0] is valid when
      --  only one byte of data is read out, status_in[15:0] is valid when two
      --  bytes of data are read out), SUS/SUS1/SUS2 = status_in[15:0]^
      --  SPI_MEM_PESR_END_MSK[15:0].
      SPI_MEM_PESR_END_MSK      : SPI_MEM_FLASH_SUS_CTRL_SPI_MEM_PESR_END_MSK_Field :=
                                   16#80#;
      --  1: Read two bytes when check flash SUS/SUS1/SUS2 status bit. 0: Read
      --  one byte when check flash SUS/SUS1/SUS2 status bit
      SPI_FMEM_RD_SUS_2B        : Boolean := False;
      --  1: Both WIP and SUS/SUS1/SUS2 bits should be checked to insure the
      --  resume status of flash. 0: Only need to check WIP is 0.
      SPI_MEM_PER_END_EN        : Boolean := False;
      --  1: Both WIP and SUS/SUS1/SUS2 bits should be checked to insure the
      --  suspend status of flash. 0: Only need to check WIP is 0.
      SPI_MEM_PES_END_EN        : Boolean := False;
      --  When SPI1 checks SUS/SUS1/SUS2 bits fail for
      --  SPI_MEM_SUS_TIMEOUT_CNT[6:0] times, it will be treated as check pass.
      SPI_MEM_SUS_TIMEOUT_CNT   : SPI_MEM_FLASH_SUS_CTRL_SPI_MEM_SUS_TIMEOUT_CNT_Field :=
                                   16#4#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_FLASH_SUS_CTRL_Register use record
      SPI_MEM_FLASH_PER         at 0 range 0 .. 0;
      SPI_MEM_FLASH_PES         at 0 range 1 .. 1;
      SPI_MEM_FLASH_PER_WAIT_EN at 0 range 2 .. 2;
      SPI_MEM_FLASH_PES_WAIT_EN at 0 range 3 .. 3;
      SPI_MEM_PES_PER_EN        at 0 range 4 .. 4;
      SPI_MEM_FLASH_PES_EN      at 0 range 5 .. 5;
      SPI_MEM_PESR_END_MSK      at 0 range 6 .. 21;
      SPI_FMEM_RD_SUS_2B        at 0 range 22 .. 22;
      SPI_MEM_PER_END_EN        at 0 range 23 .. 23;
      SPI_MEM_PES_END_EN        at 0 range 24 .. 24;
      SPI_MEM_SUS_TIMEOUT_CNT   at 0 range 25 .. 31;
   end record;

   subtype SPI_MEM_FLASH_SUS_CMD_SPI_MEM_FLASH_PES_COMMAND_Field is HAL.UInt16;
   subtype SPI_MEM_FLASH_SUS_CMD_SPI_MEM_WAIT_PESR_COMMAND_Field is HAL.UInt16;

   --  SPI1 flash suspend command register
   type SPI_MEM_FLASH_SUS_CMD_Register is record
      --  Program/Erase suspend command.
      SPI_MEM_FLASH_PES_COMMAND : SPI_MEM_FLASH_SUS_CMD_SPI_MEM_FLASH_PES_COMMAND_Field :=
                                   16#7575#;
      --  Flash SUS/SUS1/SUS2 status bit read command. The command should be
      --  sent when SUS/SUS1/SUS2 bit should be checked to insure the suspend
      --  or resume status of flash.
      SPI_MEM_WAIT_PESR_COMMAND : SPI_MEM_FLASH_SUS_CMD_SPI_MEM_WAIT_PESR_COMMAND_Field :=
                                   16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_FLASH_SUS_CMD_Register use record
      SPI_MEM_FLASH_PES_COMMAND at 0 range 0 .. 15;
      SPI_MEM_WAIT_PESR_COMMAND at 0 range 16 .. 31;
   end record;

   subtype SPI_MEM_SUS_STATUS_SPI_MEM_FLASH_PER_COMMAND_Field is HAL.UInt16;

   --  SPI1 flash suspend status register
   type SPI_MEM_SUS_STATUS_Register is record
      --  The status of flash suspend, only used in SPI1.
      SPI_MEM_FLASH_SUS         : Boolean := False;
      --  1: SPI1 sends out SPI_MEM_WAIT_PESR_COMMAND[15:0] to check
      --  SUS/SUS1/SUS2 bit. 0: SPI1 sends out SPI_MEM_WAIT_PESR_COMMAND[7:0]
      --  to check SUS/SUS1/SUS2 bit.
      SPI_MEM_WAIT_PESR_CMD_2B  : Boolean := False;
      --  1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles
      --  after HPM command is sent. 0: SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after HPM command
      --  is sent.
      SPI_MEM_FLASH_HPM_DLY_128 : Boolean := False;
      --  1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles
      --  after RES command is sent. 0: SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after RES command
      --  is sent.
      SPI_MEM_FLASH_RES_DLY_128 : Boolean := False;
      --  1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles
      --  after DP command is sent. 0: SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after DP command
      --  is sent.
      SPI_MEM_FLASH_DP_DLY_128  : Boolean := False;
      --  Valid when SPI_MEM_FLASH_PER_WAIT_EN is 1. 1: SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after PER
      --  command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4)
      --  SPI_CLK cycles after PER command is sent.
      SPI_MEM_FLASH_PER_DLY_128 : Boolean := False;
      --  Valid when SPI_MEM_FLASH_PES_WAIT_EN is 1. 1: SPI1 waits
      --  (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after PES
      --  command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4)
      --  SPI_CLK cycles after PES command is sent.
      SPI_MEM_FLASH_PES_DLY_128 : Boolean := False;
      --  1: Enable SPI0 lock SPI0/1 arbiter option. 0: Disable it.
      SPI_MEM_SPI0_LOCK_EN      : Boolean := False;
      --  unspecified
      Reserved_8_14             : HAL.UInt7 := 16#0#;
      --  1: The bit length of Program/Erase Suspend/Resume command is 16. 0:
      --  The bit length of Program/Erase Suspend/Resume command is 8.
      SPI_MEM_FLASH_PESR_CMD_2B : Boolean := False;
      --  Program/Erase resume command.
      SPI_MEM_FLASH_PER_COMMAND : SPI_MEM_SUS_STATUS_SPI_MEM_FLASH_PER_COMMAND_Field :=
                                   16#7A7A#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_SUS_STATUS_Register use record
      SPI_MEM_FLASH_SUS         at 0 range 0 .. 0;
      SPI_MEM_WAIT_PESR_CMD_2B  at 0 range 1 .. 1;
      SPI_MEM_FLASH_HPM_DLY_128 at 0 range 2 .. 2;
      SPI_MEM_FLASH_RES_DLY_128 at 0 range 3 .. 3;
      SPI_MEM_FLASH_DP_DLY_128  at 0 range 4 .. 4;
      SPI_MEM_FLASH_PER_DLY_128 at 0 range 5 .. 5;
      SPI_MEM_FLASH_PES_DLY_128 at 0 range 6 .. 6;
      SPI_MEM_SPI0_LOCK_EN      at 0 range 7 .. 7;
      Reserved_8_14             at 0 range 8 .. 14;
      SPI_MEM_FLASH_PESR_CMD_2B at 0 range 15 .. 15;
      SPI_MEM_FLASH_PER_COMMAND at 0 range 16 .. 31;
   end record;

   --  SPI1 interrupt enable register
   type SPI_MEM_INT_ENA_Register is record
      --  The enable bit for SPI_MEM_PER_END_INT interrupt.
      SPI_MEM_PER_END_INT_ENA    : Boolean := False;
      --  The enable bit for SPI_MEM_PES_END_INT interrupt.
      SPI_MEM_PES_END_INT_ENA    : Boolean := False;
      --  The enable bit for SPI_MEM_WPE_END_INT interrupt.
      SPI_MEM_WPE_END_INT_ENA    : Boolean := False;
      --  The enable bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_ENA : Boolean := False;
      --  The enable bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_5_9               : HAL.UInt5 := 16#0#;
      --  The enable bit for SPI_MEM_BROWN_OUT_INT interrupt.
      SPI_MEM_BROWN_OUT_INT_ENA  : Boolean := False;
      --  unspecified
      Reserved_11_31             : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_ENA_Register use record
      SPI_MEM_PER_END_INT_ENA    at 0 range 0 .. 0;
      SPI_MEM_PES_END_INT_ENA    at 0 range 1 .. 1;
      SPI_MEM_WPE_END_INT_ENA    at 0 range 2 .. 2;
      SPI_MEM_SLV_ST_END_INT_ENA at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_ENA at 0 range 4 .. 4;
      Reserved_5_9               at 0 range 5 .. 9;
      SPI_MEM_BROWN_OUT_INT_ENA  at 0 range 10 .. 10;
      Reserved_11_31             at 0 range 11 .. 31;
   end record;

   --  SPI1 interrupt clear register
   type SPI_MEM_INT_CLR_Register is record
      --  Write-only. The clear bit for SPI_MEM_PER_END_INT interrupt.
      SPI_MEM_PER_END_INT_CLR    : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_PES_END_INT interrupt.
      SPI_MEM_PES_END_INT_CLR    : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_WPE_END_INT interrupt.
      SPI_MEM_WPE_END_INT_CLR    : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_CLR : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_5_9               : HAL.UInt5 := 16#0#;
      --  Write-only. The status bit for SPI_MEM_BROWN_OUT_INT interrupt.
      SPI_MEM_BROWN_OUT_INT_CLR  : Boolean := False;
      --  unspecified
      Reserved_11_31             : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_CLR_Register use record
      SPI_MEM_PER_END_INT_CLR    at 0 range 0 .. 0;
      SPI_MEM_PES_END_INT_CLR    at 0 range 1 .. 1;
      SPI_MEM_WPE_END_INT_CLR    at 0 range 2 .. 2;
      SPI_MEM_SLV_ST_END_INT_CLR at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_CLR at 0 range 4 .. 4;
      Reserved_5_9               at 0 range 5 .. 9;
      SPI_MEM_BROWN_OUT_INT_CLR  at 0 range 10 .. 10;
      Reserved_11_31             at 0 range 11 .. 31;
   end record;

   --  SPI1 interrupt raw register
   type SPI_MEM_INT_RAW_Register is record
      --  The raw bit for SPI_MEM_PER_END_INT interrupt. 1: Triggered when Auto
      --  Resume command (0x7A) is sent and flash is resumed successfully. 0:
      --  Others.
      SPI_MEM_PER_END_INT_RAW    : Boolean := False;
      --  The raw bit for SPI_MEM_PES_END_INT interrupt.1: Triggered when Auto
      --  Suspend command (0x75) is sent and flash is suspended successfully.
      --  0: Others.
      SPI_MEM_PES_END_INT_RAW    : Boolean := False;
      --  The raw bit for SPI_MEM_WPE_END_INT interrupt. 1: Triggered when
      --  WRSR/PP/SE/BE/CE is sent and flash is already idle. 0: Others.
      SPI_MEM_WPE_END_INT_RAW    : Boolean := False;
      --  The raw bit for SPI_MEM_SLV_ST_END_INT interrupt. 1: Triggered when
      --  spi1_slv_st is changed from non idle state to idle state. It means
      --  that SPI_CS raises high. 0: Others
      SPI_MEM_SLV_ST_END_INT_RAW : Boolean := False;
      --  The raw bit for SPI_MEM_MST_ST_END_INT interrupt. 1: Triggered when
      --  spi1_mst_st is changed from non idle state to idle state. 0: Others.
      SPI_MEM_MST_ST_END_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_5_9               : HAL.UInt5 := 16#0#;
      --  The raw bit for SPI_MEM_BROWN_OUT_INT interrupt. 1: Triggered
      --  condition is that chip is loosing power and RTC module sends out
      --  brown out close flash request to SPI1. After SPI1 sends out suspend
      --  command to flash, this interrupt is triggered and MSPI returns to
      --  idle state. 0: Others.
      SPI_MEM_BROWN_OUT_INT_RAW  : Boolean := False;
      --  unspecified
      Reserved_11_31             : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_RAW_Register use record
      SPI_MEM_PER_END_INT_RAW    at 0 range 0 .. 0;
      SPI_MEM_PES_END_INT_RAW    at 0 range 1 .. 1;
      SPI_MEM_WPE_END_INT_RAW    at 0 range 2 .. 2;
      SPI_MEM_SLV_ST_END_INT_RAW at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_RAW at 0 range 4 .. 4;
      Reserved_5_9               at 0 range 5 .. 9;
      SPI_MEM_BROWN_OUT_INT_RAW  at 0 range 10 .. 10;
      Reserved_11_31             at 0 range 11 .. 31;
   end record;

   --  SPI1 interrupt status register
   type SPI_MEM_INT_ST_Register is record
      --  Read-only. The status bit for SPI_MEM_PER_END_INT interrupt.
      SPI_MEM_PER_END_INT_ST    : Boolean;
      --  Read-only. The status bit for SPI_MEM_PES_END_INT interrupt.
      SPI_MEM_PES_END_INT_ST    : Boolean;
      --  Read-only. The status bit for SPI_MEM_WPE_END_INT interrupt.
      SPI_MEM_WPE_END_INT_ST    : Boolean;
      --  Read-only. The status bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_ST : Boolean;
      --  Read-only. The status bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_ST : Boolean;
      --  unspecified
      Reserved_5_9              : HAL.UInt5;
      --  Read-only. The status bit for SPI_MEM_BROWN_OUT_INT interrupt.
      SPI_MEM_BROWN_OUT_INT_ST  : Boolean;
      --  unspecified
      Reserved_11_31            : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_ST_Register use record
      SPI_MEM_PER_END_INT_ST    at 0 range 0 .. 0;
      SPI_MEM_PES_END_INT_ST    at 0 range 1 .. 1;
      SPI_MEM_WPE_END_INT_ST    at 0 range 2 .. 2;
      SPI_MEM_SLV_ST_END_INT_ST at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_ST at 0 range 4 .. 4;
      Reserved_5_9              at 0 range 5 .. 9;
      SPI_MEM_BROWN_OUT_INT_ST  at 0 range 10 .. 10;
      Reserved_11_31            at 0 range 11 .. 31;
   end record;

   subtype SPI_MEM_DDR_SPI_FMEM_OUTMINBYTELEN_Field is HAL.UInt7;
   subtype SPI_MEM_DDR_SPI_FMEM_USR_DDR_DQS_THD_Field is HAL.UInt7;

   --  SPI1 DDR control register
   type SPI_MEM_DDR_Register is record
      --  Read-only. 1: in ddr mode, 0 in sdr mode
      SPI_FMEM_DDR_EN            : Boolean;
      --  Read-only. Set the bit to enable variable dummy cycle in spi ddr
      --  mode.
      SPI_FMEM_VAR_DUMMY         : Boolean;
      --  Read-only. Set the bit to reorder rx data of the word in spi ddr
      --  mode.
      SPI_FMEM_DDR_RDAT_SWP      : Boolean;
      --  Read-only. Set the bit to reorder tx data of the word in spi ddr
      --  mode.
      SPI_FMEM_DDR_WDAT_SWP      : Boolean;
      --  Read-only. the bit is used to disable dual edge in command phase when
      --  ddr mode.
      SPI_FMEM_DDR_CMD_DIS       : Boolean;
      --  Read-only. It is the minimum output data length in the panda device.
      SPI_FMEM_OUTMINBYTELEN     : SPI_MEM_DDR_SPI_FMEM_OUTMINBYTELEN_Field;
      --  unspecified
      Reserved_12_13             : HAL.UInt2;
      --  Read-only. The delay number of data strobe which from memory based on
      --  SPI clock.
      SPI_FMEM_USR_DDR_DQS_THD   : SPI_MEM_DDR_SPI_FMEM_USR_DDR_DQS_THD_Field;
      --  Read-only. 1: Do not need the input of SPI_DQS signal, SPI0 starts to
      --  receive data when spi0_slv_st is in SPI_MEM_DIN state. It is used
      --  when there is no SPI_DQS signal or SPI_DQS signal is not stable. 0:
      --  SPI0 starts to store data at the positive and negative edge of
      --  SPI_DQS.
      SPI_FMEM_DDR_DQS_LOOP      : Boolean;
      --  unspecified
      Reserved_22_23             : HAL.UInt2;
      --  Read-only. Set this bit to enable the differential SPI_CLK#.
      SPI_FMEM_CLK_DIFF_EN       : Boolean;
      --  unspecified
      Reserved_25_25             : HAL.Bit;
      --  Read-only. Set this bit to enable the input of SPI_DQS signal in SPI
      --  phases of CMD and ADDR.
      SPI_FMEM_DQS_CA_IN         : Boolean;
      --  Read-only. Set this bit to enable the vary dummy function in SPI
      --  HyperBus mode, when SPI0 accesses flash or SPI1 accesses flash or
      --  sram.
      SPI_FMEM_HYPERBUS_DUMMY_2X : Boolean;
      --  Read-only. Set this bit to invert SPI_DIFF when accesses to flash. .
      SPI_FMEM_CLK_DIFF_INV      : Boolean;
      --  Read-only. Set this bit to enable octa_ram address out when accesses
      --  to flash, which means ADDR_OUT[31:0] = {spi_usr_addr_value[25:4],
      --  6'd0, spi_usr_addr_value[3:1], 1'b0}.
      SPI_FMEM_OCTA_RAM_ADDR     : Boolean;
      --  Read-only. Set this bit to enable HyperRAM address out when accesses
      --  to flash, which means ADDR_OUT[31:0] = {spi_usr_addr_value[19:4],
      --  13'd0, spi_usr_addr_value[3:1]}.
      SPI_FMEM_HYPERBUS_CA       : Boolean;
      --  unspecified
      Reserved_31_31             : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DDR_Register use record
      SPI_FMEM_DDR_EN            at 0 range 0 .. 0;
      SPI_FMEM_VAR_DUMMY         at 0 range 1 .. 1;
      SPI_FMEM_DDR_RDAT_SWP      at 0 range 2 .. 2;
      SPI_FMEM_DDR_WDAT_SWP      at 0 range 3 .. 3;
      SPI_FMEM_DDR_CMD_DIS       at 0 range 4 .. 4;
      SPI_FMEM_OUTMINBYTELEN     at 0 range 5 .. 11;
      Reserved_12_13             at 0 range 12 .. 13;
      SPI_FMEM_USR_DDR_DQS_THD   at 0 range 14 .. 20;
      SPI_FMEM_DDR_DQS_LOOP      at 0 range 21 .. 21;
      Reserved_22_23             at 0 range 22 .. 23;
      SPI_FMEM_CLK_DIFF_EN       at 0 range 24 .. 24;
      Reserved_25_25             at 0 range 25 .. 25;
      SPI_FMEM_DQS_CA_IN         at 0 range 26 .. 26;
      SPI_FMEM_HYPERBUS_DUMMY_2X at 0 range 27 .. 27;
      SPI_FMEM_CLK_DIFF_INV      at 0 range 28 .. 28;
      SPI_FMEM_OCTA_RAM_ADDR     at 0 range 29 .. 29;
      SPI_FMEM_HYPERBUS_CA       at 0 range 30 .. 30;
      Reserved_31_31             at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_TIMING_CALI_SPI_MEM_EXTRA_DUMMY_CYCLELEN_Field is HAL.UInt3;

   --  SPI1 timing control register
   type SPI_MEM_TIMING_CALI_Register is record
      --  unspecified
      Reserved_0_0                 : HAL.Bit := 16#0#;
      --  The bit is used to enable timing auto-calibration for all reading
      --  operations.
      SPI_MEM_TIMING_CALI          : Boolean := False;
      --  add extra dummy spi clock cycle length for spi clock calibration.
      SPI_MEM_EXTRA_DUMMY_CYCLELEN : SPI_MEM_TIMING_CALI_SPI_MEM_EXTRA_DUMMY_CYCLELEN_Field :=
                                      16#0#;
      --  unspecified
      Reserved_5_31                : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_TIMING_CALI_Register use record
      Reserved_0_0                 at 0 range 0 .. 0;
      SPI_MEM_TIMING_CALI          at 0 range 1 .. 1;
      SPI_MEM_EXTRA_DUMMY_CYCLELEN at 0 range 2 .. 4;
      Reserved_5_31                at 0 range 5 .. 31;
   end record;

   --  SPI1 clk_gate register
   type SPI_MEM_CLOCK_GATE_Register is record
      --  Register clock gate enable signal. 1: Enable. 0: Disable.
      SPI_MEM_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CLOCK_GATE_Register use record
      SPI_MEM_CLK_EN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype SPI_MEM_DATE_SPI_MEM_DATE_Field is HAL.UInt28;

   --  Version control register
   type SPI_MEM_DATE_Register is record
      --  Version control register
      SPI_MEM_DATE   : SPI_MEM_DATE_SPI_MEM_DATE_Field := 16#2202160#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DATE_Register use record
      SPI_MEM_DATE   at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SPI (Serial Peripheral Interface) Controller 1
   type SPI1_Peripheral is record
      --  SPI1 memory command register
      SPI_MEM_CMD              : aliased SPI_MEM_CMD_Register;
      --  SPI1 address register
      SPI_MEM_ADDR             : aliased HAL.UInt32;
      --  SPI1 control register.
      SPI_MEM_CTRL             : aliased SPI_MEM_CTRL_Register;
      --  SPI1 control1 register.
      SPI_MEM_CTRL1            : aliased SPI_MEM_CTRL1_Register;
      --  SPI1 control2 register.
      SPI_MEM_CTRL2            : aliased SPI_MEM_CTRL2_Register;
      --  SPI1 clock division control register.
      SPI_MEM_CLOCK            : aliased SPI_MEM_CLOCK_Register;
      --  SPI1 user register.
      SPI_MEM_USER             : aliased SPI_MEM_USER_Register;
      --  SPI1 user1 register.
      SPI_MEM_USER1            : aliased SPI_MEM_USER1_Register;
      --  SPI1 user2 register.
      SPI_MEM_USER2            : aliased SPI_MEM_USER2_Register;
      --  SPI1 send data bit length control register.
      SPI_MEM_MOSI_DLEN        : aliased SPI_MEM_MOSI_DLEN_Register;
      --  SPI1 receive data bit length control register.
      SPI_MEM_MISO_DLEN        : aliased SPI_MEM_MISO_DLEN_Register;
      --  SPI1 status register.
      SPI_MEM_RD_STATUS        : aliased SPI_MEM_RD_STATUS_Register;
      --  SPI1 misc register
      SPI_MEM_MISC             : aliased SPI_MEM_MISC_Register;
      --  SPI1 TX CRC data register.
      SPI_MEM_TX_CRC           : aliased HAL.UInt32;
      --  SPI1 bit mode control register.
      SPI_MEM_CACHE_FCTRL      : aliased SPI_MEM_CACHE_FCTRL_Register;
      --  SPI1 memory data buffer0
      SPI_MEM_W0               : aliased HAL.UInt32;
      --  SPI1 memory data buffer1
      SPI_MEM_W1               : aliased HAL.UInt32;
      --  SPI1 memory data buffer2
      SPI_MEM_W2               : aliased HAL.UInt32;
      --  SPI1 memory data buffer3
      SPI_MEM_W3               : aliased HAL.UInt32;
      --  SPI1 memory data buffer4
      SPI_MEM_W4               : aliased HAL.UInt32;
      --  SPI1 memory data buffer5
      SPI_MEM_W5               : aliased HAL.UInt32;
      --  SPI1 memory data buffer6
      SPI_MEM_W6               : aliased HAL.UInt32;
      --  SPI1 memory data buffer7
      SPI_MEM_W7               : aliased HAL.UInt32;
      --  SPI1 memory data buffer8
      SPI_MEM_W8               : aliased HAL.UInt32;
      --  SPI1 memory data buffer9
      SPI_MEM_W9               : aliased HAL.UInt32;
      --  SPI1 memory data buffer10
      SPI_MEM_W10              : aliased HAL.UInt32;
      --  SPI1 memory data buffer11
      SPI_MEM_W11              : aliased HAL.UInt32;
      --  SPI1 memory data buffer12
      SPI_MEM_W12              : aliased HAL.UInt32;
      --  SPI1 memory data buffer13
      SPI_MEM_W13              : aliased HAL.UInt32;
      --  SPI1 memory data buffer14
      SPI_MEM_W14              : aliased HAL.UInt32;
      --  SPI1 memory data buffer15
      SPI_MEM_W15              : aliased HAL.UInt32;
      --  SPI1 wait idle control register
      SPI_MEM_FLASH_WAITI_CTRL : aliased SPI_MEM_FLASH_WAITI_CTRL_Register;
      --  SPI1 flash suspend control register
      SPI_MEM_FLASH_SUS_CTRL   : aliased SPI_MEM_FLASH_SUS_CTRL_Register;
      --  SPI1 flash suspend command register
      SPI_MEM_FLASH_SUS_CMD    : aliased SPI_MEM_FLASH_SUS_CMD_Register;
      --  SPI1 flash suspend status register
      SPI_MEM_SUS_STATUS       : aliased SPI_MEM_SUS_STATUS_Register;
      --  SPI1 interrupt enable register
      SPI_MEM_INT_ENA          : aliased SPI_MEM_INT_ENA_Register;
      --  SPI1 interrupt clear register
      SPI_MEM_INT_CLR          : aliased SPI_MEM_INT_CLR_Register;
      --  SPI1 interrupt raw register
      SPI_MEM_INT_RAW          : aliased SPI_MEM_INT_RAW_Register;
      --  SPI1 interrupt status register
      SPI_MEM_INT_ST           : aliased SPI_MEM_INT_ST_Register;
      --  SPI1 DDR control register
      SPI_MEM_DDR              : aliased SPI_MEM_DDR_Register;
      --  SPI1 timing control register
      SPI_MEM_TIMING_CALI      : aliased SPI_MEM_TIMING_CALI_Register;
      --  SPI1 clk_gate register
      SPI_MEM_CLOCK_GATE       : aliased SPI_MEM_CLOCK_GATE_Register;
      --  Version control register
      SPI_MEM_DATE             : aliased SPI_MEM_DATE_Register;
   end record
     with Volatile;

   for SPI1_Peripheral use record
      SPI_MEM_CMD              at 16#0# range 0 .. 31;
      SPI_MEM_ADDR             at 16#4# range 0 .. 31;
      SPI_MEM_CTRL             at 16#8# range 0 .. 31;
      SPI_MEM_CTRL1            at 16#C# range 0 .. 31;
      SPI_MEM_CTRL2            at 16#10# range 0 .. 31;
      SPI_MEM_CLOCK            at 16#14# range 0 .. 31;
      SPI_MEM_USER             at 16#18# range 0 .. 31;
      SPI_MEM_USER1            at 16#1C# range 0 .. 31;
      SPI_MEM_USER2            at 16#20# range 0 .. 31;
      SPI_MEM_MOSI_DLEN        at 16#24# range 0 .. 31;
      SPI_MEM_MISO_DLEN        at 16#28# range 0 .. 31;
      SPI_MEM_RD_STATUS        at 16#2C# range 0 .. 31;
      SPI_MEM_MISC             at 16#34# range 0 .. 31;
      SPI_MEM_TX_CRC           at 16#38# range 0 .. 31;
      SPI_MEM_CACHE_FCTRL      at 16#3C# range 0 .. 31;
      SPI_MEM_W0               at 16#58# range 0 .. 31;
      SPI_MEM_W1               at 16#5C# range 0 .. 31;
      SPI_MEM_W2               at 16#60# range 0 .. 31;
      SPI_MEM_W3               at 16#64# range 0 .. 31;
      SPI_MEM_W4               at 16#68# range 0 .. 31;
      SPI_MEM_W5               at 16#6C# range 0 .. 31;
      SPI_MEM_W6               at 16#70# range 0 .. 31;
      SPI_MEM_W7               at 16#74# range 0 .. 31;
      SPI_MEM_W8               at 16#78# range 0 .. 31;
      SPI_MEM_W9               at 16#7C# range 0 .. 31;
      SPI_MEM_W10              at 16#80# range 0 .. 31;
      SPI_MEM_W11              at 16#84# range 0 .. 31;
      SPI_MEM_W12              at 16#88# range 0 .. 31;
      SPI_MEM_W13              at 16#8C# range 0 .. 31;
      SPI_MEM_W14              at 16#90# range 0 .. 31;
      SPI_MEM_W15              at 16#94# range 0 .. 31;
      SPI_MEM_FLASH_WAITI_CTRL at 16#98# range 0 .. 31;
      SPI_MEM_FLASH_SUS_CTRL   at 16#9C# range 0 .. 31;
      SPI_MEM_FLASH_SUS_CMD    at 16#A0# range 0 .. 31;
      SPI_MEM_SUS_STATUS       at 16#A4# range 0 .. 31;
      SPI_MEM_INT_ENA          at 16#C0# range 0 .. 31;
      SPI_MEM_INT_CLR          at 16#C4# range 0 .. 31;
      SPI_MEM_INT_RAW          at 16#C8# range 0 .. 31;
      SPI_MEM_INT_ST           at 16#CC# range 0 .. 31;
      SPI_MEM_DDR              at 16#D4# range 0 .. 31;
      SPI_MEM_TIMING_CALI      at 16#180# range 0 .. 31;
      SPI_MEM_CLOCK_GATE       at 16#200# range 0 .. 31;
      SPI_MEM_DATE             at 16#3FC# range 0 .. 31;
   end record;

   --  SPI (Serial Peripheral Interface) Controller 1
   SPI1_Periph : aliased SPI1_Peripheral
     with Import, Address => SPI1_Base;

end ESP32_C6_SVD.SPI1;
