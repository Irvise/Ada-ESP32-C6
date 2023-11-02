pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.LEDC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CH_CONF_TIMER_SEL_Field is HAL.UInt2;
   subtype CH_CONF_OVF_NUM_Field is HAL.UInt10;

   --  Configuration register 0 for channel %s
   type CH_CONF_Register is record
      --  This field is used to select one of timers for channel %s. 0: select
      --  timer0, 1: select timer1, 2: select timer2, 3: select timer3
      TIMER_SEL      : CH_CONF_TIMER_SEL_Field := 16#0#;
      --  Set this bit to enable signal output on channel %s.
      SIG_OUT_EN     : Boolean := False;
      --  This bit is used to control the output value when channel %s is
      --  inactive (when LEDC_SIG_OUT_EN_CH%s is 0).
      IDLE_LV        : Boolean := False;
      --  Write-only. This bit is used to update LEDC_HPOINT_CH%s,
      --  LEDC_DUTY_START_CH%s, LEDC_SIG_OUT_EN_CH%s, LEDC_TIMER_SEL_CH%s,
      --  LEDC_DUTY_NUM_CH%s, LEDC_DUTY_CYCLE_CH%s, LEDC_DUTY_SCALE_CH%s,
      --  LEDC_DUTY_INC_CH%s, and LEDC_OVF_CNT_EN_CH%s fields for channel %s,
      --  and will be automatically cleared by hardware.
      PARA_UP        : Boolean := False;
      --  This register is used to configure the maximum times of overflow
      --  minus 1. The LEDC_OVF_CNT_CH%s_INT interrupt will be triggered when
      --  channel %s overflows for (LEDC_OVF_NUM_CH%s + 1) times.
      OVF_NUM        : CH_CONF_OVF_NUM_Field := 16#0#;
      --  This bit is used to enable the ovf_cnt of channel %s.
      OVF_CNT_EN     : Boolean := False;
      --  Write-only. Set this bit to reset the ovf_cnt of channel %s.
      OVF_CNT_RESET  : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_CONF_Register use record
      TIMER_SEL      at 0 range 0 .. 1;
      SIG_OUT_EN     at 0 range 2 .. 2;
      IDLE_LV        at 0 range 3 .. 3;
      PARA_UP        at 0 range 4 .. 4;
      OVF_NUM        at 0 range 5 .. 14;
      OVF_CNT_EN     at 0 range 15 .. 15;
      OVF_CNT_RESET  at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CH_HPOINT_HPOINT_Field is HAL.UInt20;

   --  High point register for channel %s
   type CH_HPOINT_Register is record
      --  The output value changes to high when the selected timers has reached
      --  the value specified by this register.
      HPOINT         : CH_HPOINT_HPOINT_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_HPOINT_Register use record
      HPOINT         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CH_DUTY_DUTY_Field is HAL.UInt25;

   --  Initial duty cycle for channel %s
   type CH_DUTY_Register is record
      --  This register is used to change the output duty by controlling the
      --  Lpoint. The output value turns to low when the selected timers has
      --  reached the Lpoint.
      DUTY           : CH_DUTY_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_DUTY_Register use record
      DUTY           at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Configuration register 1 for channel %s
   type CH_CONF_Register_1 is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  Other configured fields in LEDC_CH%s_CONF1_REG will start to take
      --  effect when this bit is set to 1.
      DUTY_START    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_CONF_Register_1 use record
      Reserved_0_30 at 0 range 0 .. 30;
      DUTY_START    at 0 range 31 .. 31;
   end record;

   subtype CH_DUTY_R_DUTY_CH_R_Field is HAL.UInt25;

   --  Current duty cycle for channel %s
   type CH_DUTY_R_Register is record
      --  Read-only. This register stores the current duty of output signal on
      --  channel %s.
      DUTY_CH_R      : CH_DUTY_R_DUTY_CH_R_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_DUTY_R_Register use record
      DUTY_CH_R      at 0 range 0 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIMER_CONF_DUTY_RES_Field is HAL.UInt5;
   subtype TIMER_CONF_CLK_DIV_Field is HAL.UInt18;

   --  Timer %s configuration
   type TIMER_CONF_Register is record
      --  This register is used to control the range of the counter in timer
      --  %s.
      DUTY_RES       : TIMER_CONF_DUTY_RES_Field := 16#0#;
      --  This register is used to configure the divisor for the divider in
      --  timer %s. The least significant eight bits represent the fractional
      --  part.
      CLK_DIV        : TIMER_CONF_CLK_DIV_Field := 16#0#;
      --  This bit is used to suspend the counter in timer %s.
      PAUSE          : Boolean := False;
      --  This bit is used to reset timer %s. The counter will show 0 after
      --  reset.
      RST            : Boolean := True;
      --  This bit is used to select clock for timer %s. When this bit is set
      --  to 1 LEDC_APB_CLK_SEL[1:0] should be 1, otherwise the timer clock may
      --  be not accurate. 1'h0: SLOW_CLK 1'h1: REF_TICK
      TICK_SEL       : Boolean := False;
      --  Write-only. Set this bit to update LEDC_CLK_DIV_TIMER%s and
      --  LEDC_TIMER%s_DUTY_RES.
      PARA_UP        : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_CONF_Register use record
      DUTY_RES       at 0 range 0 .. 4;
      CLK_DIV        at 0 range 5 .. 22;
      PAUSE          at 0 range 23 .. 23;
      RST            at 0 range 24 .. 24;
      TICK_SEL       at 0 range 25 .. 25;
      PARA_UP        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype TIMER_VALUE_TIMER_CNT_Field is HAL.UInt20;

   --  Timer %s current counter value
   type TIMER_VALUE_Register is record
      --  Read-only. This register stores the current counter value of timer
      --  %s.
      TIMER_CNT      : TIMER_VALUE_TIMER_CNT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_VALUE_Register use record
      TIMER_CNT      at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Raw interrupt status
   type INT_RAW_Register is record
      --  Triggered when the timer0 has reached its maximum counter value.
      TIMER0_OVF_INT_RAW        : Boolean := False;
      --  Triggered when the timer1 has reached its maximum counter value.
      TIMER1_OVF_INT_RAW        : Boolean := False;
      --  Triggered when the timer2 has reached its maximum counter value.
      TIMER2_OVF_INT_RAW        : Boolean := False;
      --  Triggered when the timer3 has reached its maximum counter value.
      TIMER3_OVF_INT_RAW        : Boolean := False;
      --  Interrupt raw bit for channel 0. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH0_INT_RAW : Boolean := False;
      --  Interrupt raw bit for channel 1. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH1_INT_RAW : Boolean := False;
      --  Interrupt raw bit for channel 2. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH2_INT_RAW : Boolean := False;
      --  Interrupt raw bit for channel 3. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH3_INT_RAW : Boolean := False;
      --  Interrupt raw bit for channel 4. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH4_INT_RAW : Boolean := False;
      --  Interrupt raw bit for channel 5. Triggered when the gradual change of
      --  duty has finished.
      DUTY_CHNG_END_CH5_INT_RAW : Boolean := False;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  Interrupt raw bit for channel 0. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH0.
      OVF_CNT_CH0_INT_RAW       : Boolean := False;
      --  Interrupt raw bit for channel 1. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH1.
      OVF_CNT_CH1_INT_RAW       : Boolean := False;
      --  Interrupt raw bit for channel 2. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH2.
      OVF_CNT_CH2_INT_RAW       : Boolean := False;
      --  Interrupt raw bit for channel 3. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH3.
      OVF_CNT_CH3_INT_RAW       : Boolean := False;
      --  Interrupt raw bit for channel 4. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH4.
      OVF_CNT_CH4_INT_RAW       : Boolean := False;
      --  Interrupt raw bit for channel 5. Triggered when the ovf_cnt has
      --  reached the value specified by LEDC_OVF_NUM_CH5.
      OVF_CNT_CH5_INT_RAW       : Boolean := False;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      TIMER0_OVF_INT_RAW        at 0 range 0 .. 0;
      TIMER1_OVF_INT_RAW        at 0 range 1 .. 1;
      TIMER2_OVF_INT_RAW        at 0 range 2 .. 2;
      TIMER3_OVF_INT_RAW        at 0 range 3 .. 3;
      DUTY_CHNG_END_CH0_INT_RAW at 0 range 4 .. 4;
      DUTY_CHNG_END_CH1_INT_RAW at 0 range 5 .. 5;
      DUTY_CHNG_END_CH2_INT_RAW at 0 range 6 .. 6;
      DUTY_CHNG_END_CH3_INT_RAW at 0 range 7 .. 7;
      DUTY_CHNG_END_CH4_INT_RAW at 0 range 8 .. 8;
      DUTY_CHNG_END_CH5_INT_RAW at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      OVF_CNT_CH0_INT_RAW       at 0 range 12 .. 12;
      OVF_CNT_CH1_INT_RAW       at 0 range 13 .. 13;
      OVF_CNT_CH2_INT_RAW       at 0 range 14 .. 14;
      OVF_CNT_CH3_INT_RAW       at 0 range 15 .. 15;
      OVF_CNT_CH4_INT_RAW       at 0 range 16 .. 16;
      OVF_CNT_CH5_INT_RAW       at 0 range 17 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   --  Masked interrupt status
   type INT_ST_Register is record
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_TIMER0_OVF_INT interrupt when LEDC_TIMER0_OVF_INT_ENA is set to
      --  1.
      TIMER0_OVF_INT_ST        : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_TIMER1_OVF_INT interrupt when LEDC_TIMER1_OVF_INT_ENA is set to
      --  1.
      TIMER1_OVF_INT_ST        : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_TIMER2_OVF_INT interrupt when LEDC_TIMER2_OVF_INT_ENA is set to
      --  1.
      TIMER2_OVF_INT_ST        : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_TIMER3_OVF_INT interrupt when LEDC_TIMER3_OVF_INT_ENA is set to
      --  1.
      TIMER3_OVF_INT_ST        : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH0_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH0_INT_ENA is set to 1.
      DUTY_CHNG_END_CH0_INT_ST : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH1_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH1_INT_ENA is set to 1.
      DUTY_CHNG_END_CH1_INT_ST : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH2_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH2_INT_ENA is set to 1.
      DUTY_CHNG_END_CH2_INT_ST : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH3_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH3_INT_ENA is set to 1.
      DUTY_CHNG_END_CH3_INT_ST : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH4_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH4_INT_ENA is set to 1.
      DUTY_CHNG_END_CH4_INT_ST : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_DUTY_CHNG_END_CH5_INT interrupt when
      --  LEDC_DUTY_CHNG_END_CH5_INT_ENA is set to 1.
      DUTY_CHNG_END_CH5_INT_ST : Boolean;
      --  unspecified
      Reserved_10_11           : HAL.UInt2;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH0_INT interrupt when LEDC_OVF_CNT_CH0_INT_ENA is set
      --  to 1.
      OVF_CNT_CH0_INT_ST       : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH1_INT interrupt when LEDC_OVF_CNT_CH1_INT_ENA is set
      --  to 1.
      OVF_CNT_CH1_INT_ST       : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH2_INT interrupt when LEDC_OVF_CNT_CH2_INT_ENA is set
      --  to 1.
      OVF_CNT_CH2_INT_ST       : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH3_INT interrupt when LEDC_OVF_CNT_CH3_INT_ENA is set
      --  to 1.
      OVF_CNT_CH3_INT_ST       : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH4_INT interrupt when LEDC_OVF_CNT_CH4_INT_ENA is set
      --  to 1.
      OVF_CNT_CH4_INT_ST       : Boolean;
      --  Read-only. This is the masked interrupt status bit for the
      --  LEDC_OVF_CNT_CH5_INT interrupt when LEDC_OVF_CNT_CH5_INT_ENA is set
      --  to 1.
      OVF_CNT_CH5_INT_ST       : Boolean;
      --  unspecified
      Reserved_18_31           : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      TIMER0_OVF_INT_ST        at 0 range 0 .. 0;
      TIMER1_OVF_INT_ST        at 0 range 1 .. 1;
      TIMER2_OVF_INT_ST        at 0 range 2 .. 2;
      TIMER3_OVF_INT_ST        at 0 range 3 .. 3;
      DUTY_CHNG_END_CH0_INT_ST at 0 range 4 .. 4;
      DUTY_CHNG_END_CH1_INT_ST at 0 range 5 .. 5;
      DUTY_CHNG_END_CH2_INT_ST at 0 range 6 .. 6;
      DUTY_CHNG_END_CH3_INT_ST at 0 range 7 .. 7;
      DUTY_CHNG_END_CH4_INT_ST at 0 range 8 .. 8;
      DUTY_CHNG_END_CH5_INT_ST at 0 range 9 .. 9;
      Reserved_10_11           at 0 range 10 .. 11;
      OVF_CNT_CH0_INT_ST       at 0 range 12 .. 12;
      OVF_CNT_CH1_INT_ST       at 0 range 13 .. 13;
      OVF_CNT_CH2_INT_ST       at 0 range 14 .. 14;
      OVF_CNT_CH3_INT_ST       at 0 range 15 .. 15;
      OVF_CNT_CH4_INT_ST       at 0 range 16 .. 16;
      OVF_CNT_CH5_INT_ST       at 0 range 17 .. 17;
      Reserved_18_31           at 0 range 18 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENA_Register is record
      --  The interrupt enable bit for the LEDC_TIMER0_OVF_INT interrupt.
      TIMER0_OVF_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the LEDC_TIMER1_OVF_INT interrupt.
      TIMER1_OVF_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the LEDC_TIMER2_OVF_INT interrupt.
      TIMER2_OVF_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the LEDC_TIMER3_OVF_INT interrupt.
      TIMER3_OVF_INT_ENA        : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH0_INT
      --  interrupt.
      DUTY_CHNG_END_CH0_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH1_INT
      --  interrupt.
      DUTY_CHNG_END_CH1_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH2_INT
      --  interrupt.
      DUTY_CHNG_END_CH2_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH3_INT
      --  interrupt.
      DUTY_CHNG_END_CH3_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH4_INT
      --  interrupt.
      DUTY_CHNG_END_CH4_INT_ENA : Boolean := False;
      --  The interrupt enable bit for the LEDC_DUTY_CHNG_END_CH5_INT
      --  interrupt.
      DUTY_CHNG_END_CH5_INT_ENA : Boolean := False;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH0_INT interrupt.
      OVF_CNT_CH0_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH1_INT interrupt.
      OVF_CNT_CH1_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH2_INT interrupt.
      OVF_CNT_CH2_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH3_INT interrupt.
      OVF_CNT_CH3_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH4_INT interrupt.
      OVF_CNT_CH4_INT_ENA       : Boolean := False;
      --  The interrupt enable bit for the LEDC_OVF_CNT_CH5_INT interrupt.
      OVF_CNT_CH5_INT_ENA       : Boolean := False;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      TIMER0_OVF_INT_ENA        at 0 range 0 .. 0;
      TIMER1_OVF_INT_ENA        at 0 range 1 .. 1;
      TIMER2_OVF_INT_ENA        at 0 range 2 .. 2;
      TIMER3_OVF_INT_ENA        at 0 range 3 .. 3;
      DUTY_CHNG_END_CH0_INT_ENA at 0 range 4 .. 4;
      DUTY_CHNG_END_CH1_INT_ENA at 0 range 5 .. 5;
      DUTY_CHNG_END_CH2_INT_ENA at 0 range 6 .. 6;
      DUTY_CHNG_END_CH3_INT_ENA at 0 range 7 .. 7;
      DUTY_CHNG_END_CH4_INT_ENA at 0 range 8 .. 8;
      DUTY_CHNG_END_CH5_INT_ENA at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      OVF_CNT_CH0_INT_ENA       at 0 range 12 .. 12;
      OVF_CNT_CH1_INT_ENA       at 0 range 13 .. 13;
      OVF_CNT_CH2_INT_ENA       at 0 range 14 .. 14;
      OVF_CNT_CH3_INT_ENA       at 0 range 15 .. 15;
      OVF_CNT_CH4_INT_ENA       at 0 range 16 .. 16;
      OVF_CNT_CH5_INT_ENA       at 0 range 17 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   --  Interrupt clear bits
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear the LEDC_TIMER0_OVF_INT interrupt.
      TIMER0_OVF_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_TIMER1_OVF_INT interrupt.
      TIMER1_OVF_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_TIMER2_OVF_INT interrupt.
      TIMER2_OVF_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_TIMER3_OVF_INT interrupt.
      TIMER3_OVF_INT_CLR        : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH0_INT
      --  interrupt.
      DUTY_CHNG_END_CH0_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH1_INT
      --  interrupt.
      DUTY_CHNG_END_CH1_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH2_INT
      --  interrupt.
      DUTY_CHNG_END_CH2_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH3_INT
      --  interrupt.
      DUTY_CHNG_END_CH3_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH4_INT
      --  interrupt.
      DUTY_CHNG_END_CH4_INT_CLR : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_DUTY_CHNG_END_CH5_INT
      --  interrupt.
      DUTY_CHNG_END_CH5_INT_CLR : Boolean := False;
      --  unspecified
      Reserved_10_11            : HAL.UInt2 := 16#0#;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH0_INT interrupt.
      OVF_CNT_CH0_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH1_INT interrupt.
      OVF_CNT_CH1_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH2_INT interrupt.
      OVF_CNT_CH2_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH3_INT interrupt.
      OVF_CNT_CH3_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH4_INT interrupt.
      OVF_CNT_CH4_INT_CLR       : Boolean := False;
      --  Write-only. Set this bit to clear the LEDC_OVF_CNT_CH5_INT interrupt.
      OVF_CNT_CH5_INT_CLR       : Boolean := False;
      --  unspecified
      Reserved_18_31            : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      TIMER0_OVF_INT_CLR        at 0 range 0 .. 0;
      TIMER1_OVF_INT_CLR        at 0 range 1 .. 1;
      TIMER2_OVF_INT_CLR        at 0 range 2 .. 2;
      TIMER3_OVF_INT_CLR        at 0 range 3 .. 3;
      DUTY_CHNG_END_CH0_INT_CLR at 0 range 4 .. 4;
      DUTY_CHNG_END_CH1_INT_CLR at 0 range 5 .. 5;
      DUTY_CHNG_END_CH2_INT_CLR at 0 range 6 .. 6;
      DUTY_CHNG_END_CH3_INT_CLR at 0 range 7 .. 7;
      DUTY_CHNG_END_CH4_INT_CLR at 0 range 8 .. 8;
      DUTY_CHNG_END_CH5_INT_CLR at 0 range 9 .. 9;
      Reserved_10_11            at 0 range 10 .. 11;
      OVF_CNT_CH0_INT_CLR       at 0 range 12 .. 12;
      OVF_CNT_CH1_INT_CLR       at 0 range 13 .. 13;
      OVF_CNT_CH2_INT_CLR       at 0 range 14 .. 14;
      OVF_CNT_CH3_INT_CLR       at 0 range 15 .. 15;
      OVF_CNT_CH4_INT_CLR       at 0 range 16 .. 16;
      OVF_CNT_CH5_INT_CLR       at 0 range 17 .. 17;
      Reserved_18_31            at 0 range 18 .. 31;
   end record;

   subtype CH_GAMMA_WR_CH_GAMMA_DUTY_CYCLE_Field is HAL.UInt10;
   subtype CH_GAMMA_WR_CH_GAMMA_SCALE_Field is HAL.UInt10;
   subtype CH_GAMMA_WR_CH_GAMMA_DUTY_NUM_Field is HAL.UInt10;

   --  Ledc ch%s gamma ram write register.
   type CH_GAMMA_WR_Register is record
      --  Ledc ch%s gamma duty inc of current ram write address.This register
      --  is used to increase or decrease the duty of output signal on channel
      --  %s. 1: Increase 0: Decrease.
      CH_GAMMA_DUTY_INC   : Boolean := False;
      --  Ledc ch%s gamma duty cycle of current ram write address.The duty will
      --  change every LEDC_CH%s_GAMMA_DUTY_CYCLE on channel %s.
      CH_GAMMA_DUTY_CYCLE : CH_GAMMA_WR_CH_GAMMA_DUTY_CYCLE_Field := 16#0#;
      --  Ledc ch%s gamma scale of current ram write address.This register is
      --  used to configure the changing step scale of duty on channel %s.
      CH_GAMMA_SCALE      : CH_GAMMA_WR_CH_GAMMA_SCALE_Field := 16#0#;
      --  Ledc ch%s gamma duty num of current ram write address.This register
      --  is used to control the number of times the duty cycle will be
      --  changed.
      CH_GAMMA_DUTY_NUM   : CH_GAMMA_WR_CH_GAMMA_DUTY_NUM_Field := 16#0#;
      --  unspecified
      Reserved_31_31      : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_GAMMA_WR_Register use record
      CH_GAMMA_DUTY_INC   at 0 range 0 .. 0;
      CH_GAMMA_DUTY_CYCLE at 0 range 1 .. 10;
      CH_GAMMA_SCALE      at 0 range 11 .. 20;
      CH_GAMMA_DUTY_NUM   at 0 range 21 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   subtype CH_GAMMA_WR_ADDR_CH_GAMMA_WR_ADDR_Field is HAL.UInt4;

   --  Ledc ch%s gamma ram write address register.
   type CH_GAMMA_WR_ADDR_Register is record
      --  Ledc ch%s gamma ram write address.
      CH_GAMMA_WR_ADDR : CH_GAMMA_WR_ADDR_CH_GAMMA_WR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_GAMMA_WR_ADDR_Register use record
      CH_GAMMA_WR_ADDR at 0 range 0 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype CH_GAMMA_RD_ADDR_CH_GAMMA_RD_ADDR_Field is HAL.UInt4;

   --  Ledc ch%s gamma ram read address register.
   type CH_GAMMA_RD_ADDR_Register is record
      --  Ledc ch%s gamma ram read address.
      CH_GAMMA_RD_ADDR : CH_GAMMA_RD_ADDR_CH_GAMMA_RD_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_GAMMA_RD_ADDR_Register use record
      CH_GAMMA_RD_ADDR at 0 range 0 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype CH_GAMMA_RD_DATA_CH_GAMMA_RD_DATA_Field is HAL.UInt31;

   --  Ledc ch%s gamma ram read data register.
   type CH_GAMMA_RD_DATA_Register is record
      --  Read-only. Ledc ch%s gamma ram read data.
      CH_GAMMA_RD_DATA : CH_GAMMA_RD_DATA_CH_GAMMA_RD_DATA_Field;
      --  unspecified
      Reserved_31_31   : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_GAMMA_RD_DATA_Register use record
      CH_GAMMA_RD_DATA at 0 range 0 .. 30;
      Reserved_31_31   at 0 range 31 .. 31;
   end record;

   subtype CH_GAMMA_CONF_CH_GAMMA_ENTRY_NUM_Field is HAL.UInt5;

   --  Ledc ch%s gamma config register.
   type CH_GAMMA_CONF_Register is record
      --  Ledc ch%s gamma entry num.
      CH_GAMMA_ENTRY_NUM : CH_GAMMA_CONF_CH_GAMMA_ENTRY_NUM_Field := 16#0#;
      --  Write-only. Ledc ch%s gamma pause, write 1 to pause.
      CH_GAMMA_PAUSE     : Boolean := False;
      --  Write-only. Ledc ch%s gamma resume, write 1 to resume.
      CH_GAMMA_RESUME    : Boolean := False;
      --  unspecified
      Reserved_7_31      : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_GAMMA_CONF_Register use record
      CH_GAMMA_ENTRY_NUM at 0 range 0 .. 4;
      CH_GAMMA_PAUSE     at 0 range 5 .. 5;
      CH_GAMMA_RESUME    at 0 range 6 .. 6;
      Reserved_7_31      at 0 range 7 .. 31;
   end record;

   --  Ledc ch%s gamma config register.
   type CH_GAMMA_CONF_Registers is array (0 .. 5) of CH_GAMMA_CONF_Register;

   --  Ledc event task enable bit register0.
   type EVT_TASK_EN0_Register is record
      --  Ledc ch0 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH0_EN      : Boolean := False;
      --  Ledc ch1 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH1_EN      : Boolean := False;
      --  Ledc ch2 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH2_EN      : Boolean := False;
      --  Ledc ch3 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH3_EN      : Boolean := False;
      --  Ledc ch4 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH4_EN      : Boolean := False;
      --  Ledc ch5 duty change end event enable register, write 1 to enable
      --  this event.
      EVT_DUTY_CHNG_END_CH5_EN      : Boolean := False;
      --  unspecified
      Reserved_6_7                  : HAL.UInt2 := 16#0#;
      --  Ledc ch0 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH0_EN        : Boolean := False;
      --  Ledc ch1 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH1_EN        : Boolean := False;
      --  Ledc ch2 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH2_EN        : Boolean := False;
      --  Ledc ch3 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH3_EN        : Boolean := False;
      --  Ledc ch4 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH4_EN        : Boolean := False;
      --  Ledc ch5 overflow count pulse event enable register, write 1 to
      --  enable this event.
      EVT_OVF_CNT_PLS_CH5_EN        : Boolean := False;
      --  unspecified
      Reserved_14_15                : HAL.UInt2 := 16#0#;
      --  Ledc timer0 overflow event enable register, write 1 to enable this
      --  event.
      EVT_TIME_OVF_TIMER0_EN        : Boolean := False;
      --  Ledc timer1 overflow event enable register, write 1 to enable this
      --  event.
      EVT_TIME_OVF_TIMER1_EN        : Boolean := False;
      --  Ledc timer2 overflow event enable register, write 1 to enable this
      --  event.
      EVT_TIME_OVF_TIMER2_EN        : Boolean := False;
      --  Ledc timer3 overflow event enable register, write 1 to enable this
      --  event.
      EVT_TIME_OVF_TIMER3_EN        : Boolean := False;
      --  Ledc timer0 compare event enable register, write 1 to enable this
      --  event.
      EVT_TIME0_CMP_EN              : Boolean := False;
      --  Ledc timer1 compare event enable register, write 1 to enable this
      --  event.
      EVT_TIME1_CMP_EN              : Boolean := False;
      --  Ledc timer2 compare event enable register, write 1 to enable this
      --  event.
      EVT_TIME2_CMP_EN              : Boolean := False;
      --  Ledc timer3 compare event enable register, write 1 to enable this
      --  event.
      EVT_TIME3_CMP_EN              : Boolean := False;
      --  Ledc ch0 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH0_EN : Boolean := False;
      --  Ledc ch1 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH1_EN : Boolean := False;
      --  Ledc ch2 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH2_EN : Boolean := False;
      --  Ledc ch3 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH3_EN : Boolean := False;
      --  Ledc ch4 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH4_EN : Boolean := False;
      --  Ledc ch5 duty scale update task enable register, write 1 to enable
      --  this task.
      TASK_DUTY_SCALE_UPDATE_CH5_EN : Boolean := False;
      --  unspecified
      Reserved_30_31                : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVT_TASK_EN0_Register use record
      EVT_DUTY_CHNG_END_CH0_EN      at 0 range 0 .. 0;
      EVT_DUTY_CHNG_END_CH1_EN      at 0 range 1 .. 1;
      EVT_DUTY_CHNG_END_CH2_EN      at 0 range 2 .. 2;
      EVT_DUTY_CHNG_END_CH3_EN      at 0 range 3 .. 3;
      EVT_DUTY_CHNG_END_CH4_EN      at 0 range 4 .. 4;
      EVT_DUTY_CHNG_END_CH5_EN      at 0 range 5 .. 5;
      Reserved_6_7                  at 0 range 6 .. 7;
      EVT_OVF_CNT_PLS_CH0_EN        at 0 range 8 .. 8;
      EVT_OVF_CNT_PLS_CH1_EN        at 0 range 9 .. 9;
      EVT_OVF_CNT_PLS_CH2_EN        at 0 range 10 .. 10;
      EVT_OVF_CNT_PLS_CH3_EN        at 0 range 11 .. 11;
      EVT_OVF_CNT_PLS_CH4_EN        at 0 range 12 .. 12;
      EVT_OVF_CNT_PLS_CH5_EN        at 0 range 13 .. 13;
      Reserved_14_15                at 0 range 14 .. 15;
      EVT_TIME_OVF_TIMER0_EN        at 0 range 16 .. 16;
      EVT_TIME_OVF_TIMER1_EN        at 0 range 17 .. 17;
      EVT_TIME_OVF_TIMER2_EN        at 0 range 18 .. 18;
      EVT_TIME_OVF_TIMER3_EN        at 0 range 19 .. 19;
      EVT_TIME0_CMP_EN              at 0 range 20 .. 20;
      EVT_TIME1_CMP_EN              at 0 range 21 .. 21;
      EVT_TIME2_CMP_EN              at 0 range 22 .. 22;
      EVT_TIME3_CMP_EN              at 0 range 23 .. 23;
      TASK_DUTY_SCALE_UPDATE_CH0_EN at 0 range 24 .. 24;
      TASK_DUTY_SCALE_UPDATE_CH1_EN at 0 range 25 .. 25;
      TASK_DUTY_SCALE_UPDATE_CH2_EN at 0 range 26 .. 26;
      TASK_DUTY_SCALE_UPDATE_CH3_EN at 0 range 27 .. 27;
      TASK_DUTY_SCALE_UPDATE_CH4_EN at 0 range 28 .. 28;
      TASK_DUTY_SCALE_UPDATE_CH5_EN at 0 range 29 .. 29;
      Reserved_30_31                at 0 range 30 .. 31;
   end record;

   --  Ledc event task enable bit register1.
   type EVT_TASK_EN1_Register is record
      --  Ledc timer0 res update task enable register, write 1 to enable this
      --  task.
      TASK_TIMER0_RES_UPDATE_EN   : Boolean := False;
      --  Ledc timer1 res update task enable register, write 1 to enable this
      --  task.
      TASK_TIMER1_RES_UPDATE_EN   : Boolean := False;
      --  Ledc timer2 res update task enable register, write 1 to enable this
      --  task.
      TASK_TIMER2_RES_UPDATE_EN   : Boolean := False;
      --  Ledc timer3 res update task enable register, write 1 to enable this
      --  task.
      TASK_TIMER3_RES_UPDATE_EN   : Boolean := False;
      --  Ledc timer0 capture task enable register, write 1 to enable this
      --  task.
      TASK_TIMER0_CAP_EN          : Boolean := False;
      --  Ledc timer1 capture task enable register, write 1 to enable this
      --  task.
      TASK_TIMER1_CAP_EN          : Boolean := False;
      --  Ledc timer2 capture task enable register, write 1 to enable this
      --  task.
      TASK_TIMER2_CAP_EN          : Boolean := False;
      --  Ledc timer3 capture task enable register, write 1 to enable this
      --  task.
      TASK_TIMER3_CAP_EN          : Boolean := False;
      --  Ledc ch0 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH0_EN     : Boolean := False;
      --  Ledc ch1 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH1_EN     : Boolean := False;
      --  Ledc ch2 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH2_EN     : Boolean := False;
      --  Ledc ch3 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH3_EN     : Boolean := False;
      --  Ledc ch4 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH4_EN     : Boolean := False;
      --  Ledc ch5 signal out disable task enable register, write 1 to enable
      --  this task.
      TASK_SIG_OUT_DIS_CH5_EN     : Boolean := False;
      --  unspecified
      Reserved_14_15              : HAL.UInt2 := 16#0#;
      --  Ledc ch0 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH0_EN     : Boolean := False;
      --  Ledc ch1 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH1_EN     : Boolean := False;
      --  Ledc ch2 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH2_EN     : Boolean := False;
      --  Ledc ch3 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH3_EN     : Boolean := False;
      --  Ledc ch4 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH4_EN     : Boolean := False;
      --  Ledc ch5 overflow count reset task enable register, write 1 to enable
      --  this task.
      TASK_OVF_CNT_RST_CH5_EN     : Boolean := False;
      --  unspecified
      Reserved_22_23              : HAL.UInt2 := 16#0#;
      --  Ledc timer0 reset task enable register, write 1 to enable this task.
      TASK_TIMER0_RST_EN          : Boolean := False;
      --  Ledc timer1 reset task enable register, write 1 to enable this task.
      TASK_TIMER1_RST_EN          : Boolean := False;
      --  Ledc timer2 reset task enable register, write 1 to enable this task.
      TASK_TIMER2_RST_EN          : Boolean := False;
      --  Ledc timer3 reset task enable register, write 1 to enable this task.
      TASK_TIMER3_RST_EN          : Boolean := False;
      --  Ledc timer0 pause resume task enable register, write 1 to enable this
      --  task.
      TASK_TIMER0_PAUSE_RESUME_EN : Boolean := False;
      --  Ledc timer1 pause resume task enable register, write 1 to enable this
      --  task.
      TASK_TIMER1_PAUSE_RESUME_EN : Boolean := False;
      --  Ledc timer2 pause resume task enable register, write 1 to enable this
      --  task.
      TASK_TIMER2_PAUSE_RESUME_EN : Boolean := False;
      --  Ledc timer3 pause resume task enable register, write 1 to enable this
      --  task.
      TASK_TIMER3_PAUSE_RESUME_EN : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVT_TASK_EN1_Register use record
      TASK_TIMER0_RES_UPDATE_EN   at 0 range 0 .. 0;
      TASK_TIMER1_RES_UPDATE_EN   at 0 range 1 .. 1;
      TASK_TIMER2_RES_UPDATE_EN   at 0 range 2 .. 2;
      TASK_TIMER3_RES_UPDATE_EN   at 0 range 3 .. 3;
      TASK_TIMER0_CAP_EN          at 0 range 4 .. 4;
      TASK_TIMER1_CAP_EN          at 0 range 5 .. 5;
      TASK_TIMER2_CAP_EN          at 0 range 6 .. 6;
      TASK_TIMER3_CAP_EN          at 0 range 7 .. 7;
      TASK_SIG_OUT_DIS_CH0_EN     at 0 range 8 .. 8;
      TASK_SIG_OUT_DIS_CH1_EN     at 0 range 9 .. 9;
      TASK_SIG_OUT_DIS_CH2_EN     at 0 range 10 .. 10;
      TASK_SIG_OUT_DIS_CH3_EN     at 0 range 11 .. 11;
      TASK_SIG_OUT_DIS_CH4_EN     at 0 range 12 .. 12;
      TASK_SIG_OUT_DIS_CH5_EN     at 0 range 13 .. 13;
      Reserved_14_15              at 0 range 14 .. 15;
      TASK_OVF_CNT_RST_CH0_EN     at 0 range 16 .. 16;
      TASK_OVF_CNT_RST_CH1_EN     at 0 range 17 .. 17;
      TASK_OVF_CNT_RST_CH2_EN     at 0 range 18 .. 18;
      TASK_OVF_CNT_RST_CH3_EN     at 0 range 19 .. 19;
      TASK_OVF_CNT_RST_CH4_EN     at 0 range 20 .. 20;
      TASK_OVF_CNT_RST_CH5_EN     at 0 range 21 .. 21;
      Reserved_22_23              at 0 range 22 .. 23;
      TASK_TIMER0_RST_EN          at 0 range 24 .. 24;
      TASK_TIMER1_RST_EN          at 0 range 25 .. 25;
      TASK_TIMER2_RST_EN          at 0 range 26 .. 26;
      TASK_TIMER3_RST_EN          at 0 range 27 .. 27;
      TASK_TIMER0_PAUSE_RESUME_EN at 0 range 28 .. 28;
      TASK_TIMER1_PAUSE_RESUME_EN at 0 range 29 .. 29;
      TASK_TIMER2_PAUSE_RESUME_EN at 0 range 30 .. 30;
      TASK_TIMER3_PAUSE_RESUME_EN at 0 range 31 .. 31;
   end record;

   --  Ledc event task enable bit register2.
   type EVT_TASK_EN2_Register is record
      --  Ledc ch0 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH0_EN : Boolean := False;
      --  Ledc ch1 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH1_EN : Boolean := False;
      --  Ledc ch2 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH2_EN : Boolean := False;
      --  Ledc ch3 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH3_EN : Boolean := False;
      --  Ledc ch4 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH4_EN : Boolean := False;
      --  Ledc ch5 gamma restart task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESTART_CH5_EN : Boolean := False;
      --  unspecified
      Reserved_6_7              : HAL.UInt2 := 16#0#;
      --  Ledc ch0 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH0_EN   : Boolean := False;
      --  Ledc ch1 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH1_EN   : Boolean := False;
      --  Ledc ch2 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH2_EN   : Boolean := False;
      --  Ledc ch3 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH3_EN   : Boolean := False;
      --  Ledc ch4 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH4_EN   : Boolean := False;
      --  Ledc ch5 gamma pause task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_PAUSE_CH5_EN   : Boolean := False;
      --  unspecified
      Reserved_14_15            : HAL.UInt2 := 16#0#;
      --  Ledc ch0 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH0_EN  : Boolean := False;
      --  Ledc ch1 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH1_EN  : Boolean := False;
      --  Ledc ch2 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH2_EN  : Boolean := False;
      --  Ledc ch3 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH3_EN  : Boolean := False;
      --  Ledc ch4 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH4_EN  : Boolean := False;
      --  Ledc ch5 gamma resume task enable register, write 1 to enable this
      --  task.
      TASK_GAMMA_RESUME_CH5_EN  : Boolean := False;
      --  unspecified
      Reserved_22_31            : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVT_TASK_EN2_Register use record
      TASK_GAMMA_RESTART_CH0_EN at 0 range 0 .. 0;
      TASK_GAMMA_RESTART_CH1_EN at 0 range 1 .. 1;
      TASK_GAMMA_RESTART_CH2_EN at 0 range 2 .. 2;
      TASK_GAMMA_RESTART_CH3_EN at 0 range 3 .. 3;
      TASK_GAMMA_RESTART_CH4_EN at 0 range 4 .. 4;
      TASK_GAMMA_RESTART_CH5_EN at 0 range 5 .. 5;
      Reserved_6_7              at 0 range 6 .. 7;
      TASK_GAMMA_PAUSE_CH0_EN   at 0 range 8 .. 8;
      TASK_GAMMA_PAUSE_CH1_EN   at 0 range 9 .. 9;
      TASK_GAMMA_PAUSE_CH2_EN   at 0 range 10 .. 10;
      TASK_GAMMA_PAUSE_CH3_EN   at 0 range 11 .. 11;
      TASK_GAMMA_PAUSE_CH4_EN   at 0 range 12 .. 12;
      TASK_GAMMA_PAUSE_CH5_EN   at 0 range 13 .. 13;
      Reserved_14_15            at 0 range 14 .. 15;
      TASK_GAMMA_RESUME_CH0_EN  at 0 range 16 .. 16;
      TASK_GAMMA_RESUME_CH1_EN  at 0 range 17 .. 17;
      TASK_GAMMA_RESUME_CH2_EN  at 0 range 18 .. 18;
      TASK_GAMMA_RESUME_CH3_EN  at 0 range 19 .. 19;
      TASK_GAMMA_RESUME_CH4_EN  at 0 range 20 .. 20;
      TASK_GAMMA_RESUME_CH5_EN  at 0 range 21 .. 21;
      Reserved_22_31            at 0 range 22 .. 31;
   end record;

   subtype TIMER_CMP_TIMER_CMP_Field is HAL.UInt20;

   --  Ledc timer%s compare value register.
   type TIMER_CMP_Register is record
      --  This register stores ledc timer%s compare value.
      TIMER_CMP      : TIMER_CMP_TIMER_CMP_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_CMP_Register use record
      TIMER_CMP      at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Ledc timer%s compare value register.
   type TIMER_CMP_Registers is array (0 .. 3) of TIMER_CMP_Register;

   subtype TIMER_CNT_CAP_TIMER_CNT_CAP_Field is HAL.UInt20;

   --  Ledc timer%s count value capture register.
   type TIMER_CNT_CAP_Register is record
      --  Read-only. This register stores ledc timer%s count value.
      TIMER_CNT_CAP  : TIMER_CNT_CAP_TIMER_CNT_CAP_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER_CNT_CAP_Register use record
      TIMER_CNT_CAP  at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Ledc timer%s count value capture register.
   type TIMER_CNT_CAP_Registers is array (0 .. 3) of TIMER_CNT_CAP_Register;

   subtype CONF_APB_CLK_SEL_Field is HAL.UInt2;

   --  CONF_GAMMA_RAM_CLK_EN_CH array
   type CONF_GAMMA_RAM_CLK_EN_CH_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for CONF_GAMMA_RAM_CLK_EN_CH
   type CONF_GAMMA_RAM_CLK_EN_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAMMA_RAM_CLK_EN_CH as a value
            Val : HAL.UInt6;
         when True =>
            --  GAMMA_RAM_CLK_EN_CH as an array
            Arr : CONF_GAMMA_RAM_CLK_EN_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CONF_GAMMA_RAM_CLK_EN_CH_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Global ledc configuration register
   type CONF_Register is record
      --  This bit is used to select clock source for the 4 timers . 2'd1:
      --  APB_CLK 2'd2: RTC8M_CLK 2'd3: XTAL_CLK
      APB_CLK_SEL         : CONF_APB_CLK_SEL_Field := 16#0#;
      --  This bit is used to control clock. 1'b1: Force clock on for gamma
      --  ram. 1'h0: Support clock only when application writes or read gamma
      --  ram.
      GAMMA_RAM_CLK_EN_CH : CONF_GAMMA_RAM_CLK_EN_CH_Field :=
                             (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_30       : HAL.UInt23 := 16#0#;
      --  This bit is used to control clock. 1'b1: Force clock on for register.
      --  1'h0: Support clock only when application writes registers.
      CLK_EN              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_Register use record
      APB_CLK_SEL         at 0 range 0 .. 1;
      GAMMA_RAM_CLK_EN_CH at 0 range 2 .. 7;
      Reserved_8_30       at 0 range 8 .. 30;
      CLK_EN              at 0 range 31 .. 31;
   end record;

   subtype DATE_LEDC_DATE_Field is HAL.UInt28;

   --  Version control register
   type DATE_Register is record
      --  This is the version control register.
      LEDC_DATE      : DATE_LEDC_DATE_Field := 16#2111150#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      LEDC_DATE      at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LED Control PWM (Pulse Width Modulation)
   type LEDC_Peripheral is record
      --  Configuration register 0 for channel %s
      CH_CONF00         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT0        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY0          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF10         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R0        : aliased CH_DUTY_R_Register;
      --  Configuration register 0 for channel %s
      CH_CONF01         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT1        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY1          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF11         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R1        : aliased CH_DUTY_R_Register;
      --  Configuration register 0 for channel %s
      CH_CONF02         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT2        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY2          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF12         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R2        : aliased CH_DUTY_R_Register;
      --  Configuration register 0 for channel %s
      CH_CONF03         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT3        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY3          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF13         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R3        : aliased CH_DUTY_R_Register;
      --  Configuration register 0 for channel %s
      CH_CONF04         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT4        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY4          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF14         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R4        : aliased CH_DUTY_R_Register;
      --  Configuration register 0 for channel %s
      CH_CONF05         : aliased CH_CONF_Register;
      --  High point register for channel %s
      CH_HPOINT5        : aliased CH_HPOINT_Register;
      --  Initial duty cycle for channel %s
      CH_DUTY5          : aliased CH_DUTY_Register;
      --  Configuration register 1 for channel %s
      CH_CONF15         : aliased CH_CONF_Register_1;
      --  Current duty cycle for channel %s
      CH_DUTY_R5        : aliased CH_DUTY_R_Register;
      --  Timer %s configuration
      TIMER_CONF0       : aliased TIMER_CONF_Register;
      --  Timer %s current counter value
      TIMER_VALUE0      : aliased TIMER_VALUE_Register;
      --  Timer %s configuration
      TIMER_CONF1       : aliased TIMER_CONF_Register;
      --  Timer %s current counter value
      TIMER_VALUE1      : aliased TIMER_VALUE_Register;
      --  Timer %s configuration
      TIMER_CONF2       : aliased TIMER_CONF_Register;
      --  Timer %s current counter value
      TIMER_VALUE2      : aliased TIMER_VALUE_Register;
      --  Timer %s configuration
      TIMER_CONF3       : aliased TIMER_CONF_Register;
      --  Timer %s current counter value
      TIMER_VALUE3      : aliased TIMER_VALUE_Register;
      --  Raw interrupt status
      INT_RAW           : aliased INT_RAW_Register;
      --  Masked interrupt status
      INT_ST            : aliased INT_ST_Register;
      --  Interrupt enable bits
      INT_ENA           : aliased INT_ENA_Register;
      --  Interrupt clear bits
      INT_CLR           : aliased INT_CLR_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR0      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR0 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR0 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA0 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR1      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR1 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR1 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA1 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR2      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR2 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR2 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA2 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR3      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR3 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR3 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA3 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR4      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR4 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR4 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA4 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma ram write register.
      CH_GAMMA_WR5      : aliased CH_GAMMA_WR_Register;
      --  Ledc ch%s gamma ram write address register.
      CH_GAMMA_WR_ADDR5 : aliased CH_GAMMA_WR_ADDR_Register;
      --  Ledc ch%s gamma ram read address register.
      CH_GAMMA_RD_ADDR5 : aliased CH_GAMMA_RD_ADDR_Register;
      --  Ledc ch%s gamma ram read data register.
      CH_GAMMA_RD_DATA5 : aliased CH_GAMMA_RD_DATA_Register;
      --  Ledc ch%s gamma config register.
      CH_GAMMA_CONF     : aliased CH_GAMMA_CONF_Registers;
      --  Ledc event task enable bit register0.
      EVT_TASK_EN0      : aliased EVT_TASK_EN0_Register;
      --  Ledc event task enable bit register1.
      EVT_TASK_EN1      : aliased EVT_TASK_EN1_Register;
      --  Ledc event task enable bit register2.
      EVT_TASK_EN2      : aliased EVT_TASK_EN2_Register;
      --  Ledc timer%s compare value register.
      TIMER_CMP         : aliased TIMER_CMP_Registers;
      --  Ledc timer%s count value capture register.
      TIMER_CNT_CAP     : aliased TIMER_CNT_CAP_Registers;
      --  Global ledc configuration register
      CONF              : aliased CONF_Register;
      --  Version control register
      DATE              : aliased DATE_Register;
   end record
     with Volatile;

   for LEDC_Peripheral use record
      CH_CONF00         at 16#0# range 0 .. 31;
      CH_HPOINT0        at 16#4# range 0 .. 31;
      CH_DUTY0          at 16#8# range 0 .. 31;
      CH_CONF10         at 16#C# range 0 .. 31;
      CH_DUTY_R0        at 16#10# range 0 .. 31;
      CH_CONF01         at 16#14# range 0 .. 31;
      CH_HPOINT1        at 16#18# range 0 .. 31;
      CH_DUTY1          at 16#1C# range 0 .. 31;
      CH_CONF11         at 16#20# range 0 .. 31;
      CH_DUTY_R1        at 16#24# range 0 .. 31;
      CH_CONF02         at 16#28# range 0 .. 31;
      CH_HPOINT2        at 16#2C# range 0 .. 31;
      CH_DUTY2          at 16#30# range 0 .. 31;
      CH_CONF12         at 16#34# range 0 .. 31;
      CH_DUTY_R2        at 16#38# range 0 .. 31;
      CH_CONF03         at 16#3C# range 0 .. 31;
      CH_HPOINT3        at 16#40# range 0 .. 31;
      CH_DUTY3          at 16#44# range 0 .. 31;
      CH_CONF13         at 16#48# range 0 .. 31;
      CH_DUTY_R3        at 16#4C# range 0 .. 31;
      CH_CONF04         at 16#50# range 0 .. 31;
      CH_HPOINT4        at 16#54# range 0 .. 31;
      CH_DUTY4          at 16#58# range 0 .. 31;
      CH_CONF14         at 16#5C# range 0 .. 31;
      CH_DUTY_R4        at 16#60# range 0 .. 31;
      CH_CONF05         at 16#64# range 0 .. 31;
      CH_HPOINT5        at 16#68# range 0 .. 31;
      CH_DUTY5          at 16#6C# range 0 .. 31;
      CH_CONF15         at 16#70# range 0 .. 31;
      CH_DUTY_R5        at 16#74# range 0 .. 31;
      TIMER_CONF0       at 16#A0# range 0 .. 31;
      TIMER_VALUE0      at 16#A4# range 0 .. 31;
      TIMER_CONF1       at 16#A8# range 0 .. 31;
      TIMER_VALUE1      at 16#AC# range 0 .. 31;
      TIMER_CONF2       at 16#B0# range 0 .. 31;
      TIMER_VALUE2      at 16#B4# range 0 .. 31;
      TIMER_CONF3       at 16#B8# range 0 .. 31;
      TIMER_VALUE3      at 16#BC# range 0 .. 31;
      INT_RAW           at 16#C0# range 0 .. 31;
      INT_ST            at 16#C4# range 0 .. 31;
      INT_ENA           at 16#C8# range 0 .. 31;
      INT_CLR           at 16#CC# range 0 .. 31;
      CH_GAMMA_WR0      at 16#100# range 0 .. 31;
      CH_GAMMA_WR_ADDR0 at 16#104# range 0 .. 31;
      CH_GAMMA_RD_ADDR0 at 16#108# range 0 .. 31;
      CH_GAMMA_RD_DATA0 at 16#10C# range 0 .. 31;
      CH_GAMMA_WR1      at 16#110# range 0 .. 31;
      CH_GAMMA_WR_ADDR1 at 16#114# range 0 .. 31;
      CH_GAMMA_RD_ADDR1 at 16#118# range 0 .. 31;
      CH_GAMMA_RD_DATA1 at 16#11C# range 0 .. 31;
      CH_GAMMA_WR2      at 16#120# range 0 .. 31;
      CH_GAMMA_WR_ADDR2 at 16#124# range 0 .. 31;
      CH_GAMMA_RD_ADDR2 at 16#128# range 0 .. 31;
      CH_GAMMA_RD_DATA2 at 16#12C# range 0 .. 31;
      CH_GAMMA_WR3      at 16#130# range 0 .. 31;
      CH_GAMMA_WR_ADDR3 at 16#134# range 0 .. 31;
      CH_GAMMA_RD_ADDR3 at 16#138# range 0 .. 31;
      CH_GAMMA_RD_DATA3 at 16#13C# range 0 .. 31;
      CH_GAMMA_WR4      at 16#140# range 0 .. 31;
      CH_GAMMA_WR_ADDR4 at 16#144# range 0 .. 31;
      CH_GAMMA_RD_ADDR4 at 16#148# range 0 .. 31;
      CH_GAMMA_RD_DATA4 at 16#14C# range 0 .. 31;
      CH_GAMMA_WR5      at 16#150# range 0 .. 31;
      CH_GAMMA_WR_ADDR5 at 16#154# range 0 .. 31;
      CH_GAMMA_RD_ADDR5 at 16#158# range 0 .. 31;
      CH_GAMMA_RD_DATA5 at 16#15C# range 0 .. 31;
      CH_GAMMA_CONF     at 16#180# range 0 .. 191;
      EVT_TASK_EN0      at 16#1A0# range 0 .. 31;
      EVT_TASK_EN1      at 16#1A4# range 0 .. 31;
      EVT_TASK_EN2      at 16#1A8# range 0 .. 31;
      TIMER_CMP         at 16#1B0# range 0 .. 127;
      TIMER_CNT_CAP     at 16#1C0# range 0 .. 127;
      CONF              at 16#1F0# range 0 .. 31;
      DATE              at 16#1FC# range 0 .. 31;
   end record;

   --  LED Control PWM (Pulse Width Modulation)
   LEDC_Periph : aliased LEDC_Peripheral
     with Import, Address => LEDC_Base;

end ESP32_C6_SVD.LEDC;
