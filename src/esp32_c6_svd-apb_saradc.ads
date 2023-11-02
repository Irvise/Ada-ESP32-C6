pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.APB_SARADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_SARADC_SAR_CLK_DIV_Field is HAL.UInt8;
   subtype CTRL_SARADC_SAR_PATT_LEN_Field is HAL.UInt3;
   subtype CTRL_SARADC_XPD_SAR_FORCE_Field is HAL.UInt2;
   subtype CTRL_SARADC_WAIT_ARB_CYCLE_Field is HAL.UInt2;

   --  digital saradc configure register
   type CTRL_Register is record
      --  select software enable saradc sample
      SARADC_START_FORCE      : Boolean := False;
      --  software enable saradc sample
      SARADC_START            : Boolean := False;
      --  unspecified
      Reserved_2_5            : HAL.UInt4 := 16#0#;
      --  SAR clock gated
      SARADC_SAR_CLK_GATED    : Boolean := True;
      --  SAR clock divider
      SARADC_SAR_CLK_DIV      : CTRL_SARADC_SAR_CLK_DIV_Field := 16#4#;
      --  0 ~ 15 means length 1 ~ 16
      SARADC_SAR_PATT_LEN     : CTRL_SARADC_SAR_PATT_LEN_Field := 16#7#;
      --  unspecified
      Reserved_18_22          : HAL.UInt5 := 16#0#;
      --  clear the pointer of pattern table for DIG ADC1 CTRL
      SARADC_SAR_PATT_P_CLEAR : Boolean := False;
      --  unspecified
      Reserved_24_26          : HAL.UInt3 := 16#0#;
      --  force option to xpd sar blocks
      SARADC_XPD_SAR_FORCE    : CTRL_SARADC_XPD_SAR_FORCE_Field := 16#0#;
      --  enable saradc2 power detect driven func.
      SARADC2_PWDET_DRV       : Boolean := False;
      --  wait arbit signal stable after sar_done
      SARADC_WAIT_ARB_CYCLE   : CTRL_SARADC_WAIT_ARB_CYCLE_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SARADC_START_FORCE      at 0 range 0 .. 0;
      SARADC_START            at 0 range 1 .. 1;
      Reserved_2_5            at 0 range 2 .. 5;
      SARADC_SAR_CLK_GATED    at 0 range 6 .. 6;
      SARADC_SAR_CLK_DIV      at 0 range 7 .. 14;
      SARADC_SAR_PATT_LEN     at 0 range 15 .. 17;
      Reserved_18_22          at 0 range 18 .. 22;
      SARADC_SAR_PATT_P_CLEAR at 0 range 23 .. 23;
      Reserved_24_26          at 0 range 24 .. 26;
      SARADC_XPD_SAR_FORCE    at 0 range 27 .. 28;
      SARADC2_PWDET_DRV       at 0 range 29 .. 29;
      SARADC_WAIT_ARB_CYCLE   at 0 range 30 .. 31;
   end record;

   subtype CTRL2_SARADC_MAX_MEAS_NUM_Field is HAL.UInt8;
   subtype CTRL2_SARADC_TIMER_TARGET_Field is HAL.UInt12;

   --  digital saradc configure register
   type CTRL2_Register is record
      --  enable max meas num
      SARADC_MEAS_NUM_LIMIT : Boolean := False;
      --  max conversion number
      SARADC_MAX_MEAS_NUM   : CTRL2_SARADC_MAX_MEAS_NUM_Field := 16#FF#;
      --  1: data to DIG ADC1 CTRL is inverted, otherwise not
      SARADC_SAR1_INV       : Boolean := False;
      --  1: data to DIG ADC2 CTRL is inverted, otherwise not
      SARADC_SAR2_INV       : Boolean := False;
      --  unspecified
      Reserved_11_11        : HAL.Bit := 16#0#;
      --  to set saradc timer target
      SARADC_TIMER_TARGET   : CTRL2_SARADC_TIMER_TARGET_Field := 16#A#;
      --  to enable saradc timer trigger
      SARADC_TIMER_EN       : Boolean := False;
      --  unspecified
      Reserved_25_31        : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL2_Register use record
      SARADC_MEAS_NUM_LIMIT at 0 range 0 .. 0;
      SARADC_MAX_MEAS_NUM   at 0 range 1 .. 8;
      SARADC_SAR1_INV       at 0 range 9 .. 9;
      SARADC_SAR2_INV       at 0 range 10 .. 10;
      Reserved_11_11        at 0 range 11 .. 11;
      SARADC_TIMER_TARGET   at 0 range 12 .. 23;
      SARADC_TIMER_EN       at 0 range 24 .. 24;
      Reserved_25_31        at 0 range 25 .. 31;
   end record;

   subtype FILTER_CTRL1_APB_SARADC_FILTER_FACTOR1_Field is HAL.UInt3;
   subtype FILTER_CTRL1_APB_SARADC_FILTER_FACTOR0_Field is HAL.UInt3;

   --  digital saradc configure register
   type FILTER_CTRL1_Register is record
      --  unspecified
      Reserved_0_25             : HAL.UInt26 := 16#0#;
      --  Factor of saradc filter1
      APB_SARADC_FILTER_FACTOR1 : FILTER_CTRL1_APB_SARADC_FILTER_FACTOR1_Field :=
                                   16#0#;
      --  Factor of saradc filter0
      APB_SARADC_FILTER_FACTOR0 : FILTER_CTRL1_APB_SARADC_FILTER_FACTOR0_Field :=
                                   16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FILTER_CTRL1_Register use record
      Reserved_0_25             at 0 range 0 .. 25;
      APB_SARADC_FILTER_FACTOR1 at 0 range 26 .. 28;
      APB_SARADC_FILTER_FACTOR0 at 0 range 29 .. 31;
   end record;

   subtype FSM_WAIT_SARADC_XPD_WAIT_Field is HAL.UInt8;
   subtype FSM_WAIT_SARADC_RSTB_WAIT_Field is HAL.UInt8;
   subtype FSM_WAIT_SARADC_STANDBY_WAIT_Field is HAL.UInt8;

   --  digital saradc configure register
   type FSM_WAIT_Register is record
      --  saradc_xpd_wait
      SARADC_XPD_WAIT     : FSM_WAIT_SARADC_XPD_WAIT_Field := 16#8#;
      --  saradc_rstb_wait
      SARADC_RSTB_WAIT    : FSM_WAIT_SARADC_RSTB_WAIT_Field := 16#8#;
      --  saradc_standby_wait
      SARADC_STANDBY_WAIT : FSM_WAIT_SARADC_STANDBY_WAIT_Field := 16#FF#;
      --  unspecified
      Reserved_24_31      : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSM_WAIT_Register use record
      SARADC_XPD_WAIT     at 0 range 0 .. 7;
      SARADC_RSTB_WAIT    at 0 range 8 .. 15;
      SARADC_STANDBY_WAIT at 0 range 16 .. 23;
      Reserved_24_31      at 0 range 24 .. 31;
   end record;

   subtype SAR_PATT_TAB1_SARADC_SAR_PATT_TAB1_Field is HAL.UInt24;

   --  digital saradc configure register
   type SAR_PATT_TAB1_Register is record
      --  item 0 ~ 3 for pattern table 1 (each item one byte)
      SARADC_SAR_PATT_TAB1 : SAR_PATT_TAB1_SARADC_SAR_PATT_TAB1_Field :=
                              16#FFFFFF#;
      --  unspecified
      Reserved_24_31       : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR_PATT_TAB1_Register use record
      SARADC_SAR_PATT_TAB1 at 0 range 0 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   subtype SAR_PATT_TAB2_SARADC_SAR_PATT_TAB2_Field is HAL.UInt24;

   --  digital saradc configure register
   type SAR_PATT_TAB2_Register is record
      --  Item 4 ~ 7 for pattern table 1 (each item one byte)
      SARADC_SAR_PATT_TAB2 : SAR_PATT_TAB2_SARADC_SAR_PATT_TAB2_Field :=
                              16#FFFFFF#;
      --  unspecified
      Reserved_24_31       : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR_PATT_TAB2_Register use record
      SARADC_SAR_PATT_TAB2 at 0 range 0 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   subtype ONETIME_SAMPLE_SARADC_ONETIME_ATTEN_Field is HAL.UInt2;
   subtype ONETIME_SAMPLE_SARADC_ONETIME_CHANNEL_Field is HAL.UInt4;

   --  digital saradc configure register
   type ONETIME_SAMPLE_Register is record
      --  unspecified
      Reserved_0_22          : HAL.UInt23 := 16#0#;
      --  configure onetime atten
      SARADC_ONETIME_ATTEN   : ONETIME_SAMPLE_SARADC_ONETIME_ATTEN_Field :=
                                16#0#;
      --  configure onetime channel
      SARADC_ONETIME_CHANNEL : ONETIME_SAMPLE_SARADC_ONETIME_CHANNEL_Field :=
                                16#D#;
      --  trigger adc onetime sample
      SARADC_ONETIME_START   : Boolean := False;
      --  enable adc2 onetime sample
      SARADC2_ONETIME_SAMPLE : Boolean := False;
      --  enable adc1 onetime sample
      SARADC1_ONETIME_SAMPLE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ONETIME_SAMPLE_Register use record
      Reserved_0_22          at 0 range 0 .. 22;
      SARADC_ONETIME_ATTEN   at 0 range 23 .. 24;
      SARADC_ONETIME_CHANNEL at 0 range 25 .. 28;
      SARADC_ONETIME_START   at 0 range 29 .. 29;
      SARADC2_ONETIME_SAMPLE at 0 range 30 .. 30;
      SARADC1_ONETIME_SAMPLE at 0 range 31 .. 31;
   end record;

   subtype ARB_CTRL_ADC_ARB_APB_PRIORITY_Field is HAL.UInt2;
   subtype ARB_CTRL_ADC_ARB_RTC_PRIORITY_Field is HAL.UInt2;
   subtype ARB_CTRL_ADC_ARB_WIFI_PRIORITY_Field is HAL.UInt2;

   --  digital saradc configure register
   type ARB_CTRL_Register is record
      --  unspecified
      Reserved_0_1          : HAL.UInt2 := 16#0#;
      --  adc2 arbiter force to enableapb controller
      ADC_ARB_APB_FORCE     : Boolean := False;
      --  adc2 arbiter force to enable rtc controller
      ADC_ARB_RTC_FORCE     : Boolean := False;
      --  adc2 arbiter force to enable wifi controller
      ADC_ARB_WIFI_FORCE    : Boolean := False;
      --  adc2 arbiter force grant
      ADC_ARB_GRANT_FORCE   : Boolean := False;
      --  Set adc2 arbiterapb priority
      ADC_ARB_APB_PRIORITY  : ARB_CTRL_ADC_ARB_APB_PRIORITY_Field := 16#0#;
      --  Set adc2 arbiter rtc priority
      ADC_ARB_RTC_PRIORITY  : ARB_CTRL_ADC_ARB_RTC_PRIORITY_Field := 16#1#;
      --  Set adc2 arbiter wifi priority
      ADC_ARB_WIFI_PRIORITY : ARB_CTRL_ADC_ARB_WIFI_PRIORITY_Field := 16#2#;
      --  adc2 arbiter uses fixed priority
      ADC_ARB_FIX_PRIORITY  : Boolean := False;
      --  unspecified
      Reserved_13_31        : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARB_CTRL_Register use record
      Reserved_0_1          at 0 range 0 .. 1;
      ADC_ARB_APB_FORCE     at 0 range 2 .. 2;
      ADC_ARB_RTC_FORCE     at 0 range 3 .. 3;
      ADC_ARB_WIFI_FORCE    at 0 range 4 .. 4;
      ADC_ARB_GRANT_FORCE   at 0 range 5 .. 5;
      ADC_ARB_APB_PRIORITY  at 0 range 6 .. 7;
      ADC_ARB_RTC_PRIORITY  at 0 range 8 .. 9;
      ADC_ARB_WIFI_PRIORITY at 0 range 10 .. 11;
      ADC_ARB_FIX_PRIORITY  at 0 range 12 .. 12;
      Reserved_13_31        at 0 range 13 .. 31;
   end record;

   subtype FILTER_CTRL0_APB_SARADC_FILTER_CHANNEL1_Field is HAL.UInt4;
   subtype FILTER_CTRL0_APB_SARADC_FILTER_CHANNEL0_Field is HAL.UInt4;

   --  digital saradc configure register
   type FILTER_CTRL0_Register is record
      --  unspecified
      Reserved_0_17              : HAL.UInt18 := 16#0#;
      --  configure filter1 to adc channel
      APB_SARADC_FILTER_CHANNEL1 : FILTER_CTRL0_APB_SARADC_FILTER_CHANNEL1_Field :=
                                    16#D#;
      --  configure filter0 to adc channel
      APB_SARADC_FILTER_CHANNEL0 : FILTER_CTRL0_APB_SARADC_FILTER_CHANNEL0_Field :=
                                    16#D#;
      --  unspecified
      Reserved_26_30             : HAL.UInt5 := 16#0#;
      --  enable apb_adc1_filter
      APB_SARADC_FILTER_RESET    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FILTER_CTRL0_Register use record
      Reserved_0_17              at 0 range 0 .. 17;
      APB_SARADC_FILTER_CHANNEL1 at 0 range 18 .. 21;
      APB_SARADC_FILTER_CHANNEL0 at 0 range 22 .. 25;
      Reserved_26_30             at 0 range 26 .. 30;
      APB_SARADC_FILTER_RESET    at 0 range 31 .. 31;
   end record;

   subtype SAR1DATA_STATUS_APB_SARADC1_DATA_Field is HAL.UInt17;

   --  digital saradc configure register
   type SAR1DATA_STATUS_Register is record
      --  Read-only. saradc1 data
      APB_SARADC1_DATA : SAR1DATA_STATUS_APB_SARADC1_DATA_Field;
      --  unspecified
      Reserved_17_31   : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR1DATA_STATUS_Register use record
      APB_SARADC1_DATA at 0 range 0 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   subtype SAR2DATA_STATUS_APB_SARADC2_DATA_Field is HAL.UInt17;

   --  digital saradc configure register
   type SAR2DATA_STATUS_Register is record
      --  Read-only. saradc2 data
      APB_SARADC2_DATA : SAR2DATA_STATUS_APB_SARADC2_DATA_Field;
      --  unspecified
      Reserved_17_31   : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAR2DATA_STATUS_Register use record
      APB_SARADC2_DATA at 0 range 0 .. 16;
      Reserved_17_31   at 0 range 17 .. 31;
   end record;

   subtype THRES0_CTRL_APB_SARADC_THRES0_CHANNEL_Field is HAL.UInt4;
   subtype THRES0_CTRL_APB_SARADC_THRES0_HIGH_Field is HAL.UInt13;
   subtype THRES0_CTRL_APB_SARADC_THRES0_LOW_Field is HAL.UInt13;

   --  digital saradc configure register
   type THRES0_CTRL_Register is record
      --  configure thres0 to adc channel
      APB_SARADC_THRES0_CHANNEL : THRES0_CTRL_APB_SARADC_THRES0_CHANNEL_Field :=
                                   16#D#;
      --  unspecified
      Reserved_4_4              : HAL.Bit := 16#0#;
      --  saradc thres0 monitor thres
      APB_SARADC_THRES0_HIGH    : THRES0_CTRL_APB_SARADC_THRES0_HIGH_Field :=
                                   16#1FFF#;
      --  saradc thres0 monitor thres
      APB_SARADC_THRES0_LOW     : THRES0_CTRL_APB_SARADC_THRES0_LOW_Field :=
                                   16#0#;
      --  unspecified
      Reserved_31_31            : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for THRES0_CTRL_Register use record
      APB_SARADC_THRES0_CHANNEL at 0 range 0 .. 3;
      Reserved_4_4              at 0 range 4 .. 4;
      APB_SARADC_THRES0_HIGH    at 0 range 5 .. 17;
      APB_SARADC_THRES0_LOW     at 0 range 18 .. 30;
      Reserved_31_31            at 0 range 31 .. 31;
   end record;

   subtype THRES1_CTRL_APB_SARADC_THRES1_CHANNEL_Field is HAL.UInt4;
   subtype THRES1_CTRL_APB_SARADC_THRES1_HIGH_Field is HAL.UInt13;
   subtype THRES1_CTRL_APB_SARADC_THRES1_LOW_Field is HAL.UInt13;

   --  digital saradc configure register
   type THRES1_CTRL_Register is record
      --  configure thres1 to adc channel
      APB_SARADC_THRES1_CHANNEL : THRES1_CTRL_APB_SARADC_THRES1_CHANNEL_Field :=
                                   16#D#;
      --  unspecified
      Reserved_4_4              : HAL.Bit := 16#0#;
      --  saradc thres1 monitor thres
      APB_SARADC_THRES1_HIGH    : THRES1_CTRL_APB_SARADC_THRES1_HIGH_Field :=
                                   16#1FFF#;
      --  saradc thres1 monitor thres
      APB_SARADC_THRES1_LOW     : THRES1_CTRL_APB_SARADC_THRES1_LOW_Field :=
                                   16#0#;
      --  unspecified
      Reserved_31_31            : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for THRES1_CTRL_Register use record
      APB_SARADC_THRES1_CHANNEL at 0 range 0 .. 3;
      Reserved_4_4              at 0 range 4 .. 4;
      APB_SARADC_THRES1_HIGH    at 0 range 5 .. 17;
      APB_SARADC_THRES1_LOW     at 0 range 18 .. 30;
      Reserved_31_31            at 0 range 31 .. 31;
   end record;

   --  digital saradc configure register
   type THRES_CTRL_Register is record
      --  unspecified
      Reserved_0_26           : HAL.UInt27 := 16#0#;
      --  enable thres to all channel
      APB_SARADC_THRES_ALL_EN : Boolean := False;
      --  unspecified
      Reserved_28_29          : HAL.UInt2 := 16#0#;
      --  enable thres1
      APB_SARADC_THRES1_EN    : Boolean := False;
      --  enable thres0
      APB_SARADC_THRES0_EN    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for THRES_CTRL_Register use record
      Reserved_0_26           at 0 range 0 .. 26;
      APB_SARADC_THRES_ALL_EN at 0 range 27 .. 27;
      Reserved_28_29          at 0 range 28 .. 29;
      APB_SARADC_THRES1_EN    at 0 range 30 .. 30;
      APB_SARADC_THRES0_EN    at 0 range 31 .. 31;
   end record;

   --  digital saradc int register
   type INT_ENA_Register is record
      --  unspecified
      Reserved_0_24                  : HAL.UInt25 := 16#0#;
      --  tsens low interrupt enable
      APB_SARADC_TSENS_INT_ENA       : Boolean := False;
      --  saradc thres1 low interrupt enable
      APB_SARADC_THRES1_LOW_INT_ENA  : Boolean := False;
      --  saradc thres0 low interrupt enable
      APB_SARADC_THRES0_LOW_INT_ENA  : Boolean := False;
      --  saradc thres1 high interrupt enable
      APB_SARADC_THRES1_HIGH_INT_ENA : Boolean := False;
      --  saradc thres0 high interrupt enable
      APB_SARADC_THRES0_HIGH_INT_ENA : Boolean := False;
      --  saradc2 done interrupt enable
      APB_SARADC2_DONE_INT_ENA       : Boolean := False;
      --  saradc1 done interrupt enable
      APB_SARADC1_DONE_INT_ENA       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      Reserved_0_24                  at 0 range 0 .. 24;
      APB_SARADC_TSENS_INT_ENA       at 0 range 25 .. 25;
      APB_SARADC_THRES1_LOW_INT_ENA  at 0 range 26 .. 26;
      APB_SARADC_THRES0_LOW_INT_ENA  at 0 range 27 .. 27;
      APB_SARADC_THRES1_HIGH_INT_ENA at 0 range 28 .. 28;
      APB_SARADC_THRES0_HIGH_INT_ENA at 0 range 29 .. 29;
      APB_SARADC2_DONE_INT_ENA       at 0 range 30 .. 30;
      APB_SARADC1_DONE_INT_ENA       at 0 range 31 .. 31;
   end record;

   --  digital saradc int register
   type INT_RAW_Register is record
      --  unspecified
      Reserved_0_24                  : HAL.UInt25 := 16#0#;
      --  saradc tsens interrupt raw
      APB_SARADC_TSENS_INT_RAW       : Boolean := False;
      --  saradc thres1 low interrupt raw
      APB_SARADC_THRES1_LOW_INT_RAW  : Boolean := False;
      --  saradc thres0 low interrupt raw
      APB_SARADC_THRES0_LOW_INT_RAW  : Boolean := False;
      --  saradc thres1 high interrupt raw
      APB_SARADC_THRES1_HIGH_INT_RAW : Boolean := False;
      --  saradc thres0 high interrupt raw
      APB_SARADC_THRES0_HIGH_INT_RAW : Boolean := False;
      --  saradc2 done interrupt raw
      APB_SARADC2_DONE_INT_RAW       : Boolean := False;
      --  saradc1 done interrupt raw
      APB_SARADC1_DONE_INT_RAW       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      Reserved_0_24                  at 0 range 0 .. 24;
      APB_SARADC_TSENS_INT_RAW       at 0 range 25 .. 25;
      APB_SARADC_THRES1_LOW_INT_RAW  at 0 range 26 .. 26;
      APB_SARADC_THRES0_LOW_INT_RAW  at 0 range 27 .. 27;
      APB_SARADC_THRES1_HIGH_INT_RAW at 0 range 28 .. 28;
      APB_SARADC_THRES0_HIGH_INT_RAW at 0 range 29 .. 29;
      APB_SARADC2_DONE_INT_RAW       at 0 range 30 .. 30;
      APB_SARADC1_DONE_INT_RAW       at 0 range 31 .. 31;
   end record;

   --  digital saradc int register
   type INT_ST_Register is record
      --  unspecified
      Reserved_0_24                 : HAL.UInt25;
      --  Read-only. saradc tsens interrupt state
      APB_SARADC_TSENS_INT_ST       : Boolean;
      --  Read-only. saradc thres1 low interrupt state
      APB_SARADC_THRES1_LOW_INT_ST  : Boolean;
      --  Read-only. saradc thres0 low interrupt state
      APB_SARADC_THRES0_LOW_INT_ST  : Boolean;
      --  Read-only. saradc thres1 high interrupt state
      APB_SARADC_THRES1_HIGH_INT_ST : Boolean;
      --  Read-only. saradc thres0 high interrupt state
      APB_SARADC_THRES0_HIGH_INT_ST : Boolean;
      --  Read-only. saradc2 done interrupt state
      APB_SARADC2_DONE_INT_ST       : Boolean;
      --  Read-only. saradc1 done interrupt state
      APB_SARADC1_DONE_INT_ST       : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      Reserved_0_24                 at 0 range 0 .. 24;
      APB_SARADC_TSENS_INT_ST       at 0 range 25 .. 25;
      APB_SARADC_THRES1_LOW_INT_ST  at 0 range 26 .. 26;
      APB_SARADC_THRES0_LOW_INT_ST  at 0 range 27 .. 27;
      APB_SARADC_THRES1_HIGH_INT_ST at 0 range 28 .. 28;
      APB_SARADC_THRES0_HIGH_INT_ST at 0 range 29 .. 29;
      APB_SARADC2_DONE_INT_ST       at 0 range 30 .. 30;
      APB_SARADC1_DONE_INT_ST       at 0 range 31 .. 31;
   end record;

   --  digital saradc int register
   type INT_CLR_Register is record
      --  unspecified
      Reserved_0_24                  : HAL.UInt25 := 16#0#;
      --  Write-only. saradc tsens interrupt clear
      APB_SARADC_TSENS_INT_CLR       : Boolean := False;
      --  Write-only. saradc thres1 low interrupt clear
      APB_SARADC_THRES1_LOW_INT_CLR  : Boolean := False;
      --  Write-only. saradc thres0 low interrupt clear
      APB_SARADC_THRES0_LOW_INT_CLR  : Boolean := False;
      --  Write-only. saradc thres1 high interrupt clear
      APB_SARADC_THRES1_HIGH_INT_CLR : Boolean := False;
      --  Write-only. saradc thres0 high interrupt clear
      APB_SARADC_THRES0_HIGH_INT_CLR : Boolean := False;
      --  Write-only. saradc2 done interrupt clear
      APB_SARADC2_DONE_INT_CLR       : Boolean := False;
      --  Write-only. saradc1 done interrupt clear
      APB_SARADC1_DONE_INT_CLR       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      Reserved_0_24                  at 0 range 0 .. 24;
      APB_SARADC_TSENS_INT_CLR       at 0 range 25 .. 25;
      APB_SARADC_THRES1_LOW_INT_CLR  at 0 range 26 .. 26;
      APB_SARADC_THRES0_LOW_INT_CLR  at 0 range 27 .. 27;
      APB_SARADC_THRES1_HIGH_INT_CLR at 0 range 28 .. 28;
      APB_SARADC_THRES0_HIGH_INT_CLR at 0 range 29 .. 29;
      APB_SARADC2_DONE_INT_CLR       at 0 range 30 .. 30;
      APB_SARADC1_DONE_INT_CLR       at 0 range 31 .. 31;
   end record;

   subtype DMA_CONF_APB_ADC_EOF_NUM_Field is HAL.UInt16;

   --  digital saradc configure register
   type DMA_CONF_Register is record
      --  the dma_in_suc_eof gen when sample cnt = spi_eof_num
      APB_ADC_EOF_NUM   : DMA_CONF_APB_ADC_EOF_NUM_Field := 16#FF#;
      --  unspecified
      Reserved_16_29    : HAL.UInt14 := 16#0#;
      --  reset_apb_adc_state
      APB_ADC_RESET_FSM : Boolean := False;
      --  enable apb_adc use spi_dma
      APB_ADC_TRANS     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CONF_Register use record
      APB_ADC_EOF_NUM   at 0 range 0 .. 15;
      Reserved_16_29    at 0 range 16 .. 29;
      APB_ADC_RESET_FSM at 0 range 30 .. 30;
      APB_ADC_TRANS     at 0 range 31 .. 31;
   end record;

   subtype CLKM_CONF_CLKM_DIV_NUM_Field is HAL.UInt8;
   subtype CLKM_CONF_CLKM_DIV_B_Field is HAL.UInt6;
   subtype CLKM_CONF_CLKM_DIV_A_Field is HAL.UInt6;
   subtype CLKM_CONF_CLK_SEL_Field is HAL.UInt2;

   --  digital saradc configure register
   type CLKM_CONF_Register is record
      --  Integral I2S clock divider value
      CLKM_DIV_NUM   : CLKM_CONF_CLKM_DIV_NUM_Field := 16#4#;
      --  Fractional clock divider numerator value
      CLKM_DIV_B     : CLKM_CONF_CLKM_DIV_B_Field := 16#0#;
      --  Fractional clock divider denominator value
      CLKM_DIV_A     : CLKM_CONF_CLKM_DIV_A_Field := 16#0#;
      --  reg clk en
      CLK_EN         : Boolean := False;
      --  Set this bit to enable clk_apll
      CLK_SEL        : CLKM_CONF_CLK_SEL_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKM_CONF_Register use record
      CLKM_DIV_NUM   at 0 range 0 .. 7;
      CLKM_DIV_B     at 0 range 8 .. 13;
      CLKM_DIV_A     at 0 range 14 .. 19;
      CLK_EN         at 0 range 20 .. 20;
      CLK_SEL        at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype APB_TSENS_CTRL_TSENS_OUT_Field is HAL.UInt8;
   subtype APB_TSENS_CTRL_TSENS_CLK_DIV_Field is HAL.UInt8;

   --  digital tsens configure register
   type APB_TSENS_CTRL_Register is record
      --  Read-only. temperature sensor data out
      TSENS_OUT      : APB_TSENS_CTRL_TSENS_OUT_Field := 16#80#;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  invert temperature sensor data
      TSENS_IN_INV   : Boolean := False;
      --  temperature sensor clock divider
      TSENS_CLK_DIV  : APB_TSENS_CTRL_TSENS_CLK_DIV_Field := 16#6#;
      --  temperature sensor power up
      TSENS_PU       : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB_TSENS_CTRL_Register use record
      TSENS_OUT      at 0 range 0 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      TSENS_IN_INV   at 0 range 13 .. 13;
      TSENS_CLK_DIV  at 0 range 14 .. 21;
      TSENS_PU       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TSENS_CTRL2_TSENS_XPD_WAIT_Field is HAL.UInt12;
   subtype TSENS_CTRL2_TSENS_XPD_FORCE_Field is HAL.UInt2;

   --  digital tsens configure register
   type TSENS_CTRL2_Register is record
      --  the time that power up tsens need wait
      TSENS_XPD_WAIT  : TSENS_CTRL2_TSENS_XPD_WAIT_Field := 16#2#;
      --  force power up tsens
      TSENS_XPD_FORCE : TSENS_CTRL2_TSENS_XPD_FORCE_Field := 16#0#;
      --  inv tsens clk
      TSENS_CLK_INV   : Boolean := True;
      --  tsens clk select
      TSENS_CLK_SEL   : Boolean := False;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_CTRL2_Register use record
      TSENS_XPD_WAIT  at 0 range 0 .. 11;
      TSENS_XPD_FORCE at 0 range 12 .. 13;
      TSENS_CLK_INV   at 0 range 14 .. 14;
      TSENS_CLK_SEL   at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype CALI_APB_SARADC_CALI_CFG_Field is HAL.UInt17;

   --  digital saradc configure register
   type CALI_Register is record
      --  saradc cali factor
      APB_SARADC_CALI_CFG : CALI_APB_SARADC_CALI_CFG_Field := 16#8000#;
      --  unspecified
      Reserved_17_31      : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALI_Register use record
      APB_SARADC_CALI_CFG at 0 range 0 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   subtype APB_TSENS_WAKE_WAKEUP_TH_LOW_Field is HAL.UInt8;
   subtype APB_TSENS_WAKE_WAKEUP_TH_HIGH_Field is HAL.UInt8;

   --  digital tsens configure register
   type APB_TSENS_WAKE_Register is record
      --  reg_wakeup_th_low
      WAKEUP_TH_LOW        : APB_TSENS_WAKE_WAKEUP_TH_LOW_Field := 16#0#;
      --  reg_wakeup_th_high
      WAKEUP_TH_HIGH       : APB_TSENS_WAKE_WAKEUP_TH_HIGH_Field := 16#FF#;
      --  Read-only. reg_wakeup_over_upper_th
      WAKEUP_OVER_UPPER_TH : Boolean := False;
      --  reg_wakeup_mode
      WAKEUP_MODE          : Boolean := False;
      --  reg_wakeup_en
      WAKEUP_EN            : Boolean := False;
      --  unspecified
      Reserved_19_31       : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB_TSENS_WAKE_Register use record
      WAKEUP_TH_LOW        at 0 range 0 .. 7;
      WAKEUP_TH_HIGH       at 0 range 8 .. 15;
      WAKEUP_OVER_UPPER_TH at 0 range 16 .. 16;
      WAKEUP_MODE          at 0 range 17 .. 17;
      WAKEUP_EN            at 0 range 18 .. 18;
      Reserved_19_31       at 0 range 19 .. 31;
   end record;

   subtype APB_TSENS_SAMPLE_TSENS_SAMPLE_RATE_Field is HAL.UInt16;

   --  digital tsens configure register
   type APB_TSENS_SAMPLE_Register is record
      --  HW sample rate
      TSENS_SAMPLE_RATE : APB_TSENS_SAMPLE_TSENS_SAMPLE_RATE_Field := 16#14#;
      --  HW sample en
      TSENS_SAMPLE_EN   : Boolean := False;
      --  unspecified
      Reserved_17_31    : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB_TSENS_SAMPLE_Register use record
      TSENS_SAMPLE_RATE at 0 range 0 .. 15;
      TSENS_SAMPLE_EN   at 0 range 16 .. 16;
      Reserved_17_31    at 0 range 17 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SAR (Successive Approximation Register) Analog-to-Digital Converter
   type APB_SARADC_Peripheral is record
      --  digital saradc configure register
      CTRL             : aliased CTRL_Register;
      --  digital saradc configure register
      CTRL2            : aliased CTRL2_Register;
      --  digital saradc configure register
      FILTER_CTRL1     : aliased FILTER_CTRL1_Register;
      --  digital saradc configure register
      FSM_WAIT         : aliased FSM_WAIT_Register;
      --  digital saradc configure register
      SAR1_STATUS      : aliased HAL.UInt32;
      --  digital saradc configure register
      SAR2_STATUS      : aliased HAL.UInt32;
      --  digital saradc configure register
      SAR_PATT_TAB1    : aliased SAR_PATT_TAB1_Register;
      --  digital saradc configure register
      SAR_PATT_TAB2    : aliased SAR_PATT_TAB2_Register;
      --  digital saradc configure register
      ONETIME_SAMPLE   : aliased ONETIME_SAMPLE_Register;
      --  digital saradc configure register
      ARB_CTRL         : aliased ARB_CTRL_Register;
      --  digital saradc configure register
      FILTER_CTRL0     : aliased FILTER_CTRL0_Register;
      --  digital saradc configure register
      SAR1DATA_STATUS  : aliased SAR1DATA_STATUS_Register;
      --  digital saradc configure register
      SAR2DATA_STATUS  : aliased SAR2DATA_STATUS_Register;
      --  digital saradc configure register
      THRES0_CTRL      : aliased THRES0_CTRL_Register;
      --  digital saradc configure register
      THRES1_CTRL      : aliased THRES1_CTRL_Register;
      --  digital saradc configure register
      THRES_CTRL       : aliased THRES_CTRL_Register;
      --  digital saradc int register
      INT_ENA          : aliased INT_ENA_Register;
      --  digital saradc int register
      INT_RAW          : aliased INT_RAW_Register;
      --  digital saradc int register
      INT_ST           : aliased INT_ST_Register;
      --  digital saradc int register
      INT_CLR          : aliased INT_CLR_Register;
      --  digital saradc configure register
      DMA_CONF         : aliased DMA_CONF_Register;
      --  digital saradc configure register
      CLKM_CONF        : aliased CLKM_CONF_Register;
      --  digital tsens configure register
      APB_TSENS_CTRL   : aliased APB_TSENS_CTRL_Register;
      --  digital tsens configure register
      TSENS_CTRL2      : aliased TSENS_CTRL2_Register;
      --  digital saradc configure register
      CALI             : aliased CALI_Register;
      --  digital tsens configure register
      APB_TSENS_WAKE   : aliased APB_TSENS_WAKE_Register;
      --  digital tsens configure register
      APB_TSENS_SAMPLE : aliased APB_TSENS_SAMPLE_Register;
      --  version
      CTRL_DATE        : aliased HAL.UInt32;
   end record
     with Volatile;

   for APB_SARADC_Peripheral use record
      CTRL             at 16#0# range 0 .. 31;
      CTRL2            at 16#4# range 0 .. 31;
      FILTER_CTRL1     at 16#8# range 0 .. 31;
      FSM_WAIT         at 16#C# range 0 .. 31;
      SAR1_STATUS      at 16#10# range 0 .. 31;
      SAR2_STATUS      at 16#14# range 0 .. 31;
      SAR_PATT_TAB1    at 16#18# range 0 .. 31;
      SAR_PATT_TAB2    at 16#1C# range 0 .. 31;
      ONETIME_SAMPLE   at 16#20# range 0 .. 31;
      ARB_CTRL         at 16#24# range 0 .. 31;
      FILTER_CTRL0     at 16#28# range 0 .. 31;
      SAR1DATA_STATUS  at 16#2C# range 0 .. 31;
      SAR2DATA_STATUS  at 16#30# range 0 .. 31;
      THRES0_CTRL      at 16#34# range 0 .. 31;
      THRES1_CTRL      at 16#38# range 0 .. 31;
      THRES_CTRL       at 16#3C# range 0 .. 31;
      INT_ENA          at 16#40# range 0 .. 31;
      INT_RAW          at 16#44# range 0 .. 31;
      INT_ST           at 16#48# range 0 .. 31;
      INT_CLR          at 16#4C# range 0 .. 31;
      DMA_CONF         at 16#50# range 0 .. 31;
      CLKM_CONF        at 16#54# range 0 .. 31;
      APB_TSENS_CTRL   at 16#58# range 0 .. 31;
      TSENS_CTRL2      at 16#5C# range 0 .. 31;
      CALI             at 16#60# range 0 .. 31;
      APB_TSENS_WAKE   at 16#64# range 0 .. 31;
      APB_TSENS_SAMPLE at 16#68# range 0 .. 31;
      CTRL_DATE        at 16#3FC# range 0 .. 31;
   end record;

   --  SAR (Successive Approximation Register) Analog-to-Digital Converter
   APB_SARADC_Periph : aliased APB_SARADC_Peripheral
     with Import, Address => APB_SARADC_Base;

end ESP32_C6_SVD.APB_SARADC;
