pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.PAU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype REGDMA_CONF_FLOW_ERR_Field is HAL.UInt3;
   subtype REGDMA_CONF_LINK_SEL_Field is HAL.UInt2;

   --  Peri backup control register
   type REGDMA_CONF_Register is record
      --  Read-only. backup error type
      FLOW_ERR       : REGDMA_CONF_FLOW_ERR_Field := 16#0#;
      --  Write-only. backup start signal
      START          : Boolean := False;
      --  backup direction(reg to mem / mem to reg)
      TO_MEM         : Boolean := False;
      --  Link select
      LINK_SEL       : REGDMA_CONF_LINK_SEL_Field := 16#0#;
      --  Write-only. mac sw backup start signal
      START_MAC      : Boolean := False;
      --  mac sw backup direction(reg to mem / mem to reg)
      TO_MEM_MAC     : Boolean := False;
      --  mac hw/sw select
      SEL_MAC        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGDMA_CONF_Register use record
      FLOW_ERR       at 0 range 0 .. 2;
      START          at 0 range 3 .. 3;
      TO_MEM         at 0 range 4 .. 4;
      LINK_SEL       at 0 range 5 .. 6;
      START_MAC      at 0 range 7 .. 7;
      TO_MEM_MAC     at 0 range 8 .. 8;
      SEL_MAC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Clock control register
   type REGDMA_CLK_CONF_Register is record
      --  clock enable
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGDMA_CLK_CONF_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ETM start ctrl reg
   type REGDMA_ETM_CTRL_Register is record
      --  Write-only. etm_start_0 reg
      ETM_START_0   : Boolean := False;
      --  Write-only. etm_start_1 reg
      ETM_START_1   : Boolean := False;
      --  Write-only. etm_start_2 reg
      ETM_START_2   : Boolean := False;
      --  Write-only. etm_start_3 reg
      ETM_START_3   : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGDMA_ETM_CTRL_Register use record
      ETM_START_0   at 0 range 0 .. 0;
      ETM_START_1   at 0 range 1 .. 1;
      ETM_START_2   at 0 range 2 .. 2;
      ETM_START_3   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype REGDMA_BKP_CONF_READ_INTERVAL_Field is HAL.UInt7;
   subtype REGDMA_BKP_CONF_LINK_TOUT_THRES_Field is HAL.UInt10;
   subtype REGDMA_BKP_CONF_BURST_LIMIT_Field is HAL.UInt5;
   subtype REGDMA_BKP_CONF_BACKUP_TOUT_THRES_Field is HAL.UInt10;

   --  backup config
   type REGDMA_BKP_CONF_Register is record
      --  Link read_interval
      READ_INTERVAL     : REGDMA_BKP_CONF_READ_INTERVAL_Field := 16#20#;
      --  link wait timeout threshold
      LINK_TOUT_THRES   : REGDMA_BKP_CONF_LINK_TOUT_THRES_Field := 16#32#;
      --  burst limit
      BURST_LIMIT       : REGDMA_BKP_CONF_BURST_LIMIT_Field := 16#8#;
      --  Backup timeout threshold
      BACKUP_TOUT_THRES : REGDMA_BKP_CONF_BACKUP_TOUT_THRES_Field := 16#1F4#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGDMA_BKP_CONF_Register use record
      READ_INTERVAL     at 0 range 0 .. 6;
      LINK_TOUT_THRES   at 0 range 7 .. 16;
      BURST_LIMIT       at 0 range 17 .. 21;
      BACKUP_TOUT_THRES at 0 range 22 .. 31;
   end record;

   subtype RETENTION_LINK_BASE_LINK_BASE_ADDR_Field is HAL.UInt27;

   --  retention dma link base
   type RETENTION_LINK_BASE_Register is record
      --  retention dma link base
      LINK_BASE_ADDR : RETENTION_LINK_BASE_LINK_BASE_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_LINK_BASE_Register use record
      LINK_BASE_ADDR at 0 range 0 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Read only register for error and done
   type INT_ENA_Register is record
      --  backup done flag
      DONE_INT_ENA  : Boolean := False;
      --  error flag
      ERROR_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      DONE_INT_ENA  at 0 range 0 .. 0;
      ERROR_INT_ENA at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Read only register for error and done
   type INT_RAW_Register is record
      --  backup done flag
      DONE_INT_RAW  : Boolean := False;
      --  error flag
      ERROR_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      DONE_INT_RAW  at 0 range 0 .. 0;
      ERROR_INT_RAW at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Read only register for error and done
   type INT_CLR_Register is record
      --  Write-only. backup done flag
      DONE_INT_CLR  : Boolean := False;
      --  Write-only. error flag
      ERROR_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      DONE_INT_CLR  at 0 range 0 .. 0;
      ERROR_INT_CLR at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Read only register for error and done
   type INT_ST_Register is record
      --  Read-only. backup done flag
      DONE_INT_ST   : Boolean;
      --  Read-only. error flag
      ERROR_INT_ST  : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      DONE_INT_ST   at 0 range 0 .. 0;
      ERROR_INT_ST  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Date register.
   type DATE_Register is record
      --  REGDMA date information/ REGDMA version information.
      DATE           : DATE_DATE_Field := 16#2203070#;
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

   --  PAU Peripheral
   type PAU_Peripheral is record
      --  Peri backup control register
      REGDMA_CONF              : aliased REGDMA_CONF_Register;
      --  Clock control register
      REGDMA_CLK_CONF          : aliased REGDMA_CLK_CONF_Register;
      --  ETM start ctrl reg
      REGDMA_ETM_CTRL          : aliased REGDMA_ETM_CTRL_Register;
      --  link_0_addr
      REGDMA_LINK_0_ADDR       : aliased HAL.UInt32;
      --  Link_1_addr
      REGDMA_LINK_1_ADDR       : aliased HAL.UInt32;
      --  Link_2_addr
      REGDMA_LINK_2_ADDR       : aliased HAL.UInt32;
      --  Link_3_addr
      REGDMA_LINK_3_ADDR       : aliased HAL.UInt32;
      --  Link_mac_addr
      REGDMA_LINK_MAC_ADDR     : aliased HAL.UInt32;
      --  current link addr
      REGDMA_CURRENT_LINK_ADDR : aliased HAL.UInt32;
      --  Backup addr
      REGDMA_BACKUP_ADDR       : aliased HAL.UInt32;
      --  mem addr
      REGDMA_MEM_ADDR          : aliased HAL.UInt32;
      --  backup config
      REGDMA_BKP_CONF          : aliased REGDMA_BKP_CONF_Register;
      --  retention dma link base
      RETENTION_LINK_BASE      : aliased RETENTION_LINK_BASE_Register;
      --  retention_cfg
      RETENTION_CFG            : aliased HAL.UInt32;
      --  Read only register for error and done
      INT_ENA                  : aliased INT_ENA_Register;
      --  Read only register for error and done
      INT_RAW                  : aliased INT_RAW_Register;
      --  Read only register for error and done
      INT_CLR                  : aliased INT_CLR_Register;
      --  Read only register for error and done
      INT_ST                   : aliased INT_ST_Register;
      --  Date register.
      DATE                     : aliased DATE_Register;
   end record
     with Volatile;

   for PAU_Peripheral use record
      REGDMA_CONF              at 16#0# range 0 .. 31;
      REGDMA_CLK_CONF          at 16#4# range 0 .. 31;
      REGDMA_ETM_CTRL          at 16#8# range 0 .. 31;
      REGDMA_LINK_0_ADDR       at 16#C# range 0 .. 31;
      REGDMA_LINK_1_ADDR       at 16#10# range 0 .. 31;
      REGDMA_LINK_2_ADDR       at 16#14# range 0 .. 31;
      REGDMA_LINK_3_ADDR       at 16#18# range 0 .. 31;
      REGDMA_LINK_MAC_ADDR     at 16#1C# range 0 .. 31;
      REGDMA_CURRENT_LINK_ADDR at 16#20# range 0 .. 31;
      REGDMA_BACKUP_ADDR       at 16#24# range 0 .. 31;
      REGDMA_MEM_ADDR          at 16#28# range 0 .. 31;
      REGDMA_BKP_CONF          at 16#2C# range 0 .. 31;
      RETENTION_LINK_BASE      at 16#30# range 0 .. 31;
      RETENTION_CFG            at 16#34# range 0 .. 31;
      INT_ENA                  at 16#38# range 0 .. 31;
      INT_RAW                  at 16#3C# range 0 .. 31;
      INT_CLR                  at 16#40# range 0 .. 31;
      INT_ST                   at 16#44# range 0 .. 31;
      DATE                     at 16#3FC# range 0 .. 31;
   end record;

   --  PAU Peripheral
   PAU_Periph : aliased PAU_Peripheral
     with Import, Address => PAU_Base;

end ESP32_C6_SVD.PAU;
