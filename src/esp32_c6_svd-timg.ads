pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.TIMG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype T0CONFIG_DIVIDER_Field is HAL.UInt16;

   --  Timer %s configuration register
   type T0CONFIG_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  1: Use XTAL_CLK as the source clock of timer group. 0: Use APB_CLK as
      --  the source clock of timer group.
      USE_XTAL       : Boolean := False;
      --  When set, the alarm is enabled. This bit is automatically cleared
      --  once an alarm occurs.
      ALARM_EN       : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. When set, Timer %s 's clock divider counter will be
      --  reset.
      DIVCNT_RST     : Boolean := False;
      --  Timer %s clock (T%s_clk) prescaler value.
      DIVIDER        : T0CONFIG_DIVIDER_Field := 16#1#;
      --  When set, timer %s auto-reload at alarm is enabled.
      AUTORELOAD     : Boolean := True;
      --  When set, the timer %s time-base counter will increment every clock
      --  tick. When cleared, the timer %s time-base counter will decrement.
      INCREASE       : Boolean := True;
      --  When set, the timer %s time-base counter is enabled.
      EN             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0CONFIG_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      USE_XTAL       at 0 range 9 .. 9;
      ALARM_EN       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DIVCNT_RST     at 0 range 12 .. 12;
      DIVIDER        at 0 range 13 .. 28;
      AUTORELOAD     at 0 range 29 .. 29;
      INCREASE       at 0 range 30 .. 30;
      EN             at 0 range 31 .. 31;
   end record;

   subtype T0HI_HI_Field is HAL.UInt22;

   --  Timer %s current value, high 22 bits
   type T0HI_Register is record
      --  Read-only. After writing to TIMG_T%sUPDATE_REG, the high 22 bits of
      --  the time-base counter of timer %s can be read here.
      HI             : T0HI_HI_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0HI_Register use record
      HI             at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Write to copy current timer value to TIMGn_T%s_(LO/HI)_REG
   type T0UPDATE_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  After writing 0 or 1 to TIMG_T%sUPDATE_REG, the counter value is
      --  latched.
      UPDATE        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0UPDATE_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      UPDATE        at 0 range 31 .. 31;
   end record;

   subtype T0ALARMHI_ALARM_HI_Field is HAL.UInt22;

   --  Timer %s alarm value, high bits
   type T0ALARMHI_Register is record
      --  Timer %s alarm trigger time-base counter value, high 22 bits.
      ALARM_HI       : T0ALARMHI_ALARM_HI_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0ALARMHI_Register use record
      ALARM_HI       at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype T0LOADHI_LOAD_HI_Field is HAL.UInt22;

   --  Timer %s reload value, high 22 bits
   type T0LOADHI_Register is record
      --  High 22 bits of the value that a reload will load onto timer %s
      --  time-base counter.
      LOAD_HI        : T0LOADHI_LOAD_HI_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T0LOADHI_Register use record
      LOAD_HI        at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field is HAL.UInt3;
   subtype WDTCONFIG0_WDT_STG3_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG2_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG1_Field is HAL.UInt2;
   subtype WDTCONFIG0_WDT_STG0_Field is HAL.UInt2;

   --  Watchdog timer configuration register
   type WDTCONFIG0_Register is record
      --  unspecified
      Reserved_0_11        : HAL.UInt12 := 16#0#;
      --  WDT reset CPU enable.
      WDT_APPCPU_RESET_EN  : Boolean := False;
      --  WDT reset CPU enable.
      WDT_PROCPU_RESET_EN  : Boolean := False;
      --  When set, Flash boot protection is enabled.
      WDT_FLASHBOOT_MOD_EN : Boolean := True;
      --  System reset signal length selection. 0: 100 ns, 1: 200 ns, 2: 300
      --  ns, 3: 400 ns, 4: 500 ns, 5: 800 ns, 6: 1.6 us, 7: 3.2 us.
      WDT_SYS_RESET_LENGTH : WDTCONFIG0_WDT_SYS_RESET_LENGTH_Field := 16#1#;
      --  CPU reset signal length selection. 0: 100 ns, 1: 200 ns, 2: 300 ns,
      --  3: 400 ns, 4: 500 ns, 5: 800 ns, 6: 1.6 us, 7: 3.2 us.
      WDT_CPU_RESET_LENGTH : WDTCONFIG0_WDT_CPU_RESET_LENGTH_Field := 16#1#;
      --  choose WDT clock:0-apb_clk, 1-xtal_clk.
      WDT_USE_XTAL         : Boolean := False;
      --  Write-only. update the WDT configuration registers
      WDT_CONF_UPDATE_EN   : Boolean := False;
      --  Stage 3 configuration. 0: off, 1: interrupt, 2: reset CPU, 3: reset
      --  system.
      WDT_STG3             : WDTCONFIG0_WDT_STG3_Field := 16#0#;
      --  Stage 2 configuration. 0: off, 1: interrupt, 2: reset CPU, 3: reset
      --  system.
      WDT_STG2             : WDTCONFIG0_WDT_STG2_Field := 16#0#;
      --  Stage 1 configuration. 0: off, 1: interrupt, 2: reset CPU, 3: reset
      --  system.
      WDT_STG1             : WDTCONFIG0_WDT_STG1_Field := 16#0#;
      --  Stage 0 configuration. 0: off, 1: interrupt, 2: reset CPU, 3: reset
      --  system.
      WDT_STG0             : WDTCONFIG0_WDT_STG0_Field := 16#0#;
      --  When set, MWDT is enabled.
      WDT_EN               : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG0_Register use record
      Reserved_0_11        at 0 range 0 .. 11;
      WDT_APPCPU_RESET_EN  at 0 range 12 .. 12;
      WDT_PROCPU_RESET_EN  at 0 range 13 .. 13;
      WDT_FLASHBOOT_MOD_EN at 0 range 14 .. 14;
      WDT_SYS_RESET_LENGTH at 0 range 15 .. 17;
      WDT_CPU_RESET_LENGTH at 0 range 18 .. 20;
      WDT_USE_XTAL         at 0 range 21 .. 21;
      WDT_CONF_UPDATE_EN   at 0 range 22 .. 22;
      WDT_STG3             at 0 range 23 .. 24;
      WDT_STG2             at 0 range 25 .. 26;
      WDT_STG1             at 0 range 27 .. 28;
      WDT_STG0             at 0 range 29 .. 30;
      WDT_EN               at 0 range 31 .. 31;
   end record;

   subtype WDTCONFIG1_WDT_CLK_PRESCALE_Field is HAL.UInt16;

   --  Watchdog timer prescaler register
   type WDTCONFIG1_Register is record
      --  Write-only. When set, WDT 's clock divider counter will be reset.
      WDT_DIVCNT_RST   : Boolean := False;
      --  unspecified
      Reserved_1_15    : HAL.UInt15 := 16#0#;
      --  MWDT clock prescaler value. MWDT clock period = 12.5 ns *
      --  TIMG_WDT_CLK_PRESCALE.
      WDT_CLK_PRESCALE : WDTCONFIG1_WDT_CLK_PRESCALE_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG1_Register use record
      WDT_DIVCNT_RST   at 0 range 0 .. 0;
      Reserved_1_15    at 0 range 1 .. 15;
      WDT_CLK_PRESCALE at 0 range 16 .. 31;
   end record;

   subtype RTCCALICFG_RTC_CALI_CLK_SEL_Field is HAL.UInt2;
   subtype RTCCALICFG_RTC_CALI_MAX_Field is HAL.UInt15;

   --  RTC calibration configure register
   type RTCCALICFG_Register is record
      --  unspecified
      Reserved_0_11          : HAL.UInt12 := 16#0#;
      --  0: one-shot frequency calculation,1: periodic frequency calculation,
      RTC_CALI_START_CYCLING : Boolean := True;
      --  0:rtc slow clock. 1:clk_8m, 2:xtal_32k.
      RTC_CALI_CLK_SEL       : RTCCALICFG_RTC_CALI_CLK_SEL_Field := 16#0#;
      --  Read-only. indicate one-shot frequency calculation is done.
      RTC_CALI_RDY           : Boolean := False;
      --  Configure the time to calculate RTC slow clock's frequency.
      RTC_CALI_MAX           : RTCCALICFG_RTC_CALI_MAX_Field := 16#1#;
      --  Set this bit to start one-shot frequency calculation.
      RTC_CALI_START         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG_Register use record
      Reserved_0_11          at 0 range 0 .. 11;
      RTC_CALI_START_CYCLING at 0 range 12 .. 12;
      RTC_CALI_CLK_SEL       at 0 range 13 .. 14;
      RTC_CALI_RDY           at 0 range 15 .. 15;
      RTC_CALI_MAX           at 0 range 16 .. 30;
      RTC_CALI_START         at 0 range 31 .. 31;
   end record;

   subtype RTCCALICFG1_RTC_CALI_VALUE_Field is HAL.UInt25;

   --  RTC calibration configure1 register
   type RTCCALICFG1_Register is record
      --  Read-only. indicate periodic frequency calculation is done.
      RTC_CALI_CYCLING_DATA_VLD : Boolean;
      --  unspecified
      Reserved_1_6              : HAL.UInt6;
      --  Read-only. When one-shot or periodic frequency calculation is done,
      --  read this value to calculate RTC slow clock's frequency.
      RTC_CALI_VALUE            : RTCCALICFG1_RTC_CALI_VALUE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG1_Register use record
      RTC_CALI_CYCLING_DATA_VLD at 0 range 0 .. 0;
      Reserved_1_6              at 0 range 1 .. 6;
      RTC_CALI_VALUE            at 0 range 7 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENA_TIMERS_Register is record
      --  The interrupt enable bit for the TIMG_T0_INT interrupt.
      T0_INT_ENA    : Boolean := False;
      --  The interrupt enable bit for the TIMG_WDT_INT interrupt.
      WDT_INT_ENA   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_TIMERS_Register use record
      T0_INT_ENA    at 0 range 0 .. 0;
      WDT_INT_ENA   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Raw interrupt status
   type INT_RAW_TIMERS_Register is record
      --  Read-only. The raw interrupt status bit for the TIMG_T0_INT
      --  interrupt.
      T0_INT_RAW    : Boolean;
      --  Read-only. The raw interrupt status bit for the TIMG_WDT_INT
      --  interrupt.
      WDT_INT_RAW   : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_TIMERS_Register use record
      T0_INT_RAW    at 0 range 0 .. 0;
      WDT_INT_RAW   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Masked interrupt status
   type INT_ST_TIMERS_Register is record
      --  Read-only. The masked interrupt status bit for the TIMG_T0_INT
      --  interrupt.
      T0_INT_ST     : Boolean;
      --  Read-only. The masked interrupt status bit for the TIMG_WDT_INT
      --  interrupt.
      WDT_INT_ST    : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_TIMERS_Register use record
      T0_INT_ST     at 0 range 0 .. 0;
      WDT_INT_ST    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt clear bits
   type INT_CLR_TIMERS_Register is record
      --  Write-only. Set this bit to clear the TIMG_T0_INT interrupt.
      T0_INT_CLR    : Boolean := False;
      --  Write-only. Set this bit to clear the TIMG_WDT_INT interrupt.
      WDT_INT_CLR   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_TIMERS_Register use record
      T0_INT_CLR    at 0 range 0 .. 0;
      WDT_INT_CLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RTCCALICFG2_RTC_CALI_TIMEOUT_RST_CNT_Field is HAL.UInt4;
   subtype RTCCALICFG2_RTC_CALI_TIMEOUT_THRES_Field is HAL.UInt25;

   --  Timer group calibration register
   type RTCCALICFG2_Register is record
      --  Read-only. RTC calibration timeout indicator
      RTC_CALI_TIMEOUT         : Boolean := False;
      --  unspecified
      Reserved_1_2             : HAL.UInt2 := 16#0#;
      --  Cycles that release calibration timeout reset
      RTC_CALI_TIMEOUT_RST_CNT : RTCCALICFG2_RTC_CALI_TIMEOUT_RST_CNT_Field :=
                                  16#3#;
      --  Threshold value for the RTC calibration timer. If the calibration
      --  timer's value exceeds this threshold, a timeout is triggered.
      RTC_CALI_TIMEOUT_THRES   : RTCCALICFG2_RTC_CALI_TIMEOUT_THRES_Field :=
                                  16#1FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTCCALICFG2_Register use record
      RTC_CALI_TIMEOUT         at 0 range 0 .. 0;
      Reserved_1_2             at 0 range 1 .. 2;
      RTC_CALI_TIMEOUT_RST_CNT at 0 range 3 .. 6;
      RTC_CALI_TIMEOUT_THRES   at 0 range 7 .. 31;
   end record;

   subtype NTIMERS_DATE_NTIMGS_DATE_Field is HAL.UInt28;

   --  Timer version control register
   type NTIMERS_DATE_Register is record
      --  Timer version control register
      NTIMGS_DATE    : NTIMERS_DATE_NTIMGS_DATE_Field := 16#2206072#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NTIMERS_DATE_Register use record
      NTIMGS_DATE    at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Timer group clock gate register
   type REGCLK_Register is record
      --  unspecified
      Reserved_0_27       : HAL.UInt28 := 16#0#;
      --  enable timer's etm task and event
      ETM_EN              : Boolean := True;
      --  enable WDT's clock
      WDT_CLK_IS_ACTIVE   : Boolean := True;
      --  enable Timer 30's clock
      TIMER_CLK_IS_ACTIVE : Boolean := True;
      --  Register clock gate signal. 1: Registers can be read and written to
      --  by software. 0: Registers can not be read or written to by software.
      CLK_EN              : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGCLK_Register use record
      Reserved_0_27       at 0 range 0 .. 27;
      ETM_EN              at 0 range 28 .. 28;
      WDT_CLK_IS_ACTIVE   at 0 range 29 .. 29;
      TIMER_CLK_IS_ACTIVE at 0 range 30 .. 30;
      CLK_EN              at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Timer Group 0
   type TIMG_Peripheral is record
      --  Timer %s configuration register
      T0CONFIG       : aliased T0CONFIG_Register;
      --  Timer %s current value, low 32 bits
      T0LO           : aliased HAL.UInt32;
      --  Timer %s current value, high 22 bits
      T0HI           : aliased T0HI_Register;
      --  Write to copy current timer value to TIMGn_T%s_(LO/HI)_REG
      T0UPDATE       : aliased T0UPDATE_Register;
      --  Timer %s alarm value, low 32 bits
      T0ALARMLO      : aliased HAL.UInt32;
      --  Timer %s alarm value, high bits
      T0ALARMHI      : aliased T0ALARMHI_Register;
      --  Timer %s reload value, low 32 bits
      T0LOADLO       : aliased HAL.UInt32;
      --  Timer %s reload value, high 22 bits
      T0LOADHI       : aliased T0LOADHI_Register;
      --  Write to reload timer from TIMG_T%s_(LOADLOLOADHI)_REG
      T0LOAD         : aliased HAL.UInt32;
      --  Watchdog timer configuration register
      WDTCONFIG0     : aliased WDTCONFIG0_Register;
      --  Watchdog timer prescaler register
      WDTCONFIG1     : aliased WDTCONFIG1_Register;
      --  Watchdog timer stage 0 timeout value
      WDTCONFIG2     : aliased HAL.UInt32;
      --  Watchdog timer stage 1 timeout value
      WDTCONFIG3     : aliased HAL.UInt32;
      --  Watchdog timer stage 2 timeout value
      WDTCONFIG4     : aliased HAL.UInt32;
      --  Watchdog timer stage 3 timeout value
      WDTCONFIG5     : aliased HAL.UInt32;
      --  Write to feed the watchdog timer
      WDTFEED        : aliased HAL.UInt32;
      --  Watchdog write protect register
      WDTWPROTECT    : aliased HAL.UInt32;
      --  RTC calibration configure register
      RTCCALICFG     : aliased RTCCALICFG_Register;
      --  RTC calibration configure1 register
      RTCCALICFG1    : aliased RTCCALICFG1_Register;
      --  Interrupt enable bits
      INT_ENA_TIMERS : aliased INT_ENA_TIMERS_Register;
      --  Raw interrupt status
      INT_RAW_TIMERS : aliased INT_RAW_TIMERS_Register;
      --  Masked interrupt status
      INT_ST_TIMERS  : aliased INT_ST_TIMERS_Register;
      --  Interrupt clear bits
      INT_CLR_TIMERS : aliased INT_CLR_TIMERS_Register;
      --  Timer group calibration register
      RTCCALICFG2    : aliased RTCCALICFG2_Register;
      --  Timer version control register
      NTIMERS_DATE   : aliased NTIMERS_DATE_Register;
      --  Timer group clock gate register
      REGCLK         : aliased REGCLK_Register;
   end record
     with Volatile;

   for TIMG_Peripheral use record
      T0CONFIG       at 16#0# range 0 .. 31;
      T0LO           at 16#4# range 0 .. 31;
      T0HI           at 16#8# range 0 .. 31;
      T0UPDATE       at 16#C# range 0 .. 31;
      T0ALARMLO      at 16#10# range 0 .. 31;
      T0ALARMHI      at 16#14# range 0 .. 31;
      T0LOADLO       at 16#18# range 0 .. 31;
      T0LOADHI       at 16#1C# range 0 .. 31;
      T0LOAD         at 16#20# range 0 .. 31;
      WDTCONFIG0     at 16#48# range 0 .. 31;
      WDTCONFIG1     at 16#4C# range 0 .. 31;
      WDTCONFIG2     at 16#50# range 0 .. 31;
      WDTCONFIG3     at 16#54# range 0 .. 31;
      WDTCONFIG4     at 16#58# range 0 .. 31;
      WDTCONFIG5     at 16#5C# range 0 .. 31;
      WDTFEED        at 16#60# range 0 .. 31;
      WDTWPROTECT    at 16#64# range 0 .. 31;
      RTCCALICFG     at 16#68# range 0 .. 31;
      RTCCALICFG1    at 16#6C# range 0 .. 31;
      INT_ENA_TIMERS at 16#70# range 0 .. 31;
      INT_RAW_TIMERS at 16#74# range 0 .. 31;
      INT_ST_TIMERS  at 16#78# range 0 .. 31;
      INT_CLR_TIMERS at 16#7C# range 0 .. 31;
      RTCCALICFG2    at 16#80# range 0 .. 31;
      NTIMERS_DATE   at 16#F8# range 0 .. 31;
      REGCLK         at 16#FC# range 0 .. 31;
   end record;

   --  Timer Group 0
   TIMG0_Periph : aliased TIMG_Peripheral
     with Import, Address => TIMG0_Base;

   --  Timer Group 1
   TIMG1_Periph : aliased TIMG_Peripheral
     with Import, Address => TIMG1_Base;

end ESP32_C6_SVD.TIMG;
