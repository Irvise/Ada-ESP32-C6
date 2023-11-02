pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.SPI0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SPI_MEM_CMD_SPI_MEM_MST_ST_Field is HAL.UInt4;
   subtype SPI_MEM_CMD_SPI_MEM_SLV_ST_Field is HAL.UInt4;

   --  SPI0 FSM status register
   type SPI_MEM_CMD_Register is record
      --  Read-only. The current status of SPI0 master FSM: spi0_mst_st. 0:
      --  idle state, 1:SPI0_GRANT , 2: program/erase suspend state, 3: SPI0
      --  read data state, 4: wait cache/EDMA sent data is stored in SPI0 TX
      --  FIFO, 5: SPI0 write data state.
      SPI_MEM_MST_ST : SPI_MEM_CMD_SPI_MEM_MST_ST_Field;
      --  Read-only. The current status of SPI0 slave FSM: mspi_st. 0: idle
      --  state, 1: preparation state, 2: send command state, 3: send address
      --  state, 4: wait state, 5: read data state, 6:write data state, 7: done
      --  state, 8: read data end state.
      SPI_MEM_SLV_ST : SPI_MEM_CMD_SPI_MEM_SLV_ST_Field;
      --  unspecified
      Reserved_8_17  : HAL.UInt10;
      --  Read-only. SPI0 USR_CMD start bit, only used when SPI_MEM_AXI_REQ_EN
      --  is cleared. An operation will be triggered when the bit is set. The
      --  bit will be cleared once the operation done.1: enable 0: disable.
      SPI_MEM_USR    : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CMD_Register use record
      SPI_MEM_MST_ST at 0 range 0 .. 3;
      SPI_MEM_SLV_ST at 0 range 4 .. 7;
      Reserved_8_17  at 0 range 8 .. 17;
      SPI_MEM_USR    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  SPI0 control register.
   type SPI_MEM_CTRL_Register is record
      --  Read-only. In the dummy phase of an MSPI write data transfer when
      --  accesses to flash, the level of SPI_DQS is output by the MSPI
      --  controller.
      SPI_MEM_WDUMMY_DQS_ALWAYS_OUT : Boolean := False;
      --  In the dummy phase of an MSPI write data transfer when accesses to
      --  flash, the level of SPI_IO[7:0] is output by the MSPI controller.
      SPI_MEM_WDUMMY_ALWAYS_OUT     : Boolean := False;
      --  In an MSPI read data transfer when accesses to flash, the level of
      --  SPI_IO[7:0] is output by the MSPI controller in the first half part
      --  of dummy phase. It is used to mask invalid SPI_DQS in the half part
      --  of dummy phase.
      SPI_MEM_FDUMMY_RIN            : Boolean := True;
      --  In an MSPI write data transfer when accesses to flash, the level of
      --  SPI_IO[7:0] is output by the MSPI controller in the second half part
      --  of dummy phase. It is used to pre-drive flash.
      SPI_MEM_FDUMMY_WOUT           : Boolean := True;
      --  Read-only. Apply 8 signals during write-data phase 1:enable 0:
      --  disable
      SPI_MEM_FDOUT_OCT             : Boolean := False;
      --  Read-only. Apply 8 signals during read-data phase 1:enable 0: disable
      SPI_MEM_FDIN_OCT              : Boolean := False;
      --  Read-only. Apply 8 signals during address phase 1:enable 0: disable
      SPI_MEM_FADDR_OCT             : Boolean := False;
      --  unspecified
      Reserved_7_7                  : HAL.Bit := 16#0#;
      --  Apply 4 signals during command phase 1:enable 0: disable
      SPI_MEM_FCMD_QUAD             : Boolean := False;
      --  Read-only. Apply 8 signals during command phase 1:enable 0: disable
      SPI_MEM_FCMD_OCT              : Boolean := False;
      --  unspecified
      Reserved_10_12                : HAL.UInt3 := 16#0#;
      --  This bit enable the bits: SPI_MEM_FREAD_QIO, SPI_MEM_FREAD_DIO,
      --  SPI_MEM_FREAD_QOUT and SPI_MEM_FREAD_DOUT. 1: enable 0: disable.
      SPI_MEM_FASTRD_MODE           : Boolean := True;
      --  In the read operations, read-data phase apply 2 signals. 1: enable 0:
      --  disable.
      SPI_MEM_FREAD_DUAL            : Boolean := False;
      --  unspecified
      Reserved_15_17                : HAL.UInt3 := 16#0#;
      --  The bit is used to set MISO line polarity, 1: high 0, low
      SPI_MEM_Q_POL                 : Boolean := True;
      --  The bit is used to set MOSI line polarity, 1: high 0, low
      SPI_MEM_D_POL                 : Boolean := True;
      --  In the read operations read-data phase apply 4 signals. 1: enable 0:
      --  disable.
      SPI_MEM_FREAD_QUAD            : Boolean := False;
      --  Write protect signal output when SPI is idle. 1: output high, 0:
      --  output low.
      SPI_MEM_WP                    : Boolean := True;
      --  unspecified
      Reserved_22_22                : HAL.Bit := 16#0#;
      --  In the read operations address phase and read-data phase apply 2
      --  signals. 1: enable 0: disable.
      SPI_MEM_FREAD_DIO             : Boolean := False;
      --  In the read operations address phase and read-data phase apply 4
      --  signals. 1: enable 0: disable.
      SPI_MEM_FREAD_QIO             : Boolean := False;
      --  unspecified
      Reserved_25_29                : HAL.UInt5 := 16#0#;
      --  Read-only. When accesses to flash, 1: the IE signals of pads
      --  connected to SPI_DQS are always 1. 0: Others.
      SPI_MEM_DQS_IE_ALWAYS_ON      : Boolean := False;
      --  When accesses to flash, 1: the IE signals of pads connected to
      --  SPI_IO[7:0] are always 1. 0: Others.
      SPI_MEM_DATA_IE_ALWAYS_ON     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL_Register use record
      SPI_MEM_WDUMMY_DQS_ALWAYS_OUT at 0 range 0 .. 0;
      SPI_MEM_WDUMMY_ALWAYS_OUT     at 0 range 1 .. 1;
      SPI_MEM_FDUMMY_RIN            at 0 range 2 .. 2;
      SPI_MEM_FDUMMY_WOUT           at 0 range 3 .. 3;
      SPI_MEM_FDOUT_OCT             at 0 range 4 .. 4;
      SPI_MEM_FDIN_OCT              at 0 range 5 .. 5;
      SPI_MEM_FADDR_OCT             at 0 range 6 .. 6;
      Reserved_7_7                  at 0 range 7 .. 7;
      SPI_MEM_FCMD_QUAD             at 0 range 8 .. 8;
      SPI_MEM_FCMD_OCT              at 0 range 9 .. 9;
      Reserved_10_12                at 0 range 10 .. 12;
      SPI_MEM_FASTRD_MODE           at 0 range 13 .. 13;
      SPI_MEM_FREAD_DUAL            at 0 range 14 .. 14;
      Reserved_15_17                at 0 range 15 .. 17;
      SPI_MEM_Q_POL                 at 0 range 18 .. 18;
      SPI_MEM_D_POL                 at 0 range 19 .. 19;
      SPI_MEM_FREAD_QUAD            at 0 range 20 .. 20;
      SPI_MEM_WP                    at 0 range 21 .. 21;
      Reserved_22_22                at 0 range 22 .. 22;
      SPI_MEM_FREAD_DIO             at 0 range 23 .. 23;
      SPI_MEM_FREAD_QIO             at 0 range 24 .. 24;
      Reserved_25_29                at 0 range 25 .. 29;
      SPI_MEM_DQS_IE_ALWAYS_ON      at 0 range 30 .. 30;
      SPI_MEM_DATA_IE_ALWAYS_ON     at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_CTRL1_SPI_MEM_CLK_MODE_Field is HAL.UInt2;

   --  SPI0 control1 register.
   type SPI_MEM_CTRL1_Register is record
      --  SPI clock mode bits. 0: SPI clock is off when CS inactive 1: SPI
      --  clock is delayed one cycle after CS inactive 2: SPI clock is delayed
      --  two cycles after CS inactive 3: SPI clock is alwasy on.
      SPI_MEM_CLK_MODE          : SPI_MEM_CTRL1_SPI_MEM_CLK_MODE_Field :=
                                   16#0#;
      --  unspecified
      Reserved_2_20             : HAL.UInt19 := 16#0#;
      --  1: MSPI supports ARSIZE 0~3. When ARSIZE =0~2, MSPI read address is
      --  4*n and reply the real AXI read data back. 0: When ARSIZE 0~1, MSPI
      --  reply SLV_ERR.
      SPI_AR_SIZE0_1_SUPPORT_EN : Boolean := True;
      --  1: MSPI supports AWSIZE 0~3. 0: When AWSIZE 0~1, MSPI reply SLV_ERR.
      SPI_AW_SIZE0_1_SUPPORT_EN : Boolean := True;
      --  Read-only. 1: Reply AXI read data to AXI bus when one AXI read beat
      --  data is available. 0: Reply AXI read data to AXI bus when all the
      --  read data is available.
      SPI_AXI_RDATA_BACK_FAST   : Boolean := True;
      --  1: RRESP is SLV_ERR when there is a ECC error in AXI read data. 0:
      --  RRESP is OKAY when there is a ECC error in AXI read data. The ECC
      --  error information is recorded in SPI_MEM_ECC_ERR_ADDR_REG.
      SPI_MEM_RRESP_ECC_ERR_EN  : Boolean := False;
      --  Read-only. Set this bit to enable AXI Read Splice-transfer.
      SPI_MEM_AR_SPLICE_EN      : Boolean := False;
      --  Read-only. Set this bit to enable AXI Write Splice-transfer.
      SPI_MEM_AW_SPLICE_EN      : Boolean := False;
      --  Read-only. When SPI_MEM_DUAL_RAM_EN is 0 and SPI_MEM_RAM0_EN is 1,
      --  only EXT_RAM0 will be accessed. When SPI_MEM_DUAL_RAM_EN is 0 and
      --  SPI_MEM_RAM0_EN is 0, only EXT_RAM1 will be accessed. When
      --  SPI_MEM_DUAL_RAM_EN is 1, EXT_RAM0 and EXT_RAM1 will be accessed at
      --  the same time.
      SPI_MEM_RAM0_EN           : Boolean := True;
      --  Read-only. Set this bit to enable DUAL-RAM mode, EXT_RAM0 and
      --  EXT_RAM1 will be accessed at the same time.
      SPI_MEM_DUAL_RAM_EN       : Boolean := False;
      --  Set this bit to write data faster, do not wait write data has been
      --  stored in tx_bus_fifo_l2. It will wait 4*T_clk_ctrl to insure the
      --  write data has been stored in tx_bus_fifo_l2.
      SPI_MEM_FAST_WRITE_EN     : Boolean := True;
      --  Write-only. The synchronous reset signal for SPI0 RX AFIFO and all
      --  the AES_MSPI SYNC FIFO to receive signals from AXI. Set this bit to
      --  reset these FIFO.
      SPI_MEM_RXFIFO_RST        : Boolean := False;
      --  Write-only. The synchronous reset signal for SPI0 TX AFIFO and all
      --  the AES_MSPI SYNC FIFO to send signals to AXI. Set this bit to reset
      --  these FIFO.
      SPI_MEM_TXFIFO_RST        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL1_Register use record
      SPI_MEM_CLK_MODE          at 0 range 0 .. 1;
      Reserved_2_20             at 0 range 2 .. 20;
      SPI_AR_SIZE0_1_SUPPORT_EN at 0 range 21 .. 21;
      SPI_AW_SIZE0_1_SUPPORT_EN at 0 range 22 .. 22;
      SPI_AXI_RDATA_BACK_FAST   at 0 range 23 .. 23;
      SPI_MEM_RRESP_ECC_ERR_EN  at 0 range 24 .. 24;
      SPI_MEM_AR_SPLICE_EN      at 0 range 25 .. 25;
      SPI_MEM_AW_SPLICE_EN      at 0 range 26 .. 26;
      SPI_MEM_RAM0_EN           at 0 range 27 .. 27;
      SPI_MEM_DUAL_RAM_EN       at 0 range 28 .. 28;
      SPI_MEM_FAST_WRITE_EN     at 0 range 29 .. 29;
      SPI_MEM_RXFIFO_RST        at 0 range 30 .. 30;
      SPI_MEM_TXFIFO_RST        at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_CTRL2_SPI_MEM_CS_SETUP_TIME_Field is HAL.UInt5;
   subtype SPI_MEM_CTRL2_SPI_MEM_CS_HOLD_TIME_Field is HAL.UInt5;
   subtype SPI_MEM_CTRL2_SPI_MEM_ECC_CS_HOLD_TIME_Field is HAL.UInt3;
   subtype SPI_MEM_CTRL2_SPI_MEM_CS_HOLD_DELAY_Field is HAL.UInt6;

   --  SPI0 control2 register.
   type SPI_MEM_CTRL2_Register is record
      --  (cycles-1) of prepare phase by SPI Bus clock, this bits are combined
      --  with SPI_MEM_CS_SETUP bit.
      SPI_MEM_CS_SETUP_TIME        : SPI_MEM_CTRL2_SPI_MEM_CS_SETUP_TIME_Field :=
                                      16#1#;
      --  SPI CS signal is delayed to inactive by SPI bus clock, this bits are
      --  combined with SPI_MEM_CS_HOLD bit.
      SPI_MEM_CS_HOLD_TIME         : SPI_MEM_CTRL2_SPI_MEM_CS_HOLD_TIME_Field :=
                                      16#1#;
      --  Read-only. SPI_MEM_CS_HOLD_TIME + SPI_MEM_ECC_CS_HOLD_TIME is the
      --  SPI0 CS hold cycle in ECC mode when accessed flash.
      SPI_MEM_ECC_CS_HOLD_TIME     : SPI_MEM_CTRL2_SPI_MEM_ECC_CS_HOLD_TIME_Field :=
                                      16#3#;
      --  Read-only. 1: SPI0 and SPI1 skip page corner when accesses flash. 0:
      --  Not skip page corner when accesses flash.
      SPI_MEM_ECC_SKIP_PAGE_CORNER : Boolean := True;
      --  Read-only. Set this bit to enable SPI0 and SPI1 ECC 16 bytes data
      --  with 2 ECC bytes mode when accesses flash.
      SPI_MEM_ECC_16TO18_BYTE_EN   : Boolean := False;
      --  unspecified
      Reserved_15_23               : HAL.UInt9 := 16#0#;
      --  Read-only. Set this bit to enable SPI0 split one AXI read flash
      --  transfer into two SPI transfers when one transfer will cross flash or
      --  EXT_RAM page corner, valid no matter whether there is an ECC region
      --  or not.
      SPI_MEM_SPLIT_TRANS_EN       : Boolean := False;
      --  These bits are used to set the minimum CS high time tSHSL between SPI
      --  burst transfer when accesses to flash. tSHSL is
      --  (SPI_MEM_CS_HOLD_DELAY[5:0] + 1) MSPI core clock cycles.
      SPI_MEM_CS_HOLD_DELAY        : SPI_MEM_CTRL2_SPI_MEM_CS_HOLD_DELAY_Field :=
                                      16#0#;
      --  Write-only. The spi0_mst_st and spi0_slv_st will be reset.
      SPI_MEM_SYNC_RESET           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CTRL2_Register use record
      SPI_MEM_CS_SETUP_TIME        at 0 range 0 .. 4;
      SPI_MEM_CS_HOLD_TIME         at 0 range 5 .. 9;
      SPI_MEM_ECC_CS_HOLD_TIME     at 0 range 10 .. 12;
      SPI_MEM_ECC_SKIP_PAGE_CORNER at 0 range 13 .. 13;
      SPI_MEM_ECC_16TO18_BYTE_EN   at 0 range 14 .. 14;
      Reserved_15_23               at 0 range 15 .. 23;
      SPI_MEM_SPLIT_TRANS_EN       at 0 range 24 .. 24;
      SPI_MEM_CS_HOLD_DELAY        at 0 range 25 .. 30;
      SPI_MEM_SYNC_RESET           at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_L_Field is HAL.UInt8;
   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_H_Field is HAL.UInt8;
   subtype SPI_MEM_CLOCK_SPI_MEM_CLKCNT_N_Field is HAL.UInt8;

   --  SPI clock division control register.
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
      --  1: 1-division mode, the frequency of SPI bus clock equals to that of
      --  MSPI module clock.
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

   --  SPI0 user register.
   type SPI_MEM_USER_Register is record
      --  unspecified
      Reserved_0_5           : HAL.UInt6 := 16#0#;
      --  spi cs keep low when spi is in done phase. 1: enable 0: disable.
      SPI_MEM_CS_HOLD        : Boolean := False;
      --  spi cs is enable when spi is in prepare phase. 1: enable 0: disable.
      SPI_MEM_CS_SETUP       : Boolean := False;
      --  unspecified
      Reserved_8_8           : HAL.Bit := 16#0#;
      --  The bit combined with SPI_MEM_CK_IDLE_EDGE bit to control SPI clock
      --  mode 0~3.
      SPI_MEM_CK_OUT_EDGE    : Boolean := False;
      --  unspecified
      Reserved_10_25         : HAL.UInt16 := 16#0#;
      --  spi clock is disable in dummy phase when the bit is enable.
      SPI_MEM_USR_DUMMY_IDLE : Boolean := False;
      --  unspecified
      Reserved_27_28         : HAL.UInt2 := 16#0#;
      --  This bit enable the dummy phase of an operation.
      SPI_MEM_USR_DUMMY      : Boolean := False;
      --  unspecified
      Reserved_30_31         : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_USER_Register use record
      Reserved_0_5           at 0 range 0 .. 5;
      SPI_MEM_CS_HOLD        at 0 range 6 .. 6;
      SPI_MEM_CS_SETUP       at 0 range 7 .. 7;
      Reserved_8_8           at 0 range 8 .. 8;
      SPI_MEM_CK_OUT_EDGE    at 0 range 9 .. 9;
      Reserved_10_25         at 0 range 10 .. 25;
      SPI_MEM_USR_DUMMY_IDLE at 0 range 26 .. 26;
      Reserved_27_28         at 0 range 27 .. 28;
      SPI_MEM_USR_DUMMY      at 0 range 29 .. 29;
      Reserved_30_31         at 0 range 30 .. 31;
   end record;

   subtype SPI_MEM_USER1_SPI_MEM_USR_DUMMY_CYCLELEN_Field is HAL.UInt6;
   subtype SPI_MEM_USER1_SPI_MEM_USR_DBYTELEN_Field is HAL.UInt3;
   subtype SPI_MEM_USER1_SPI_MEM_USR_ADDR_BITLEN_Field is HAL.UInt6;

   --  SPI0 user1 register.
   type SPI_MEM_USER1_Register is record
      --  The length in spi_mem_clk cycles of dummy phase. The register value
      --  shall be (cycle_num-1).
      SPI_MEM_USR_DUMMY_CYCLELEN : SPI_MEM_USER1_SPI_MEM_USR_DUMMY_CYCLELEN_Field :=
                                    16#7#;
      --  Read-only. SPI0 USR_CMD read or write data byte length -1
      SPI_MEM_USR_DBYTELEN       : SPI_MEM_USER1_SPI_MEM_USR_DBYTELEN_Field :=
                                    16#1#;
      --  unspecified
      Reserved_9_25              : HAL.UInt17 := 16#0#;
      --  The length in bits of address phase. The register value shall be
      --  (bit_num-1).
      SPI_MEM_USR_ADDR_BITLEN    : SPI_MEM_USER1_SPI_MEM_USR_ADDR_BITLEN_Field :=
                                    16#17#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_USER1_Register use record
      SPI_MEM_USR_DUMMY_CYCLELEN at 0 range 0 .. 5;
      SPI_MEM_USR_DBYTELEN       at 0 range 6 .. 8;
      Reserved_9_25              at 0 range 9 .. 25;
      SPI_MEM_USR_ADDR_BITLEN    at 0 range 26 .. 31;
   end record;

   subtype SPI_MEM_USER2_SPI_MEM_USR_COMMAND_VALUE_Field is HAL.UInt16;
   subtype SPI_MEM_USER2_SPI_MEM_USR_COMMAND_BITLEN_Field is HAL.UInt4;

   --  SPI0 user2 register.
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

   subtype SPI_MEM_RD_STATUS_SPI_MEM_WB_MODE_Field is HAL.UInt8;

   --  SPI0 read control register.
   type SPI_MEM_RD_STATUS_Register is record
      --  unspecified
      Reserved_0_15   : HAL.UInt16 := 16#0#;
      --  Mode bits in the flash fast read mode it is combined with
      --  spi_mem_fastrd_mode bit.
      SPI_MEM_WB_MODE : SPI_MEM_RD_STATUS_SPI_MEM_WB_MODE_Field := 16#0#;
      --  unspecified
      Reserved_24_31  : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_RD_STATUS_Register use record
      Reserved_0_15   at 0 range 0 .. 15;
      SPI_MEM_WB_MODE at 0 range 16 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  SPI0 misc register
   type SPI_MEM_MISC_Register is record
      --  unspecified
      Reserved_0_6           : HAL.UInt7 := 16#0#;
      --  Read-only. For SPI0, flash is connected to SUBPINs.
      SPI_MEM_FSUB_PIN       : Boolean := False;
      --  Read-only. For SPI0, sram is connected to SUBPINs.
      SPI_MEM_SSUB_PIN       : Boolean := False;
      --  1: SPI_CLK line is high when idle 0: spi clk line is low when idle
      SPI_MEM_CK_IDLE_EDGE   : Boolean := False;
      --  SPI_CS line keep low when the bit is set.
      SPI_MEM_CS_KEEP_ACTIVE : Boolean := False;
      --  unspecified
      Reserved_11_31         : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_MISC_Register use record
      Reserved_0_6           at 0 range 0 .. 6;
      SPI_MEM_FSUB_PIN       at 0 range 7 .. 7;
      SPI_MEM_SSUB_PIN       at 0 range 8 .. 8;
      SPI_MEM_CK_IDLE_EDGE   at 0 range 9 .. 9;
      SPI_MEM_CS_KEEP_ACTIVE at 0 range 10 .. 10;
      Reserved_11_31         at 0 range 11 .. 31;
   end record;

   --  SPI0 bit mode control register.
   type SPI_MEM_CACHE_FCTRL_Register is record
      --  For SPI0, AXI master access enable, 1: enable, 0:disable.
      SPI_MEM_AXI_REQ_EN           : Boolean := False;
      --  For SPI0, cache read flash with 4 bytes address, 1: enable,
      --  0:disable.
      SPI_MEM_CACHE_USR_ADDR_4BYTE : Boolean := False;
      --  For SPI0, cache read flash for user define command, 1: enable,
      --  0:disable.
      SPI_MEM_CACHE_FLASH_USR_CMD  : Boolean := False;
      --  For SPI0 flash, din phase apply 2 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_dio.
      SPI_MEM_FDIN_DUAL            : Boolean := False;
      --  For SPI0 flash, dout phase apply 2 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_dio.
      SPI_MEM_FDOUT_DUAL           : Boolean := False;
      --  For SPI0 flash, address phase apply 2 signals. 1: enable 0: disable.
      --  The bit is the same with spi_mem_fread_dio.
      SPI_MEM_FADDR_DUAL           : Boolean := False;
      --  For SPI0 flash, din phase apply 4 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_qio.
      SPI_MEM_FDIN_QUAD            : Boolean := False;
      --  For SPI0 flash, dout phase apply 4 signals. 1: enable 0: disable. The
      --  bit is the same with spi_mem_fread_qio.
      SPI_MEM_FDOUT_QUAD           : Boolean := False;
      --  For SPI0 flash, address phase apply 4 signals. 1: enable 0: disable.
      --  The bit is the same with spi_mem_fread_qio.
      SPI_MEM_FADDR_QUAD           : Boolean := False;
      --  unspecified
      Reserved_9_29                : HAL.UInt21 := 16#0#;
      --  Read-only. Set this bit to check AXI read/write the same address
      --  region.
      SPI_SAME_AW_AR_ADDR_CHK_EN   : Boolean := True;
      --  Set this bit to close AXI read/write transfer to MSPI, which means
      --  that only SLV_ERR will be replied to BRESP/RRESP.
      SPI_CLOSE_AXI_INF_EN         : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CACHE_FCTRL_Register use record
      SPI_MEM_AXI_REQ_EN           at 0 range 0 .. 0;
      SPI_MEM_CACHE_USR_ADDR_4BYTE at 0 range 1 .. 1;
      SPI_MEM_CACHE_FLASH_USR_CMD  at 0 range 2 .. 2;
      SPI_MEM_FDIN_DUAL            at 0 range 3 .. 3;
      SPI_MEM_FDOUT_DUAL           at 0 range 4 .. 4;
      SPI_MEM_FADDR_DUAL           at 0 range 5 .. 5;
      SPI_MEM_FDIN_QUAD            at 0 range 6 .. 6;
      SPI_MEM_FDOUT_QUAD           at 0 range 7 .. 7;
      SPI_MEM_FADDR_QUAD           at 0 range 8 .. 8;
      Reserved_9_29                at 0 range 9 .. 29;
      SPI_SAME_AW_AR_ADDR_CHK_EN   at 0 range 30 .. 30;
      SPI_CLOSE_AXI_INF_EN         at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_RDUMMY_CYCLELEN_Field is HAL.UInt6;
   subtype SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_ADDR_BITLEN_Field is HAL.UInt6;
   subtype SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_WDUMMY_CYCLELEN_Field is HAL.UInt6;

   --  SPI0 external RAM control register
   type SPI_MEM_CACHE_SCTRL_Register is record
      --  Read-only. For SPI0, In the external RAM mode, cache read flash with
      --  4 bytes command, 1: enable, 0:disable.
      SPI_MEM_CACHE_USR_SADDR_4BYTE : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, spi dual I/O mode
      --  enable, 1: enable, 0:disable
      SPI_MEM_USR_SRAM_DIO          : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, spi quad I/O mode
      --  enable, 1: enable, 0:disable
      SPI_MEM_USR_SRAM_QIO          : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, it is the enable bit
      --  of dummy phase for write operations.
      SPI_MEM_USR_WR_SRAM_DUMMY     : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, it is the enable bit
      --  of dummy phase for read operations.
      SPI_MEM_USR_RD_SRAM_DUMMY     : Boolean;
      --  Read-only. For SPI0, In the external RAM mode cache read external RAM
      --  for user define command.
      SPI_MEM_CACHE_SRAM_USR_RCMD   : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, it is the length in
      --  bits of read dummy phase. The register value shall be (bit_num-1).
      SPI_MEM_SRAM_RDUMMY_CYCLELEN  : SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_RDUMMY_CYCLELEN_Field;
      --  unspecified
      Reserved_12_13                : HAL.UInt2;
      --  Read-only. For SPI0, In the external RAM mode, it is the length in
      --  bits of address phase. The register value shall be (bit_num-1).
      SPI_MEM_SRAM_ADDR_BITLEN      : SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_ADDR_BITLEN_Field;
      --  Read-only. For SPI0, In the external RAM mode cache write sram for
      --  user define command
      SPI_MEM_CACHE_SRAM_USR_WCMD   : Boolean;
      --  Read-only. reserved
      SPI_MEM_SRAM_OCT              : Boolean;
      --  Read-only. For SPI0, In the external RAM mode, it is the length in
      --  bits of write dummy phase. The register value shall be (bit_num-1).
      SPI_MEM_SRAM_WDUMMY_CYCLELEN  : SPI_MEM_CACHE_SCTRL_SPI_MEM_SRAM_WDUMMY_CYCLELEN_Field;
      --  unspecified
      Reserved_28_31                : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CACHE_SCTRL_Register use record
      SPI_MEM_CACHE_USR_SADDR_4BYTE at 0 range 0 .. 0;
      SPI_MEM_USR_SRAM_DIO          at 0 range 1 .. 1;
      SPI_MEM_USR_SRAM_QIO          at 0 range 2 .. 2;
      SPI_MEM_USR_WR_SRAM_DUMMY     at 0 range 3 .. 3;
      SPI_MEM_USR_RD_SRAM_DUMMY     at 0 range 4 .. 4;
      SPI_MEM_CACHE_SRAM_USR_RCMD   at 0 range 5 .. 5;
      SPI_MEM_SRAM_RDUMMY_CYCLELEN  at 0 range 6 .. 11;
      Reserved_12_13                at 0 range 12 .. 13;
      SPI_MEM_SRAM_ADDR_BITLEN      at 0 range 14 .. 19;
      SPI_MEM_CACHE_SRAM_USR_WCMD   at 0 range 20 .. 20;
      SPI_MEM_SRAM_OCT              at 0 range 21 .. 21;
      SPI_MEM_SRAM_WDUMMY_CYCLELEN  at 0 range 22 .. 27;
      Reserved_28_31                at 0 range 28 .. 31;
   end record;

   subtype SPI_MEM_SRAM_CMD_SPI_MEM_SCLK_MODE_Field is HAL.UInt2;
   subtype SPI_MEM_SRAM_CMD_SPI_MEM_SWB_MODE_Field is HAL.UInt8;

   --  SPI0 external RAM mode control register
   type SPI_MEM_SRAM_CMD_Register is record
      --  Read-only. SPI clock mode bits. 0: SPI clock is off when CS inactive
      --  1: SPI clock is delayed one cycle after CS inactive 2: SPI clock is
      --  delayed two cycles after CS inactive 3: SPI clock is always on.
      SPI_MEM_SCLK_MODE              : SPI_MEM_SRAM_CMD_SPI_MEM_SCLK_MODE_Field :=
                                        16#0#;
      --  Read-only. Mode bits in the external RAM fast read mode it is
      --  combined with spi_mem_fastrd_mode bit.
      SPI_MEM_SWB_MODE               : SPI_MEM_SRAM_CMD_SPI_MEM_SWB_MODE_Field :=
                                        16#0#;
      --  Read-only. For SPI0 external RAM , din phase apply 2 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_dio.
      SPI_MEM_SDIN_DUAL              : Boolean := False;
      --  Read-only. For SPI0 external RAM , dout phase apply 2 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_dio.
      SPI_MEM_SDOUT_DUAL             : Boolean := False;
      --  Read-only. For SPI0 external RAM , address phase apply 2 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_dio.
      SPI_MEM_SADDR_DUAL             : Boolean := False;
      --  unspecified
      Reserved_13_13                 : HAL.Bit := 16#0#;
      --  Read-only. For SPI0 external RAM , din phase apply 4 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_qio.
      SPI_MEM_SDIN_QUAD              : Boolean := False;
      --  Read-only. For SPI0 external RAM , dout phase apply 4 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_qio.
      SPI_MEM_SDOUT_QUAD             : Boolean := False;
      --  Read-only. For SPI0 external RAM , address phase apply 4 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_qio.
      SPI_MEM_SADDR_QUAD             : Boolean := False;
      --  Read-only. For SPI0 external RAM , cmd phase apply 4 signals. 1:
      --  enable 0: disable. The bit is the same with spi_mem_usr_sram_qio.
      SPI_MEM_SCMD_QUAD              : Boolean := False;
      --  Read-only. For SPI0 external RAM , din phase apply 8 signals. 1:
      --  enable 0: disable.
      SPI_MEM_SDIN_OCT               : Boolean := False;
      --  Read-only. For SPI0 external RAM , dout phase apply 8 signals. 1:
      --  enable 0: disable.
      SPI_MEM_SDOUT_OCT              : Boolean := False;
      --  Read-only. For SPI0 external RAM , address phase apply 4 signals. 1:
      --  enable 0: disable.
      SPI_MEM_SADDR_OCT              : Boolean := False;
      --  Read-only. For SPI0 external RAM , cmd phase apply 8 signals. 1:
      --  enable 0: disable.
      SPI_MEM_SCMD_OCT               : Boolean := False;
      --  In the dummy phase of a MSPI read data transfer when accesses to
      --  external RAM, the signal level of SPI bus is output by the MSPI
      --  controller.
      SPI_MEM_SDUMMY_RIN             : Boolean := True;
      --  Read-only. In the dummy phase of a MSPI write data transfer when
      --  accesses to external RAM, the signal level of SPI bus is output by
      --  the MSPI controller.
      SPI_MEM_SDUMMY_WOUT            : Boolean := False;
      --  Read-only. In the dummy phase of an MSPI write data transfer when
      --  accesses to external RAM, the level of SPI_DQS is output by the MSPI
      --  controller.
      SPI_SMEM_WDUMMY_DQS_ALWAYS_OUT : Boolean := False;
      --  Read-only. In the dummy phase of an MSPI write data transfer when
      --  accesses to external RAM, the level of SPI_IO[7:0] is output by the
      --  MSPI controller.
      SPI_SMEM_WDUMMY_ALWAYS_OUT     : Boolean := False;
      --  unspecified
      Reserved_26_29                 : HAL.UInt4 := 16#0#;
      --  Read-only. When accesses to external RAM, 1: the IE signals of pads
      --  connected to SPI_DQS are always 1. 0: Others.
      SPI_SMEM_DQS_IE_ALWAYS_ON      : Boolean := True;
      --  Read-only. When accesses to external RAM, 1: the IE signals of pads
      --  connected to SPI_IO[7:0] are always 1. 0: Others.
      SPI_SMEM_DATA_IE_ALWAYS_ON     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_SRAM_CMD_Register use record
      SPI_MEM_SCLK_MODE              at 0 range 0 .. 1;
      SPI_MEM_SWB_MODE               at 0 range 2 .. 9;
      SPI_MEM_SDIN_DUAL              at 0 range 10 .. 10;
      SPI_MEM_SDOUT_DUAL             at 0 range 11 .. 11;
      SPI_MEM_SADDR_DUAL             at 0 range 12 .. 12;
      Reserved_13_13                 at 0 range 13 .. 13;
      SPI_MEM_SDIN_QUAD              at 0 range 14 .. 14;
      SPI_MEM_SDOUT_QUAD             at 0 range 15 .. 15;
      SPI_MEM_SADDR_QUAD             at 0 range 16 .. 16;
      SPI_MEM_SCMD_QUAD              at 0 range 17 .. 17;
      SPI_MEM_SDIN_OCT               at 0 range 18 .. 18;
      SPI_MEM_SDOUT_OCT              at 0 range 19 .. 19;
      SPI_MEM_SADDR_OCT              at 0 range 20 .. 20;
      SPI_MEM_SCMD_OCT               at 0 range 21 .. 21;
      SPI_MEM_SDUMMY_RIN             at 0 range 22 .. 22;
      SPI_MEM_SDUMMY_WOUT            at 0 range 23 .. 23;
      SPI_SMEM_WDUMMY_DQS_ALWAYS_OUT at 0 range 24 .. 24;
      SPI_SMEM_WDUMMY_ALWAYS_OUT     at 0 range 25 .. 25;
      Reserved_26_29                 at 0 range 26 .. 29;
      SPI_SMEM_DQS_IE_ALWAYS_ON      at 0 range 30 .. 30;
      SPI_SMEM_DATA_IE_ALWAYS_ON     at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_SRAM_DRD_CMD_SPI_MEM_CACHE_SRAM_USR_RD_CMD_VALUE_Field is
     HAL.UInt16;
   subtype SPI_MEM_SRAM_DRD_CMD_SPI_MEM_CACHE_SRAM_USR_RD_CMD_BITLEN_Field is
     HAL.UInt4;

   --  SPI0 external RAM DDR read command control register
   type SPI_MEM_SRAM_DRD_CMD_Register is record
      --  Read-only. For SPI0,When cache mode is enable it is the read command
      --  value of command phase for sram.
      SPI_MEM_CACHE_SRAM_USR_RD_CMD_VALUE  : SPI_MEM_SRAM_DRD_CMD_SPI_MEM_CACHE_SRAM_USR_RD_CMD_VALUE_Field;
      --  unspecified
      Reserved_16_27                       : HAL.UInt12;
      --  Read-only. For SPI0,When cache mode is enable it is the length in
      --  bits of command phase for sram. The register value shall be
      --  (bit_num-1).
      SPI_MEM_CACHE_SRAM_USR_RD_CMD_BITLEN : SPI_MEM_SRAM_DRD_CMD_SPI_MEM_CACHE_SRAM_USR_RD_CMD_BITLEN_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_SRAM_DRD_CMD_Register use record
      SPI_MEM_CACHE_SRAM_USR_RD_CMD_VALUE  at 0 range 0 .. 15;
      Reserved_16_27                       at 0 range 16 .. 27;
      SPI_MEM_CACHE_SRAM_USR_RD_CMD_BITLEN at 0 range 28 .. 31;
   end record;

   subtype SPI_MEM_SRAM_DWR_CMD_SPI_MEM_CACHE_SRAM_USR_WR_CMD_VALUE_Field is
     HAL.UInt16;
   subtype SPI_MEM_SRAM_DWR_CMD_SPI_MEM_CACHE_SRAM_USR_WR_CMD_BITLEN_Field is
     HAL.UInt4;

   --  SPI0 external RAM DDR write command control register
   type SPI_MEM_SRAM_DWR_CMD_Register is record
      --  Read-only. For SPI0,When cache mode is enable it is the write command
      --  value of command phase for sram.
      SPI_MEM_CACHE_SRAM_USR_WR_CMD_VALUE  : SPI_MEM_SRAM_DWR_CMD_SPI_MEM_CACHE_SRAM_USR_WR_CMD_VALUE_Field;
      --  unspecified
      Reserved_16_27                       : HAL.UInt12;
      --  Read-only. For SPI0,When cache mode is enable it is the in bits of
      --  command phase for sram. The register value shall be (bit_num-1).
      SPI_MEM_CACHE_SRAM_USR_WR_CMD_BITLEN : SPI_MEM_SRAM_DWR_CMD_SPI_MEM_CACHE_SRAM_USR_WR_CMD_BITLEN_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_SRAM_DWR_CMD_Register use record
      SPI_MEM_CACHE_SRAM_USR_WR_CMD_VALUE  at 0 range 0 .. 15;
      Reserved_16_27                       at 0 range 16 .. 27;
      SPI_MEM_CACHE_SRAM_USR_WR_CMD_BITLEN at 0 range 28 .. 31;
   end record;

   subtype SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_L_Field is HAL.UInt8;
   subtype SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_H_Field is HAL.UInt8;
   subtype SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_N_Field is HAL.UInt8;

   --  SPI0 external RAM clock control register
   type SPI_MEM_SRAM_CLK_Register is record
      --  Read-only. For SPI0 external RAM interface, it must be equal to
      --  spi_mem_clkcnt_N.
      SPI_MEM_SCLKCNT_L       : SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_L_Field;
      --  Read-only. For SPI0 external RAM interface, it must be
      --  floor((spi_mem_clkcnt_N+1)/2-1).
      SPI_MEM_SCLKCNT_H       : SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_H_Field;
      --  Read-only. For SPI0 external RAM interface, it is the divider of
      --  spi_mem_clk. So spi_mem_clk frequency is system/(spi_mem_clkcnt_N+1)
      SPI_MEM_SCLKCNT_N       : SPI_MEM_SRAM_CLK_SPI_MEM_SCLKCNT_N_Field;
      --  unspecified
      Reserved_24_30          : HAL.UInt7;
      --  Read-only. For SPI0 external RAM interface, 1: spi_mem_clk is eqaul
      --  to system 0: spi_mem_clk is divided from system clock.
      SPI_MEM_SCLK_EQU_SYSCLK : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_SRAM_CLK_Register use record
      SPI_MEM_SCLKCNT_L       at 0 range 0 .. 7;
      SPI_MEM_SCLKCNT_H       at 0 range 8 .. 15;
      SPI_MEM_SCLKCNT_N       at 0 range 16 .. 23;
      Reserved_24_30          at 0 range 24 .. 30;
      SPI_MEM_SCLK_EQU_SYSCLK at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_FSM_SPI_MEM_LOCK_DELAY_TIME_Field is HAL.UInt5;

   --  SPI0 FSM status register
   type SPI_MEM_FSM_Register is record
      --  unspecified
      Reserved_0_6            : HAL.UInt7 := 16#0#;
      --  The lock delay time of SPI0/1 arbiter by spi0_slv_st, after PER is
      --  sent by SPI1.
      SPI_MEM_LOCK_DELAY_TIME : SPI_MEM_FSM_SPI_MEM_LOCK_DELAY_TIME_Field :=
                                 16#4#;
      --  unspecified
      Reserved_12_31          : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_FSM_Register use record
      Reserved_0_6            at 0 range 0 .. 6;
      SPI_MEM_LOCK_DELAY_TIME at 0 range 7 .. 11;
      Reserved_12_31          at 0 range 12 .. 31;
   end record;

   --  SPI0 interrupt enable register
   type SPI_MEM_INT_ENA_Register is record
      --  unspecified
      Reserved_0_2                     : HAL.UInt3 := 16#0#;
      --  The enable bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_ENA       : Boolean := False;
      --  The enable bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_ENA       : Boolean := False;
      --  Read-only. The enable bit for SPI_MEM_ECC_ERR_INT interrupt.
      SPI_MEM_ECC_ERR_INT_ENA          : Boolean := False;
      --  The enable bit for SPI_MEM_PMS_REJECT_INT interrupt.
      SPI_MEM_PMS_REJECT_INT_ENA       : Boolean := False;
      --  The enable bit for SPI_MEM_AXI_RADDR_ERR_INT interrupt.
      SPI_MEM_AXI_RADDR_ERR_INT_ENA    : Boolean := False;
      --  Read-only. The enable bit for SPI_MEM_AXI_WR_FALSH_ERR_INT interrupt.
      SPI_MEM_AXI_WR_FLASH_ERR_INT_ENA : Boolean := False;
      --  Read-only. The enable bit for SPI_MEM_AXI_WADDR_ERR_INT interrupt.
      SPI_MEM_AXI_WADDR_ERR_INT_ENA    : Boolean := False;
      --  unspecified
      Reserved_10_31                   : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_ENA_Register use record
      Reserved_0_2                     at 0 range 0 .. 2;
      SPI_MEM_SLV_ST_END_INT_ENA       at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_ENA       at 0 range 4 .. 4;
      SPI_MEM_ECC_ERR_INT_ENA          at 0 range 5 .. 5;
      SPI_MEM_PMS_REJECT_INT_ENA       at 0 range 6 .. 6;
      SPI_MEM_AXI_RADDR_ERR_INT_ENA    at 0 range 7 .. 7;
      SPI_MEM_AXI_WR_FLASH_ERR_INT_ENA at 0 range 8 .. 8;
      SPI_MEM_AXI_WADDR_ERR_INT_ENA    at 0 range 9 .. 9;
      Reserved_10_31                   at 0 range 10 .. 31;
   end record;

   --  SPI0 interrupt clear register
   type SPI_MEM_INT_CLR_Register is record
      --  unspecified
      Reserved_0_2                     : HAL.UInt3 := 16#0#;
      --  Write-only. The clear bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_CLR       : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_CLR       : Boolean := False;
      --  Read-only. The clear bit for SPI_MEM_ECC_ERR_INT interrupt.
      SPI_MEM_ECC_ERR_INT_CLR          : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_PMS_REJECT_INT interrupt.
      SPI_MEM_PMS_REJECT_INT_CLR       : Boolean := False;
      --  Write-only. The clear bit for SPI_MEM_AXI_RADDR_ERR_INT interrupt.
      SPI_MEM_AXI_RADDR_ERR_INT_CLR    : Boolean := False;
      --  Read-only. The clear bit for SPI_MEM_AXI_WR_FALSH_ERR_INT interrupt.
      SPI_MEM_AXI_WR_FLASH_ERR_INT_CLR : Boolean := False;
      --  Read-only. The clear bit for SPI_MEM_AXI_WADDR_ERR_INT interrupt.
      SPI_MEM_AXI_WADDR_ERR_INT_CLR    : Boolean := False;
      --  unspecified
      Reserved_10_31                   : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_CLR_Register use record
      Reserved_0_2                     at 0 range 0 .. 2;
      SPI_MEM_SLV_ST_END_INT_CLR       at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_CLR       at 0 range 4 .. 4;
      SPI_MEM_ECC_ERR_INT_CLR          at 0 range 5 .. 5;
      SPI_MEM_PMS_REJECT_INT_CLR       at 0 range 6 .. 6;
      SPI_MEM_AXI_RADDR_ERR_INT_CLR    at 0 range 7 .. 7;
      SPI_MEM_AXI_WR_FLASH_ERR_INT_CLR at 0 range 8 .. 8;
      SPI_MEM_AXI_WADDR_ERR_INT_CLR    at 0 range 9 .. 9;
      Reserved_10_31                   at 0 range 10 .. 31;
   end record;

   --  SPI0 interrupt raw register
   type SPI_MEM_INT_RAW_Register is record
      --  unspecified
      Reserved_0_2                     : HAL.UInt3 := 16#0#;
      --  The raw bit for SPI_MEM_SLV_ST_END_INT interrupt. 1: Triggered when
      --  spi0_slv_st is changed from non idle state to idle state. It means
      --  that SPI_CS raises high. 0: Others
      SPI_MEM_SLV_ST_END_INT_RAW       : Boolean := False;
      --  The raw bit for SPI_MEM_MST_ST_END_INT interrupt. 1: Triggered when
      --  spi0_mst_st is changed from non idle state to idle state. 0: Others.
      SPI_MEM_MST_ST_END_INT_RAW       : Boolean := False;
      --  Read-only. The raw bit for SPI_MEM_ECC_ERR_INT interrupt. When
      --  SPI_FMEM_ECC_ERR_INT_EN is set and SPI_SMEM_ECC_ERR_INT_EN is
      --  cleared, this bit is triggered when the error times of SPI0/1 ECC
      --  read flash are equal or bigger than SPI_MEM_ECC_ERR_INT_NUM. When
      --  SPI_FMEM_ECC_ERR_INT_EN is cleared and SPI_SMEM_ECC_ERR_INT_EN is
      --  set, this bit is triggered when the error times of SPI0/1 ECC read
      --  external RAM are equal or bigger than SPI_MEM_ECC_ERR_INT_NUM. When
      --  SPI_FMEM_ECC_ERR_INT_EN and SPI_SMEM_ECC_ERR_INT_EN are set, this bit
      --  is triggered when the total error times of SPI0/1 ECC read external
      --  RAM and flash are equal or bigger than SPI_MEM_ECC_ERR_INT_NUM. When
      --  SPI_FMEM_ECC_ERR_INT_EN and SPI_SMEM_ECC_ERR_INT_EN are cleared, this
      --  bit will not be triggered.
      SPI_MEM_ECC_ERR_INT_RAW          : Boolean := False;
      --  The raw bit for SPI_MEM_PMS_REJECT_INT interrupt. 1: Triggered when
      --  SPI1 access is rejected. 0: Others.
      SPI_MEM_PMS_REJECT_INT_RAW       : Boolean := False;
      --  The raw bit for SPI_MEM_AXI_RADDR_ERR_INT interrupt. 1: Triggered
      --  when AXI read address is invalid by compared to MMU configuration. 0:
      --  Others.
      SPI_MEM_AXI_RADDR_ERR_INT_RAW    : Boolean := False;
      --  Read-only. The raw bit for SPI_MEM_AXI_WR_FALSH_ERR_INT interrupt. 1:
      --  Triggered when AXI write flash request is received. 0: Others.
      SPI_MEM_AXI_WR_FLASH_ERR_INT_RAW : Boolean := False;
      --  Read-only. The raw bit for SPI_MEM_AXI_WADDR_ERR_INT interrupt. 1:
      --  Triggered when AXI write address is invalid by compared to MMU
      --  configuration. 0: Others.
      SPI_MEM_AXI_WADDR_ERR_INT_RAW    : Boolean := False;
      --  unspecified
      Reserved_10_31                   : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_RAW_Register use record
      Reserved_0_2                     at 0 range 0 .. 2;
      SPI_MEM_SLV_ST_END_INT_RAW       at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_RAW       at 0 range 4 .. 4;
      SPI_MEM_ECC_ERR_INT_RAW          at 0 range 5 .. 5;
      SPI_MEM_PMS_REJECT_INT_RAW       at 0 range 6 .. 6;
      SPI_MEM_AXI_RADDR_ERR_INT_RAW    at 0 range 7 .. 7;
      SPI_MEM_AXI_WR_FLASH_ERR_INT_RAW at 0 range 8 .. 8;
      SPI_MEM_AXI_WADDR_ERR_INT_RAW    at 0 range 9 .. 9;
      Reserved_10_31                   at 0 range 10 .. 31;
   end record;

   --  SPI0 interrupt status register
   type SPI_MEM_INT_ST_Register is record
      --  unspecified
      Reserved_0_2                    : HAL.UInt3;
      --  Read-only. The status bit for SPI_MEM_SLV_ST_END_INT interrupt.
      SPI_MEM_SLV_ST_END_INT_ST       : Boolean;
      --  Read-only. The status bit for SPI_MEM_MST_ST_END_INT interrupt.
      SPI_MEM_MST_ST_END_INT_ST       : Boolean;
      --  Read-only. The status bit for SPI_MEM_ECC_ERR_INT interrupt.
      SPI_MEM_ECC_ERR_INT_ST          : Boolean;
      --  Read-only. The status bit for SPI_MEM_PMS_REJECT_INT interrupt.
      SPI_MEM_PMS_REJECT_INT_ST       : Boolean;
      --  Read-only. The enable bit for SPI_MEM_AXI_RADDR_ERR_INT interrupt.
      SPI_MEM_AXI_RADDR_ERR_INT_ST    : Boolean;
      --  Read-only. The enable bit for SPI_MEM_AXI_WR_FALSH_ERR_INT interrupt.
      SPI_MEM_AXI_WR_FLASH_ERR_INT_ST : Boolean;
      --  Read-only. The enable bit for SPI_MEM_AXI_WADDR_ERR_INT interrupt.
      SPI_MEM_AXI_WADDR_ERR_INT_ST    : Boolean;
      --  unspecified
      Reserved_10_31                  : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_INT_ST_Register use record
      Reserved_0_2                    at 0 range 0 .. 2;
      SPI_MEM_SLV_ST_END_INT_ST       at 0 range 3 .. 3;
      SPI_MEM_MST_ST_END_INT_ST       at 0 range 4 .. 4;
      SPI_MEM_ECC_ERR_INT_ST          at 0 range 5 .. 5;
      SPI_MEM_PMS_REJECT_INT_ST       at 0 range 6 .. 6;
      SPI_MEM_AXI_RADDR_ERR_INT_ST    at 0 range 7 .. 7;
      SPI_MEM_AXI_WR_FLASH_ERR_INT_ST at 0 range 8 .. 8;
      SPI_MEM_AXI_WADDR_ERR_INT_ST    at 0 range 9 .. 9;
      Reserved_10_31                  at 0 range 10 .. 31;
   end record;

   subtype SPI_MEM_DDR_SPI_FMEM_OUTMINBYTELEN_Field is HAL.UInt7;
   subtype SPI_MEM_DDR_SPI_FMEM_USR_DDR_DQS_THD_Field is HAL.UInt7;

   --  SPI0 flash DDR mode control register
   type SPI_MEM_DDR_Register is record
      --  Read-only. 1: in DDR mode, 0 in SDR mode
      SPI_FMEM_DDR_EN            : Boolean;
      --  Read-only. Set the bit to enable variable dummy cycle in spi DDR
      --  mode.
      SPI_FMEM_VAR_DUMMY         : Boolean;
      --  Read-only. Set the bit to reorder rx data of the word in spi DDR
      --  mode.
      SPI_FMEM_DDR_RDAT_SWP      : Boolean;
      --  Read-only. Set the bit to reorder tx data of the word in spi DDR
      --  mode.
      SPI_FMEM_DDR_WDAT_SWP      : Boolean;
      --  Read-only. the bit is used to disable dual edge in command phase when
      --  DDR mode.
      SPI_FMEM_DDR_CMD_DIS       : Boolean;
      --  Read-only. It is the minimum output data length in the panda device.
      SPI_FMEM_OUTMINBYTELEN     : SPI_MEM_DDR_SPI_FMEM_OUTMINBYTELEN_Field;
      --  Read-only. Set this bit to mask the first or the last byte in SPI0
      --  ECC DDR write mode, when accesses to flash.
      SPI_FMEM_TX_DDR_MSK_EN     : Boolean;
      --  Read-only. Set this bit to mask the first or the last byte in SPI0
      --  ECC DDR read mode, when accesses to flash.
      SPI_FMEM_RX_DDR_MSK_EN     : Boolean;
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
      SPI_FMEM_TX_DDR_MSK_EN     at 0 range 12 .. 12;
      SPI_FMEM_RX_DDR_MSK_EN     at 0 range 13 .. 13;
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

   subtype SPI_SMEM_DDR_SPI_SMEM_OUTMINBYTELEN_Field is HAL.UInt7;
   subtype SPI_SMEM_DDR_SPI_SMEM_USR_DDR_DQS_THD_Field is HAL.UInt7;

   --  SPI0 external RAM DDR mode control register
   type SPI_SMEM_DDR_Register is record
      --  Read-only. 1: in DDR mode, 0 in SDR mode
      EN                         : Boolean;
      --  Read-only. Set the bit to enable variable dummy cycle in spi DDR
      --  mode.
      SPI_SMEM_VAR_DUMMY         : Boolean;
      --  Read-only. Set the bit to reorder rx data of the word in spi DDR
      --  mode.
      RDAT_SWP                   : Boolean;
      --  Read-only. Set the bit to reorder tx data of the word in spi DDR
      --  mode.
      WDAT_SWP                   : Boolean;
      --  Read-only. the bit is used to disable dual edge in command phase when
      --  DDR mode.
      CMD_DIS                    : Boolean;
      --  Read-only. It is the minimum output data length in the DDR psram.
      SPI_SMEM_OUTMINBYTELEN     : SPI_SMEM_DDR_SPI_SMEM_OUTMINBYTELEN_Field;
      --  Read-only. Set this bit to mask the first or the last byte in SPI0
      --  ECC DDR write mode, when accesses to external RAM.
      SPI_SMEM_TX_DDR_MSK_EN     : Boolean;
      --  Read-only. Set this bit to mask the first or the last byte in SPI0
      --  ECC DDR read mode, when accesses to external RAM.
      SPI_SMEM_RX_DDR_MSK_EN     : Boolean;
      --  Read-only. The delay number of data strobe which from memory based on
      --  SPI clock.
      SPI_SMEM_USR_DDR_DQS_THD   : SPI_SMEM_DDR_SPI_SMEM_USR_DDR_DQS_THD_Field;
      --  Read-only. 1: Do not need the input of SPI_DQS signal, SPI0 starts to
      --  receive data when spi0_slv_st is in SPI_MEM_DIN state. It is used
      --  when there is no SPI_DQS signal or SPI_DQS signal is not stable. 0:
      --  SPI0 starts to store data at the positive and negative edge of
      --  SPI_DQS.
      DQS_LOOP                   : Boolean;
      --  unspecified
      Reserved_22_23             : HAL.UInt2;
      --  Read-only. Set this bit to enable the differential SPI_CLK#.
      SPI_SMEM_CLK_DIFF_EN       : Boolean;
      --  unspecified
      Reserved_25_25             : HAL.Bit;
      --  Read-only. Set this bit to enable the input of SPI_DQS signal in SPI
      --  phases of CMD and ADDR.
      SPI_SMEM_DQS_CA_IN         : Boolean;
      --  Read-only. Set this bit to enable the vary dummy function in SPI
      --  HyperBus mode, when SPI0 accesses flash or SPI1 accesses flash or
      --  sram.
      SPI_SMEM_HYPERBUS_DUMMY_2X : Boolean;
      --  Read-only. Set this bit to invert SPI_DIFF when accesses to external
      --  RAM. .
      SPI_SMEM_CLK_DIFF_INV      : Boolean;
      --  Read-only. Set this bit to enable octa_ram address out when accesses
      --  to external RAM, which means ADDR_OUT[31:0] =
      --  {spi_usr_addr_value[25:4], 6'd0, spi_usr_addr_value[3:1], 1'b0}.
      SPI_SMEM_OCTA_RAM_ADDR     : Boolean;
      --  Read-only. Set this bit to enable HyperRAM address out when accesses
      --  to external RAM, which means ADDR_OUT[31:0] =
      --  {spi_usr_addr_value[19:4], 13'd0, spi_usr_addr_value[3:1]}.
      SPI_SMEM_HYPERBUS_CA       : Boolean;
      --  unspecified
      Reserved_31_31             : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_DDR_Register use record
      EN                         at 0 range 0 .. 0;
      SPI_SMEM_VAR_DUMMY         at 0 range 1 .. 1;
      RDAT_SWP                   at 0 range 2 .. 2;
      WDAT_SWP                   at 0 range 3 .. 3;
      CMD_DIS                    at 0 range 4 .. 4;
      SPI_SMEM_OUTMINBYTELEN     at 0 range 5 .. 11;
      SPI_SMEM_TX_DDR_MSK_EN     at 0 range 12 .. 12;
      SPI_SMEM_RX_DDR_MSK_EN     at 0 range 13 .. 13;
      SPI_SMEM_USR_DDR_DQS_THD   at 0 range 14 .. 20;
      DQS_LOOP                   at 0 range 21 .. 21;
      Reserved_22_23             at 0 range 22 .. 23;
      SPI_SMEM_CLK_DIFF_EN       at 0 range 24 .. 24;
      Reserved_25_25             at 0 range 25 .. 25;
      SPI_SMEM_DQS_CA_IN         at 0 range 26 .. 26;
      SPI_SMEM_HYPERBUS_DUMMY_2X at 0 range 27 .. 27;
      SPI_SMEM_CLK_DIFF_INV      at 0 range 28 .. 28;
      SPI_SMEM_OCTA_RAM_ADDR     at 0 range 29 .. 29;
      SPI_SMEM_HYPERBUS_CA       at 0 range 30 .. 30;
      Reserved_31_31             at 0 range 31 .. 31;
   end record;

   --  MSPI flash ACE section %s attribute register
   type SPI_FMEM_PMS_ATTR_Register is record
      --  1: SPI1 flash ACE section %s read accessible. 0: Not allowed.
      SPI_FMEM_PMS_RD_ATTR : Boolean := True;
      --  1: SPI1 flash ACE section %s write accessible. 0: Not allowed.
      SPI_FMEM_PMS_WR_ATTR : Boolean := True;
      --  SPI1 flash ACE section %s ECC mode, 1: enable ECC mode. 0: Disable
      --  it. The flash ACE section %s is configured by registers
      --  SPI_FMEM_PMS%s_ADDR_REG and SPI_FMEM_PMS%s_SIZE_REG.
      SPI_FMEM_PMS_ECC     : Boolean := False;
      --  unspecified
      Reserved_3_31        : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_FMEM_PMS_ATTR_Register use record
      SPI_FMEM_PMS_RD_ATTR at 0 range 0 .. 0;
      SPI_FMEM_PMS_WR_ATTR at 0 range 1 .. 1;
      SPI_FMEM_PMS_ECC     at 0 range 2 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   --  MSPI flash ACE section %s attribute register
   type SPI_FMEM_PMS_ATTR_Registers is array (0 .. 3)
     of SPI_FMEM_PMS_ATTR_Register;

   subtype SPI_FMEM_PMS_ADDR_S_Field is HAL.UInt26;

   --  SPI1 flash ACE section %s start address register
   type SPI_FMEM_PMS_ADDR_Register is record
      --  SPI1 flash ACE section %s start address value
      S              : SPI_FMEM_PMS_ADDR_S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_FMEM_PMS_ADDR_Register use record
      S              at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  SPI1 flash ACE section %s start address register
   type SPI_FMEM_PMS_ADDR_Registers is array (0 .. 3)
     of SPI_FMEM_PMS_ADDR_Register;

   subtype SPI_FMEM_PMS_SIZE_SPI_FMEM_PMS_SIZE_Field is HAL.UInt14;

   --  SPI1 flash ACE section %s start address register
   type SPI_FMEM_PMS_SIZE_Register is record
      --  SPI1 flash ACE section %s address region is (SPI_FMEM_PMS%s_ADDR_S,
      --  SPI_FMEM_PMS%s_ADDR_S + SPI_FMEM_PMS%s_SIZE)
      SPI_FMEM_PMS_SIZE : SPI_FMEM_PMS_SIZE_SPI_FMEM_PMS_SIZE_Field :=
                           16#1000#;
      --  unspecified
      Reserved_14_31    : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_FMEM_PMS_SIZE_Register use record
      SPI_FMEM_PMS_SIZE at 0 range 0 .. 13;
      Reserved_14_31    at 0 range 14 .. 31;
   end record;

   --  SPI1 flash ACE section %s start address register
   type SPI_FMEM_PMS_SIZE_Registers is array (0 .. 3)
     of SPI_FMEM_PMS_SIZE_Register;

   --  SPI1 flash ACE section %s start address register
   type SPI_SMEM_PMS_ATTR_Register is record
      --  1: SPI1 external RAM ACE section %s read accessible. 0: Not allowed.
      SPI_SMEM_PMS_RD_ATTR : Boolean := True;
      --  1: SPI1 external RAM ACE section %s write accessible. 0: Not allowed.
      SPI_SMEM_PMS_WR_ATTR : Boolean := True;
      --  SPI1 external RAM ACE section %s ECC mode, 1: enable ECC mode. 0:
      --  Disable it. The external RAM ACE section %s is configured by
      --  registers SPI_SMEM_PMS%s_ADDR_REG and SPI_SMEM_PMS%s_SIZE_REG.
      SPI_SMEM_PMS_ECC     : Boolean := False;
      --  unspecified
      Reserved_3_31        : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_PMS_ATTR_Register use record
      SPI_SMEM_PMS_RD_ATTR at 0 range 0 .. 0;
      SPI_SMEM_PMS_WR_ATTR at 0 range 1 .. 1;
      SPI_SMEM_PMS_ECC     at 0 range 2 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   --  SPI1 flash ACE section %s start address register
   type SPI_SMEM_PMS_ATTR_Registers is array (0 .. 3)
     of SPI_SMEM_PMS_ATTR_Register;

   subtype SPI_SMEM_PMS_ADDR_S_Field is HAL.UInt26;

   --  SPI1 external RAM ACE section %s start address register
   type SPI_SMEM_PMS_ADDR_Register is record
      --  SPI1 external RAM ACE section %s start address value
      S              : SPI_SMEM_PMS_ADDR_S_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_PMS_ADDR_Register use record
      S              at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  SPI1 external RAM ACE section %s start address register
   type SPI_SMEM_PMS_ADDR_Registers is array (0 .. 3)
     of SPI_SMEM_PMS_ADDR_Register;

   subtype SPI_SMEM_PMS_SIZE_SPI_SMEM_PMS_SIZE_Field is HAL.UInt14;

   --  SPI1 external RAM ACE section %s start address register
   type SPI_SMEM_PMS_SIZE_Register is record
      --  SPI1 external RAM ACE section %s address region is
      --  (SPI_SMEM_PMS%s_ADDR_S, SPI_SMEM_PMS%s_ADDR_S + SPI_SMEM_PMS%s_SIZE)
      SPI_SMEM_PMS_SIZE : SPI_SMEM_PMS_SIZE_SPI_SMEM_PMS_SIZE_Field :=
                           16#1000#;
      --  unspecified
      Reserved_14_31    : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_PMS_SIZE_Register use record
      SPI_SMEM_PMS_SIZE at 0 range 0 .. 13;
      Reserved_14_31    at 0 range 14 .. 31;
   end record;

   --  SPI1 external RAM ACE section %s start address register
   type SPI_SMEM_PMS_SIZE_Registers is array (0 .. 3)
     of SPI_SMEM_PMS_SIZE_Register;

   subtype SPI_MEM_PMS_REJECT_SPI_MEM_REJECT_ADDR_Field is HAL.UInt26;

   --  SPI1 access reject register
   type SPI_MEM_PMS_REJECT_Register is record
      --  Read-only. This bits show the first SPI1 access error address. It is
      --  cleared by when SPI_MEM_PMS_REJECT_INT_CLR bit is set.
      SPI_MEM_REJECT_ADDR   : SPI_MEM_PMS_REJECT_SPI_MEM_REJECT_ADDR_Field :=
                               16#0#;
      --  Set this bit to enable SPI0/1 transfer permission control function.
      SPI_MEM_PM_EN         : Boolean := False;
      --  unspecified
      Reserved_27_27        : HAL.Bit := 16#0#;
      --  Read-only. 1: SPI1 write access error. 0: No write access error. It
      --  is cleared by when SPI_MEM_PMS_REJECT_INT_CLR bit is set.
      SPI_MEM_PMS_LD        : Boolean := False;
      --  Read-only. 1: SPI1 read access error. 0: No read access error. It is
      --  cleared by when SPI_MEM_PMS_REJECT_INT_CLR bit is set.
      SPI_MEM_PMS_ST        : Boolean := False;
      --  Read-only. 1: SPI1 access is rejected because of address miss. 0: No
      --  address miss error. It is cleared by when SPI_MEM_PMS_REJECT_INT_CLR
      --  bit is set.
      SPI_MEM_PMS_MULTI_HIT : Boolean := False;
      --  Read-only. 1: SPI1 access is rejected because of address multi-hit.
      --  0: No address multi-hit error. It is cleared by when
      --  SPI_MEM_PMS_REJECT_INT_CLR bit is set.
      SPI_MEM_PMS_IVD       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_PMS_REJECT_Register use record
      SPI_MEM_REJECT_ADDR   at 0 range 0 .. 25;
      SPI_MEM_PM_EN         at 0 range 26 .. 26;
      Reserved_27_27        at 0 range 27 .. 27;
      SPI_MEM_PMS_LD        at 0 range 28 .. 28;
      SPI_MEM_PMS_ST        at 0 range 29 .. 29;
      SPI_MEM_PMS_MULTI_HIT at 0 range 30 .. 30;
      SPI_MEM_PMS_IVD       at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_ECC_CTRL_SPI_FMEM_ECC_ERR_INT_NUM_Field is HAL.UInt6;
   subtype SPI_MEM_ECC_CTRL_SPI_FMEM_PAGE_SIZE_Field is HAL.UInt2;
   subtype SPI_MEM_ECC_CTRL_SPI_MEM_ECC_ERR_BITS_Field is HAL.UInt7;

   --  MSPI ECC control register
   type SPI_MEM_ECC_CTRL_Register is record
      --  unspecified
      Reserved_0_10                      : HAL.UInt11 := 16#0#;
      --  Read-only. Set the error times of MSPI ECC read to generate MSPI
      --  SPI_MEM_ECC_ERR_INT interrupt.
      SPI_FMEM_ECC_ERR_INT_NUM           : SPI_MEM_ECC_CTRL_SPI_FMEM_ECC_ERR_INT_NUM_Field :=
                                            16#A#;
      --  Read-only. Set this bit to calculate the error times of MSPI ECC read
      --  when accesses to flash.
      SPI_FMEM_ECC_ERR_INT_EN            : Boolean := False;
      --  Set the page size of the flash accessed by MSPI. 0: 256 bytes. 1: 512
      --  bytes. 2: 1024 bytes. 3: 2048 bytes.
      SPI_FMEM_PAGE_SIZE                 : SPI_MEM_ECC_CTRL_SPI_FMEM_PAGE_SIZE_Field :=
                                            16#0#;
      --  Read-only. Set this bit to enable MSPI ECC address conversion, no
      --  matter MSPI accesses to the ECC region or non-ECC region of flash. If
      --  there is no ECC region in flash, this bit should be 0. Otherwise,
      --  this bit should be 1.
      SPI_FMEM_ECC_ADDR_EN               : Boolean := False;
      --  Read-only. Set this bit to enable ECC address convert in SPI0/1
      --  USR_CMD transfer.
      SPI_MEM_USR_ECC_ADDR_EN            : Boolean := False;
      --  unspecified
      Reserved_22_23                     : HAL.UInt2 := 16#0#;
      --  Read-only. 1: The error information in SPI_MEM_ECC_ERR_BITS and
      --  SPI_MEM_ECC_ERR_ADDR is updated when there is an ECC error. 0:
      --  SPI_MEM_ECC_ERR_BITS and SPI_MEM_ECC_ERR_ADDR record the first ECC
      --  error information.
      SPI_MEM_ECC_CONTINUE_RECORD_ERR_EN : Boolean := True;
      --  Read-only. Records the first ECC error bit number in the 16
      --  bytes(From 0~127, corresponding to byte 0 bit 0 to byte 15 bit 7)
      SPI_MEM_ECC_ERR_BITS               : SPI_MEM_ECC_CTRL_SPI_MEM_ECC_ERR_BITS_Field :=
                                            16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_ECC_CTRL_Register use record
      Reserved_0_10                      at 0 range 0 .. 10;
      SPI_FMEM_ECC_ERR_INT_NUM           at 0 range 11 .. 16;
      SPI_FMEM_ECC_ERR_INT_EN            at 0 range 17 .. 17;
      SPI_FMEM_PAGE_SIZE                 at 0 range 18 .. 19;
      SPI_FMEM_ECC_ADDR_EN               at 0 range 20 .. 20;
      SPI_MEM_USR_ECC_ADDR_EN            at 0 range 21 .. 21;
      Reserved_22_23                     at 0 range 22 .. 23;
      SPI_MEM_ECC_CONTINUE_RECORD_ERR_EN at 0 range 24 .. 24;
      SPI_MEM_ECC_ERR_BITS               at 0 range 25 .. 31;
   end record;

   subtype SPI_MEM_ECC_ERR_ADDR_SPI_MEM_ECC_ERR_ADDR_Field is HAL.UInt26;
   subtype SPI_MEM_ECC_ERR_ADDR_SPI_MEM_ECC_ERR_CNT_Field is HAL.UInt6;

   --  MSPI ECC error address register
   type SPI_MEM_ECC_ERR_ADDR_Register is record
      --  Read-only. This bits show the first MSPI ECC error address. It is
      --  cleared by when SPI_MEM_ECC_ERR_INT_CLR bit is set.
      SPI_MEM_ECC_ERR_ADDR : SPI_MEM_ECC_ERR_ADDR_SPI_MEM_ECC_ERR_ADDR_Field;
      --  Read-only. This bits show the error times of MSPI ECC read. It is
      --  cleared by when SPI_MEM_ECC_ERR_INT_CLR bit is set.
      SPI_MEM_ECC_ERR_CNT  : SPI_MEM_ECC_ERR_ADDR_SPI_MEM_ECC_ERR_CNT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_ECC_ERR_ADDR_Register use record
      SPI_MEM_ECC_ERR_ADDR at 0 range 0 .. 25;
      SPI_MEM_ECC_ERR_CNT  at 0 range 26 .. 31;
   end record;

   subtype SPI_MEM_AXI_ERR_ADDR_SPI_MEM_AXI_ERR_ADDR_Field is HAL.UInt26;

   --  SPI0 AXI request error address.
   type SPI_MEM_AXI_ERR_ADDR_Register is record
      --  Read-only. This bits show the first AXI write/read invalid error or
      --  AXI write flash error address. It is cleared by when
      --  SPI_MEM_AXI_WADDR_ERR_INT_CLR, SPI_MEM_AXI_WR_FLASH_ERR_IN_CLR or
      --  SPI_MEM_AXI_RADDR_ERR_IN_CLR bit is set.
      SPI_MEM_AXI_ERR_ADDR          : SPI_MEM_AXI_ERR_ADDR_SPI_MEM_AXI_ERR_ADDR_Field;
      --  Read-only. The empty status of all AFIFO and SYNC_FIFO in MSPI
      --  module. 1: All AXI transfers and SPI0 transfers are done. 0: Others.
      SPI_MEM_ALL_FIFO_EMPTY        : Boolean;
      --  Read-only. 1: RDATA_AFIFO is empty. 0: At least one AXI read transfer
      --  is pending.
      SPI_RDATA_AFIFO_REMPTY        : Boolean;
      --  Read-only. 1: AXI_RADDR_CTL_AFIFO is empty. 0: At least one AXI read
      --  transfer is pending.
      SPI_RADDR_AFIFO_REMPTY        : Boolean;
      --  Read-only. 1: WDATA_AFIFO is empty. 0: At least one AXI write
      --  transfer is pending.
      SPI_WDATA_AFIFO_REMPTY        : Boolean;
      --  Read-only. 1: WBLEN_AFIFO is empty. 0: At least one AXI write
      --  transfer is pending.
      SPI_WBLEN_AFIFO_REMPTY        : Boolean;
      --  Read-only. This bit is set when WADDR_AFIFO, WBLEN_AFIFO,
      --  WDATA_AFIFO, AXI_RADDR_CTL_AFIFO and RDATA_AFIFO are empty and
      --  spi0_mst_st is IDLE.
      SPI_ALL_AXI_TRANS_AFIFO_EMPTY : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_AXI_ERR_ADDR_Register use record
      SPI_MEM_AXI_ERR_ADDR          at 0 range 0 .. 25;
      SPI_MEM_ALL_FIFO_EMPTY        at 0 range 26 .. 26;
      SPI_RDATA_AFIFO_REMPTY        at 0 range 27 .. 27;
      SPI_RADDR_AFIFO_REMPTY        at 0 range 28 .. 28;
      SPI_WDATA_AFIFO_REMPTY        at 0 range 29 .. 29;
      SPI_WBLEN_AFIFO_REMPTY        at 0 range 30 .. 30;
      SPI_ALL_AXI_TRANS_AFIFO_EMPTY at 0 range 31 .. 31;
   end record;

   subtype SPI_SMEM_ECC_CTRL_SPI_SMEM_PAGE_SIZE_Field is HAL.UInt2;

   --  MSPI ECC control register
   type SPI_SMEM_ECC_CTRL_Register is record
      --  unspecified
      Reserved_0_16           : HAL.UInt17;
      --  Read-only. Set this bit to calculate the error times of MSPI ECC read
      --  when accesses to external RAM.
      SPI_SMEM_ECC_ERR_INT_EN : Boolean;
      --  Read-only. Set the page size of the external RAM accessed by MSPI. 0:
      --  256 bytes. 1: 512 bytes. 2: 1024 bytes. 3: 2048 bytes.
      SPI_SMEM_PAGE_SIZE      : SPI_SMEM_ECC_CTRL_SPI_SMEM_PAGE_SIZE_Field;
      --  Read-only. Set this bit to enable MSPI ECC address conversion, no
      --  matter MSPI accesses to the ECC region or non-ECC region of external
      --  RAM. If there is no ECC region in external RAM, this bit should be 0.
      --  Otherwise, this bit should be 1.
      SPI_SMEM_ECC_ADDR_EN    : Boolean;
      --  unspecified
      Reserved_21_31          : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_ECC_CTRL_Register use record
      Reserved_0_16           at 0 range 0 .. 16;
      SPI_SMEM_ECC_ERR_INT_EN at 0 range 17 .. 17;
      SPI_SMEM_PAGE_SIZE      at 0 range 18 .. 19;
      SPI_SMEM_ECC_ADDR_EN    at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   subtype SPI_MEM_TIMING_CALI_SPI_MEM_EXTRA_DUMMY_CYCLELEN_Field is HAL.UInt3;

   --  SPI0 flash timing calibration register
   type SPI_MEM_TIMING_CALI_Register is record
      --  The bit is used to enable timing adjust clock for all reading
      --  operations.
      SPI_MEM_TIMING_CLK_ENA       : Boolean := True;
      --  The bit is used to enable timing auto-calibration for all reading
      --  operations.
      SPI_MEM_TIMING_CALI          : Boolean := False;
      --  add extra dummy spi clock cycle length for spi clock calibration.
      SPI_MEM_EXTRA_DUMMY_CYCLELEN : SPI_MEM_TIMING_CALI_SPI_MEM_EXTRA_DUMMY_CYCLELEN_Field :=
                                      16#0#;
      --  Read-only. Set this bit to enable DLL for timing calibration in DDR
      --  mode when accessed to flash.
      SPI_MEM_DLL_TIMING_CALI      : Boolean := False;
      --  Write-only. Set this bit to update delay mode, delay num and extra
      --  dummy in MSPI.
      UPDATE                       : Boolean := False;
      --  unspecified
      Reserved_7_31                : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_TIMING_CALI_Register use record
      SPI_MEM_TIMING_CLK_ENA       at 0 range 0 .. 0;
      SPI_MEM_TIMING_CALI          at 0 range 1 .. 1;
      SPI_MEM_EXTRA_DUMMY_CYCLELEN at 0 range 2 .. 4;
      SPI_MEM_DLL_TIMING_CALI      at 0 range 5 .. 5;
      UPDATE                       at 0 range 6 .. 6;
      Reserved_7_31                at 0 range 7 .. 31;
   end record;

   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN0_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN1_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN2_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN3_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN4_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN5_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN6_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DIN7_MODE_Field is HAL.UInt3;
   subtype SPI_MEM_DIN_MODE_SPI_MEM_DINS_MODE_Field is HAL.UInt3;

   --  MSPI flash input timing delay mode control register
   type SPI_MEM_DIN_MODE_Register is record
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the posedge of clk_160, 4 input
      --  with the negedge of clk_160, 5: input with the spi_clk high edge, 6:
      --  input with the spi_clk low edge
      SPI_MEM_DIN0_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN0_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the posedge of clk_160, 4 input
      --  with the negedge of clk_160, 5: input with the spi_clk high edge, 6:
      --  input with the spi_clk low edge
      SPI_MEM_DIN1_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN1_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the posedge of clk_160, 4 input
      --  with the negedge of clk_160, 5: input with the spi_clk high edge, 6:
      --  input with the spi_clk low edge
      SPI_MEM_DIN2_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN2_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the posedge of clk_160, 4 input
      --  with the negedge of clk_160, 5: input with the spi_clk high edge, 6:
      --  input with the spi_clk low edge
      SPI_MEM_DIN3_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN3_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the spi_clk
      SPI_MEM_DIN4_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN4_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the spi_clk
      SPI_MEM_DIN5_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN5_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the spi_clk
      SPI_MEM_DIN6_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN6_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the spi_clk
      SPI_MEM_DIN7_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DIN7_MODE_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: input
      --  without delayed, 1: input with the posedge of clk_apb,2 input with
      --  the negedge of clk_apb, 3: input with the spi_clk
      SPI_MEM_DINS_MODE : SPI_MEM_DIN_MODE_SPI_MEM_DINS_MODE_Field := 16#0#;
      --  unspecified
      Reserved_27_31    : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DIN_MODE_Register use record
      SPI_MEM_DIN0_MODE at 0 range 0 .. 2;
      SPI_MEM_DIN1_MODE at 0 range 3 .. 5;
      SPI_MEM_DIN2_MODE at 0 range 6 .. 8;
      SPI_MEM_DIN3_MODE at 0 range 9 .. 11;
      SPI_MEM_DIN4_MODE at 0 range 12 .. 14;
      SPI_MEM_DIN5_MODE at 0 range 15 .. 17;
      SPI_MEM_DIN6_MODE at 0 range 18 .. 20;
      SPI_MEM_DIN7_MODE at 0 range 21 .. 23;
      SPI_MEM_DINS_MODE at 0 range 24 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN0_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN1_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN2_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN3_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN4_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN5_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN6_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DIN7_NUM_Field is HAL.UInt2;
   subtype SPI_MEM_DIN_NUM_SPI_MEM_DINS_NUM_Field is HAL.UInt2;

   --  MSPI flash input timing delay number control register
   type SPI_MEM_DIN_NUM_Register is record
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN0_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN0_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN1_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN1_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN2_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN2_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN3_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN3_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN4_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN4_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN5_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN5_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN6_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN6_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DIN7_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DIN7_NUM_Field := 16#0#;
      --  the input signals are delayed by system clock cycles, 0: delayed by 1
      --  cycle, 1: delayed by 2 cycles,...
      SPI_MEM_DINS_NUM : SPI_MEM_DIN_NUM_SPI_MEM_DINS_NUM_Field := 16#0#;
      --  unspecified
      Reserved_18_31   : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DIN_NUM_Register use record
      SPI_MEM_DIN0_NUM at 0 range 0 .. 1;
      SPI_MEM_DIN1_NUM at 0 range 2 .. 3;
      SPI_MEM_DIN2_NUM at 0 range 4 .. 5;
      SPI_MEM_DIN3_NUM at 0 range 6 .. 7;
      SPI_MEM_DIN4_NUM at 0 range 8 .. 9;
      SPI_MEM_DIN5_NUM at 0 range 10 .. 11;
      SPI_MEM_DIN6_NUM at 0 range 12 .. 13;
      SPI_MEM_DIN7_NUM at 0 range 14 .. 15;
      SPI_MEM_DINS_NUM at 0 range 16 .. 17;
      Reserved_18_31   at 0 range 18 .. 31;
   end record;

   --  MSPI flash output timing adjustment control register
   type SPI_MEM_DOUT_MODE_Register is record
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the posedge of clk_160,4
      --  output with the negedge of clk_160,5: output with the spi_clk high
      --  edge ,6: output with the spi_clk low edge
      SPI_MEM_DOUT0_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the posedge of clk_160,4
      --  output with the negedge of clk_160,5: output with the spi_clk high
      --  edge ,6: output with the spi_clk low edge
      SPI_MEM_DOUT1_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the posedge of clk_160,4
      --  output with the negedge of clk_160,5: output with the spi_clk high
      --  edge ,6: output with the spi_clk low edge
      SPI_MEM_DOUT2_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the posedge of clk_160,4
      --  output with the negedge of clk_160,5: output with the spi_clk high
      --  edge ,6: output with the spi_clk low edge
      SPI_MEM_DOUT3_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the spi_clk
      SPI_MEM_DOUT4_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the spi_clk
      SPI_MEM_DOUT5_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the spi_clk
      SPI_MEM_DOUT6_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the spi_clk
      SPI_MEM_DOUT7_MODE : Boolean := False;
      --  the output signals are delayed by system clock cycles, 0: output
      --  without delayed, 1: output with the posedge of clk_apb,2 output with
      --  the negedge of clk_apb, 3: output with the spi_clk
      SPI_MEM_DOUTS_MODE : Boolean := False;
      --  unspecified
      Reserved_9_31      : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DOUT_MODE_Register use record
      SPI_MEM_DOUT0_MODE at 0 range 0 .. 0;
      SPI_MEM_DOUT1_MODE at 0 range 1 .. 1;
      SPI_MEM_DOUT2_MODE at 0 range 2 .. 2;
      SPI_MEM_DOUT3_MODE at 0 range 3 .. 3;
      SPI_MEM_DOUT4_MODE at 0 range 4 .. 4;
      SPI_MEM_DOUT5_MODE at 0 range 5 .. 5;
      SPI_MEM_DOUT6_MODE at 0 range 6 .. 6;
      SPI_MEM_DOUT7_MODE at 0 range 7 .. 7;
      SPI_MEM_DOUTS_MODE at 0 range 8 .. 8;
      Reserved_9_31      at 0 range 9 .. 31;
   end record;

   subtype SPI_SMEM_TIMING_CALI_SPI_SMEM_EXTRA_DUMMY_CYCLELEN_Field is
     HAL.UInt3;

   --  MSPI external RAM timing calibration register
   type SPI_SMEM_TIMING_CALI_Register is record
      --  Read-only. For sram, the bit is used to enable timing adjust clock
      --  for all reading operations.
      SPI_SMEM_TIMING_CLK_ENA       : Boolean;
      --  Read-only. For sram, the bit is used to enable timing
      --  auto-calibration for all reading operations.
      SPI_SMEM_TIMING_CALI          : Boolean;
      --  Read-only. For sram, add extra dummy spi clock cycle length for spi
      --  clock calibration.
      SPI_SMEM_EXTRA_DUMMY_CYCLELEN : SPI_SMEM_TIMING_CALI_SPI_SMEM_EXTRA_DUMMY_CYCLELEN_Field;
      --  Read-only. Set this bit to enable DLL for timing calibration in DDR
      --  mode when accessed to EXT_RAM.
      SPI_SMEM_DLL_TIMING_CALI      : Boolean;
      --  unspecified
      Reserved_6_31                 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_TIMING_CALI_Register use record
      SPI_SMEM_TIMING_CLK_ENA       at 0 range 0 .. 0;
      SPI_SMEM_TIMING_CALI          at 0 range 1 .. 1;
      SPI_SMEM_EXTRA_DUMMY_CYCLELEN at 0 range 2 .. 4;
      SPI_SMEM_DLL_TIMING_CALI      at 0 range 5 .. 5;
      Reserved_6_31                 at 0 range 6 .. 31;
   end record;

   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN0_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN1_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN2_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN3_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN4_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN5_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN6_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DIN7_MODE_Field is HAL.UInt3;
   subtype SPI_SMEM_DIN_MODE_SPI_SMEM_DINS_MODE_Field is HAL.UInt3;

   --  MSPI external RAM input timing delay mode control register
   type SPI_SMEM_DIN_MODE_Register is record
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN0_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN0_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN1_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN1_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN2_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN2_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN3_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN3_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN4_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN4_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN5_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN5_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN6_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN6_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DIN7_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DIN7_MODE_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DINS_MODE : SPI_SMEM_DIN_MODE_SPI_SMEM_DINS_MODE_Field;
      --  unspecified
      Reserved_27_31     : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_DIN_MODE_Register use record
      SPI_SMEM_DIN0_MODE at 0 range 0 .. 2;
      SPI_SMEM_DIN1_MODE at 0 range 3 .. 5;
      SPI_SMEM_DIN2_MODE at 0 range 6 .. 8;
      SPI_SMEM_DIN3_MODE at 0 range 9 .. 11;
      SPI_SMEM_DIN4_MODE at 0 range 12 .. 14;
      SPI_SMEM_DIN5_MODE at 0 range 15 .. 17;
      SPI_SMEM_DIN6_MODE at 0 range 18 .. 20;
      SPI_SMEM_DIN7_MODE at 0 range 21 .. 23;
      SPI_SMEM_DINS_MODE at 0 range 24 .. 26;
      Reserved_27_31     at 0 range 27 .. 31;
   end record;

   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN0_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN1_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN2_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN3_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN4_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN5_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN6_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DIN7_NUM_Field is HAL.UInt2;
   subtype SPI_SMEM_DIN_NUM_SPI_SMEM_DINS_NUM_Field is HAL.UInt2;

   --  MSPI external RAM input timing delay number control register
   type SPI_SMEM_DIN_NUM_Register is record
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN0_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN0_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN1_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN1_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN2_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN2_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN3_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN3_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN4_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN4_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN5_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN5_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN6_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN6_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  delayed by 1 cycle, 1: delayed by 2 cycles,...
      SPI_SMEM_DIN7_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DIN7_NUM_Field;
      --  Read-only. the input signals are delayed by system clock cycles, 0:
      --  input without delayed, 1: input with the posedge of clk_apb,2 input
      --  with the negedge of clk_apb, 3: input with the posedge of clk_160, 4
      --  input with the negedge of clk_160, 5: input with the spi_clk high
      --  edge, 6: input with the spi_clk low edge
      SPI_SMEM_DINS_NUM : SPI_SMEM_DIN_NUM_SPI_SMEM_DINS_NUM_Field;
      --  unspecified
      Reserved_18_31    : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_DIN_NUM_Register use record
      SPI_SMEM_DIN0_NUM at 0 range 0 .. 1;
      SPI_SMEM_DIN1_NUM at 0 range 2 .. 3;
      SPI_SMEM_DIN2_NUM at 0 range 4 .. 5;
      SPI_SMEM_DIN3_NUM at 0 range 6 .. 7;
      SPI_SMEM_DIN4_NUM at 0 range 8 .. 9;
      SPI_SMEM_DIN5_NUM at 0 range 10 .. 11;
      SPI_SMEM_DIN6_NUM at 0 range 12 .. 13;
      SPI_SMEM_DIN7_NUM at 0 range 14 .. 15;
      SPI_SMEM_DINS_NUM at 0 range 16 .. 17;
      Reserved_18_31    at 0 range 18 .. 31;
   end record;

   --  MSPI external RAM output timing adjustment control register
   type SPI_SMEM_DOUT_MODE_Register is record
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT0_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT1_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT2_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT3_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT4_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT5_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT6_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUT7_MODE : Boolean;
      --  Read-only. the output signals are delayed by system clock cycles, 0:
      --  output without delayed, 1: output with the posedge of clk_apb,2
      --  output with the negedge of clk_apb, 3: output with the posedge of
      --  clk_160,4 output with the negedge of clk_160,5: output with the
      --  spi_clk high edge ,6: output with the spi_clk low edge
      SPI_SMEM_DOUTS_MODE : Boolean;
      --  unspecified
      Reserved_9_31       : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_DOUT_MODE_Register use record
      SPI_SMEM_DOUT0_MODE at 0 range 0 .. 0;
      SPI_SMEM_DOUT1_MODE at 0 range 1 .. 1;
      SPI_SMEM_DOUT2_MODE at 0 range 2 .. 2;
      SPI_SMEM_DOUT3_MODE at 0 range 3 .. 3;
      SPI_SMEM_DOUT4_MODE at 0 range 4 .. 4;
      SPI_SMEM_DOUT5_MODE at 0 range 5 .. 5;
      SPI_SMEM_DOUT6_MODE at 0 range 6 .. 6;
      SPI_SMEM_DOUT7_MODE at 0 range 7 .. 7;
      SPI_SMEM_DOUTS_MODE at 0 range 8 .. 8;
      Reserved_9_31       at 0 range 9 .. 31;
   end record;

   subtype SPI_SMEM_AC_SPI_SMEM_CS_SETUP_TIME_Field is HAL.UInt5;
   subtype SPI_SMEM_AC_SPI_SMEM_CS_HOLD_TIME_Field is HAL.UInt5;
   subtype SPI_SMEM_AC_SPI_SMEM_ECC_CS_HOLD_TIME_Field is HAL.UInt3;
   subtype SPI_SMEM_AC_SPI_SMEM_CS_HOLD_DELAY_Field is HAL.UInt6;

   --  MSPI external RAM ECC and SPI CS timing control register
   type SPI_SMEM_AC_Register is record
      --  Read-only. For SPI0 and SPI1, spi cs is enable when spi is in prepare
      --  phase. 1: enable 0: disable.
      SPI_SMEM_CS_SETUP             : Boolean;
      --  Read-only. For SPI0 and SPI1, spi cs keep low when spi is in done
      --  phase. 1: enable 0: disable.
      SPI_SMEM_CS_HOLD              : Boolean;
      --  Read-only. For spi0, (cycles-1) of prepare phase by spi clock this
      --  bits are combined with spi_mem_cs_setup bit.
      SPI_SMEM_CS_SETUP_TIME        : SPI_SMEM_AC_SPI_SMEM_CS_SETUP_TIME_Field;
      --  Read-only. For SPI0 and SPI1, spi cs signal is delayed to inactive by
      --  spi clock this bits are combined with spi_mem_cs_hold bit.
      SPI_SMEM_CS_HOLD_TIME         : SPI_SMEM_AC_SPI_SMEM_CS_HOLD_TIME_Field;
      --  Read-only. SPI_SMEM_CS_HOLD_TIME + SPI_SMEM_ECC_CS_HOLD_TIME is the
      --  SPI0 and SPI1 CS hold cycles in ECC mode when accessed external RAM.
      SPI_SMEM_ECC_CS_HOLD_TIME     : SPI_SMEM_AC_SPI_SMEM_ECC_CS_HOLD_TIME_Field;
      --  Read-only. 1: SPI0 skips page corner when accesses external RAM. 0:
      --  Not skip page corner when accesses external RAM.
      SPI_SMEM_ECC_SKIP_PAGE_CORNER : Boolean;
      --  Read-only. Set this bit to enable SPI0 and SPI1 ECC 16 bytes data
      --  with 2 ECC bytes mode when accesses external RAM.
      SPI_SMEM_ECC_16TO18_BYTE_EN   : Boolean;
      --  unspecified
      Reserved_17_24                : HAL.UInt8;
      --  Read-only. These bits are used to set the minimum CS high time tSHSL
      --  between SPI burst transfer when accesses to external RAM. tSHSL is
      --  (SPI_SMEM_CS_HOLD_DELAY[5:0] + 1) MSPI core clock cycles.
      SPI_SMEM_CS_HOLD_DELAY        : SPI_SMEM_AC_SPI_SMEM_CS_HOLD_DELAY_Field;
      --  Read-only. Set this bit to enable SPI0 split one AXI accesses EXT_RAM
      --  transfer into two SPI transfers when one transfer will cross
      --  flash/EXT_RAM page corner, valid no matter whether there is an ECC
      --  region or not.
      SPI_SMEM_SPLIT_TRANS_EN       : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SMEM_AC_Register use record
      SPI_SMEM_CS_SETUP             at 0 range 0 .. 0;
      SPI_SMEM_CS_HOLD              at 0 range 1 .. 1;
      SPI_SMEM_CS_SETUP_TIME        at 0 range 2 .. 6;
      SPI_SMEM_CS_HOLD_TIME         at 0 range 7 .. 11;
      SPI_SMEM_ECC_CS_HOLD_TIME     at 0 range 12 .. 14;
      SPI_SMEM_ECC_SKIP_PAGE_CORNER at 0 range 15 .. 15;
      SPI_SMEM_ECC_16TO18_BYTE_EN   at 0 range 16 .. 16;
      Reserved_17_24                at 0 range 17 .. 24;
      SPI_SMEM_CS_HOLD_DELAY        at 0 range 25 .. 30;
      SPI_SMEM_SPLIT_TRANS_EN       at 0 range 31 .. 31;
   end record;

   --  SPI0 clock gate register
   type SPI_MEM_CLOCK_GATE_Register is record
      --  Register clock gate enable signal. 1: Enable. 0: Disable.
      SPI_CLK_EN    : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_CLOCK_GATE_Register use record
      SPI_CLK_EN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SPI_MEM_XTS_LINESIZE_SPI_XTS_LINESIZE_Field is HAL.UInt2;

   --  Manual Encryption Line-Size register
   type SPI_MEM_XTS_LINESIZE_Register is record
      --  This bits stores the line-size parameter which will be used in manual
      --  encryption calculation. It decides how many bytes will be encrypted
      --  one time. 0: 16-bytes, 1: 32-bytes, 2: 64-bytes, 3:reserved.
      SPI_XTS_LINESIZE : SPI_MEM_XTS_LINESIZE_SPI_XTS_LINESIZE_Field := 16#0#;
      --  unspecified
      Reserved_2_31    : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_LINESIZE_Register use record
      SPI_XTS_LINESIZE at 0 range 0 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  Manual Encryption destination register
   type SPI_MEM_XTS_DESTINATION_Register is record
      --  This bit stores the destination parameter which will be used in
      --  manual encryption calculation. 0: flash(default), 1: psram(reserved).
      --  Only default value can be used.
      SPI_XTS_DESTINATION : Boolean := False;
      --  unspecified
      Reserved_1_31       : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_DESTINATION_Register use record
      SPI_XTS_DESTINATION at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   subtype SPI_MEM_XTS_PHYSICAL_ADDRESS_SPI_XTS_PHYSICAL_ADDRESS_Field is
     HAL.UInt26;

   --  Manual Encryption physical address register
   type SPI_MEM_XTS_PHYSICAL_ADDRESS_Register is record
      --  This bits stores the physical-address parameter which will be used in
      --  manual encryption calculation. This value should aligned with byte
      --  number decided by line-size parameter.
      SPI_XTS_PHYSICAL_ADDRESS : SPI_MEM_XTS_PHYSICAL_ADDRESS_SPI_XTS_PHYSICAL_ADDRESS_Field :=
                                  16#0#;
      --  unspecified
      Reserved_26_31           : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_PHYSICAL_ADDRESS_Register use record
      SPI_XTS_PHYSICAL_ADDRESS at 0 range 0 .. 25;
      Reserved_26_31           at 0 range 26 .. 31;
   end record;

   --  Manual Encryption physical address register
   type SPI_MEM_XTS_TRIGGER_Register is record
      --  Write-only. Set this bit to trigger the process of manual encryption
      --  calculation. This action should only be asserted when manual
      --  encryption status is 0. After this action, manual encryption status
      --  becomes 1. After calculation is done, manual encryption status
      --  becomes 2.
      SPI_XTS_TRIGGER : Boolean := False;
      --  unspecified
      Reserved_1_31   : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_TRIGGER_Register use record
      SPI_XTS_TRIGGER at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Manual Encryption physical address register
   type SPI_MEM_XTS_RELEASE_Register is record
      --  Write-only. Set this bit to release encrypted result to mspi. This
      --  action should only be asserted when manual encryption status is 2.
      --  After this action, manual encryption status will become 3.
      SPI_XTS_RELEASE : Boolean := False;
      --  unspecified
      Reserved_1_31   : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_RELEASE_Register use record
      SPI_XTS_RELEASE at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Manual Encryption physical address register
   type SPI_MEM_XTS_DESTROY_Register is record
      --  Write-only. Set this bit to destroy encrypted result. This action
      --  should be asserted only when manual encryption status is 3. After
      --  this action, manual encryption status will become 0.
      SPI_XTS_DESTROY : Boolean := False;
      --  unspecified
      Reserved_1_31   : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_DESTROY_Register use record
      SPI_XTS_DESTROY at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype SPI_MEM_XTS_STATE_SPI_XTS_STATE_Field is HAL.UInt2;

   --  Manual Encryption physical address register
   type SPI_MEM_XTS_STATE_Register is record
      --  Read-only. This bits stores the status of manual encryption. 0: idle,
      --  1: busy of encryption calculation, 2: encryption calculation is done
      --  but the encrypted result is invisible to mspi, 3: the encrypted
      --  result is visible to mspi.
      SPI_XTS_STATE : SPI_MEM_XTS_STATE_SPI_XTS_STATE_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_STATE_Register use record
      SPI_XTS_STATE at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SPI_MEM_XTS_DATE_SPI_XTS_DATE_Field is HAL.UInt30;

   --  Manual Encryption version register
   type SPI_MEM_XTS_DATE_Register is record
      --  This bits stores the last modified-time of manual encryption feature.
      SPI_XTS_DATE   : SPI_MEM_XTS_DATE_SPI_XTS_DATE_Field := 16#20201010#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_XTS_DATE_Register use record
      SPI_XTS_DATE   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SPI_MEM_MMU_POWER_CTRL_SPI_MMU_PAGE_SIZE_Field is HAL.UInt2;
   subtype SPI_MEM_MMU_POWER_CTRL_SPI_MEM_AUX_CTRL_Field is HAL.UInt14;

   --  MSPI MMU power control register
   type SPI_MEM_MMU_POWER_CTRL_Register is record
      --  Set this bit to enable mmu-memory clock force on
      SPI_MMU_MEM_FORCE_ON : Boolean := False;
      --  Set this bit to force mmu-memory powerdown
      SPI_MMU_MEM_FORCE_PD : Boolean := False;
      --  Set this bit to force mmu-memory powerup, in this case, the power
      --  should also be controlled by rtc.
      SPI_MMU_MEM_FORCE_PU : Boolean := True;
      --  0: Max page size , 1: Max page size/2 , 2: Max page size/4, 3: Max
      --  page size/8
      SPI_MMU_PAGE_SIZE    : SPI_MEM_MMU_POWER_CTRL_SPI_MMU_PAGE_SIZE_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_15        : HAL.UInt11 := 16#0#;
      --  Read-only. MMU PSRAM aux control register
      SPI_MEM_AUX_CTRL     : SPI_MEM_MMU_POWER_CTRL_SPI_MEM_AUX_CTRL_Field :=
                              16#1320#;
      --  Read-only. ECO register enable bit
      SPI_MEM_RDN_ENA      : Boolean := False;
      --  Read-only. MSPI module clock domain and AXI clock domain ECO register
      --  result register
      SPI_MEM_RDN_RESULT   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_MMU_POWER_CTRL_Register use record
      SPI_MMU_MEM_FORCE_ON at 0 range 0 .. 0;
      SPI_MMU_MEM_FORCE_PD at 0 range 1 .. 1;
      SPI_MMU_MEM_FORCE_PU at 0 range 2 .. 2;
      SPI_MMU_PAGE_SIZE    at 0 range 3 .. 4;
      Reserved_5_15        at 0 range 5 .. 15;
      SPI_MEM_AUX_CTRL     at 0 range 16 .. 29;
      SPI_MEM_RDN_ENA      at 0 range 30 .. 30;
      SPI_MEM_RDN_RESULT   at 0 range 31 .. 31;
   end record;

   subtype SPI_MEM_DPA_CTRL_SPI_CRYPT_SECURITY_LEVEL_Field is HAL.UInt3;

   --  SPI memory cryption DPA register
   type SPI_MEM_DPA_CTRL_Register is record
      --  Set the security level of spi mem cryption. 0: Shut off cryption DPA
      --  funtion. 1-7: The bigger the number is, the more secure the cryption
      --  is. (Note that the performance of cryption will decrease together
      --  with this number increasing)
      SPI_CRYPT_SECURITY_LEVEL      : SPI_MEM_DPA_CTRL_SPI_CRYPT_SECURITY_LEVEL_Field :=
                                       16#7#;
      --  Only available when SPI_CRYPT_SECURITY_LEVEL is not 0. 1: Enable DPA
      --  in the calculation that using key 1 or key 2. 0: Enable DPA only in
      --  the calculation that using key 1.
      SPI_CRYPT_CALC_D_DPA_EN       : Boolean := True;
      --  1: MSPI XTS DPA clock gate is controlled by SPI_CRYPT_CALC_D_DPA_EN
      --  and SPI_CRYPT_SECURITY_LEVEL. 0: Controlled by efuse bits.
      SPI_CRYPT_DPA_SELECT_REGISTER : Boolean := False;
      --  unspecified
      Reserved_5_31                 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_DPA_CTRL_Register use record
      SPI_CRYPT_SECURITY_LEVEL      at 0 range 0 .. 2;
      SPI_CRYPT_CALC_D_DPA_EN       at 0 range 3 .. 3;
      SPI_CRYPT_DPA_SELECT_REGISTER at 0 range 4 .. 4;
      Reserved_5_31                 at 0 range 5 .. 31;
   end record;

   subtype SPI_MEM_DATE_SPI_MEM_DATE_Field is HAL.UInt28;

   --  SPI0 version control register
   type SPI_MEM_DATE_Register is record
      --  SPI0 register version.
      SPI_MEM_DATE   : SPI_MEM_DATE_SPI_MEM_DATE_Field := 16#2203030#;
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

   --  SPI (Serial Peripheral Interface) Controller 0
   type SPI0_Peripheral is record
      --  SPI0 FSM status register
      SPI_MEM_CMD                  : aliased SPI_MEM_CMD_Register;
      --  SPI0 control register.
      SPI_MEM_CTRL                 : aliased SPI_MEM_CTRL_Register;
      --  SPI0 control1 register.
      SPI_MEM_CTRL1                : aliased SPI_MEM_CTRL1_Register;
      --  SPI0 control2 register.
      SPI_MEM_CTRL2                : aliased SPI_MEM_CTRL2_Register;
      --  SPI clock division control register.
      SPI_MEM_CLOCK                : aliased SPI_MEM_CLOCK_Register;
      --  SPI0 user register.
      SPI_MEM_USER                 : aliased SPI_MEM_USER_Register;
      --  SPI0 user1 register.
      SPI_MEM_USER1                : aliased SPI_MEM_USER1_Register;
      --  SPI0 user2 register.
      SPI_MEM_USER2                : aliased SPI_MEM_USER2_Register;
      --  SPI0 read control register.
      SPI_MEM_RD_STATUS            : aliased SPI_MEM_RD_STATUS_Register;
      --  SPI0 misc register
      SPI_MEM_MISC                 : aliased SPI_MEM_MISC_Register;
      --  SPI0 bit mode control register.
      SPI_MEM_CACHE_FCTRL          : aliased SPI_MEM_CACHE_FCTRL_Register;
      --  SPI0 external RAM control register
      SPI_MEM_CACHE_SCTRL          : aliased SPI_MEM_CACHE_SCTRL_Register;
      --  SPI0 external RAM mode control register
      SPI_MEM_SRAM_CMD             : aliased SPI_MEM_SRAM_CMD_Register;
      --  SPI0 external RAM DDR read command control register
      SPI_MEM_SRAM_DRD_CMD         : aliased SPI_MEM_SRAM_DRD_CMD_Register;
      --  SPI0 external RAM DDR write command control register
      SPI_MEM_SRAM_DWR_CMD         : aliased SPI_MEM_SRAM_DWR_CMD_Register;
      --  SPI0 external RAM clock control register
      SPI_MEM_SRAM_CLK             : aliased SPI_MEM_SRAM_CLK_Register;
      --  SPI0 FSM status register
      SPI_MEM_FSM                  : aliased SPI_MEM_FSM_Register;
      --  SPI0 interrupt enable register
      SPI_MEM_INT_ENA              : aliased SPI_MEM_INT_ENA_Register;
      --  SPI0 interrupt clear register
      SPI_MEM_INT_CLR              : aliased SPI_MEM_INT_CLR_Register;
      --  SPI0 interrupt raw register
      SPI_MEM_INT_RAW              : aliased SPI_MEM_INT_RAW_Register;
      --  SPI0 interrupt status register
      SPI_MEM_INT_ST               : aliased SPI_MEM_INT_ST_Register;
      --  SPI0 flash DDR mode control register
      SPI_MEM_DDR                  : aliased SPI_MEM_DDR_Register;
      --  SPI0 external RAM DDR mode control register
      SPI_SMEM_DDR                 : aliased SPI_SMEM_DDR_Register;
      --  MSPI flash ACE section %s attribute register
      SPI_FMEM_PMS_ATTR            : aliased SPI_FMEM_PMS_ATTR_Registers;
      --  SPI1 flash ACE section %s start address register
      SPI_FMEM_PMS_ADDR            : aliased SPI_FMEM_PMS_ADDR_Registers;
      --  SPI1 flash ACE section %s start address register
      SPI_FMEM_PMS_SIZE            : aliased SPI_FMEM_PMS_SIZE_Registers;
      --  SPI1 flash ACE section %s start address register
      SPI_SMEM_PMS_ATTR            : aliased SPI_SMEM_PMS_ATTR_Registers;
      --  SPI1 external RAM ACE section %s start address register
      SPI_SMEM_PMS_ADDR            : aliased SPI_SMEM_PMS_ADDR_Registers;
      --  SPI1 external RAM ACE section %s start address register
      SPI_SMEM_PMS_SIZE            : aliased SPI_SMEM_PMS_SIZE_Registers;
      --  SPI1 access reject register
      SPI_MEM_PMS_REJECT           : aliased SPI_MEM_PMS_REJECT_Register;
      --  MSPI ECC control register
      SPI_MEM_ECC_CTRL             : aliased SPI_MEM_ECC_CTRL_Register;
      --  MSPI ECC error address register
      SPI_MEM_ECC_ERR_ADDR         : aliased SPI_MEM_ECC_ERR_ADDR_Register;
      --  SPI0 AXI request error address.
      SPI_MEM_AXI_ERR_ADDR         : aliased SPI_MEM_AXI_ERR_ADDR_Register;
      --  MSPI ECC control register
      SPI_SMEM_ECC_CTRL            : aliased SPI_SMEM_ECC_CTRL_Register;
      --  SPI0 flash timing calibration register
      SPI_MEM_TIMING_CALI          : aliased SPI_MEM_TIMING_CALI_Register;
      --  MSPI flash input timing delay mode control register
      SPI_MEM_DIN_MODE             : aliased SPI_MEM_DIN_MODE_Register;
      --  MSPI flash input timing delay number control register
      SPI_MEM_DIN_NUM              : aliased SPI_MEM_DIN_NUM_Register;
      --  MSPI flash output timing adjustment control register
      SPI_MEM_DOUT_MODE            : aliased SPI_MEM_DOUT_MODE_Register;
      --  MSPI external RAM timing calibration register
      SPI_SMEM_TIMING_CALI         : aliased SPI_SMEM_TIMING_CALI_Register;
      --  MSPI external RAM input timing delay mode control register
      SPI_SMEM_DIN_MODE            : aliased SPI_SMEM_DIN_MODE_Register;
      --  MSPI external RAM input timing delay number control register
      SPI_SMEM_DIN_NUM             : aliased SPI_SMEM_DIN_NUM_Register;
      --  MSPI external RAM output timing adjustment control register
      SPI_SMEM_DOUT_MODE           : aliased SPI_SMEM_DOUT_MODE_Register;
      --  MSPI external RAM ECC and SPI CS timing control register
      SPI_SMEM_AC                  : aliased SPI_SMEM_AC_Register;
      --  SPI0 clock gate register
      SPI_MEM_CLOCK_GATE           : aliased SPI_MEM_CLOCK_GATE_Register;
      --  The base address of the memory that stores plaintext in Manual
      --  Encryption
      SPI_MEM_XTS_PLAIN_BASE       : aliased HAL.UInt32;
      --  Manual Encryption Line-Size register
      SPI_MEM_XTS_LINESIZE         : aliased SPI_MEM_XTS_LINESIZE_Register;
      --  Manual Encryption destination register
      SPI_MEM_XTS_DESTINATION      : aliased SPI_MEM_XTS_DESTINATION_Register;
      --  Manual Encryption physical address register
      SPI_MEM_XTS_PHYSICAL_ADDRESS : aliased SPI_MEM_XTS_PHYSICAL_ADDRESS_Register;
      --  Manual Encryption physical address register
      SPI_MEM_XTS_TRIGGER          : aliased SPI_MEM_XTS_TRIGGER_Register;
      --  Manual Encryption physical address register
      SPI_MEM_XTS_RELEASE          : aliased SPI_MEM_XTS_RELEASE_Register;
      --  Manual Encryption physical address register
      SPI_MEM_XTS_DESTROY          : aliased SPI_MEM_XTS_DESTROY_Register;
      --  Manual Encryption physical address register
      SPI_MEM_XTS_STATE            : aliased SPI_MEM_XTS_STATE_Register;
      --  Manual Encryption version register
      SPI_MEM_XTS_DATE             : aliased SPI_MEM_XTS_DATE_Register;
      --  MSPI-MMU item content register
      SPI_MEM_MMU_ITEM_CONTENT     : aliased HAL.UInt32;
      --  MSPI-MMU item index register
      SPI_MEM_MMU_ITEM_INDEX       : aliased HAL.UInt32;
      --  MSPI MMU power control register
      SPI_MEM_MMU_POWER_CTRL       : aliased SPI_MEM_MMU_POWER_CTRL_Register;
      --  SPI memory cryption DPA register
      SPI_MEM_DPA_CTRL             : aliased SPI_MEM_DPA_CTRL_Register;
      --  MSPI ECO high register
      SPI_MEM_REGISTERRND_ECO_HIGH : aliased HAL.UInt32;
      --  MSPI ECO low register
      SPI_MEM_REGISTERRND_ECO_LOW  : aliased HAL.UInt32;
      --  SPI0 version control register
      SPI_MEM_DATE                 : aliased SPI_MEM_DATE_Register;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      SPI_MEM_CMD                  at 16#0# range 0 .. 31;
      SPI_MEM_CTRL                 at 16#8# range 0 .. 31;
      SPI_MEM_CTRL1                at 16#C# range 0 .. 31;
      SPI_MEM_CTRL2                at 16#10# range 0 .. 31;
      SPI_MEM_CLOCK                at 16#14# range 0 .. 31;
      SPI_MEM_USER                 at 16#18# range 0 .. 31;
      SPI_MEM_USER1                at 16#1C# range 0 .. 31;
      SPI_MEM_USER2                at 16#20# range 0 .. 31;
      SPI_MEM_RD_STATUS            at 16#2C# range 0 .. 31;
      SPI_MEM_MISC                 at 16#34# range 0 .. 31;
      SPI_MEM_CACHE_FCTRL          at 16#3C# range 0 .. 31;
      SPI_MEM_CACHE_SCTRL          at 16#40# range 0 .. 31;
      SPI_MEM_SRAM_CMD             at 16#44# range 0 .. 31;
      SPI_MEM_SRAM_DRD_CMD         at 16#48# range 0 .. 31;
      SPI_MEM_SRAM_DWR_CMD         at 16#4C# range 0 .. 31;
      SPI_MEM_SRAM_CLK             at 16#50# range 0 .. 31;
      SPI_MEM_FSM                  at 16#54# range 0 .. 31;
      SPI_MEM_INT_ENA              at 16#C0# range 0 .. 31;
      SPI_MEM_INT_CLR              at 16#C4# range 0 .. 31;
      SPI_MEM_INT_RAW              at 16#C8# range 0 .. 31;
      SPI_MEM_INT_ST               at 16#CC# range 0 .. 31;
      SPI_MEM_DDR                  at 16#D4# range 0 .. 31;
      SPI_SMEM_DDR                 at 16#D8# range 0 .. 31;
      SPI_FMEM_PMS_ATTR            at 16#100# range 0 .. 127;
      SPI_FMEM_PMS_ADDR            at 16#110# range 0 .. 127;
      SPI_FMEM_PMS_SIZE            at 16#120# range 0 .. 127;
      SPI_SMEM_PMS_ATTR            at 16#130# range 0 .. 127;
      SPI_SMEM_PMS_ADDR            at 16#140# range 0 .. 127;
      SPI_SMEM_PMS_SIZE            at 16#150# range 0 .. 127;
      SPI_MEM_PMS_REJECT           at 16#164# range 0 .. 31;
      SPI_MEM_ECC_CTRL             at 16#168# range 0 .. 31;
      SPI_MEM_ECC_ERR_ADDR         at 16#16C# range 0 .. 31;
      SPI_MEM_AXI_ERR_ADDR         at 16#170# range 0 .. 31;
      SPI_SMEM_ECC_CTRL            at 16#174# range 0 .. 31;
      SPI_MEM_TIMING_CALI          at 16#180# range 0 .. 31;
      SPI_MEM_DIN_MODE             at 16#184# range 0 .. 31;
      SPI_MEM_DIN_NUM              at 16#188# range 0 .. 31;
      SPI_MEM_DOUT_MODE            at 16#18C# range 0 .. 31;
      SPI_SMEM_TIMING_CALI         at 16#190# range 0 .. 31;
      SPI_SMEM_DIN_MODE            at 16#194# range 0 .. 31;
      SPI_SMEM_DIN_NUM             at 16#198# range 0 .. 31;
      SPI_SMEM_DOUT_MODE           at 16#19C# range 0 .. 31;
      SPI_SMEM_AC                  at 16#1A0# range 0 .. 31;
      SPI_MEM_CLOCK_GATE           at 16#200# range 0 .. 31;
      SPI_MEM_XTS_PLAIN_BASE       at 16#300# range 0 .. 31;
      SPI_MEM_XTS_LINESIZE         at 16#340# range 0 .. 31;
      SPI_MEM_XTS_DESTINATION      at 16#344# range 0 .. 31;
      SPI_MEM_XTS_PHYSICAL_ADDRESS at 16#348# range 0 .. 31;
      SPI_MEM_XTS_TRIGGER          at 16#34C# range 0 .. 31;
      SPI_MEM_XTS_RELEASE          at 16#350# range 0 .. 31;
      SPI_MEM_XTS_DESTROY          at 16#354# range 0 .. 31;
      SPI_MEM_XTS_STATE            at 16#358# range 0 .. 31;
      SPI_MEM_XTS_DATE             at 16#35C# range 0 .. 31;
      SPI_MEM_MMU_ITEM_CONTENT     at 16#37C# range 0 .. 31;
      SPI_MEM_MMU_ITEM_INDEX       at 16#380# range 0 .. 31;
      SPI_MEM_MMU_POWER_CTRL       at 16#384# range 0 .. 31;
      SPI_MEM_DPA_CTRL             at 16#388# range 0 .. 31;
      SPI_MEM_REGISTERRND_ECO_HIGH at 16#3F0# range 0 .. 31;
      SPI_MEM_REGISTERRND_ECO_LOW  at 16#3F4# range 0 .. 31;
      SPI_MEM_DATE                 at 16#3FC# range 0 .. 31;
   end record;

   --  SPI (Serial Peripheral Interface) Controller 0
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => SPI0_Base;

end ESP32_C6_SVD.SPI0;
