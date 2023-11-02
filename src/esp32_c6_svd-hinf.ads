pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.HINF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CFG_DATA0_DEVICE_ID_FN1_Field is HAL.UInt16;
   subtype CFG_DATA0_USER_ID_FN1_Field is HAL.UInt16;

   --  Configure sdio cis content
   type CFG_DATA0_Register is record
      --  configure device id of function1 in cis
      DEVICE_ID_FN1 : CFG_DATA0_DEVICE_ID_FN1_Field := 16#6666#;
      --  configure user id of function1 in cis
      USER_ID_FN1   : CFG_DATA0_USER_ID_FN1_Field := 16#92#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_DATA0_Register use record
      DEVICE_ID_FN1 at 0 range 0 .. 15;
      USER_ID_FN1   at 0 range 16 .. 31;
   end record;

   subtype CFG_DATA1_SDIO_VER_Field is HAL.UInt12;
   subtype CFG_DATA1_SDIO20_CONF_Field is HAL.UInt7;

   --  SDIO configuration register
   type CFG_DATA1_Register is record
      --  Sdio clock enable
      SDIO_ENABLE      : Boolean := True;
      --  sdio function1 io ready signal in cis
      SDIO_IOREADY1    : Boolean := False;
      --  Highspeed enable in cccr
      HIGHSPEED_ENABLE : Boolean := False;
      --  Read-only. highspeed mode status in cccr
      HIGHSPEED_MODE   : Boolean := False;
      --  sdio card detect enable
      SDIO_CD_ENABLE   : Boolean := True;
      --  sdio function1 io ready signal in cis
      SDIO_IOREADY2    : Boolean := False;
      --  mask sdio interrupt in cccr, high active
      SDIO_INT_MASK    : Boolean := False;
      --  Read-only. ioe2 status in cccr
      IOENABLE2        : Boolean := False;
      --  Read-only. card disable status in cccr
      CD_DISABLE       : Boolean := False;
      --  Read-only. function1 eps status in fbr
      FUNC1_EPS        : Boolean := False;
      --  Read-only. empc status in cccr
      EMP              : Boolean := False;
      --  Read-only. ioe1 status in cccr
      IOENABLE1        : Boolean := False;
      --  sdio version in cccr
      SDIO_VER         : CFG_DATA1_SDIO_VER_Field := 16#232#;
      --  Read-only. function2 eps status in fbr
      FUNC2_EPS        : Boolean := False;
      --  [29],sdio negedge sample enablel.[30],sdio posedge sample
      --  enable.[31],sdio cmd/dat in delayed cycles control,0:no delay,
      --  1:delay 1 cycle. [25]: sdio1.1 dat/cmd sending out edge
      --  control,1:negedge,0:posedge when highseed mode. [26]: sdio2.0 dat/cmd
      --  sending out edge control,1:negedge when [12]=0,0:negedge when
      --  [12]=0,posedge when highspeed mode enable. [27]: sdio interrupt
      --  sending out delay control,1:delay one cycle, 0: no delay. [28]: sdio
      --  data pad pull up enable
      SDIO20_CONF      : CFG_DATA1_SDIO20_CONF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_DATA1_Register use record
      SDIO_ENABLE      at 0 range 0 .. 0;
      SDIO_IOREADY1    at 0 range 1 .. 1;
      HIGHSPEED_ENABLE at 0 range 2 .. 2;
      HIGHSPEED_MODE   at 0 range 3 .. 3;
      SDIO_CD_ENABLE   at 0 range 4 .. 4;
      SDIO_IOREADY2    at 0 range 5 .. 5;
      SDIO_INT_MASK    at 0 range 6 .. 6;
      IOENABLE2        at 0 range 7 .. 7;
      CD_DISABLE       at 0 range 8 .. 8;
      FUNC1_EPS        at 0 range 9 .. 9;
      EMP              at 0 range 10 .. 10;
      IOENABLE1        at 0 range 11 .. 11;
      SDIO_VER         at 0 range 12 .. 23;
      FUNC2_EPS        at 0 range 24 .. 24;
      SDIO20_CONF      at 0 range 25 .. 31;
   end record;

   subtype CFG_TIMING_NCRC_Field is HAL.UInt3;
   subtype CFG_TIMING_PST_END_CMD_LOW_VALUE_Field is HAL.UInt7;
   subtype CFG_TIMING_PST_END_DATA_LOW_VALUE_Field is HAL.UInt6;
   subtype CFG_TIMING_SDCLK_STOP_THRES_Field is HAL.UInt11;
   subtype CFG_TIMING_SAMPLE_CLK_DIVIDER_Field is HAL.UInt4;

   --  Timing configuration registers
   type CFG_TIMING_Register is record
      --  configure Ncrc parameter in sdr50/104 mode, no more than 6.
      NCRC                   : CFG_TIMING_NCRC_Field := 16#2#;
      --  configure cycles to lower cmd after voltage is changed to 1.8V.
      PST_END_CMD_LOW_VALUE  : CFG_TIMING_PST_END_CMD_LOW_VALUE_Field :=
                                16#2#;
      --  configure cycles to lower data after voltage is changed to 1.8V.
      PST_END_DATA_LOW_VALUE : CFG_TIMING_PST_END_DATA_LOW_VALUE_Field :=
                                16#2#;
      --  Configure the number of cycles of module clk to judge sdclk has
      --  stopped
      SDCLK_STOP_THRES       : CFG_TIMING_SDCLK_STOP_THRES_Field := 16#578#;
      --  unspecified
      Reserved_27_27         : HAL.Bit := 16#0#;
      --  module clk divider to sample sdclk
      SAMPLE_CLK_DIVIDER     : CFG_TIMING_SAMPLE_CLK_DIVIDER_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_TIMING_Register use record
      NCRC                   at 0 range 0 .. 2;
      PST_END_CMD_LOW_VALUE  at 0 range 3 .. 9;
      PST_END_DATA_LOW_VALUE at 0 range 10 .. 15;
      SDCLK_STOP_THRES       at 0 range 16 .. 26;
      Reserved_27_27         at 0 range 27 .. 27;
      SAMPLE_CLK_DIVIDER     at 0 range 28 .. 31;
   end record;

   --  update sdio configurations
   type CFG_UPDATE_Register is record
      --  Write-only. update the timing configurations
      CONF_UPDATE   : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_UPDATE_Register use record
      CONF_UPDATE   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CFG_DATA7_PIN_STATE_Field is HAL.UInt8;
   subtype CFG_DATA7_CHIP_STATE_Field is HAL.UInt8;

   --  SDIO configuration register
   type CFG_DATA7_Register is record
      --  configure cis addr 318 and 574
      PIN_STATE            : CFG_DATA7_PIN_STATE_Field := 16#0#;
      --  configure cis addr 312, 315, 568 and 571
      CHIP_STATE           : CFG_DATA7_CHIP_STATE_Field := 16#0#;
      --  soft reset control for sdio module
      SDIO_RST             : Boolean := False;
      --  sdio io ready, high enable
      SDIO_IOREADY0        : Boolean := True;
      --  sdio memory power down, high active
      SDIO_MEM_PD          : Boolean := False;
      --  enable sdio interrupt on data1 line
      ESDIO_DATA1_INT_EN   : Boolean := False;
      --  control switch voltage change to 1.8V by software. 0:3.3V,1:1.8V
      SDIO_SWITCH_VOLT_SW  : Boolean := False;
      --  enable block length to be fixed to 512 bytes in ddr50 mode
      DDR50_BLK_LEN_FIX_EN : Boolean := False;
      --  sdio apb clock for configuration force on control:0-gating,1-force
      --  on.
      CLK_EN               : Boolean := False;
      --  configure if support sdr50 mode in cccr
      SDDR50               : Boolean := True;
      --  configure if support sdr104 mode in cccr
      SSDR104              : Boolean := True;
      --  configure if support ddr50 mode in cccr
      SSDR50               : Boolean := True;
      --  configure if support driver type D in cccr
      SDTD                 : Boolean := False;
      --  configure if support driver type A in cccr
      SDTA                 : Boolean := False;
      --  configure if support driver type C in cccr
      SDTC                 : Boolean := False;
      --  configure if support asynchronous interrupt in cccr
      SAI                  : Boolean := True;
      --  Write-only. clear sdio_wake_up signal after the chip wakes up
      SDIO_WAKEUP_CLR      : Boolean := False;
      --  unspecified
      Reserved_31_31       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_DATA7_Register use record
      PIN_STATE            at 0 range 0 .. 7;
      CHIP_STATE           at 0 range 8 .. 15;
      SDIO_RST             at 0 range 16 .. 16;
      SDIO_IOREADY0        at 0 range 17 .. 17;
      SDIO_MEM_PD          at 0 range 18 .. 18;
      ESDIO_DATA1_INT_EN   at 0 range 19 .. 19;
      SDIO_SWITCH_VOLT_SW  at 0 range 20 .. 20;
      DDR50_BLK_LEN_FIX_EN at 0 range 21 .. 21;
      CLK_EN               at 0 range 22 .. 22;
      SDDR50               at 0 range 23 .. 23;
      SSDR104              at 0 range 24 .. 24;
      SSDR50               at 0 range 25 .. 25;
      SDTD                 at 0 range 26 .. 26;
      SDTA                 at 0 range 27 .. 27;
      SDTC                 at 0 range 28 .. 28;
      SAI                  at 0 range 29 .. 29;
      SDIO_WAKEUP_CLR      at 0 range 30 .. 30;
      Reserved_31_31       at 0 range 31 .. 31;
   end record;

   subtype CFG_DATA16_DEVICE_ID_FN2_Field is HAL.UInt16;
   subtype CFG_DATA16_USER_ID_FN2_Field is HAL.UInt16;

   --  SDIO cis configuration register
   type CFG_DATA16_Register is record
      --  configure device id of function2 in cis
      DEVICE_ID_FN2 : CFG_DATA16_DEVICE_ID_FN2_Field := 16#7777#;
      --  configure user id of function2 in cis
      USER_ID_FN2   : CFG_DATA16_USER_ID_FN2_Field := 16#92#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_DATA16_Register use record
      DEVICE_ID_FN2 at 0 range 0 .. 15;
      USER_ID_FN2   at 0 range 16 .. 31;
   end record;

   subtype CFG_UHS1_INT_MODE_INTOE_END_AHEAD_MODE_Field is HAL.UInt2;
   subtype CFG_UHS1_INT_MODE_INT_END_AHEAD_MODE_Field is HAL.UInt2;
   subtype CFG_UHS1_INT_MODE_INTOE_ST_AHEAD_MODE_Field is HAL.UInt2;
   subtype CFG_UHS1_INT_MODE_INT_ST_AHEAD_MODE_Field is HAL.UInt2;

   --  configure int to start and end ahead of time in uhs1 mode
   type CFG_UHS1_INT_MODE_Register is record
      --  intoe on dat1 end ahead of time: 0/3-no, 1-ahead 1sdclk, 2-ahead
      --  2sdclk
      INTOE_END_AHEAD_MODE : CFG_UHS1_INT_MODE_INTOE_END_AHEAD_MODE_Field :=
                              16#0#;
      --  int on dat1 end ahead of time: 0/3-no, 1-ahead 1sdclk, 2-ahead 2sdclk
      INT_END_AHEAD_MODE   : CFG_UHS1_INT_MODE_INT_END_AHEAD_MODE_Field :=
                              16#0#;
      --  intoe on dat1 start ahead of time: 0/3-no, 1-ahead 1sdclk, 2-ahead
      --  2sdclk
      INTOE_ST_AHEAD_MODE  : CFG_UHS1_INT_MODE_INTOE_ST_AHEAD_MODE_Field :=
                              16#0#;
      --  int on dat1 start ahead of time: 0/3-no, 1-ahead 1sdclk, 2-ahead
      --  2sdclk
      INT_ST_AHEAD_MODE    : CFG_UHS1_INT_MODE_INT_ST_AHEAD_MODE_Field :=
                              16#0#;
      --  unspecified
      Reserved_8_31        : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_UHS1_INT_MODE_Register use record
      INTOE_END_AHEAD_MODE at 0 range 0 .. 1;
      INT_END_AHEAD_MODE   at 0 range 2 .. 3;
      INTOE_ST_AHEAD_MODE  at 0 range 4 .. 5;
      INT_ST_AHEAD_MODE    at 0 range 6 .. 7;
      Reserved_8_31        at 0 range 8 .. 31;
   end record;

   subtype CONF_STATUS_FUNC0_CONFIG0_Field is HAL.UInt8;
   subtype CONF_STATUS_TUNE_ST_Field is HAL.UInt3;

   --  func0 config0 status
   type CONF_STATUS_Register is record
      --  Read-only. func0 config0 (addr: 0x20f0 ) status
      FUNC0_CONFIG0       : CONF_STATUS_FUNC0_CONFIG0_Field;
      --  Read-only. sdr25 status
      SDR25_ST            : Boolean;
      --  Read-only. sdr50 status
      SDR50_ST            : Boolean;
      --  Read-only. sdr104 status
      SDR104_ST           : Boolean;
      --  Read-only. ddr50 status
      DDR50_ST            : Boolean;
      --  Read-only. tune_st fsm status
      TUNE_ST             : CONF_STATUS_TUNE_ST_Field;
      --  Read-only. sdio switch voltage status:0-3.3V, 1-1.8V.
      SDIO_SWITCH_VOLT_ST : Boolean;
      --  Read-only. sdio switch voltage ldo ready
      SDIO_SWITCH_END     : Boolean;
      --  unspecified
      Reserved_17_31      : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_STATUS_Register use record
      FUNC0_CONFIG0       at 0 range 0 .. 7;
      SDR25_ST            at 0 range 8 .. 8;
      SDR50_ST            at 0 range 9 .. 9;
      SDR104_ST           at 0 range 10 .. 10;
      DDR50_ST            at 0 range 11 .. 11;
      TUNE_ST             at 0 range 12 .. 14;
      SDIO_SWITCH_VOLT_ST at 0 range 15 .. 15;
      SDIO_SWITCH_END     at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   --  sdio_slave redundant control registers
   type SDIO_SLAVE_ECO_CONF_Register is record
      --  Read-only. redundant registers for sdio_slave
      SDIO_SLAVE_RDN_RESULT           : Boolean := False;
      --  redundant registers for sdio_slave
      SDIO_SLAVE_RDN_ENA              : Boolean := False;
      --  Read-only. redundant registers for sdio_slave
      SDIO_SLAVE_SDIO_CLK_RDN_RESULT  : Boolean := False;
      --  redundant registers for sdio_slave
      SDIO_SLAVE_SDIO_CLK_RDN_ENA     : Boolean := False;
      --  Read-only. redundant registers for sdio_slave
      SDIO_SLAVE_SDCLK_PAD_RDN_RESULT : Boolean := False;
      --  redundant registers for sdio_slave
      SDIO_SLAVE_SDCLK_PAD_RDN_ENA    : Boolean := False;
      --  unspecified
      Reserved_6_31                   : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_SLAVE_ECO_CONF_Register use record
      SDIO_SLAVE_RDN_RESULT           at 0 range 0 .. 0;
      SDIO_SLAVE_RDN_ENA              at 0 range 1 .. 1;
      SDIO_SLAVE_SDIO_CLK_RDN_RESULT  at 0 range 2 .. 2;
      SDIO_SLAVE_SDIO_CLK_RDN_ENA     at 0 range 3 .. 3;
      SDIO_SLAVE_SDCLK_PAD_RDN_RESULT at 0 range 4 .. 4;
      SDIO_SLAVE_SDCLK_PAD_RDN_ENA    at 0 range 5 .. 5;
      Reserved_6_31                   at 0 range 6 .. 31;
   end record;

   subtype SDIO_SLAVE_LDO_CONF_LDO_READY_THRES_Field is HAL.UInt5;

   --  sdio slave ldo control register
   type SDIO_SLAVE_LDO_CONF_Register is record
      --  control ldo ready signal by sdio slave itself
      LDO_READY_CTL_IN_EN : Boolean := False;
      --  configure ldo ready counting threshold value, the actual counting
      --  target is 2^(ldo_ready_thres)-1
      LDO_READY_THRES     : SDIO_SLAVE_LDO_CONF_LDO_READY_THRES_Field :=
                             16#A#;
      --  ignore ldo ready signal
      LDO_READY_IGNORE_EN : Boolean := False;
      --  unspecified
      Reserved_7_31       : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_SLAVE_LDO_CONF_Register use record
      LDO_READY_CTL_IN_EN at 0 range 0 .. 0;
      LDO_READY_THRES     at 0 range 1 .. 5;
      LDO_READY_IGNORE_EN at 0 range 6 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HINF Peripheral
   type HINF_Peripheral is record
      --  Configure sdio cis content
      CFG_DATA0           : aliased CFG_DATA0_Register;
      --  SDIO configuration register
      CFG_DATA1           : aliased CFG_DATA1_Register;
      --  Timing configuration registers
      CFG_TIMING          : aliased CFG_TIMING_Register;
      --  update sdio configurations
      CFG_UPDATE          : aliased CFG_UPDATE_Register;
      --  SDIO configuration register
      CFG_DATA7           : aliased CFG_DATA7_Register;
      --  SDIO cis configuration register
      CIS_CONF_W0         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W1         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W2         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W3         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W4         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W5         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W6         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CIS_CONF_W7         : aliased HAL.UInt32;
      --  SDIO cis configuration register
      CFG_DATA16          : aliased CFG_DATA16_Register;
      --  configure int to start and end ahead of time in uhs1 mode
      CFG_UHS1_INT_MODE   : aliased CFG_UHS1_INT_MODE_Register;
      --  func0 config0 status
      CONF_STATUS         : aliased CONF_STATUS_Register;
      --  sdio_slave redundant control registers
      SDIO_SLAVE_ECO_LOW  : aliased HAL.UInt32;
      --  sdio_slave redundant control registers
      SDIO_SLAVE_ECO_HIGH : aliased HAL.UInt32;
      --  sdio_slave redundant control registers
      SDIO_SLAVE_ECO_CONF : aliased SDIO_SLAVE_ECO_CONF_Register;
      --  sdio slave ldo control register
      SDIO_SLAVE_LDO_CONF : aliased SDIO_SLAVE_LDO_CONF_Register;
      --  ******* Description ***********
      SDIO_DATE           : aliased HAL.UInt32;
   end record
     with Volatile;

   for HINF_Peripheral use record
      CFG_DATA0           at 16#0# range 0 .. 31;
      CFG_DATA1           at 16#4# range 0 .. 31;
      CFG_TIMING          at 16#8# range 0 .. 31;
      CFG_UPDATE          at 16#C# range 0 .. 31;
      CFG_DATA7           at 16#1C# range 0 .. 31;
      CIS_CONF_W0         at 16#20# range 0 .. 31;
      CIS_CONF_W1         at 16#24# range 0 .. 31;
      CIS_CONF_W2         at 16#28# range 0 .. 31;
      CIS_CONF_W3         at 16#2C# range 0 .. 31;
      CIS_CONF_W4         at 16#30# range 0 .. 31;
      CIS_CONF_W5         at 16#34# range 0 .. 31;
      CIS_CONF_W6         at 16#38# range 0 .. 31;
      CIS_CONF_W7         at 16#3C# range 0 .. 31;
      CFG_DATA16          at 16#40# range 0 .. 31;
      CFG_UHS1_INT_MODE   at 16#44# range 0 .. 31;
      CONF_STATUS         at 16#54# range 0 .. 31;
      SDIO_SLAVE_ECO_LOW  at 16#A4# range 0 .. 31;
      SDIO_SLAVE_ECO_HIGH at 16#A8# range 0 .. 31;
      SDIO_SLAVE_ECO_CONF at 16#AC# range 0 .. 31;
      SDIO_SLAVE_LDO_CONF at 16#B0# range 0 .. 31;
      SDIO_DATE           at 16#FC# range 0 .. 31;
   end record;

   --  HINF Peripheral
   HINF_Periph : aliased HINF_Peripheral
     with Import, Address => HINF_Base;

end ESP32_C6_SVD.HINF;
