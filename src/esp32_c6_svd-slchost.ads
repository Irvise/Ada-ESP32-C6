pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.SLCHOST is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  *******Description***********
   type FUNC2_0_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  *******Description***********
      SLC_FUNC2_INT  : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC2_0_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      SLC_FUNC2_INT  at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  *******Description***********
   type FUNC2_1_Register is record
      --  *******Description***********
      SLC_FUNC2_INT_EN : Boolean := False;
      --  unspecified
      Reserved_1_31    : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC2_1_Register use record
      SLC_FUNC2_INT_EN at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  *******Description***********
   type FUNC2_2_Register is record
      --  *******Description***********
      SLC_FUNC1_MDSTAT : Boolean := True;
      --  unspecified
      Reserved_1_31    : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC2_2_Register use record
      SLC_FUNC1_MDSTAT at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype SLC0HOST_TOKEN_RDATA_SLC0_TOKEN0_Field is HAL.UInt12;
   subtype SLC0HOST_TOKEN_RDATA_HOSTSLCHOST_SLC0_TOKEN1_Field is HAL.UInt12;
   subtype SLC0HOST_TOKEN_RDATA_SLC0_RX_PF_EOF_Field is HAL.UInt4;

   --  *******Description***********
   type SLC0HOST_TOKEN_RDATA_Register is record
      --  Read-only. *******Description***********
      SLC0_TOKEN0             : SLC0HOST_TOKEN_RDATA_SLC0_TOKEN0_Field;
      --  Read-only. *******Description***********
      SLC0_RX_PF_VALID        : Boolean;
      --  unspecified
      Reserved_13_15          : HAL.UInt3;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_TOKEN1 : SLC0HOST_TOKEN_RDATA_HOSTSLCHOST_SLC0_TOKEN1_Field;
      --  Read-only. *******Description***********
      SLC0_RX_PF_EOF          : SLC0HOST_TOKEN_RDATA_SLC0_RX_PF_EOF_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_TOKEN_RDATA_Register use record
      SLC0_TOKEN0             at 0 range 0 .. 11;
      SLC0_RX_PF_VALID        at 0 range 12 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      HOSTSLCHOST_SLC0_TOKEN1 at 0 range 16 .. 27;
      SLC0_RX_PF_EOF          at 0 range 28 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_INT_RAW_Register is record
      --  *******Description***********
      SLC0_TOHOST_BIT0_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT1_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT2_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT3_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT4_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT5_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT6_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT7_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_1TO0_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_1TO0_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_0TO1_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_0TO1_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_SOF_INT_RAW    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_EOF_INT_RAW    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_START_INT_RAW  : Boolean := False;
      --  *******Description***********
      SLC0HOST_TX_START_INT_RAW  : Boolean := False;
      --  *******Description***********
      SLC0_RX_UDF_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC0_TX_OVF_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC0_RX_PF_VALID_INT_RAW   : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT0_INT_RAW      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT1_INT_RAW      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT2_INT_RAW      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT3_INT_RAW      : Boolean := False;
      --  *******Description***********
      SLC0_RX_NEW_PACKET_INT_RAW : Boolean := False;
      --  *******Description***********
      SLC0_HOST_RD_RETRY_INT_RAW : Boolean := False;
      --  *******Description***********
      GPIO_SDIO_INT_RAW          : Boolean := False;
      --  unspecified
      Reserved_26_31             : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_INT_RAW_Register use record
      SLC0_TOHOST_BIT0_INT_RAW   at 0 range 0 .. 0;
      SLC0_TOHOST_BIT1_INT_RAW   at 0 range 1 .. 1;
      SLC0_TOHOST_BIT2_INT_RAW   at 0 range 2 .. 2;
      SLC0_TOHOST_BIT3_INT_RAW   at 0 range 3 .. 3;
      SLC0_TOHOST_BIT4_INT_RAW   at 0 range 4 .. 4;
      SLC0_TOHOST_BIT5_INT_RAW   at 0 range 5 .. 5;
      SLC0_TOHOST_BIT6_INT_RAW   at 0 range 6 .. 6;
      SLC0_TOHOST_BIT7_INT_RAW   at 0 range 7 .. 7;
      SLC0_TOKEN0_1TO0_INT_RAW   at 0 range 8 .. 8;
      SLC0_TOKEN1_1TO0_INT_RAW   at 0 range 9 .. 9;
      SLC0_TOKEN0_0TO1_INT_RAW   at 0 range 10 .. 10;
      SLC0_TOKEN1_0TO1_INT_RAW   at 0 range 11 .. 11;
      SLC0HOST_RX_SOF_INT_RAW    at 0 range 12 .. 12;
      SLC0HOST_RX_EOF_INT_RAW    at 0 range 13 .. 13;
      SLC0HOST_RX_START_INT_RAW  at 0 range 14 .. 14;
      SLC0HOST_TX_START_INT_RAW  at 0 range 15 .. 15;
      SLC0_RX_UDF_INT_RAW        at 0 range 16 .. 16;
      SLC0_TX_OVF_INT_RAW        at 0 range 17 .. 17;
      SLC0_RX_PF_VALID_INT_RAW   at 0 range 18 .. 18;
      SLC0_EXT_BIT0_INT_RAW      at 0 range 19 .. 19;
      SLC0_EXT_BIT1_INT_RAW      at 0 range 20 .. 20;
      SLC0_EXT_BIT2_INT_RAW      at 0 range 21 .. 21;
      SLC0_EXT_BIT3_INT_RAW      at 0 range 22 .. 22;
      SLC0_RX_NEW_PACKET_INT_RAW at 0 range 23 .. 23;
      SLC0_HOST_RD_RETRY_INT_RAW at 0 range 24 .. 24;
      GPIO_SDIO_INT_RAW          at 0 range 25 .. 25;
      Reserved_26_31             at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_INT_RAW_Register is record
      --  *******Description***********
      SLC1_TOHOST_BIT0_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT1_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT2_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT3_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT4_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT5_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT6_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT7_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_1TO0_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_1TO0_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_0TO1_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_0TO1_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_SOF_INT_RAW         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_EOF_INT_RAW         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_START_INT_RAW       : Boolean := False;
      --  *******Description***********
      SLC1HOST_TX_START_INT_RAW       : Boolean := False;
      --  *******Description***********
      SLC1_RX_UDF_INT_RAW             : Boolean := False;
      --  *******Description***********
      SLC1_TX_OVF_INT_RAW             : Boolean := False;
      --  *******Description***********
      SLC1_RX_PF_VALID_INT_RAW        : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT0_INT_RAW           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT1_INT_RAW           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT2_INT_RAW           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT3_INT_RAW           : Boolean := False;
      --  *******Description***********
      SLC1_WIFI_RX_NEW_PACKET_INT_RAW : Boolean := False;
      --  *******Description***********
      SLC1_HOST_RD_RETRY_INT_RAW      : Boolean := False;
      --  *******Description***********
      SLC1_BT_RX_NEW_PACKET_INT_RAW   : Boolean := False;
      --  unspecified
      Reserved_26_31                  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_INT_RAW_Register use record
      SLC1_TOHOST_BIT0_INT_RAW        at 0 range 0 .. 0;
      SLC1_TOHOST_BIT1_INT_RAW        at 0 range 1 .. 1;
      SLC1_TOHOST_BIT2_INT_RAW        at 0 range 2 .. 2;
      SLC1_TOHOST_BIT3_INT_RAW        at 0 range 3 .. 3;
      SLC1_TOHOST_BIT4_INT_RAW        at 0 range 4 .. 4;
      SLC1_TOHOST_BIT5_INT_RAW        at 0 range 5 .. 5;
      SLC1_TOHOST_BIT6_INT_RAW        at 0 range 6 .. 6;
      SLC1_TOHOST_BIT7_INT_RAW        at 0 range 7 .. 7;
      SLC1_TOKEN0_1TO0_INT_RAW        at 0 range 8 .. 8;
      SLC1_TOKEN1_1TO0_INT_RAW        at 0 range 9 .. 9;
      SLC1_TOKEN0_0TO1_INT_RAW        at 0 range 10 .. 10;
      SLC1_TOKEN1_0TO1_INT_RAW        at 0 range 11 .. 11;
      SLC1HOST_RX_SOF_INT_RAW         at 0 range 12 .. 12;
      SLC1HOST_RX_EOF_INT_RAW         at 0 range 13 .. 13;
      SLC1HOST_RX_START_INT_RAW       at 0 range 14 .. 14;
      SLC1HOST_TX_START_INT_RAW       at 0 range 15 .. 15;
      SLC1_RX_UDF_INT_RAW             at 0 range 16 .. 16;
      SLC1_TX_OVF_INT_RAW             at 0 range 17 .. 17;
      SLC1_RX_PF_VALID_INT_RAW        at 0 range 18 .. 18;
      SLC1_EXT_BIT0_INT_RAW           at 0 range 19 .. 19;
      SLC1_EXT_BIT1_INT_RAW           at 0 range 20 .. 20;
      SLC1_EXT_BIT2_INT_RAW           at 0 range 21 .. 21;
      SLC1_EXT_BIT3_INT_RAW           at 0 range 22 .. 22;
      SLC1_WIFI_RX_NEW_PACKET_INT_RAW at 0 range 23 .. 23;
      SLC1_HOST_RD_RETRY_INT_RAW      at 0 range 24 .. 24;
      SLC1_BT_RX_NEW_PACKET_INT_RAW   at 0 range 25 .. 25;
      Reserved_26_31                  at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_INT_ST_Register is record
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT0_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT1_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT2_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT3_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT4_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT5_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT6_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOHOST_BIT7_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOKEN0_1TO0_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOKEN1_1TO0_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOKEN0_0TO1_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_TOKEN1_0TO1_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0HOST_RX_SOF_INT_ST    : Boolean;
      --  Read-only. *******Description***********
      SLC0HOST_RX_EOF_INT_ST    : Boolean;
      --  Read-only. *******Description***********
      SLC0HOST_RX_START_INT_ST  : Boolean;
      --  Read-only. *******Description***********
      SLC0HOST_TX_START_INT_ST  : Boolean;
      --  Read-only. *******Description***********
      SLC0_RX_UDF_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC0_TX_OVF_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC0_RX_PF_VALID_INT_ST   : Boolean;
      --  Read-only. *******Description***********
      SLC0_EXT_BIT0_INT_ST      : Boolean;
      --  Read-only. *******Description***********
      SLC0_EXT_BIT1_INT_ST      : Boolean;
      --  Read-only. *******Description***********
      SLC0_EXT_BIT2_INT_ST      : Boolean;
      --  Read-only. *******Description***********
      SLC0_EXT_BIT3_INT_ST      : Boolean;
      --  Read-only. *******Description***********
      SLC0_RX_NEW_PACKET_INT_ST : Boolean;
      --  Read-only. *******Description***********
      SLC0_HOST_RD_RETRY_INT_ST : Boolean;
      --  Read-only. *******Description***********
      GPIO_SDIO_INT_ST          : Boolean;
      --  unspecified
      Reserved_26_31            : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_INT_ST_Register use record
      SLC0_TOHOST_BIT0_INT_ST   at 0 range 0 .. 0;
      SLC0_TOHOST_BIT1_INT_ST   at 0 range 1 .. 1;
      SLC0_TOHOST_BIT2_INT_ST   at 0 range 2 .. 2;
      SLC0_TOHOST_BIT3_INT_ST   at 0 range 3 .. 3;
      SLC0_TOHOST_BIT4_INT_ST   at 0 range 4 .. 4;
      SLC0_TOHOST_BIT5_INT_ST   at 0 range 5 .. 5;
      SLC0_TOHOST_BIT6_INT_ST   at 0 range 6 .. 6;
      SLC0_TOHOST_BIT7_INT_ST   at 0 range 7 .. 7;
      SLC0_TOKEN0_1TO0_INT_ST   at 0 range 8 .. 8;
      SLC0_TOKEN1_1TO0_INT_ST   at 0 range 9 .. 9;
      SLC0_TOKEN0_0TO1_INT_ST   at 0 range 10 .. 10;
      SLC0_TOKEN1_0TO1_INT_ST   at 0 range 11 .. 11;
      SLC0HOST_RX_SOF_INT_ST    at 0 range 12 .. 12;
      SLC0HOST_RX_EOF_INT_ST    at 0 range 13 .. 13;
      SLC0HOST_RX_START_INT_ST  at 0 range 14 .. 14;
      SLC0HOST_TX_START_INT_ST  at 0 range 15 .. 15;
      SLC0_RX_UDF_INT_ST        at 0 range 16 .. 16;
      SLC0_TX_OVF_INT_ST        at 0 range 17 .. 17;
      SLC0_RX_PF_VALID_INT_ST   at 0 range 18 .. 18;
      SLC0_EXT_BIT0_INT_ST      at 0 range 19 .. 19;
      SLC0_EXT_BIT1_INT_ST      at 0 range 20 .. 20;
      SLC0_EXT_BIT2_INT_ST      at 0 range 21 .. 21;
      SLC0_EXT_BIT3_INT_ST      at 0 range 22 .. 22;
      SLC0_RX_NEW_PACKET_INT_ST at 0 range 23 .. 23;
      SLC0_HOST_RD_RETRY_INT_ST at 0 range 24 .. 24;
      GPIO_SDIO_INT_ST          at 0 range 25 .. 25;
      Reserved_26_31            at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_INT_ST_Register is record
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT0_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT1_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT2_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT3_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT4_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT5_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT6_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOHOST_BIT7_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOKEN0_1TO0_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOKEN1_1TO0_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOKEN0_0TO1_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_TOKEN1_0TO1_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1HOST_RX_SOF_INT_ST         : Boolean;
      --  Read-only. *******Description***********
      SLC1HOST_RX_EOF_INT_ST         : Boolean;
      --  Read-only. *******Description***********
      SLC1HOST_RX_START_INT_ST       : Boolean;
      --  Read-only. *******Description***********
      SLC1HOST_TX_START_INT_ST       : Boolean;
      --  Read-only. *******Description***********
      SLC1_RX_UDF_INT_ST             : Boolean;
      --  Read-only. *******Description***********
      SLC1_TX_OVF_INT_ST             : Boolean;
      --  Read-only. *******Description***********
      SLC1_RX_PF_VALID_INT_ST        : Boolean;
      --  Read-only. *******Description***********
      SLC1_EXT_BIT0_INT_ST           : Boolean;
      --  Read-only. *******Description***********
      SLC1_EXT_BIT1_INT_ST           : Boolean;
      --  Read-only. *******Description***********
      SLC1_EXT_BIT2_INT_ST           : Boolean;
      --  Read-only. *******Description***********
      SLC1_EXT_BIT3_INT_ST           : Boolean;
      --  Read-only. *******Description***********
      SLC1_WIFI_RX_NEW_PACKET_INT_ST : Boolean;
      --  Read-only. *******Description***********
      SLC1_HOST_RD_RETRY_INT_ST      : Boolean;
      --  Read-only. *******Description***********
      SLC1_BT_RX_NEW_PACKET_INT_ST   : Boolean;
      --  unspecified
      Reserved_26_31                 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_INT_ST_Register use record
      SLC1_TOHOST_BIT0_INT_ST        at 0 range 0 .. 0;
      SLC1_TOHOST_BIT1_INT_ST        at 0 range 1 .. 1;
      SLC1_TOHOST_BIT2_INT_ST        at 0 range 2 .. 2;
      SLC1_TOHOST_BIT3_INT_ST        at 0 range 3 .. 3;
      SLC1_TOHOST_BIT4_INT_ST        at 0 range 4 .. 4;
      SLC1_TOHOST_BIT5_INT_ST        at 0 range 5 .. 5;
      SLC1_TOHOST_BIT6_INT_ST        at 0 range 6 .. 6;
      SLC1_TOHOST_BIT7_INT_ST        at 0 range 7 .. 7;
      SLC1_TOKEN0_1TO0_INT_ST        at 0 range 8 .. 8;
      SLC1_TOKEN1_1TO0_INT_ST        at 0 range 9 .. 9;
      SLC1_TOKEN0_0TO1_INT_ST        at 0 range 10 .. 10;
      SLC1_TOKEN1_0TO1_INT_ST        at 0 range 11 .. 11;
      SLC1HOST_RX_SOF_INT_ST         at 0 range 12 .. 12;
      SLC1HOST_RX_EOF_INT_ST         at 0 range 13 .. 13;
      SLC1HOST_RX_START_INT_ST       at 0 range 14 .. 14;
      SLC1HOST_TX_START_INT_ST       at 0 range 15 .. 15;
      SLC1_RX_UDF_INT_ST             at 0 range 16 .. 16;
      SLC1_TX_OVF_INT_ST             at 0 range 17 .. 17;
      SLC1_RX_PF_VALID_INT_ST        at 0 range 18 .. 18;
      SLC1_EXT_BIT0_INT_ST           at 0 range 19 .. 19;
      SLC1_EXT_BIT1_INT_ST           at 0 range 20 .. 20;
      SLC1_EXT_BIT2_INT_ST           at 0 range 21 .. 21;
      SLC1_EXT_BIT3_INT_ST           at 0 range 22 .. 22;
      SLC1_WIFI_RX_NEW_PACKET_INT_ST at 0 range 23 .. 23;
      SLC1_HOST_RD_RETRY_INT_ST      at 0 range 24 .. 24;
      SLC1_BT_RX_NEW_PACKET_INT_ST   at 0 range 25 .. 25;
      Reserved_26_31                 at 0 range 26 .. 31;
   end record;

   subtype PKT_LEN_HOSTSLCHOST_SLC0_LEN_Field is HAL.UInt20;
   subtype PKT_LEN_HOSTSLCHOST_SLC0_LEN_CHECK_Field is HAL.UInt12;

   --  *******Description***********
   type PKT_LEN_Register is record
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN       : PKT_LEN_HOSTSLCHOST_SLC0_LEN_Field;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN_CHECK : PKT_LEN_HOSTSLCHOST_SLC0_LEN_CHECK_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKT_LEN_Register use record
      HOSTSLCHOST_SLC0_LEN       at 0 range 0 .. 19;
      HOSTSLCHOST_SLC0_LEN_CHECK at 0 range 20 .. 31;
   end record;

   --  STATE_W0_SLCHOST_STATE array element
   subtype STATE_W0_SLCHOST_STATE_Element is HAL.UInt8;

   --  STATE_W0_SLCHOST_STATE array
   type STATE_W0_SLCHOST_STATE_Field_Array is array (0 .. 3)
     of STATE_W0_SLCHOST_STATE_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type STATE_W0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_STATE as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_STATE as an array
            Arr : STATE_W0_SLCHOST_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_W0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  STATE_W1_SLCHOST_STATE array element
   subtype STATE_W1_SLCHOST_STATE_Element is HAL.UInt8;

   --  STATE_W1_SLCHOST_STATE array
   type STATE_W1_SLCHOST_STATE_Field_Array is array (4 .. 7)
     of STATE_W1_SLCHOST_STATE_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type STATE_W1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_STATE as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_STATE as an array
            Arr : STATE_W1_SLCHOST_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_W1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W0_SLCHOST_CONF array element
   subtype CONF_W0_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W0_SLCHOST_CONF array
   type CONF_W0_SLCHOST_CONF_Field_Array is array (0 .. 3)
     of CONF_W0_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W0_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W1_SLCHOST_CONF array element
   subtype CONF_W1_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W1_SLCHOST_CONF array
   type CONF_W1_SLCHOST_CONF_Field_Array is array (4 .. 7)
     of CONF_W1_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W1_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W2_SLCHOST_CONF array element
   subtype CONF_W2_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W2_SLCHOST_CONF array
   type CONF_W2_SLCHOST_CONF_Field_Array is array (8 .. 11)
     of CONF_W2_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W2_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W3_SLCHOST_CONF array element
   subtype CONF_W3_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W3_SLCHOST_CONF array
   type CONF_W3_SLCHOST_CONF_Field_Array is array (12 .. 15)
     of CONF_W3_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W3_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W4_SLCHOST_CONF array element
   subtype CONF_W4_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W4_SLCHOST_CONF array
   type CONF_W4_SLCHOST_CONF_Field_Array is array (16 .. 19)
     of CONF_W4_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W4_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W5_SLCHOST_CONF array element
   subtype CONF_W5_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W5_SLCHOST_CONF array
   type CONF_W5_SLCHOST_CONF_Field_Array is array (20 .. 23)
     of CONF_W5_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W5_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype WIN_CMD_SLCHOST_WIN_CMD_Field is HAL.UInt16;

   --  *******Description***********
   type WIN_CMD_Register is record
      --  *******Description***********
      SLCHOST_WIN_CMD : WIN_CMD_SLCHOST_WIN_CMD_Field := 16#0#;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WIN_CMD_Register use record
      SLCHOST_WIN_CMD at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  CONF_W6_SLCHOST_CONF array element
   subtype CONF_W6_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W6_SLCHOST_CONF array
   type CONF_W6_SLCHOST_CONF_Field_Array is array (24 .. 27)
     of CONF_W6_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W6_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W6_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W6_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W7_SLCHOST_CONF array element
   subtype CONF_W7_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W7_SLCHOST_CONF array
   type CONF_W7_SLCHOST_CONF_Field_Array is array (28 .. 31)
     of CONF_W7_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W7_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PKT_LEN0_HOSTSLCHOST_SLC0_LEN0_Field is HAL.UInt20;
   subtype PKT_LEN0_HOSTSLCHOST_SLC0_LEN0_CHECK_Field is HAL.UInt12;

   --  *******Description***********
   type PKT_LEN0_Register is record
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN0       : PKT_LEN0_HOSTSLCHOST_SLC0_LEN0_Field;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN0_CHECK : PKT_LEN0_HOSTSLCHOST_SLC0_LEN0_CHECK_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKT_LEN0_Register use record
      HOSTSLCHOST_SLC0_LEN0       at 0 range 0 .. 19;
      HOSTSLCHOST_SLC0_LEN0_CHECK at 0 range 20 .. 31;
   end record;

   subtype PKT_LEN1_HOSTSLCHOST_SLC0_LEN1_Field is HAL.UInt20;
   subtype PKT_LEN1_HOSTSLCHOST_SLC0_LEN1_CHECK_Field is HAL.UInt12;

   --  *******Description***********
   type PKT_LEN1_Register is record
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN1       : PKT_LEN1_HOSTSLCHOST_SLC0_LEN1_Field;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN1_CHECK : PKT_LEN1_HOSTSLCHOST_SLC0_LEN1_CHECK_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKT_LEN1_Register use record
      HOSTSLCHOST_SLC0_LEN1       at 0 range 0 .. 19;
      HOSTSLCHOST_SLC0_LEN1_CHECK at 0 range 20 .. 31;
   end record;

   subtype PKT_LEN2_HOSTSLCHOST_SLC0_LEN2_Field is HAL.UInt20;
   subtype PKT_LEN2_HOSTSLCHOST_SLC0_LEN2_CHECK_Field is HAL.UInt12;

   --  *******Description***********
   type PKT_LEN2_Register is record
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN2       : PKT_LEN2_HOSTSLCHOST_SLC0_LEN2_Field;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC0_LEN2_CHECK : PKT_LEN2_HOSTSLCHOST_SLC0_LEN2_CHECK_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKT_LEN2_Register use record
      HOSTSLCHOST_SLC0_LEN2       at 0 range 0 .. 19;
      HOSTSLCHOST_SLC0_LEN2_CHECK at 0 range 20 .. 31;
   end record;

   --  CONF_W8_SLCHOST_CONF array element
   subtype CONF_W8_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W8_SLCHOST_CONF array
   type CONF_W8_SLCHOST_CONF_Field_Array is array (32 .. 35)
     of CONF_W8_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W8_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W8_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W8_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W9_SLCHOST_CONF array element
   subtype CONF_W9_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W9_SLCHOST_CONF array
   type CONF_W9_SLCHOST_CONF_Field_Array is array (36 .. 39)
     of CONF_W9_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W9_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W9_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W9_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W10_SLCHOST_CONF array element
   subtype CONF_W10_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W10_SLCHOST_CONF array
   type CONF_W10_SLCHOST_CONF_Field_Array is array (40 .. 43)
     of CONF_W10_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W10_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W10_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W10_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W11_SLCHOST_CONF array element
   subtype CONF_W11_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W11_SLCHOST_CONF array
   type CONF_W11_SLCHOST_CONF_Field_Array is array (44 .. 47)
     of CONF_W11_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W11_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W11_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W11_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W12_SLCHOST_CONF array element
   subtype CONF_W12_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W12_SLCHOST_CONF array
   type CONF_W12_SLCHOST_CONF_Field_Array is array (48 .. 51)
     of CONF_W12_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W12_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W13_SLCHOST_CONF array element
   subtype CONF_W13_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W13_SLCHOST_CONF array
   type CONF_W13_SLCHOST_CONF_Field_Array is array (52 .. 55)
     of CONF_W13_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W13_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W13_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W13_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W14_SLCHOST_CONF array element
   subtype CONF_W14_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W14_SLCHOST_CONF array
   type CONF_W14_SLCHOST_CONF_Field_Array is array (56 .. 59)
     of CONF_W14_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W14_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W14_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W14_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CONF_W15_SLCHOST_CONF array element
   subtype CONF_W15_SLCHOST_CONF_Element is HAL.UInt8;

   --  CONF_W15_SLCHOST_CONF array
   type CONF_W15_SLCHOST_CONF_Field_Array is array (60 .. 63)
     of CONF_W15_SLCHOST_CONF_Element
     with Component_Size => 8, Size => 32;

   --  *******Description***********
   type CONF_W15_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLCHOST_CONF as a value
            Val : HAL.UInt32;
         when True =>
            --  SLCHOST_CONF as an array
            Arr : CONF_W15_SLCHOST_CONF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_W15_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype SLC1HOST_TOKEN_RDATA_SLC1_TOKEN0_Field is HAL.UInt12;
   subtype SLC1HOST_TOKEN_RDATA_HOSTSLCHOST_SLC1_TOKEN1_Field is HAL.UInt12;
   subtype SLC1HOST_TOKEN_RDATA_SLC1_RX_PF_EOF_Field is HAL.UInt4;

   --  *******Description***********
   type SLC1HOST_TOKEN_RDATA_Register is record
      --  Read-only. *******Description***********
      SLC1_TOKEN0             : SLC1HOST_TOKEN_RDATA_SLC1_TOKEN0_Field;
      --  Read-only. *******Description***********
      SLC1_RX_PF_VALID        : Boolean;
      --  unspecified
      Reserved_13_15          : HAL.UInt3;
      --  Read-only. *******Description***********
      HOSTSLCHOST_SLC1_TOKEN1 : SLC1HOST_TOKEN_RDATA_HOSTSLCHOST_SLC1_TOKEN1_Field;
      --  Read-only. *******Description***********
      SLC1_RX_PF_EOF          : SLC1HOST_TOKEN_RDATA_SLC1_RX_PF_EOF_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_TOKEN_RDATA_Register use record
      SLC1_TOKEN0             at 0 range 0 .. 11;
      SLC1_RX_PF_VALID        at 0 range 12 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      HOSTSLCHOST_SLC1_TOKEN1 at 0 range 16 .. 27;
      SLC1_RX_PF_EOF          at 0 range 28 .. 31;
   end record;

   subtype SLC0HOST_TOKEN_WDATA_SLC0HOST_TOKEN0_WD_Field is HAL.UInt12;
   subtype SLC0HOST_TOKEN_WDATA_SLC0HOST_TOKEN1_WD_Field is HAL.UInt12;

   --  *******Description***********
   type SLC0HOST_TOKEN_WDATA_Register is record
      --  *******Description***********
      SLC0HOST_TOKEN0_WD : SLC0HOST_TOKEN_WDATA_SLC0HOST_TOKEN0_WD_Field :=
                            16#0#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  *******Description***********
      SLC0HOST_TOKEN1_WD : SLC0HOST_TOKEN_WDATA_SLC0HOST_TOKEN1_WD_Field :=
                            16#0#;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_TOKEN_WDATA_Register use record
      SLC0HOST_TOKEN0_WD at 0 range 0 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      SLC0HOST_TOKEN1_WD at 0 range 16 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   subtype SLC1HOST_TOKEN_WDATA_SLC1HOST_TOKEN0_WD_Field is HAL.UInt12;
   subtype SLC1HOST_TOKEN_WDATA_SLC1HOST_TOKEN1_WD_Field is HAL.UInt12;

   --  *******Description***********
   type SLC1HOST_TOKEN_WDATA_Register is record
      --  *******Description***********
      SLC1HOST_TOKEN0_WD : SLC1HOST_TOKEN_WDATA_SLC1HOST_TOKEN0_WD_Field :=
                            16#0#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  *******Description***********
      SLC1HOST_TOKEN1_WD : SLC1HOST_TOKEN_WDATA_SLC1HOST_TOKEN1_WD_Field :=
                            16#0#;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_TOKEN_WDATA_Register use record
      SLC1HOST_TOKEN0_WD at 0 range 0 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      SLC1HOST_TOKEN1_WD at 0 range 16 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   --  *******Description***********
   type TOKEN_CON_Register is record
      --  Write-only. *******Description***********
      SLC0HOST_TOKEN0_DEC : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_TOKEN1_DEC : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_TOKEN0_WR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_TOKEN1_WR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_TOKEN0_DEC : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_TOKEN1_DEC : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_TOKEN0_WR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_TOKEN1_WR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_LEN_WR     : Boolean := False;
      --  unspecified
      Reserved_9_31       : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOKEN_CON_Register use record
      SLC0HOST_TOKEN0_DEC at 0 range 0 .. 0;
      SLC0HOST_TOKEN1_DEC at 0 range 1 .. 1;
      SLC0HOST_TOKEN0_WR  at 0 range 2 .. 2;
      SLC0HOST_TOKEN1_WR  at 0 range 3 .. 3;
      SLC1HOST_TOKEN0_DEC at 0 range 4 .. 4;
      SLC1HOST_TOKEN1_DEC at 0 range 5 .. 5;
      SLC1HOST_TOKEN0_WR  at 0 range 6 .. 6;
      SLC1HOST_TOKEN1_WR  at 0 range 7 .. 7;
      SLC0HOST_LEN_WR     at 0 range 8 .. 8;
      Reserved_9_31       at 0 range 9 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_INT_CLR_Register is record
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT0_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT1_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT2_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT3_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT4_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT5_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT6_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOHOST_BIT7_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOKEN0_1TO0_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOKEN1_1TO0_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOKEN0_0TO1_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TOKEN1_0TO1_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_RX_SOF_INT_CLR    : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_RX_EOF_INT_CLR    : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_RX_START_INT_CLR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC0HOST_TX_START_INT_CLR  : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_RX_UDF_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_TX_OVF_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_RX_PF_VALID_INT_CLR   : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_EXT_BIT0_INT_CLR      : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_EXT_BIT1_INT_CLR      : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_EXT_BIT2_INT_CLR      : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_EXT_BIT3_INT_CLR      : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_RX_NEW_PACKET_INT_CLR : Boolean := False;
      --  Write-only. *******Description***********
      SLC0_HOST_RD_RETRY_INT_CLR : Boolean := False;
      --  Write-only. *******Description***********
      GPIO_SDIO_INT_CLR          : Boolean := False;
      --  unspecified
      Reserved_26_31             : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_INT_CLR_Register use record
      SLC0_TOHOST_BIT0_INT_CLR   at 0 range 0 .. 0;
      SLC0_TOHOST_BIT1_INT_CLR   at 0 range 1 .. 1;
      SLC0_TOHOST_BIT2_INT_CLR   at 0 range 2 .. 2;
      SLC0_TOHOST_BIT3_INT_CLR   at 0 range 3 .. 3;
      SLC0_TOHOST_BIT4_INT_CLR   at 0 range 4 .. 4;
      SLC0_TOHOST_BIT5_INT_CLR   at 0 range 5 .. 5;
      SLC0_TOHOST_BIT6_INT_CLR   at 0 range 6 .. 6;
      SLC0_TOHOST_BIT7_INT_CLR   at 0 range 7 .. 7;
      SLC0_TOKEN0_1TO0_INT_CLR   at 0 range 8 .. 8;
      SLC0_TOKEN1_1TO0_INT_CLR   at 0 range 9 .. 9;
      SLC0_TOKEN0_0TO1_INT_CLR   at 0 range 10 .. 10;
      SLC0_TOKEN1_0TO1_INT_CLR   at 0 range 11 .. 11;
      SLC0HOST_RX_SOF_INT_CLR    at 0 range 12 .. 12;
      SLC0HOST_RX_EOF_INT_CLR    at 0 range 13 .. 13;
      SLC0HOST_RX_START_INT_CLR  at 0 range 14 .. 14;
      SLC0HOST_TX_START_INT_CLR  at 0 range 15 .. 15;
      SLC0_RX_UDF_INT_CLR        at 0 range 16 .. 16;
      SLC0_TX_OVF_INT_CLR        at 0 range 17 .. 17;
      SLC0_RX_PF_VALID_INT_CLR   at 0 range 18 .. 18;
      SLC0_EXT_BIT0_INT_CLR      at 0 range 19 .. 19;
      SLC0_EXT_BIT1_INT_CLR      at 0 range 20 .. 20;
      SLC0_EXT_BIT2_INT_CLR      at 0 range 21 .. 21;
      SLC0_EXT_BIT3_INT_CLR      at 0 range 22 .. 22;
      SLC0_RX_NEW_PACKET_INT_CLR at 0 range 23 .. 23;
      SLC0_HOST_RD_RETRY_INT_CLR at 0 range 24 .. 24;
      GPIO_SDIO_INT_CLR          at 0 range 25 .. 25;
      Reserved_26_31             at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_INT_CLR_Register is record
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT0_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT1_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT2_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT3_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT4_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT5_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT6_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOHOST_BIT7_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOKEN0_1TO0_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOKEN1_1TO0_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOKEN0_0TO1_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TOKEN1_0TO1_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_RX_SOF_INT_CLR         : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_RX_EOF_INT_CLR         : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_RX_START_INT_CLR       : Boolean := False;
      --  Write-only. *******Description***********
      SLC1HOST_TX_START_INT_CLR       : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_RX_UDF_INT_CLR             : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_TX_OVF_INT_CLR             : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_RX_PF_VALID_INT_CLR        : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_EXT_BIT0_INT_CLR           : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_EXT_BIT1_INT_CLR           : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_EXT_BIT2_INT_CLR           : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_EXT_BIT3_INT_CLR           : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_WIFI_RX_NEW_PACKET_INT_CLR : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_HOST_RD_RETRY_INT_CLR      : Boolean := False;
      --  Write-only. *******Description***********
      SLC1_BT_RX_NEW_PACKET_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_26_31                  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_INT_CLR_Register use record
      SLC1_TOHOST_BIT0_INT_CLR        at 0 range 0 .. 0;
      SLC1_TOHOST_BIT1_INT_CLR        at 0 range 1 .. 1;
      SLC1_TOHOST_BIT2_INT_CLR        at 0 range 2 .. 2;
      SLC1_TOHOST_BIT3_INT_CLR        at 0 range 3 .. 3;
      SLC1_TOHOST_BIT4_INT_CLR        at 0 range 4 .. 4;
      SLC1_TOHOST_BIT5_INT_CLR        at 0 range 5 .. 5;
      SLC1_TOHOST_BIT6_INT_CLR        at 0 range 6 .. 6;
      SLC1_TOHOST_BIT7_INT_CLR        at 0 range 7 .. 7;
      SLC1_TOKEN0_1TO0_INT_CLR        at 0 range 8 .. 8;
      SLC1_TOKEN1_1TO0_INT_CLR        at 0 range 9 .. 9;
      SLC1_TOKEN0_0TO1_INT_CLR        at 0 range 10 .. 10;
      SLC1_TOKEN1_0TO1_INT_CLR        at 0 range 11 .. 11;
      SLC1HOST_RX_SOF_INT_CLR         at 0 range 12 .. 12;
      SLC1HOST_RX_EOF_INT_CLR         at 0 range 13 .. 13;
      SLC1HOST_RX_START_INT_CLR       at 0 range 14 .. 14;
      SLC1HOST_TX_START_INT_CLR       at 0 range 15 .. 15;
      SLC1_RX_UDF_INT_CLR             at 0 range 16 .. 16;
      SLC1_TX_OVF_INT_CLR             at 0 range 17 .. 17;
      SLC1_RX_PF_VALID_INT_CLR        at 0 range 18 .. 18;
      SLC1_EXT_BIT0_INT_CLR           at 0 range 19 .. 19;
      SLC1_EXT_BIT1_INT_CLR           at 0 range 20 .. 20;
      SLC1_EXT_BIT2_INT_CLR           at 0 range 21 .. 21;
      SLC1_EXT_BIT3_INT_CLR           at 0 range 22 .. 22;
      SLC1_WIFI_RX_NEW_PACKET_INT_CLR at 0 range 23 .. 23;
      SLC1_HOST_RD_RETRY_INT_CLR      at 0 range 24 .. 24;
      SLC1_BT_RX_NEW_PACKET_INT_CLR   at 0 range 25 .. 25;
      Reserved_26_31                  at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_FUNC1_INT_ENA_Register is record
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT2_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT3_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT4_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT5_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT6_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOHOST_BIT7_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOKEN0_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOKEN1_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOKEN0_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TOKEN1_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0HOST_RX_SOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      FN1_SLC0HOST_RX_EOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      FN1_SLC0HOST_RX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      FN1_SLC0HOST_TX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      FN1_SLC0_RX_UDF_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC0_TX_OVF_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC0_RX_PF_VALID_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN1_SLC0_EXT_BIT0_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN1_SLC0_EXT_BIT1_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN1_SLC0_EXT_BIT2_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN1_SLC0_EXT_BIT3_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN1_SLC0_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      FN1_SLC0_HOST_RD_RETRY_INT_ENA : Boolean := False;
      --  *******Description***********
      FN1_GPIO_SDIO_INT_ENA          : Boolean := False;
      --  unspecified
      Reserved_26_31                 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_FUNC1_INT_ENA_Register use record
      FN1_SLC0_TOHOST_BIT0_INT_ENA   at 0 range 0 .. 0;
      FN1_SLC0_TOHOST_BIT1_INT_ENA   at 0 range 1 .. 1;
      FN1_SLC0_TOHOST_BIT2_INT_ENA   at 0 range 2 .. 2;
      FN1_SLC0_TOHOST_BIT3_INT_ENA   at 0 range 3 .. 3;
      FN1_SLC0_TOHOST_BIT4_INT_ENA   at 0 range 4 .. 4;
      FN1_SLC0_TOHOST_BIT5_INT_ENA   at 0 range 5 .. 5;
      FN1_SLC0_TOHOST_BIT6_INT_ENA   at 0 range 6 .. 6;
      FN1_SLC0_TOHOST_BIT7_INT_ENA   at 0 range 7 .. 7;
      FN1_SLC0_TOKEN0_1TO0_INT_ENA   at 0 range 8 .. 8;
      FN1_SLC0_TOKEN1_1TO0_INT_ENA   at 0 range 9 .. 9;
      FN1_SLC0_TOKEN0_0TO1_INT_ENA   at 0 range 10 .. 10;
      FN1_SLC0_TOKEN1_0TO1_INT_ENA   at 0 range 11 .. 11;
      FN1_SLC0HOST_RX_SOF_INT_ENA    at 0 range 12 .. 12;
      FN1_SLC0HOST_RX_EOF_INT_ENA    at 0 range 13 .. 13;
      FN1_SLC0HOST_RX_START_INT_ENA  at 0 range 14 .. 14;
      FN1_SLC0HOST_TX_START_INT_ENA  at 0 range 15 .. 15;
      FN1_SLC0_RX_UDF_INT_ENA        at 0 range 16 .. 16;
      FN1_SLC0_TX_OVF_INT_ENA        at 0 range 17 .. 17;
      FN1_SLC0_RX_PF_VALID_INT_ENA   at 0 range 18 .. 18;
      FN1_SLC0_EXT_BIT0_INT_ENA      at 0 range 19 .. 19;
      FN1_SLC0_EXT_BIT1_INT_ENA      at 0 range 20 .. 20;
      FN1_SLC0_EXT_BIT2_INT_ENA      at 0 range 21 .. 21;
      FN1_SLC0_EXT_BIT3_INT_ENA      at 0 range 22 .. 22;
      FN1_SLC0_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      FN1_SLC0_HOST_RD_RETRY_INT_ENA at 0 range 24 .. 24;
      FN1_GPIO_SDIO_INT_ENA          at 0 range 25 .. 25;
      Reserved_26_31                 at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_FUNC1_INT_ENA_Register is record
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT2_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT3_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT4_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT5_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT6_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOHOST_BIT7_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOKEN0_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOKEN1_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOKEN0_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TOKEN1_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1HOST_RX_SOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      FN1_SLC1HOST_RX_EOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      FN1_SLC1HOST_RX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      FN1_SLC1HOST_TX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      FN1_SLC1_RX_UDF_INT_ENA             : Boolean := False;
      --  *******Description***********
      FN1_SLC1_TX_OVF_INT_ENA             : Boolean := False;
      --  *******Description***********
      FN1_SLC1_RX_PF_VALID_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN1_SLC1_EXT_BIT0_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN1_SLC1_EXT_BIT1_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN1_SLC1_EXT_BIT2_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN1_SLC1_EXT_BIT3_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN1_SLC1_WIFI_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      FN1_SLC1_HOST_RD_RETRY_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN1_SLC1_BT_RX_NEW_PACKET_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_26_31                      : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_FUNC1_INT_ENA_Register use record
      FN1_SLC1_TOHOST_BIT0_INT_ENA        at 0 range 0 .. 0;
      FN1_SLC1_TOHOST_BIT1_INT_ENA        at 0 range 1 .. 1;
      FN1_SLC1_TOHOST_BIT2_INT_ENA        at 0 range 2 .. 2;
      FN1_SLC1_TOHOST_BIT3_INT_ENA        at 0 range 3 .. 3;
      FN1_SLC1_TOHOST_BIT4_INT_ENA        at 0 range 4 .. 4;
      FN1_SLC1_TOHOST_BIT5_INT_ENA        at 0 range 5 .. 5;
      FN1_SLC1_TOHOST_BIT6_INT_ENA        at 0 range 6 .. 6;
      FN1_SLC1_TOHOST_BIT7_INT_ENA        at 0 range 7 .. 7;
      FN1_SLC1_TOKEN0_1TO0_INT_ENA        at 0 range 8 .. 8;
      FN1_SLC1_TOKEN1_1TO0_INT_ENA        at 0 range 9 .. 9;
      FN1_SLC1_TOKEN0_0TO1_INT_ENA        at 0 range 10 .. 10;
      FN1_SLC1_TOKEN1_0TO1_INT_ENA        at 0 range 11 .. 11;
      FN1_SLC1HOST_RX_SOF_INT_ENA         at 0 range 12 .. 12;
      FN1_SLC1HOST_RX_EOF_INT_ENA         at 0 range 13 .. 13;
      FN1_SLC1HOST_RX_START_INT_ENA       at 0 range 14 .. 14;
      FN1_SLC1HOST_TX_START_INT_ENA       at 0 range 15 .. 15;
      FN1_SLC1_RX_UDF_INT_ENA             at 0 range 16 .. 16;
      FN1_SLC1_TX_OVF_INT_ENA             at 0 range 17 .. 17;
      FN1_SLC1_RX_PF_VALID_INT_ENA        at 0 range 18 .. 18;
      FN1_SLC1_EXT_BIT0_INT_ENA           at 0 range 19 .. 19;
      FN1_SLC1_EXT_BIT1_INT_ENA           at 0 range 20 .. 20;
      FN1_SLC1_EXT_BIT2_INT_ENA           at 0 range 21 .. 21;
      FN1_SLC1_EXT_BIT3_INT_ENA           at 0 range 22 .. 22;
      FN1_SLC1_WIFI_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      FN1_SLC1_HOST_RD_RETRY_INT_ENA      at 0 range 24 .. 24;
      FN1_SLC1_BT_RX_NEW_PACKET_INT_ENA   at 0 range 25 .. 25;
      Reserved_26_31                      at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_FUNC2_INT_ENA_Register is record
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT2_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT3_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT4_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT5_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT6_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOHOST_BIT7_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOKEN0_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOKEN1_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOKEN0_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TOKEN1_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0HOST_RX_SOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      FN2_SLC0HOST_RX_EOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      FN2_SLC0HOST_RX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      FN2_SLC0HOST_TX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      FN2_SLC0_RX_UDF_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC0_TX_OVF_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC0_RX_PF_VALID_INT_ENA   : Boolean := False;
      --  *******Description***********
      FN2_SLC0_EXT_BIT0_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN2_SLC0_EXT_BIT1_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN2_SLC0_EXT_BIT2_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN2_SLC0_EXT_BIT3_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN2_SLC0_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      FN2_SLC0_HOST_RD_RETRY_INT_ENA : Boolean := False;
      --  *******Description***********
      FN2_GPIO_SDIO_INT_ENA          : Boolean := False;
      --  unspecified
      Reserved_26_31                 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_FUNC2_INT_ENA_Register use record
      FN2_SLC0_TOHOST_BIT0_INT_ENA   at 0 range 0 .. 0;
      FN2_SLC0_TOHOST_BIT1_INT_ENA   at 0 range 1 .. 1;
      FN2_SLC0_TOHOST_BIT2_INT_ENA   at 0 range 2 .. 2;
      FN2_SLC0_TOHOST_BIT3_INT_ENA   at 0 range 3 .. 3;
      FN2_SLC0_TOHOST_BIT4_INT_ENA   at 0 range 4 .. 4;
      FN2_SLC0_TOHOST_BIT5_INT_ENA   at 0 range 5 .. 5;
      FN2_SLC0_TOHOST_BIT6_INT_ENA   at 0 range 6 .. 6;
      FN2_SLC0_TOHOST_BIT7_INT_ENA   at 0 range 7 .. 7;
      FN2_SLC0_TOKEN0_1TO0_INT_ENA   at 0 range 8 .. 8;
      FN2_SLC0_TOKEN1_1TO0_INT_ENA   at 0 range 9 .. 9;
      FN2_SLC0_TOKEN0_0TO1_INT_ENA   at 0 range 10 .. 10;
      FN2_SLC0_TOKEN1_0TO1_INT_ENA   at 0 range 11 .. 11;
      FN2_SLC0HOST_RX_SOF_INT_ENA    at 0 range 12 .. 12;
      FN2_SLC0HOST_RX_EOF_INT_ENA    at 0 range 13 .. 13;
      FN2_SLC0HOST_RX_START_INT_ENA  at 0 range 14 .. 14;
      FN2_SLC0HOST_TX_START_INT_ENA  at 0 range 15 .. 15;
      FN2_SLC0_RX_UDF_INT_ENA        at 0 range 16 .. 16;
      FN2_SLC0_TX_OVF_INT_ENA        at 0 range 17 .. 17;
      FN2_SLC0_RX_PF_VALID_INT_ENA   at 0 range 18 .. 18;
      FN2_SLC0_EXT_BIT0_INT_ENA      at 0 range 19 .. 19;
      FN2_SLC0_EXT_BIT1_INT_ENA      at 0 range 20 .. 20;
      FN2_SLC0_EXT_BIT2_INT_ENA      at 0 range 21 .. 21;
      FN2_SLC0_EXT_BIT3_INT_ENA      at 0 range 22 .. 22;
      FN2_SLC0_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      FN2_SLC0_HOST_RD_RETRY_INT_ENA at 0 range 24 .. 24;
      FN2_GPIO_SDIO_INT_ENA          at 0 range 25 .. 25;
      Reserved_26_31                 at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_FUNC2_INT_ENA_Register is record
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT2_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT3_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT4_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT5_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT6_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOHOST_BIT7_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOKEN0_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOKEN1_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOKEN0_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TOKEN1_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1HOST_RX_SOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      FN2_SLC1HOST_RX_EOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      FN2_SLC1HOST_RX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      FN2_SLC1HOST_TX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      FN2_SLC1_RX_UDF_INT_ENA             : Boolean := False;
      --  *******Description***********
      FN2_SLC1_TX_OVF_INT_ENA             : Boolean := False;
      --  *******Description***********
      FN2_SLC1_RX_PF_VALID_INT_ENA        : Boolean := False;
      --  *******Description***********
      FN2_SLC1_EXT_BIT0_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN2_SLC1_EXT_BIT1_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN2_SLC1_EXT_BIT2_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN2_SLC1_EXT_BIT3_INT_ENA           : Boolean := False;
      --  *******Description***********
      FN2_SLC1_WIFI_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      FN2_SLC1_HOST_RD_RETRY_INT_ENA      : Boolean := False;
      --  *******Description***********
      FN2_SLC1_BT_RX_NEW_PACKET_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_26_31                      : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_FUNC2_INT_ENA_Register use record
      FN2_SLC1_TOHOST_BIT0_INT_ENA        at 0 range 0 .. 0;
      FN2_SLC1_TOHOST_BIT1_INT_ENA        at 0 range 1 .. 1;
      FN2_SLC1_TOHOST_BIT2_INT_ENA        at 0 range 2 .. 2;
      FN2_SLC1_TOHOST_BIT3_INT_ENA        at 0 range 3 .. 3;
      FN2_SLC1_TOHOST_BIT4_INT_ENA        at 0 range 4 .. 4;
      FN2_SLC1_TOHOST_BIT5_INT_ENA        at 0 range 5 .. 5;
      FN2_SLC1_TOHOST_BIT6_INT_ENA        at 0 range 6 .. 6;
      FN2_SLC1_TOHOST_BIT7_INT_ENA        at 0 range 7 .. 7;
      FN2_SLC1_TOKEN0_1TO0_INT_ENA        at 0 range 8 .. 8;
      FN2_SLC1_TOKEN1_1TO0_INT_ENA        at 0 range 9 .. 9;
      FN2_SLC1_TOKEN0_0TO1_INT_ENA        at 0 range 10 .. 10;
      FN2_SLC1_TOKEN1_0TO1_INT_ENA        at 0 range 11 .. 11;
      FN2_SLC1HOST_RX_SOF_INT_ENA         at 0 range 12 .. 12;
      FN2_SLC1HOST_RX_EOF_INT_ENA         at 0 range 13 .. 13;
      FN2_SLC1HOST_RX_START_INT_ENA       at 0 range 14 .. 14;
      FN2_SLC1HOST_TX_START_INT_ENA       at 0 range 15 .. 15;
      FN2_SLC1_RX_UDF_INT_ENA             at 0 range 16 .. 16;
      FN2_SLC1_TX_OVF_INT_ENA             at 0 range 17 .. 17;
      FN2_SLC1_RX_PF_VALID_INT_ENA        at 0 range 18 .. 18;
      FN2_SLC1_EXT_BIT0_INT_ENA           at 0 range 19 .. 19;
      FN2_SLC1_EXT_BIT1_INT_ENA           at 0 range 20 .. 20;
      FN2_SLC1_EXT_BIT2_INT_ENA           at 0 range 21 .. 21;
      FN2_SLC1_EXT_BIT3_INT_ENA           at 0 range 22 .. 22;
      FN2_SLC1_WIFI_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      FN2_SLC1_HOST_RD_RETRY_INT_ENA      at 0 range 24 .. 24;
      FN2_SLC1_BT_RX_NEW_PACKET_INT_ENA   at 0 range 25 .. 25;
      Reserved_26_31                      at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_INT_ENA_Register is record
      --  *******Description***********
      SLC0_TOHOST_BIT0_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT1_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT2_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT3_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT4_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT5_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT6_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT7_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_1TO0_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_0TO1_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_SOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_EOF_INT_ENA    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      SLC0HOST_TX_START_INT_ENA  : Boolean := False;
      --  *******Description***********
      SLC0_RX_UDF_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC0_TX_OVF_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC0_RX_PF_VALID_INT_ENA   : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT0_INT_ENA      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT1_INT_ENA      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT2_INT_ENA      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT3_INT_ENA      : Boolean := False;
      --  *******Description***********
      SLC0_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      SLC0_HOST_RD_RETRY_INT_ENA : Boolean := False;
      --  *******Description***********
      GPIO_SDIO_INT_ENA          : Boolean := False;
      --  unspecified
      Reserved_26_31             : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_INT_ENA_Register use record
      SLC0_TOHOST_BIT0_INT_ENA   at 0 range 0 .. 0;
      SLC0_TOHOST_BIT1_INT_ENA   at 0 range 1 .. 1;
      SLC0_TOHOST_BIT2_INT_ENA   at 0 range 2 .. 2;
      SLC0_TOHOST_BIT3_INT_ENA   at 0 range 3 .. 3;
      SLC0_TOHOST_BIT4_INT_ENA   at 0 range 4 .. 4;
      SLC0_TOHOST_BIT5_INT_ENA   at 0 range 5 .. 5;
      SLC0_TOHOST_BIT6_INT_ENA   at 0 range 6 .. 6;
      SLC0_TOHOST_BIT7_INT_ENA   at 0 range 7 .. 7;
      SLC0_TOKEN0_1TO0_INT_ENA   at 0 range 8 .. 8;
      SLC0_TOKEN1_1TO0_INT_ENA   at 0 range 9 .. 9;
      SLC0_TOKEN0_0TO1_INT_ENA   at 0 range 10 .. 10;
      SLC0_TOKEN1_0TO1_INT_ENA   at 0 range 11 .. 11;
      SLC0HOST_RX_SOF_INT_ENA    at 0 range 12 .. 12;
      SLC0HOST_RX_EOF_INT_ENA    at 0 range 13 .. 13;
      SLC0HOST_RX_START_INT_ENA  at 0 range 14 .. 14;
      SLC0HOST_TX_START_INT_ENA  at 0 range 15 .. 15;
      SLC0_RX_UDF_INT_ENA        at 0 range 16 .. 16;
      SLC0_TX_OVF_INT_ENA        at 0 range 17 .. 17;
      SLC0_RX_PF_VALID_INT_ENA   at 0 range 18 .. 18;
      SLC0_EXT_BIT0_INT_ENA      at 0 range 19 .. 19;
      SLC0_EXT_BIT1_INT_ENA      at 0 range 20 .. 20;
      SLC0_EXT_BIT2_INT_ENA      at 0 range 21 .. 21;
      SLC0_EXT_BIT3_INT_ENA      at 0 range 22 .. 22;
      SLC0_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      SLC0_HOST_RD_RETRY_INT_ENA at 0 range 24 .. 24;
      GPIO_SDIO_INT_ENA          at 0 range 25 .. 25;
      Reserved_26_31             at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_INT_ENA_Register is record
      --  *******Description***********
      SLC1_TOHOST_BIT0_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT1_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT2_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT3_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT4_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT5_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT6_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT7_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_1TO0_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_0TO1_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_SOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_EOF_INT_ENA         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      SLC1HOST_TX_START_INT_ENA       : Boolean := False;
      --  *******Description***********
      SLC1_RX_UDF_INT_ENA             : Boolean := False;
      --  *******Description***********
      SLC1_TX_OVF_INT_ENA             : Boolean := False;
      --  *******Description***********
      SLC1_RX_PF_VALID_INT_ENA        : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT0_INT_ENA           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT1_INT_ENA           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT2_INT_ENA           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT3_INT_ENA           : Boolean := False;
      --  *******Description***********
      SLC1_WIFI_RX_NEW_PACKET_INT_ENA : Boolean := False;
      --  *******Description***********
      SLC1_HOST_RD_RETRY_INT_ENA      : Boolean := False;
      --  *******Description***********
      SLC1_BT_RX_NEW_PACKET_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_26_31                  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_INT_ENA_Register use record
      SLC1_TOHOST_BIT0_INT_ENA        at 0 range 0 .. 0;
      SLC1_TOHOST_BIT1_INT_ENA        at 0 range 1 .. 1;
      SLC1_TOHOST_BIT2_INT_ENA        at 0 range 2 .. 2;
      SLC1_TOHOST_BIT3_INT_ENA        at 0 range 3 .. 3;
      SLC1_TOHOST_BIT4_INT_ENA        at 0 range 4 .. 4;
      SLC1_TOHOST_BIT5_INT_ENA        at 0 range 5 .. 5;
      SLC1_TOHOST_BIT6_INT_ENA        at 0 range 6 .. 6;
      SLC1_TOHOST_BIT7_INT_ENA        at 0 range 7 .. 7;
      SLC1_TOKEN0_1TO0_INT_ENA        at 0 range 8 .. 8;
      SLC1_TOKEN1_1TO0_INT_ENA        at 0 range 9 .. 9;
      SLC1_TOKEN0_0TO1_INT_ENA        at 0 range 10 .. 10;
      SLC1_TOKEN1_0TO1_INT_ENA        at 0 range 11 .. 11;
      SLC1HOST_RX_SOF_INT_ENA         at 0 range 12 .. 12;
      SLC1HOST_RX_EOF_INT_ENA         at 0 range 13 .. 13;
      SLC1HOST_RX_START_INT_ENA       at 0 range 14 .. 14;
      SLC1HOST_TX_START_INT_ENA       at 0 range 15 .. 15;
      SLC1_RX_UDF_INT_ENA             at 0 range 16 .. 16;
      SLC1_TX_OVF_INT_ENA             at 0 range 17 .. 17;
      SLC1_RX_PF_VALID_INT_ENA        at 0 range 18 .. 18;
      SLC1_EXT_BIT0_INT_ENA           at 0 range 19 .. 19;
      SLC1_EXT_BIT1_INT_ENA           at 0 range 20 .. 20;
      SLC1_EXT_BIT2_INT_ENA           at 0 range 21 .. 21;
      SLC1_EXT_BIT3_INT_ENA           at 0 range 22 .. 22;
      SLC1_WIFI_RX_NEW_PACKET_INT_ENA at 0 range 23 .. 23;
      SLC1_HOST_RD_RETRY_INT_ENA      at 0 range 24 .. 24;
      SLC1_BT_RX_NEW_PACKET_INT_ENA   at 0 range 25 .. 25;
      Reserved_26_31                  at 0 range 26 .. 31;
   end record;

   subtype SLC0HOST_RX_INFOR_SLC0HOST_RX_INFOR_Field is HAL.UInt20;

   --  *******Description***********
   type SLC0HOST_RX_INFOR_Register is record
      --  *******Description***********
      SLC0HOST_RX_INFOR : SLC0HOST_RX_INFOR_SLC0HOST_RX_INFOR_Field := 16#0#;
      --  unspecified
      Reserved_20_31    : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_RX_INFOR_Register use record
      SLC0HOST_RX_INFOR at 0 range 0 .. 19;
      Reserved_20_31    at 0 range 20 .. 31;
   end record;

   subtype SLC1HOST_RX_INFOR_SLC1HOST_RX_INFOR_Field is HAL.UInt20;

   --  *******Description***********
   type SLC1HOST_RX_INFOR_Register is record
      --  *******Description***********
      SLC1HOST_RX_INFOR : SLC1HOST_RX_INFOR_SLC1HOST_RX_INFOR_Field := 16#0#;
      --  unspecified
      Reserved_20_31    : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_RX_INFOR_Register use record
      SLC1HOST_RX_INFOR at 0 range 0 .. 19;
      Reserved_20_31    at 0 range 20 .. 31;
   end record;

   subtype SLC_APBWIN_CONF_SLC_APBWIN_ADDR_Field is HAL.UInt28;

   --  *******Description***********
   type SLC_APBWIN_CONF_Register is record
      --  *******Description***********
      SLC_APBWIN_ADDR  : SLC_APBWIN_CONF_SLC_APBWIN_ADDR_Field := 16#0#;
      --  *******Description***********
      SLC_APBWIN_WR    : Boolean := False;
      --  *******Description***********
      SLC_APBWIN_START : Boolean := False;
      --  unspecified
      Reserved_30_31   : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC_APBWIN_CONF_Register use record
      SLC_APBWIN_ADDR  at 0 range 0 .. 27;
      SLC_APBWIN_WR    at 0 range 28 .. 28;
      SLC_APBWIN_START at 0 range 29 .. 29;
      Reserved_30_31   at 0 range 30 .. 31;
   end record;

   subtype RDCLR0_SLCHOST_SLC0_BIT7_CLRADDR_Field is HAL.UInt9;
   subtype RDCLR0_SLCHOST_SLC0_BIT6_CLRADDR_Field is HAL.UInt9;

   --  *******Description***********
   type RDCLR0_Register is record
      --  *******Description***********
      SLCHOST_SLC0_BIT7_CLRADDR : RDCLR0_SLCHOST_SLC0_BIT7_CLRADDR_Field :=
                                   16#44#;
      --  *******Description***********
      SLCHOST_SLC0_BIT6_CLRADDR : RDCLR0_SLCHOST_SLC0_BIT6_CLRADDR_Field :=
                                   16#1E0#;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDCLR0_Register use record
      SLCHOST_SLC0_BIT7_CLRADDR at 0 range 0 .. 8;
      SLCHOST_SLC0_BIT6_CLRADDR at 0 range 9 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   subtype RDCLR1_SLCHOST_SLC1_BIT7_CLRADDR_Field is HAL.UInt9;
   subtype RDCLR1_SLCHOST_SLC1_BIT6_CLRADDR_Field is HAL.UInt9;

   --  *******Description***********
   type RDCLR1_Register is record
      --  *******Description***********
      SLCHOST_SLC1_BIT7_CLRADDR : RDCLR1_SLCHOST_SLC1_BIT7_CLRADDR_Field :=
                                   16#1E0#;
      --  *******Description***********
      SLCHOST_SLC1_BIT6_CLRADDR : RDCLR1_SLCHOST_SLC1_BIT6_CLRADDR_Field :=
                                   16#1E0#;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDCLR1_Register use record
      SLCHOST_SLC1_BIT7_CLRADDR at 0 range 0 .. 8;
      SLCHOST_SLC1_BIT6_CLRADDR at 0 range 9 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   --  *******Description***********
   type SLC0HOST_INT_ENA1_Register is record
      --  *******Description***********
      SLC0_TOHOST_BIT0_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT1_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT2_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT3_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT4_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT5_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT6_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOHOST_BIT7_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_1TO0_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_1TO0_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN0_0TO1_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_TOKEN1_0TO1_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_SOF_INT_ENA1    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_EOF_INT_ENA1    : Boolean := False;
      --  *******Description***********
      SLC0HOST_RX_START_INT_ENA1  : Boolean := False;
      --  *******Description***********
      SLC0HOST_TX_START_INT_ENA1  : Boolean := False;
      --  *******Description***********
      SLC0_RX_UDF_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC0_TX_OVF_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC0_RX_PF_VALID_INT_ENA1   : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT0_INT_ENA1      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT1_INT_ENA1      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT2_INT_ENA1      : Boolean := False;
      --  *******Description***********
      SLC0_EXT_BIT3_INT_ENA1      : Boolean := False;
      --  *******Description***********
      SLC0_RX_NEW_PACKET_INT_ENA1 : Boolean := False;
      --  *******Description***********
      SLC0_HOST_RD_RETRY_INT_ENA1 : Boolean := False;
      --  *******Description***********
      GPIO_SDIO_INT_ENA1          : Boolean := False;
      --  unspecified
      Reserved_26_31              : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC0HOST_INT_ENA1_Register use record
      SLC0_TOHOST_BIT0_INT_ENA1   at 0 range 0 .. 0;
      SLC0_TOHOST_BIT1_INT_ENA1   at 0 range 1 .. 1;
      SLC0_TOHOST_BIT2_INT_ENA1   at 0 range 2 .. 2;
      SLC0_TOHOST_BIT3_INT_ENA1   at 0 range 3 .. 3;
      SLC0_TOHOST_BIT4_INT_ENA1   at 0 range 4 .. 4;
      SLC0_TOHOST_BIT5_INT_ENA1   at 0 range 5 .. 5;
      SLC0_TOHOST_BIT6_INT_ENA1   at 0 range 6 .. 6;
      SLC0_TOHOST_BIT7_INT_ENA1   at 0 range 7 .. 7;
      SLC0_TOKEN0_1TO0_INT_ENA1   at 0 range 8 .. 8;
      SLC0_TOKEN1_1TO0_INT_ENA1   at 0 range 9 .. 9;
      SLC0_TOKEN0_0TO1_INT_ENA1   at 0 range 10 .. 10;
      SLC0_TOKEN1_0TO1_INT_ENA1   at 0 range 11 .. 11;
      SLC0HOST_RX_SOF_INT_ENA1    at 0 range 12 .. 12;
      SLC0HOST_RX_EOF_INT_ENA1    at 0 range 13 .. 13;
      SLC0HOST_RX_START_INT_ENA1  at 0 range 14 .. 14;
      SLC0HOST_TX_START_INT_ENA1  at 0 range 15 .. 15;
      SLC0_RX_UDF_INT_ENA1        at 0 range 16 .. 16;
      SLC0_TX_OVF_INT_ENA1        at 0 range 17 .. 17;
      SLC0_RX_PF_VALID_INT_ENA1   at 0 range 18 .. 18;
      SLC0_EXT_BIT0_INT_ENA1      at 0 range 19 .. 19;
      SLC0_EXT_BIT1_INT_ENA1      at 0 range 20 .. 20;
      SLC0_EXT_BIT2_INT_ENA1      at 0 range 21 .. 21;
      SLC0_EXT_BIT3_INT_ENA1      at 0 range 22 .. 22;
      SLC0_RX_NEW_PACKET_INT_ENA1 at 0 range 23 .. 23;
      SLC0_HOST_RD_RETRY_INT_ENA1 at 0 range 24 .. 24;
      GPIO_SDIO_INT_ENA1          at 0 range 25 .. 25;
      Reserved_26_31              at 0 range 26 .. 31;
   end record;

   --  *******Description***********
   type SLC1HOST_INT_ENA1_Register is record
      --  *******Description***********
      SLC1_TOHOST_BIT0_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT1_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT2_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT3_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT4_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT5_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT6_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOHOST_BIT7_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_1TO0_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_1TO0_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN0_0TO1_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_TOKEN1_0TO1_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_SOF_INT_ENA1         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_EOF_INT_ENA1         : Boolean := False;
      --  *******Description***********
      SLC1HOST_RX_START_INT_ENA1       : Boolean := False;
      --  *******Description***********
      SLC1HOST_TX_START_INT_ENA1       : Boolean := False;
      --  *******Description***********
      SLC1_RX_UDF_INT_ENA1             : Boolean := False;
      --  *******Description***********
      SLC1_TX_OVF_INT_ENA1             : Boolean := False;
      --  *******Description***********
      SLC1_RX_PF_VALID_INT_ENA1        : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT0_INT_ENA1           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT1_INT_ENA1           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT2_INT_ENA1           : Boolean := False;
      --  *******Description***********
      SLC1_EXT_BIT3_INT_ENA1           : Boolean := False;
      --  *******Description***********
      SLC1_WIFI_RX_NEW_PACKET_INT_ENA1 : Boolean := False;
      --  *******Description***********
      SLC1_HOST_RD_RETRY_INT_ENA1      : Boolean := False;
      --  *******Description***********
      SLC1_BT_RX_NEW_PACKET_INT_ENA1   : Boolean := False;
      --  unspecified
      Reserved_26_31                   : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLC1HOST_INT_ENA1_Register use record
      SLC1_TOHOST_BIT0_INT_ENA1        at 0 range 0 .. 0;
      SLC1_TOHOST_BIT1_INT_ENA1        at 0 range 1 .. 1;
      SLC1_TOHOST_BIT2_INT_ENA1        at 0 range 2 .. 2;
      SLC1_TOHOST_BIT3_INT_ENA1        at 0 range 3 .. 3;
      SLC1_TOHOST_BIT4_INT_ENA1        at 0 range 4 .. 4;
      SLC1_TOHOST_BIT5_INT_ENA1        at 0 range 5 .. 5;
      SLC1_TOHOST_BIT6_INT_ENA1        at 0 range 6 .. 6;
      SLC1_TOHOST_BIT7_INT_ENA1        at 0 range 7 .. 7;
      SLC1_TOKEN0_1TO0_INT_ENA1        at 0 range 8 .. 8;
      SLC1_TOKEN1_1TO0_INT_ENA1        at 0 range 9 .. 9;
      SLC1_TOKEN0_0TO1_INT_ENA1        at 0 range 10 .. 10;
      SLC1_TOKEN1_0TO1_INT_ENA1        at 0 range 11 .. 11;
      SLC1HOST_RX_SOF_INT_ENA1         at 0 range 12 .. 12;
      SLC1HOST_RX_EOF_INT_ENA1         at 0 range 13 .. 13;
      SLC1HOST_RX_START_INT_ENA1       at 0 range 14 .. 14;
      SLC1HOST_TX_START_INT_ENA1       at 0 range 15 .. 15;
      SLC1_RX_UDF_INT_ENA1             at 0 range 16 .. 16;
      SLC1_TX_OVF_INT_ENA1             at 0 range 17 .. 17;
      SLC1_RX_PF_VALID_INT_ENA1        at 0 range 18 .. 18;
      SLC1_EXT_BIT0_INT_ENA1           at 0 range 19 .. 19;
      SLC1_EXT_BIT1_INT_ENA1           at 0 range 20 .. 20;
      SLC1_EXT_BIT2_INT_ENA1           at 0 range 21 .. 21;
      SLC1_EXT_BIT3_INT_ENA1           at 0 range 22 .. 22;
      SLC1_WIFI_RX_NEW_PACKET_INT_ENA1 at 0 range 23 .. 23;
      SLC1_HOST_RD_RETRY_INT_ENA1      at 0 range 24 .. 24;
      SLC1_BT_RX_NEW_PACKET_INT_ENA1   at 0 range 25 .. 25;
      Reserved_26_31                   at 0 range 26 .. 31;
   end record;

   --  CONF_FRC_SDIO array element
   subtype CONF_FRC_SDIO_Element is HAL.UInt5;

   --  CONF_FRC_SDIO array
   type CONF_FRC_SDIO_Field_Array is array (11 .. 12)
     of CONF_FRC_SDIO_Element
     with Component_Size => 5, Size => 10;

   --  Type definition for CONF_FRC_SDIO
   type CONF_FRC_SDIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FRC_SDIO as a value
            Val : HAL.UInt10;
         when True =>
            --  FRC_SDIO as an array
            Arr : CONF_FRC_SDIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for CONF_FRC_SDIO_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   subtype CONF_FRC_NEG_SAMP_Field is HAL.UInt5;
   subtype CONF_FRC_POS_SAMP_Field is HAL.UInt5;
   subtype CONF_FRC_QUICK_IN_Field is HAL.UInt5;

   --  *******Description***********
   type CONF_Register is record
      --  *******Description***********
      FRC_SDIO         : CONF_FRC_SDIO_Field :=
                          (As_Array => False, Val => 16#0#);
      --  *******Description***********
      FRC_NEG_SAMP     : CONF_FRC_NEG_SAMP_Field := 16#0#;
      --  *******Description***********
      FRC_POS_SAMP     : CONF_FRC_POS_SAMP_Field := 16#0#;
      --  *******Description***********
      FRC_QUICK_IN     : CONF_FRC_QUICK_IN_Field := 16#0#;
      --  *******Description***********
      SDIO20_INT_DELAY : Boolean := False;
      --  *******Description***********
      SDIO_PAD_PULLUP  : Boolean := False;
      --  *******Description***********
      HSPEED_CON_EN    : Boolean := False;
      --  unspecified
      Reserved_28_31   : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_Register use record
      FRC_SDIO         at 0 range 0 .. 9;
      FRC_NEG_SAMP     at 0 range 10 .. 14;
      FRC_POS_SAMP     at 0 range 15 .. 19;
      FRC_QUICK_IN     at 0 range 20 .. 24;
      SDIO20_INT_DELAY at 0 range 25 .. 25;
      SDIO_PAD_PULLUP  at 0 range 26 .. 26;
      HSPEED_CON_EN    at 0 range 27 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype INF_ST_SDIO20_MODE_Field is HAL.UInt5;
   subtype INF_ST_SDIO_NEG_SAMP_Field is HAL.UInt5;
   subtype INF_ST_SDIO_QUICK_IN_Field is HAL.UInt5;
   subtype INF_ST_CLK_MODE_Field is HAL.UInt2;

   --  *******Description***********
   type INF_ST_Register is record
      --  Read-only. *******Description***********
      SDIO20_MODE    : INF_ST_SDIO20_MODE_Field := 16#0#;
      --  Read-only. *******Description***********
      SDIO_NEG_SAMP  : INF_ST_SDIO_NEG_SAMP_Field := 16#0#;
      --  Read-only. *******Description***********
      SDIO_QUICK_IN  : INF_ST_SDIO_QUICK_IN_Field := 16#0#;
      --  dll is controlled by software
      DLL_ON_SW      : Boolean := False;
      --  Software dll on
      DLL_ON         : Boolean := False;
      --  dll clock mode is controlled by software
      CLK_MODE_SW    : Boolean := False;
      --  Software set clock mode
      CLK_MODE       : INF_ST_CLK_MODE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INF_ST_Register use record
      SDIO20_MODE    at 0 range 0 .. 4;
      SDIO_NEG_SAMP  at 0 range 5 .. 9;
      SDIO_QUICK_IN  at 0 range 10 .. 14;
      DLL_ON_SW      at 0 range 15 .. 15;
      DLL_ON         at 0 range 16 .. 16;
      CLK_MODE_SW    at 0 range 17 .. 17;
      CLK_MODE       at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SLCHOST Peripheral
   type SLCHOST_Peripheral is record
      --  *******Description***********
      FUNC2_0                : aliased FUNC2_0_Register;
      --  *******Description***********
      FUNC2_1                : aliased FUNC2_1_Register;
      --  *******Description***********
      FUNC2_2                : aliased FUNC2_2_Register;
      --  *******Description***********
      GPIO_STATUS0           : aliased HAL.UInt32;
      --  *******Description***********
      GPIO_STATUS1           : aliased HAL.UInt32;
      --  *******Description***********
      GPIO_IN0               : aliased HAL.UInt32;
      --  *******Description***********
      GPIO_IN1               : aliased HAL.UInt32;
      --  *******Description***********
      SLC0HOST_TOKEN_RDATA   : aliased SLC0HOST_TOKEN_RDATA_Register;
      --  *******Description***********
      SLC0_HOST_PF           : aliased HAL.UInt32;
      --  *******Description***********
      SLC1_HOST_PF           : aliased HAL.UInt32;
      --  *******Description***********
      SLC0HOST_INT_RAW       : aliased SLC0HOST_INT_RAW_Register;
      --  *******Description***********
      SLC1HOST_INT_RAW       : aliased SLC1HOST_INT_RAW_Register;
      --  *******Description***********
      SLC0HOST_INT_ST        : aliased SLC0HOST_INT_ST_Register;
      --  *******Description***********
      SLC1HOST_INT_ST        : aliased SLC1HOST_INT_ST_Register;
      --  *******Description***********
      PKT_LEN                : aliased PKT_LEN_Register;
      --  *******Description***********
      STATE_W0               : aliased STATE_W0_Register;
      --  *******Description***********
      STATE_W1               : aliased STATE_W1_Register;
      --  *******Description***********
      CONF_W0                : aliased CONF_W0_Register;
      --  *******Description***********
      CONF_W1                : aliased CONF_W1_Register;
      --  *******Description***********
      CONF_W2                : aliased CONF_W2_Register;
      --  *******Description***********
      CONF_W3                : aliased CONF_W3_Register;
      --  *******Description***********
      CONF_W4                : aliased CONF_W4_Register;
      --  *******Description***********
      CONF_W5                : aliased CONF_W5_Register;
      --  *******Description***********
      WIN_CMD                : aliased WIN_CMD_Register;
      --  *******Description***********
      CONF_W6                : aliased CONF_W6_Register;
      --  *******Description***********
      CONF_W7                : aliased CONF_W7_Register;
      --  *******Description***********
      PKT_LEN0               : aliased PKT_LEN0_Register;
      --  *******Description***********
      PKT_LEN1               : aliased PKT_LEN1_Register;
      --  *******Description***********
      PKT_LEN2               : aliased PKT_LEN2_Register;
      --  *******Description***********
      CONF_W8                : aliased CONF_W8_Register;
      --  *******Description***********
      CONF_W9                : aliased CONF_W9_Register;
      --  *******Description***********
      CONF_W10               : aliased CONF_W10_Register;
      --  *******Description***********
      CONF_W11               : aliased CONF_W11_Register;
      --  *******Description***********
      CONF_W12               : aliased CONF_W12_Register;
      --  *******Description***********
      CONF_W13               : aliased CONF_W13_Register;
      --  *******Description***********
      CONF_W14               : aliased CONF_W14_Register;
      --  *******Description***********
      CONF_W15               : aliased CONF_W15_Register;
      --  *******Description***********
      CHECK_SUM0             : aliased HAL.UInt32;
      --  *******Description***********
      CHECK_SUM1             : aliased HAL.UInt32;
      --  *******Description***********
      SLC1HOST_TOKEN_RDATA   : aliased SLC1HOST_TOKEN_RDATA_Register;
      --  *******Description***********
      SLC0HOST_TOKEN_WDATA   : aliased SLC0HOST_TOKEN_WDATA_Register;
      --  *******Description***********
      SLC1HOST_TOKEN_WDATA   : aliased SLC1HOST_TOKEN_WDATA_Register;
      --  *******Description***********
      TOKEN_CON              : aliased TOKEN_CON_Register;
      --  *******Description***********
      SLC0HOST_INT_CLR       : aliased SLC0HOST_INT_CLR_Register;
      --  *******Description***********
      SLC1HOST_INT_CLR       : aliased SLC1HOST_INT_CLR_Register;
      --  *******Description***********
      SLC0HOST_FUNC1_INT_ENA : aliased SLC0HOST_FUNC1_INT_ENA_Register;
      --  *******Description***********
      SLC1HOST_FUNC1_INT_ENA : aliased SLC1HOST_FUNC1_INT_ENA_Register;
      --  *******Description***********
      SLC0HOST_FUNC2_INT_ENA : aliased SLC0HOST_FUNC2_INT_ENA_Register;
      --  *******Description***********
      SLC1HOST_FUNC2_INT_ENA : aliased SLC1HOST_FUNC2_INT_ENA_Register;
      --  *******Description***********
      SLC0HOST_INT_ENA       : aliased SLC0HOST_INT_ENA_Register;
      --  *******Description***********
      SLC1HOST_INT_ENA       : aliased SLC1HOST_INT_ENA_Register;
      --  *******Description***********
      SLC0HOST_RX_INFOR      : aliased SLC0HOST_RX_INFOR_Register;
      --  *******Description***********
      SLC1HOST_RX_INFOR      : aliased SLC1HOST_RX_INFOR_Register;
      --  *******Description***********
      SLC0HOST_LEN_WD        : aliased HAL.UInt32;
      --  *******Description***********
      SLC_APBWIN_WDATA       : aliased HAL.UInt32;
      --  *******Description***********
      SLC_APBWIN_CONF        : aliased SLC_APBWIN_CONF_Register;
      --  *******Description***********
      SLC_APBWIN_RDATA       : aliased HAL.UInt32;
      --  *******Description***********
      RDCLR0                 : aliased RDCLR0_Register;
      --  *******Description***********
      RDCLR1                 : aliased RDCLR1_Register;
      --  *******Description***********
      SLC0HOST_INT_ENA1      : aliased SLC0HOST_INT_ENA1_Register;
      --  *******Description***********
      SLC1HOST_INT_ENA1      : aliased SLC1HOST_INT_ENA1_Register;
      --  *******Description***********
      SLCHOSTDATE            : aliased HAL.UInt32;
      --  *******Description***********
      SLCHOSTID              : aliased HAL.UInt32;
      --  *******Description***********
      CONF                   : aliased CONF_Register;
      --  *******Description***********
      INF_ST                 : aliased INF_ST_Register;
   end record
     with Volatile;

   for SLCHOST_Peripheral use record
      FUNC2_0                at 16#10# range 0 .. 31;
      FUNC2_1                at 16#14# range 0 .. 31;
      FUNC2_2                at 16#20# range 0 .. 31;
      GPIO_STATUS0           at 16#34# range 0 .. 31;
      GPIO_STATUS1           at 16#38# range 0 .. 31;
      GPIO_IN0               at 16#3C# range 0 .. 31;
      GPIO_IN1               at 16#40# range 0 .. 31;
      SLC0HOST_TOKEN_RDATA   at 16#44# range 0 .. 31;
      SLC0_HOST_PF           at 16#48# range 0 .. 31;
      SLC1_HOST_PF           at 16#4C# range 0 .. 31;
      SLC0HOST_INT_RAW       at 16#50# range 0 .. 31;
      SLC1HOST_INT_RAW       at 16#54# range 0 .. 31;
      SLC0HOST_INT_ST        at 16#58# range 0 .. 31;
      SLC1HOST_INT_ST        at 16#5C# range 0 .. 31;
      PKT_LEN                at 16#60# range 0 .. 31;
      STATE_W0               at 16#64# range 0 .. 31;
      STATE_W1               at 16#68# range 0 .. 31;
      CONF_W0                at 16#6C# range 0 .. 31;
      CONF_W1                at 16#70# range 0 .. 31;
      CONF_W2                at 16#74# range 0 .. 31;
      CONF_W3                at 16#78# range 0 .. 31;
      CONF_W4                at 16#7C# range 0 .. 31;
      CONF_W5                at 16#80# range 0 .. 31;
      WIN_CMD                at 16#84# range 0 .. 31;
      CONF_W6                at 16#88# range 0 .. 31;
      CONF_W7                at 16#8C# range 0 .. 31;
      PKT_LEN0               at 16#90# range 0 .. 31;
      PKT_LEN1               at 16#94# range 0 .. 31;
      PKT_LEN2               at 16#98# range 0 .. 31;
      CONF_W8                at 16#9C# range 0 .. 31;
      CONF_W9                at 16#A0# range 0 .. 31;
      CONF_W10               at 16#A4# range 0 .. 31;
      CONF_W11               at 16#A8# range 0 .. 31;
      CONF_W12               at 16#AC# range 0 .. 31;
      CONF_W13               at 16#B0# range 0 .. 31;
      CONF_W14               at 16#B4# range 0 .. 31;
      CONF_W15               at 16#B8# range 0 .. 31;
      CHECK_SUM0             at 16#BC# range 0 .. 31;
      CHECK_SUM1             at 16#C0# range 0 .. 31;
      SLC1HOST_TOKEN_RDATA   at 16#C4# range 0 .. 31;
      SLC0HOST_TOKEN_WDATA   at 16#C8# range 0 .. 31;
      SLC1HOST_TOKEN_WDATA   at 16#CC# range 0 .. 31;
      TOKEN_CON              at 16#D0# range 0 .. 31;
      SLC0HOST_INT_CLR       at 16#D4# range 0 .. 31;
      SLC1HOST_INT_CLR       at 16#D8# range 0 .. 31;
      SLC0HOST_FUNC1_INT_ENA at 16#DC# range 0 .. 31;
      SLC1HOST_FUNC1_INT_ENA at 16#E0# range 0 .. 31;
      SLC0HOST_FUNC2_INT_ENA at 16#E4# range 0 .. 31;
      SLC1HOST_FUNC2_INT_ENA at 16#E8# range 0 .. 31;
      SLC0HOST_INT_ENA       at 16#EC# range 0 .. 31;
      SLC1HOST_INT_ENA       at 16#F0# range 0 .. 31;
      SLC0HOST_RX_INFOR      at 16#F4# range 0 .. 31;
      SLC1HOST_RX_INFOR      at 16#F8# range 0 .. 31;
      SLC0HOST_LEN_WD        at 16#FC# range 0 .. 31;
      SLC_APBWIN_WDATA       at 16#100# range 0 .. 31;
      SLC_APBWIN_CONF        at 16#104# range 0 .. 31;
      SLC_APBWIN_RDATA       at 16#108# range 0 .. 31;
      RDCLR0                 at 16#10C# range 0 .. 31;
      RDCLR1                 at 16#110# range 0 .. 31;
      SLC0HOST_INT_ENA1      at 16#114# range 0 .. 31;
      SLC1HOST_INT_ENA1      at 16#118# range 0 .. 31;
      SLCHOSTDATE            at 16#178# range 0 .. 31;
      SLCHOSTID              at 16#17C# range 0 .. 31;
      CONF                   at 16#1F0# range 0 .. 31;
      INF_ST                 at 16#1F4# range 0 .. 31;
   end record;

   --  SLCHOST Peripheral
   SLCHOST_Periph : aliased SLCHOST_Peripheral
     with Import, Address => SLCHOST_Base;

end ESP32_C6_SVD.SLCHOST;
