pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.PCR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  UART0 configuration register
   type UART0_CONF_Register is record
      --  Set 1 to enable uart0 apb clock
      UART0_CLK_EN  : Boolean := True;
      --  Set 0 to reset uart0 module
      UART0_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CONF_Register use record
      UART0_CLK_EN  at 0 range 0 .. 0;
      UART0_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype UART0_SCLK_CONF_UART0_SCLK_DIV_A_Field is HAL.UInt6;
   subtype UART0_SCLK_CONF_UART0_SCLK_DIV_B_Field is HAL.UInt6;
   subtype UART0_SCLK_CONF_UART0_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype UART0_SCLK_CONF_UART0_SCLK_SEL_Field is HAL.UInt2;

   --  UART0_SCLK configuration register
   type UART0_SCLK_CONF_Register is record
      --  The denominator of the frequency divider factor of the uart0 function
      --  clock.
      UART0_SCLK_DIV_A   : UART0_SCLK_CONF_UART0_SCLK_DIV_A_Field := 16#0#;
      --  The numerator of the frequency divider factor of the uart0 function
      --  clock.
      UART0_SCLK_DIV_B   : UART0_SCLK_CONF_UART0_SCLK_DIV_B_Field := 16#0#;
      --  The integral part of the frequency divider factor of the uart0
      --  function clock.
      UART0_SCLK_DIV_NUM : UART0_SCLK_CONF_UART0_SCLK_DIV_NUM_Field := 16#0#;
      --  set this field to select clock-source. 0: do not select anyone clock,
      --  1: 80MHz, 2: FOSC, 3(default): XTAL.
      UART0_SCLK_SEL     : UART0_SCLK_CONF_UART0_SCLK_SEL_Field := 16#3#;
      --  Set 1 to enable uart0 function clock
      UART0_SCLK_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31     : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_SCLK_CONF_Register use record
      UART0_SCLK_DIV_A   at 0 range 0 .. 5;
      UART0_SCLK_DIV_B   at 0 range 6 .. 11;
      UART0_SCLK_DIV_NUM at 0 range 12 .. 19;
      UART0_SCLK_SEL     at 0 range 20 .. 21;
      UART0_SCLK_EN      at 0 range 22 .. 22;
      Reserved_23_31     at 0 range 23 .. 31;
   end record;

   --  UART0 power control register
   type UART0_PD_CTRL_Register is record
      --  unspecified
      Reserved_0_0       : HAL.Bit := 16#0#;
      --  Set this bit to force power down UART0 memory.
      UART0_MEM_FORCE_PU : Boolean := True;
      --  Set this bit to force power up UART0 memory.
      UART0_MEM_FORCE_PD : Boolean := False;
      --  unspecified
      Reserved_3_31      : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PD_CTRL_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      UART0_MEM_FORCE_PU at 0 range 1 .. 1;
      UART0_MEM_FORCE_PD at 0 range 2 .. 2;
      Reserved_3_31      at 0 range 3 .. 31;
   end record;

   --  UART1 configuration register
   type UART1_CONF_Register is record
      --  Set 1 to enable uart1 apb clock
      UART1_CLK_EN  : Boolean := True;
      --  Set 0 to reset uart1 module
      UART1_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART1_CONF_Register use record
      UART1_CLK_EN  at 0 range 0 .. 0;
      UART1_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype UART1_SCLK_CONF_UART1_SCLK_DIV_A_Field is HAL.UInt6;
   subtype UART1_SCLK_CONF_UART1_SCLK_DIV_B_Field is HAL.UInt6;
   subtype UART1_SCLK_CONF_UART1_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype UART1_SCLK_CONF_UART1_SCLK_SEL_Field is HAL.UInt2;

   --  UART1_SCLK configuration register
   type UART1_SCLK_CONF_Register is record
      --  The denominator of the frequency divider factor of the uart1 function
      --  clock.
      UART1_SCLK_DIV_A   : UART1_SCLK_CONF_UART1_SCLK_DIV_A_Field := 16#0#;
      --  The numerator of the frequency divider factor of the uart1 function
      --  clock.
      UART1_SCLK_DIV_B   : UART1_SCLK_CONF_UART1_SCLK_DIV_B_Field := 16#0#;
      --  The integral part of the frequency divider factor of the uart1
      --  function clock.
      UART1_SCLK_DIV_NUM : UART1_SCLK_CONF_UART1_SCLK_DIV_NUM_Field := 16#0#;
      --  set this field to select clock-source. 0: do not select anyone clock,
      --  1: 80MHz, 2: FOSC, 3(default): XTAL.
      UART1_SCLK_SEL     : UART1_SCLK_CONF_UART1_SCLK_SEL_Field := 16#3#;
      --  Set 1 to enable uart0 function clock
      UART1_SCLK_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31     : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART1_SCLK_CONF_Register use record
      UART1_SCLK_DIV_A   at 0 range 0 .. 5;
      UART1_SCLK_DIV_B   at 0 range 6 .. 11;
      UART1_SCLK_DIV_NUM at 0 range 12 .. 19;
      UART1_SCLK_SEL     at 0 range 20 .. 21;
      UART1_SCLK_EN      at 0 range 22 .. 22;
      Reserved_23_31     at 0 range 23 .. 31;
   end record;

   --  UART1 power control register
   type UART1_PD_CTRL_Register is record
      --  unspecified
      Reserved_0_0       : HAL.Bit := 16#0#;
      --  Set this bit to force power down UART1 memory.
      UART1_MEM_FORCE_PU : Boolean := True;
      --  Set this bit to force power up UART1 memory.
      UART1_MEM_FORCE_PD : Boolean := False;
      --  unspecified
      Reserved_3_31      : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART1_PD_CTRL_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      UART1_MEM_FORCE_PU at 0 range 1 .. 1;
      UART1_MEM_FORCE_PD at 0 range 2 .. 2;
      Reserved_3_31      at 0 range 3 .. 31;
   end record;

   --  MSPI configuration register
   type MSPI_CONF_Register is record
      --  Set 1 to enable mspi clock, include mspi pll clock
      MSPI_CLK_EN     : Boolean := True;
      --  Set 0 to reset mspi module
      MSPI_RST_EN     : Boolean := False;
      --  Set 1 to enable mspi pll clock
      MSPI_PLL_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_3_31   : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSPI_CONF_Register use record
      MSPI_CLK_EN     at 0 range 0 .. 0;
      MSPI_RST_EN     at 0 range 1 .. 1;
      MSPI_PLL_CLK_EN at 0 range 2 .. 2;
      Reserved_3_31   at 0 range 3 .. 31;
   end record;

   subtype MSPI_CLK_CONF_MSPI_FAST_LS_DIV_NUM_Field is HAL.UInt8;
   subtype MSPI_CLK_CONF_MSPI_FAST_HS_DIV_NUM_Field is HAL.UInt8;

   --  MSPI_CLK configuration register
   type MSPI_CLK_CONF_Register is record
      --  Set as one within (0,1,2) to generate div1(default)/div2/div4 of
      --  low-speed clock-source to drive clk_mspi_fast. Only avaiable whe the
      --  clck-source is a low-speed clock-source such as XTAL/FOSC.
      MSPI_FAST_LS_DIV_NUM : MSPI_CLK_CONF_MSPI_FAST_LS_DIV_NUM_Field :=
                              16#0#;
      --  Set as one within (3,4,5) to generate div4(default)/div5/div6 of
      --  high-speed clock-source to drive clk_mspi_fast. Only avaiable whe the
      --  clck-source is a high-speed clock-source such as SPLL.
      MSPI_FAST_HS_DIV_NUM : MSPI_CLK_CONF_MSPI_FAST_HS_DIV_NUM_Field :=
                              16#3#;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSPI_CLK_CONF_Register use record
      MSPI_FAST_LS_DIV_NUM at 0 range 0 .. 7;
      MSPI_FAST_HS_DIV_NUM at 0 range 8 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   --  I2C configuration register
   type I2C0_CONF_Register is record
      --  Set 1 to enable i2c apb clock
      I2C0_CLK_EN   : Boolean := True;
      --  Set 0 to reset i2c module
      I2C0_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CONF_Register use record
      I2C0_CLK_EN   at 0 range 0 .. 0;
      I2C0_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype I2C_SCLK_CONF_I2C_SCLK_DIV_A_Field is HAL.UInt6;
   subtype I2C_SCLK_CONF_I2C_SCLK_DIV_B_Field is HAL.UInt6;
   subtype I2C_SCLK_CONF_I2C_SCLK_DIV_NUM_Field is HAL.UInt8;

   --  I2C_SCLK configuration register
   type I2C_SCLK_CONF_Register is record
      --  The denominator of the frequency divider factor of the i2c function
      --  clock.
      I2C_SCLK_DIV_A   : I2C_SCLK_CONF_I2C_SCLK_DIV_A_Field := 16#0#;
      --  The numerator of the frequency divider factor of the i2c function
      --  clock.
      I2C_SCLK_DIV_B   : I2C_SCLK_CONF_I2C_SCLK_DIV_B_Field := 16#0#;
      --  The integral part of the frequency divider factor of the i2c function
      --  clock.
      I2C_SCLK_DIV_NUM : I2C_SCLK_CONF_I2C_SCLK_DIV_NUM_Field := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: FOSC.
      I2C_SCLK_SEL     : Boolean := False;
      --  unspecified
      Reserved_21_21   : HAL.Bit := 16#0#;
      --  Set 1 to enable i2c function clock
      I2C_SCLK_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31   : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C_SCLK_CONF_Register use record
      I2C_SCLK_DIV_A   at 0 range 0 .. 5;
      I2C_SCLK_DIV_B   at 0 range 6 .. 11;
      I2C_SCLK_DIV_NUM at 0 range 12 .. 19;
      I2C_SCLK_SEL     at 0 range 20 .. 20;
      Reserved_21_21   at 0 range 21 .. 21;
      I2C_SCLK_EN      at 0 range 22 .. 22;
      Reserved_23_31   at 0 range 23 .. 31;
   end record;

   --  UHCI configuration register
   type UHCI_CONF_Register is record
      --  Set 1 to enable uhci clock
      UHCI_CLK_EN   : Boolean := True;
      --  Set 0 to reset uhci module
      UHCI_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UHCI_CONF_Register use record
      UHCI_CLK_EN   at 0 range 0 .. 0;
      UHCI_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RMT configuration register
   type RMT_CONF_Register is record
      --  Set 1 to enable rmt apb clock
      RMT_CLK_EN    : Boolean := True;
      --  Set 0 to reset rmt module
      RMT_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMT_CONF_Register use record
      RMT_CLK_EN    at 0 range 0 .. 0;
      RMT_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RMT_SCLK_CONF_SCLK_DIV_A_Field is HAL.UInt6;
   subtype RMT_SCLK_CONF_SCLK_DIV_B_Field is HAL.UInt6;
   subtype RMT_SCLK_CONF_SCLK_DIV_NUM_Field is HAL.UInt8;
   subtype RMT_SCLK_CONF_SCLK_SEL_Field is HAL.UInt2;

   --  RMT_SCLK configuration register
   type RMT_SCLK_CONF_Register is record
      --  The denominator of the frequency divider factor of the rmt function
      --  clock.
      SCLK_DIV_A     : RMT_SCLK_CONF_SCLK_DIV_A_Field := 16#0#;
      --  The numerator of the frequency divider factor of the rmt function
      --  clock.
      SCLK_DIV_B     : RMT_SCLK_CONF_SCLK_DIV_B_Field := 16#0#;
      --  The integral part of the frequency divider factor of the rmt function
      --  clock.
      SCLK_DIV_NUM   : RMT_SCLK_CONF_SCLK_DIV_NUM_Field := 16#1#;
      --  set this field to select clock-source. 0: do not select anyone clock,
      --  1(default): 80MHz, 2: FOSC, 3: XTAL.
      SCLK_SEL       : RMT_SCLK_CONF_SCLK_SEL_Field := 16#1#;
      --  Set 1 to enable rmt function clock
      SCLK_EN        : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RMT_SCLK_CONF_Register use record
      SCLK_DIV_A     at 0 range 0 .. 5;
      SCLK_DIV_B     at 0 range 6 .. 11;
      SCLK_DIV_NUM   at 0 range 12 .. 19;
      SCLK_SEL       at 0 range 20 .. 21;
      SCLK_EN        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  LEDC configuration register
   type LEDC_CONF_Register is record
      --  Set 1 to enable ledc apb clock
      LEDC_CLK_EN   : Boolean := True;
      --  Set 0 to reset ledc module
      LEDC_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEDC_CONF_Register use record
      LEDC_CLK_EN   at 0 range 0 .. 0;
      LEDC_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype LEDC_SCLK_CONF_LEDC_SCLK_SEL_Field is HAL.UInt2;

   --  LEDC_SCLK configuration register
   type LEDC_SCLK_CONF_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): do not select
      --  anyone clock, 1: 80MHz, 2: FOSC, 3: XTAL.
      LEDC_SCLK_SEL  : LEDC_SCLK_CONF_LEDC_SCLK_SEL_Field := 16#0#;
      --  Set 1 to enable ledc function clock
      LEDC_SCLK_EN   : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEDC_SCLK_CONF_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      LEDC_SCLK_SEL  at 0 range 20 .. 21;
      LEDC_SCLK_EN   at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  TIMERGROUP0 configuration register
   type TIMERGROUP0_CONF_Register is record
      --  Set 1 to enable timer_group0 apb clock
      TG0_CLK_EN    : Boolean := True;
      --  Set 0 to reset timer_group0 module
      TG0_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP0_CONF_Register use record
      TG0_CLK_EN    at 0 range 0 .. 0;
      TG0_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TIMERGROUP0_TIMER_CLK_CONF_TG0_TIMER_CLK_SEL_Field is HAL.UInt2;

   --  TIMERGROUP0_TIMER_CLK configuration register
   type TIMERGROUP0_TIMER_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19     : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 80MHz, 2:
      --  FOSC, 3: reserved.
      TG0_TIMER_CLK_SEL : TIMERGROUP0_TIMER_CLK_CONF_TG0_TIMER_CLK_SEL_Field :=
                           16#0#;
      --  Set 1 to enable timer_group0 timer clock
      TG0_TIMER_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31    : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP0_TIMER_CLK_CONF_Register use record
      Reserved_0_19     at 0 range 0 .. 19;
      TG0_TIMER_CLK_SEL at 0 range 20 .. 21;
      TG0_TIMER_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   subtype TIMERGROUP0_WDT_CLK_CONF_TG0_WDT_CLK_SEL_Field is HAL.UInt2;

   --  TIMERGROUP0_WDT_CLK configuration register
   type TIMERGROUP0_WDT_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19   : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 80MHz, 2:
      --  FOSC, 3: reserved.
      TG0_WDT_CLK_SEL : TIMERGROUP0_WDT_CLK_CONF_TG0_WDT_CLK_SEL_Field :=
                         16#0#;
      --  Set 1 to enable timer_group0 wdt clock
      TG0_WDT_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP0_WDT_CLK_CONF_Register use record
      Reserved_0_19   at 0 range 0 .. 19;
      TG0_WDT_CLK_SEL at 0 range 20 .. 21;
      TG0_WDT_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   --  TIMERGROUP1 configuration register
   type TIMERGROUP1_CONF_Register is record
      --  Set 1 to enable timer_group1 apb clock
      TG1_CLK_EN    : Boolean := True;
      --  Set 0 to reset timer_group1 module
      TG1_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP1_CONF_Register use record
      TG1_CLK_EN    at 0 range 0 .. 0;
      TG1_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TIMERGROUP1_TIMER_CLK_CONF_TG1_TIMER_CLK_SEL_Field is HAL.UInt2;

   --  TIMERGROUP1_TIMER_CLK configuration register
   type TIMERGROUP1_TIMER_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19     : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 80MHz, 2:
      --  FOSC, 3: reserved.
      TG1_TIMER_CLK_SEL : TIMERGROUP1_TIMER_CLK_CONF_TG1_TIMER_CLK_SEL_Field :=
                           16#0#;
      --  Set 1 to enable timer_group1 timer clock
      TG1_TIMER_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31    : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP1_TIMER_CLK_CONF_Register use record
      Reserved_0_19     at 0 range 0 .. 19;
      TG1_TIMER_CLK_SEL at 0 range 20 .. 21;
      TG1_TIMER_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   subtype TIMERGROUP1_WDT_CLK_CONF_TG1_WDT_CLK_SEL_Field is HAL.UInt2;

   --  TIMERGROUP1_WDT_CLK configuration register
   type TIMERGROUP1_WDT_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19   : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 80MHz, 2:
      --  FOSC, 3: reserved.
      TG1_WDT_CLK_SEL : TIMERGROUP1_WDT_CLK_CONF_TG1_WDT_CLK_SEL_Field :=
                         16#0#;
      --  Set 1 to enable timer_group0 wdt clock
      TG1_WDT_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31  : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMERGROUP1_WDT_CLK_CONF_Register use record
      Reserved_0_19   at 0 range 0 .. 19;
      TG1_WDT_CLK_SEL at 0 range 20 .. 21;
      TG1_WDT_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31  at 0 range 23 .. 31;
   end record;

   --  SYSTIMER configuration register
   type SYSTIMER_CONF_Register is record
      --  Set 1 to enable systimer apb clock
      SYSTIMER_CLK_EN : Boolean := True;
      --  Set 0 to reset systimer module
      SYSTIMER_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31   : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTIMER_CONF_Register use record
      SYSTIMER_CLK_EN at 0 range 0 .. 0;
      SYSTIMER_RST_EN at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  SYSTIMER_FUNC_CLK configuration register
   type SYSTIMER_FUNC_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19         : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: FOSC.
      SYSTIMER_FUNC_CLK_SEL : Boolean := False;
      --  unspecified
      Reserved_21_21        : HAL.Bit := 16#0#;
      --  Set 1 to enable systimer function clock
      SYSTIMER_FUNC_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31        : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTIMER_FUNC_CLK_CONF_Register use record
      Reserved_0_19         at 0 range 0 .. 19;
      SYSTIMER_FUNC_CLK_SEL at 0 range 20 .. 20;
      Reserved_21_21        at 0 range 21 .. 21;
      SYSTIMER_FUNC_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   --  TWAI0 configuration register
   type TWAI0_CONF_Register is record
      --  Set 1 to enable twai0 apb clock
      TWAI0_CLK_EN  : Boolean := True;
      --  Set 0 to reset twai0 module
      TWAI0_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWAI0_CONF_Register use record
      TWAI0_CLK_EN  at 0 range 0 .. 0;
      TWAI0_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TWAI0_FUNC_CLK configuration register
   type TWAI0_FUNC_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19      : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: FOSC.
      TWAI0_FUNC_CLK_SEL : Boolean := False;
      --  unspecified
      Reserved_21_21     : HAL.Bit := 16#0#;
      --  Set 1 to enable twai0 function clock
      TWAI0_FUNC_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31     : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWAI0_FUNC_CLK_CONF_Register use record
      Reserved_0_19      at 0 range 0 .. 19;
      TWAI0_FUNC_CLK_SEL at 0 range 20 .. 20;
      Reserved_21_21     at 0 range 21 .. 21;
      TWAI0_FUNC_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31     at 0 range 23 .. 31;
   end record;

   --  TWAI1 configuration register
   type TWAI1_CONF_Register is record
      --  Set 1 to enable twai1 apb clock
      TWAI1_CLK_EN  : Boolean := True;
      --  Set 0 to reset twai1 module
      TWAI1_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWAI1_CONF_Register use record
      TWAI1_CLK_EN  at 0 range 0 .. 0;
      TWAI1_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TWAI1_FUNC_CLK configuration register
   type TWAI1_FUNC_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19      : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: FOSC.
      TWAI1_FUNC_CLK_SEL : Boolean := False;
      --  unspecified
      Reserved_21_21     : HAL.Bit := 16#0#;
      --  Set 1 to enable twai1 function clock
      TWAI1_FUNC_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31     : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWAI1_FUNC_CLK_CONF_Register use record
      Reserved_0_19      at 0 range 0 .. 19;
      TWAI1_FUNC_CLK_SEL at 0 range 20 .. 20;
      Reserved_21_21     at 0 range 21 .. 21;
      TWAI1_FUNC_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31     at 0 range 23 .. 31;
   end record;

   --  I2S configuration register
   type I2S_CONF_Register is record
      --  Set 1 to enable i2s apb clock
      I2S_CLK_EN    : Boolean := True;
      --  Set 0 to reset i2s module
      I2S_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_CONF_Register use record
      I2S_CLK_EN    at 0 range 0 .. 0;
      I2S_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype I2S_TX_CLKM_CONF_I2S_TX_CLKM_DIV_NUM_Field is HAL.UInt8;
   subtype I2S_TX_CLKM_CONF_I2S_TX_CLKM_SEL_Field is HAL.UInt2;

   --  I2S_TX_CLKM configuration register
   type I2S_TX_CLKM_CONF_Register is record
      --  unspecified
      Reserved_0_11       : HAL.UInt12 := 16#0#;
      --  Integral I2S TX clock divider value. f_I2S_CLK = f_I2S_CLK_S/(N+b/a).
      --  There will be (a-b) * n-div and b * (n+1)-div. So the average
      --  combination will be: for b <= a/2, z * [x * n-div + (n+1)-div] + y *
      --  n-div. For b > a/2, z * [n-div + x * (n+1)-div] + y * (n+1)-div.
      I2S_TX_CLKM_DIV_NUM : I2S_TX_CLKM_CONF_I2S_TX_CLKM_DIV_NUM_Field :=
                             16#2#;
      --  Select I2S Tx module source clock. 0: XTAL clock. 1: APLL. 2: CLK160.
      --  3: I2S_MCLK_in.
      I2S_TX_CLKM_SEL     : I2S_TX_CLKM_CONF_I2S_TX_CLKM_SEL_Field := 16#0#;
      --  Set 1 to enable i2s_tx function clock
      I2S_TX_CLKM_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31      : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_TX_CLKM_CONF_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      I2S_TX_CLKM_DIV_NUM at 0 range 12 .. 19;
      I2S_TX_CLKM_SEL     at 0 range 20 .. 21;
      I2S_TX_CLKM_EN      at 0 range 22 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   subtype I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_Z_Field is HAL.UInt9;
   subtype I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_Y_Field is HAL.UInt9;
   subtype I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_X_Field is HAL.UInt9;

   --  I2S_TX_CLKM_DIV configuration register
   type I2S_TX_CLKM_DIV_CONF_Register is record
      --  For b <= a/2, the value of I2S_TX_CLKM_DIV_Z is b. For b > a/2, the
      --  value of I2S_TX_CLKM_DIV_Z is (a-b).
      I2S_TX_CLKM_DIV_Z   : I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_Z_Field :=
                             16#0#;
      --  For b <= a/2, the value of I2S_TX_CLKM_DIV_Y is (a%b) . For b > a/2,
      --  the value of I2S_TX_CLKM_DIV_Y is (a%(a-b)).
      I2S_TX_CLKM_DIV_Y   : I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_Y_Field :=
                             16#1#;
      --  For b <= a/2, the value of I2S_TX_CLKM_DIV_X is (a/b) - 1. For b >
      --  a/2, the value of I2S_TX_CLKM_DIV_X is (a/(a-b)) - 1.
      I2S_TX_CLKM_DIV_X   : I2S_TX_CLKM_DIV_CONF_I2S_TX_CLKM_DIV_X_Field :=
                             16#0#;
      --  For b <= a/2, the value of I2S_TX_CLKM_DIV_YN1 is 0 . For b > a/2,
      --  the value of I2S_TX_CLKM_DIV_YN1 is 1.
      I2S_TX_CLKM_DIV_YN1 : Boolean := False;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_TX_CLKM_DIV_CONF_Register use record
      I2S_TX_CLKM_DIV_Z   at 0 range 0 .. 8;
      I2S_TX_CLKM_DIV_Y   at 0 range 9 .. 17;
      I2S_TX_CLKM_DIV_X   at 0 range 18 .. 26;
      I2S_TX_CLKM_DIV_YN1 at 0 range 27 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype I2S_RX_CLKM_CONF_I2S_RX_CLKM_DIV_NUM_Field is HAL.UInt8;
   subtype I2S_RX_CLKM_CONF_I2S_RX_CLKM_SEL_Field is HAL.UInt2;

   --  I2S_RX_CLKM configuration register
   type I2S_RX_CLKM_CONF_Register is record
      --  unspecified
      Reserved_0_11       : HAL.UInt12 := 16#0#;
      --  Integral I2S clock divider value
      I2S_RX_CLKM_DIV_NUM : I2S_RX_CLKM_CONF_I2S_RX_CLKM_DIV_NUM_Field :=
                             16#2#;
      --  Select I2S Rx module source clock. 0: no clock. 1: APLL. 2: CLK160.
      --  3: I2S_MCLK_in.
      I2S_RX_CLKM_SEL     : I2S_RX_CLKM_CONF_I2S_RX_CLKM_SEL_Field := 16#0#;
      --  Set 1 to enable i2s_rx function clock
      I2S_RX_CLKM_EN      : Boolean := True;
      --  This field is used to select master-clock. 0(default): clk_i2s_rx, 1:
      --  clk_i2s_tx
      I2S_MCLK_SEL        : Boolean := False;
      --  unspecified
      Reserved_24_31      : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_RX_CLKM_CONF_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      I2S_RX_CLKM_DIV_NUM at 0 range 12 .. 19;
      I2S_RX_CLKM_SEL     at 0 range 20 .. 21;
      I2S_RX_CLKM_EN      at 0 range 22 .. 22;
      I2S_MCLK_SEL        at 0 range 23 .. 23;
      Reserved_24_31      at 0 range 24 .. 31;
   end record;

   subtype I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_Z_Field is HAL.UInt9;
   subtype I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_Y_Field is HAL.UInt9;
   subtype I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_X_Field is HAL.UInt9;

   --  I2S_RX_CLKM_DIV configuration register
   type I2S_RX_CLKM_DIV_CONF_Register is record
      --  For b <= a/2, the value of I2S_RX_CLKM_DIV_Z is b. For b > a/2, the
      --  value of I2S_RX_CLKM_DIV_Z is (a-b).
      I2S_RX_CLKM_DIV_Z   : I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_Z_Field :=
                             16#0#;
      --  For b <= a/2, the value of I2S_RX_CLKM_DIV_Y is (a%b) . For b > a/2,
      --  the value of I2S_RX_CLKM_DIV_Y is (a%(a-b)).
      I2S_RX_CLKM_DIV_Y   : I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_Y_Field :=
                             16#1#;
      --  For b <= a/2, the value of I2S_RX_CLKM_DIV_X is (a/b) - 1. For b >
      --  a/2, the value of I2S_RX_CLKM_DIV_X is (a/(a-b)) - 1.
      I2S_RX_CLKM_DIV_X   : I2S_RX_CLKM_DIV_CONF_I2S_RX_CLKM_DIV_X_Field :=
                             16#0#;
      --  For b <= a/2, the value of I2S_RX_CLKM_DIV_YN1 is 0 . For b > a/2,
      --  the value of I2S_RX_CLKM_DIV_YN1 is 1.
      I2S_RX_CLKM_DIV_YN1 : Boolean := False;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2S_RX_CLKM_DIV_CONF_Register use record
      I2S_RX_CLKM_DIV_Z   at 0 range 0 .. 8;
      I2S_RX_CLKM_DIV_Y   at 0 range 9 .. 17;
      I2S_RX_CLKM_DIV_X   at 0 range 18 .. 26;
      I2S_RX_CLKM_DIV_YN1 at 0 range 27 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   --  SARADC configuration register
   type SARADC_CONF_Register is record
      --  no use
      SARADC_CLK_EN     : Boolean := True;
      --  Set 0 to reset function_register of saradc module
      SARADC_RST_EN     : Boolean := False;
      --  Set 1 to enable saradc apb clock
      SARADC_REG_CLK_EN : Boolean := True;
      --  Set 0 to reset apb_register of saradc module
      SARADC_REG_RST_EN : Boolean := False;
      --  unspecified
      Reserved_4_31     : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SARADC_CONF_Register use record
      SARADC_CLK_EN     at 0 range 0 .. 0;
      SARADC_RST_EN     at 0 range 1 .. 1;
      SARADC_REG_CLK_EN at 0 range 2 .. 2;
      SARADC_REG_RST_EN at 0 range 3 .. 3;
      Reserved_4_31     at 0 range 4 .. 31;
   end record;

   subtype SARADC_CLKM_CONF_SARADC_CLKM_DIV_A_Field is HAL.UInt6;
   subtype SARADC_CLKM_CONF_SARADC_CLKM_DIV_B_Field is HAL.UInt6;
   subtype SARADC_CLKM_CONF_SARADC_CLKM_DIV_NUM_Field is HAL.UInt8;
   subtype SARADC_CLKM_CONF_SARADC_CLKM_SEL_Field is HAL.UInt2;

   --  SARADC_CLKM configuration register
   type SARADC_CLKM_CONF_Register is record
      --  The denominator of the frequency divider factor of the saradc
      --  function clock.
      SARADC_CLKM_DIV_A   : SARADC_CLKM_CONF_SARADC_CLKM_DIV_A_Field := 16#0#;
      --  The numerator of the frequency divider factor of the saradc function
      --  clock.
      SARADC_CLKM_DIV_B   : SARADC_CLKM_CONF_SARADC_CLKM_DIV_B_Field := 16#0#;
      --  The integral part of the frequency divider factor of the saradc
      --  function clock.
      SARADC_CLKM_DIV_NUM : SARADC_CLKM_CONF_SARADC_CLKM_DIV_NUM_Field :=
                             16#4#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 240MHz,
      --  2: FOSC, 3: reserved.
      SARADC_CLKM_SEL     : SARADC_CLKM_CONF_SARADC_CLKM_SEL_Field := 16#0#;
      --  Set 1 to enable saradc function clock
      SARADC_CLKM_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31      : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SARADC_CLKM_CONF_Register use record
      SARADC_CLKM_DIV_A   at 0 range 0 .. 5;
      SARADC_CLKM_DIV_B   at 0 range 6 .. 11;
      SARADC_CLKM_DIV_NUM at 0 range 12 .. 19;
      SARADC_CLKM_SEL     at 0 range 20 .. 21;
      SARADC_CLKM_EN      at 0 range 22 .. 22;
      Reserved_23_31      at 0 range 23 .. 31;
   end record;

   --  TSENS_CLK configuration register
   type TSENS_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): FOSC, 1: XTAL.
      TSENS_CLK_SEL  : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Set 1 to enable tsens clock
      TSENS_CLK_EN   : Boolean := True;
      --  Set 0 to reset tsens module
      TSENS_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSENS_CLK_CONF_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      TSENS_CLK_SEL  at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TSENS_CLK_EN   at 0 range 22 .. 22;
      TSENS_RST_EN   at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  USB_DEVICE configuration register
   type USB_DEVICE_CONF_Register is record
      --  Set 1 to enable usb_device clock
      USB_DEVICE_CLK_EN : Boolean := True;
      --  Set 0 to reset usb_device module
      USB_DEVICE_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31     : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_DEVICE_CONF_Register use record
      USB_DEVICE_CLK_EN at 0 range 0 .. 0;
      USB_DEVICE_RST_EN at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  INTMTX configuration register
   type INTMTX_CONF_Register is record
      --  Set 1 to enable intmtx clock
      INTMTX_CLK_EN : Boolean := True;
      --  Set 0 to reset intmtx module
      INTMTX_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMTX_CONF_Register use record
      INTMTX_CLK_EN at 0 range 0 .. 0;
      INTMTX_RST_EN at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PCNT configuration register
   type PCNT_CONF_Register is record
      --  Set 1 to enable pcnt clock
      PCNT_CLK_EN   : Boolean := True;
      --  Set 0 to reset pcnt module
      PCNT_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNT_CONF_Register use record
      PCNT_CLK_EN   at 0 range 0 .. 0;
      PCNT_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ETM configuration register
   type ETM_CONF_Register is record
      --  Set 1 to enable etm clock
      ETM_CLK_EN    : Boolean := True;
      --  Set 0 to reset etm module
      ETM_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_CONF_Register use record
      ETM_CLK_EN    at 0 range 0 .. 0;
      ETM_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWM configuration register
   type PWM_CONF_Register is record
      --  Set 1 to enable pwm clock
      PWM_CLK_EN    : Boolean := True;
      --  Set 0 to reset pwm module
      PWM_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CONF_Register use record
      PWM_CLK_EN    at 0 range 0 .. 0;
      PWM_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PWM_CLK_CONF_PWM_DIV_NUM_Field is HAL.UInt8;
   subtype PWM_CLK_CONF_PWM_CLKM_SEL_Field is HAL.UInt2;

   --  PWM_CLK configuration register
   type PWM_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  The integral part of the frequency divider factor of the pwm function
      --  clock.
      PWM_DIV_NUM    : PWM_CLK_CONF_PWM_DIV_NUM_Field := 16#4#;
      --  set this field to select clock-source. 0(default): do not select
      --  anyone clock, 1: 160MHz, 2: XTAL, 3: FOSC.
      PWM_CLKM_SEL   : PWM_CLK_CONF_PWM_CLKM_SEL_Field := 16#0#;
      --  set this field as 1 to activate pwm clkm.
      PWM_CLKM_EN    : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWM_CLK_CONF_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      PWM_DIV_NUM    at 0 range 12 .. 19;
      PWM_CLKM_SEL   at 0 range 20 .. 21;
      PWM_CLKM_EN    at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  PARL_IO configuration register
   type PARL_IO_CONF_Register is record
      --  Set 1 to enable parl apb clock
      PARL_CLK_EN   : Boolean := True;
      --  Set 0 to reset parl apb reg
      PARL_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARL_IO_CONF_Register use record
      PARL_CLK_EN   at 0 range 0 .. 0;
      PARL_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PARL_CLK_RX_CONF_PARL_CLK_RX_DIV_NUM_Field is HAL.UInt16;
   subtype PARL_CLK_RX_CONF_PARL_CLK_RX_SEL_Field is HAL.UInt2;

   --  PARL_CLK_RX configuration register
   type PARL_CLK_RX_CONF_Register is record
      --  The integral part of the frequency divider factor of the parl rx
      --  clock.
      PARL_CLK_RX_DIV_NUM : PARL_CLK_RX_CONF_PARL_CLK_RX_DIV_NUM_Field :=
                             16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 240MHz,
      --  2: FOSC, 3: user clock from pad.
      PARL_CLK_RX_SEL     : PARL_CLK_RX_CONF_PARL_CLK_RX_SEL_Field := 16#0#;
      --  Set 1 to enable parl rx clock
      PARL_CLK_RX_EN      : Boolean := True;
      --  Set 0 to reset parl rx module
      PARL_RX_RST_EN      : Boolean := False;
      --  unspecified
      Reserved_20_31      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARL_CLK_RX_CONF_Register use record
      PARL_CLK_RX_DIV_NUM at 0 range 0 .. 15;
      PARL_CLK_RX_SEL     at 0 range 16 .. 17;
      PARL_CLK_RX_EN      at 0 range 18 .. 18;
      PARL_RX_RST_EN      at 0 range 19 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   subtype PARL_CLK_TX_CONF_PARL_CLK_TX_DIV_NUM_Field is HAL.UInt16;
   subtype PARL_CLK_TX_CONF_PARL_CLK_TX_SEL_Field is HAL.UInt2;

   --  PARL_CLK_TX configuration register
   type PARL_CLK_TX_CONF_Register is record
      --  The integral part of the frequency divider factor of the parl tx
      --  clock.
      PARL_CLK_TX_DIV_NUM : PARL_CLK_TX_CONF_PARL_CLK_TX_DIV_NUM_Field :=
                             16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 240MHz,
      --  2: FOSC, 3: user clock from pad.
      PARL_CLK_TX_SEL     : PARL_CLK_TX_CONF_PARL_CLK_TX_SEL_Field := 16#0#;
      --  Set 1 to enable parl tx clock
      PARL_CLK_TX_EN      : Boolean := True;
      --  Set 0 to reset parl tx module
      PARL_TX_RST_EN      : Boolean := False;
      --  unspecified
      Reserved_20_31      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PARL_CLK_TX_CONF_Register use record
      PARL_CLK_TX_DIV_NUM at 0 range 0 .. 15;
      PARL_CLK_TX_SEL     at 0 range 16 .. 17;
      PARL_CLK_TX_EN      at 0 range 18 .. 18;
      PARL_TX_RST_EN      at 0 range 19 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   --  SDIO_SLAVE configuration register
   type SDIO_SLAVE_CONF_Register is record
      --  Set 1 to enable sdio_slave clock
      SDIO_SLAVE_CLK_EN : Boolean := True;
      --  Set 0 to reset sdio_slave module
      SDIO_SLAVE_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31     : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_SLAVE_CONF_Register use record
      SDIO_SLAVE_CLK_EN at 0 range 0 .. 0;
      SDIO_SLAVE_RST_EN at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  PVT_MONITOR configuration register
   type PVT_MONITOR_CONF_Register is record
      --  Set 1 to enable apb clock of pvt module
      PVT_MONITOR_CLK_EN       : Boolean := True;
      --  Set 0 to reset all pvt monitor module
      PVT_MONITOR_RST_EN       : Boolean := False;
      --  Set 1 to enable function clock of modem pvt module
      PVT_MONITOR_SITE1_CLK_EN : Boolean := True;
      --  Set 1 to enable function clock of cpu pvt module
      PVT_MONITOR_SITE2_CLK_EN : Boolean := True;
      --  Set 1 to enable function clock of hp_peri pvt module
      PVT_MONITOR_SITE3_CLK_EN : Boolean := True;
      --  unspecified
      Reserved_5_31            : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PVT_MONITOR_CONF_Register use record
      PVT_MONITOR_CLK_EN       at 0 range 0 .. 0;
      PVT_MONITOR_RST_EN       at 0 range 1 .. 1;
      PVT_MONITOR_SITE1_CLK_EN at 0 range 2 .. 2;
      PVT_MONITOR_SITE2_CLK_EN at 0 range 3 .. 3;
      PVT_MONITOR_SITE3_CLK_EN at 0 range 4 .. 4;
      Reserved_5_31            at 0 range 5 .. 31;
   end record;

   subtype PVT_MONITOR_FUNC_CLK_CONF_PVT_MONITOR_FUNC_CLK_DIV_NUM_Field is
     HAL.UInt4;

   --  PVT_MONITOR function clock configuration register
   type PVT_MONITOR_FUNC_CLK_CONF_Register is record
      --  The integral part of the frequency divider factor of the pvt_monitor
      --  function clock.
      PVT_MONITOR_FUNC_CLK_DIV_NUM : PVT_MONITOR_FUNC_CLK_CONF_PVT_MONITOR_FUNC_CLK_DIV_NUM_Field :=
                                      16#0#;
      --  unspecified
      Reserved_4_19                : HAL.UInt16 := 16#0#;
      --  set this field to select clock-source. 0: XTAL, 1(default): 160MHz
      --  drived by SPLL divided by 3.
      PVT_MONITOR_FUNC_CLK_SEL     : Boolean := False;
      --  unspecified
      Reserved_21_21               : HAL.Bit := 16#0#;
      --  Set 1 to enable source clock of pvt sitex
      PVT_MONITOR_FUNC_CLK_EN      : Boolean := True;
      --  unspecified
      Reserved_23_31               : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PVT_MONITOR_FUNC_CLK_CONF_Register use record
      PVT_MONITOR_FUNC_CLK_DIV_NUM at 0 range 0 .. 3;
      Reserved_4_19                at 0 range 4 .. 19;
      PVT_MONITOR_FUNC_CLK_SEL     at 0 range 20 .. 20;
      Reserved_21_21               at 0 range 21 .. 21;
      PVT_MONITOR_FUNC_CLK_EN      at 0 range 22 .. 22;
      Reserved_23_31               at 0 range 23 .. 31;
   end record;

   --  GDMA configuration register
   type GDMA_CONF_Register is record
      --  Set 1 to enable gdma clock
      GDMA_CLK_EN   : Boolean := True;
      --  Set 0 to reset gdma module
      GDMA_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GDMA_CONF_Register use record
      GDMA_CLK_EN   at 0 range 0 .. 0;
      GDMA_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SPI2 configuration register
   type SPI2_CONF_Register is record
      --  Set 1 to enable spi2 apb clock
      SPI2_CLK_EN   : Boolean := True;
      --  Set 0 to reset spi2 module
      SPI2_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI2_CONF_Register use record
      SPI2_CLK_EN   at 0 range 0 .. 0;
      SPI2_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SPI2_CLKM_CONF_SPI2_CLKM_SEL_Field is HAL.UInt2;

   --  SPI2_CLKM configuration register
   type SPI2_CLKM_CONF_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0(default): XTAL, 1: 80MHz, 2:
      --  FOSC, 3: reserved.
      SPI2_CLKM_SEL  : SPI2_CLKM_CONF_SPI2_CLKM_SEL_Field := 16#0#;
      --  Set 1 to enable spi2 function clock
      SPI2_CLKM_EN   : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI2_CLKM_CONF_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      SPI2_CLKM_SEL  at 0 range 20 .. 21;
      SPI2_CLKM_EN   at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  AES configuration register
   type AES_CONF_Register is record
      --  Set 1 to enable aes clock
      AES_CLK_EN    : Boolean := True;
      --  Set 0 to reset aes module
      AES_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_CONF_Register use record
      AES_CLK_EN    at 0 range 0 .. 0;
      AES_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SHA configuration register
   type SHA_CONF_Register is record
      --  Set 1 to enable sha clock
      SHA_CLK_EN    : Boolean := True;
      --  Set 0 to reset sha module
      SHA_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHA_CONF_Register use record
      SHA_CLK_EN    at 0 range 0 .. 0;
      SHA_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RSA configuration register
   type RSA_CONF_Register is record
      --  Set 1 to enable rsa clock
      RSA_CLK_EN    : Boolean := True;
      --  Set 0 to reset rsa module
      RSA_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSA_CONF_Register use record
      RSA_CLK_EN    at 0 range 0 .. 0;
      RSA_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RSA power control register
   type RSA_PD_CTRL_Register is record
      --  Set this bit to power down rsa internal memory.
      RSA_MEM_PD       : Boolean := False;
      --  Set this bit to force power up rsa internal memory
      RSA_MEM_FORCE_PU : Boolean := True;
      --  Set this bit to force power down rsa internal memory.
      RSA_MEM_FORCE_PD : Boolean := False;
      --  unspecified
      Reserved_3_31    : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSA_PD_CTRL_Register use record
      RSA_MEM_PD       at 0 range 0 .. 0;
      RSA_MEM_FORCE_PU at 0 range 1 .. 1;
      RSA_MEM_FORCE_PD at 0 range 2 .. 2;
      Reserved_3_31    at 0 range 3 .. 31;
   end record;

   --  ECC configuration register
   type ECC_CONF_Register is record
      --  Set 1 to enable ecc clock
      ECC_CLK_EN    : Boolean := True;
      --  Set 0 to reset ecc module
      ECC_RST_EN    : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_CONF_Register use record
      ECC_CLK_EN    at 0 range 0 .. 0;
      ECC_RST_EN    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ECC power control register
   type ECC_PD_CTRL_Register is record
      --  Set this bit to power down ecc internal memory.
      ECC_MEM_PD       : Boolean := False;
      --  Set this bit to force power up ecc internal memory
      ECC_MEM_FORCE_PU : Boolean := True;
      --  Set this bit to force power down ecc internal memory.
      ECC_MEM_FORCE_PD : Boolean := False;
      --  unspecified
      Reserved_3_31    : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_PD_CTRL_Register use record
      ECC_MEM_PD       at 0 range 0 .. 0;
      ECC_MEM_FORCE_PU at 0 range 1 .. 1;
      ECC_MEM_FORCE_PD at 0 range 2 .. 2;
      Reserved_3_31    at 0 range 3 .. 31;
   end record;

   --  DS configuration register
   type DS_CONF_Register is record
      --  Set 1 to enable ds clock
      DS_CLK_EN     : Boolean := True;
      --  Set 0 to reset ds module
      DS_RST_EN     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DS_CONF_Register use record
      DS_CLK_EN     at 0 range 0 .. 0;
      DS_RST_EN     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HMAC configuration register
   type HMAC_CONF_Register is record
      --  Set 1 to enable hmac clock
      HMAC_CLK_EN   : Boolean := True;
      --  Set 0 to reset hmac module
      HMAC_RST_EN   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HMAC_CONF_Register use record
      HMAC_CLK_EN   at 0 range 0 .. 0;
      HMAC_RST_EN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  IOMUX configuration register
   type IOMUX_CONF_Register is record
      --  Set 1 to enable iomux apb clock
      IOMUX_CLK_EN  : Boolean := True;
      --  Set 0 to reset iomux module
      IOMUX_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUX_CONF_Register use record
      IOMUX_CLK_EN  at 0 range 0 .. 0;
      IOMUX_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IOMUX_CLK_CONF_IOMUX_FUNC_CLK_SEL_Field is HAL.UInt2;

   --  IOMUX_CLK configuration register
   type IOMUX_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_19      : HAL.UInt20 := 16#0#;
      --  set this field to select clock-source. 0: do not select anyone clock,
      --  1: 80MHz, 2: FOSC, 3(default): XTAL.
      IOMUX_FUNC_CLK_SEL : IOMUX_CLK_CONF_IOMUX_FUNC_CLK_SEL_Field := 16#3#;
      --  Set 1 to enable iomux function clock
      IOMUX_FUNC_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_23_31     : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUX_CLK_CONF_Register use record
      Reserved_0_19      at 0 range 0 .. 19;
      IOMUX_FUNC_CLK_SEL at 0 range 20 .. 21;
      IOMUX_FUNC_CLK_EN  at 0 range 22 .. 22;
      Reserved_23_31     at 0 range 23 .. 31;
   end record;

   --  MEM_MONITOR configuration register
   type MEM_MONITOR_CONF_Register is record
      --  Set 1 to enable mem_monitor clock
      MEM_MONITOR_CLK_EN : Boolean := True;
      --  Set 0 to reset mem_monitor module
      MEM_MONITOR_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31      : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_MONITOR_CONF_Register use record
      MEM_MONITOR_CLK_EN at 0 range 0 .. 0;
      MEM_MONITOR_RST_EN at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  REGDMA configuration register
   type REGDMA_CONF_Register is record
      --  Set 1 to enable regdma clock
      REGDMA_CLK_EN : Boolean := False;
      --  Set 0 to reset regdma module
      REGDMA_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGDMA_CONF_Register use record
      REGDMA_CLK_EN at 0 range 0 .. 0;
      REGDMA_RST_EN at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  retention configuration register
   type RETENTION_CONF_Register is record
      --  Set 1 to enable retention clock
      RETENTION_CLK_EN : Boolean := False;
      --  Set 0 to reset retention module
      RETENTION_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31    : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CONF_Register use record
      RETENTION_CLK_EN at 0 range 0 .. 0;
      RETENTION_RST_EN at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  TRACE configuration register
   type TRACE_CONF_Register is record
      --  Set 1 to enable trace clock
      TRACE_CLK_EN  : Boolean := True;
      --  Set 0 to reset trace module
      TRACE_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACE_CONF_Register use record
      TRACE_CLK_EN  at 0 range 0 .. 0;
      TRACE_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ASSIST configuration register
   type ASSIST_CONF_Register is record
      --  Set 1 to enable assist clock
      ASSIST_CLK_EN : Boolean := True;
      --  Set 0 to reset assist module
      ASSIST_RST_EN : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASSIST_CONF_Register use record
      ASSIST_CLK_EN at 0 range 0 .. 0;
      ASSIST_RST_EN at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CACHE configuration register
   type CACHE_CONF_Register is record
      --  Set 1 to enable cache clock
      CACHE_CLK_EN  : Boolean := True;
      --  Set 0 to reset cache module
      CACHE_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_CONF_Register use record
      CACHE_CLK_EN  at 0 range 0 .. 0;
      CACHE_RST_EN  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MODEM_APB configuration register
   type MODEM_APB_CONF_Register is record
      --  This field indicates if modem_apb clock is enable. 0: disable, 1:
      --  enable(default).
      MODEM_APB_CLK_EN : Boolean := True;
      --  Set this file as 1 to reset modem-subsystem.
      MODEM_RST_EN     : Boolean := False;
      --  unspecified
      Reserved_2_31    : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEM_APB_CONF_Register use record
      MODEM_APB_CLK_EN at 0 range 0 .. 0;
      MODEM_RST_EN     at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  TIMEOUT configuration register
   type TIMEOUT_CONF_Register is record
      --  unspecified
      Reserved_0_0       : HAL.Bit := 16#0#;
      --  Set 0 to reset cpu_peri timeout module
      CPU_TIMEOUT_RST_EN : Boolean := False;
      --  Set 0 to reset hp_peri timeout module and hp_modem timeout module
      HP_TIMEOUT_RST_EN  : Boolean := False;
      --  unspecified
      Reserved_3_31      : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUT_CONF_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      CPU_TIMEOUT_RST_EN at 0 range 1 .. 1;
      HP_TIMEOUT_RST_EN  at 0 range 2 .. 2;
      Reserved_3_31      at 0 range 3 .. 31;
   end record;

   subtype SYSCLK_CONF_LS_DIV_NUM_Field is HAL.UInt8;
   subtype SYSCLK_CONF_HS_DIV_NUM_Field is HAL.UInt8;
   subtype SYSCLK_CONF_SOC_CLK_SEL_Field is HAL.UInt2;
   subtype SYSCLK_CONF_CLK_XTAL_FREQ_Field is HAL.UInt7;

   --  SYSCLK configuration register
   type SYSCLK_CONF_Register is record
      --  Read-only. clk_hproot is div1 of low-speed clock-source if
      --  clck-source is a low-speed clock-source such as XTAL/FOSC.
      LS_DIV_NUM     : SYSCLK_CONF_LS_DIV_NUM_Field := 16#0#;
      --  Read-only. clk_hproot is div3 of SPLL if the clock-source is
      --  high-speed clock SPLL.
      HS_DIV_NUM     : SYSCLK_CONF_HS_DIV_NUM_Field := 16#2#;
      --  This field is used to select clock source. 0: XTAL, 1: SPLL, 2: FOSC,
      --  3: reserved.
      SOC_CLK_SEL    : SYSCLK_CONF_SOC_CLK_SEL_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Read-only. This field indicates the frequency(MHz) of XTAL.
      CLK_XTAL_FREQ  : SYSCLK_CONF_CLK_XTAL_FREQ_Field := 16#28#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCLK_CONF_Register use record
      LS_DIV_NUM     at 0 range 0 .. 7;
      HS_DIV_NUM     at 0 range 8 .. 15;
      SOC_CLK_SEL    at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      CLK_XTAL_FREQ  at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CPU_WAITI_CONF_CPUPERIOD_SEL_Field is HAL.UInt2;
   subtype CPU_WAITI_CONF_CPU_WAITI_DELAY_NUM_Field is HAL.UInt4;

   --  CPU_WAITI configuration register
   type CPU_WAITI_CONF_Register is record
      --  Read-only. Reserved. This filed has been replaced by
      --  PCR_CPU_HS_DIV_NUM and PCR_CPU_LS_DIV_NUM
      CPUPERIOD_SEL          : CPU_WAITI_CONF_CPUPERIOD_SEL_Field := 16#1#;
      --  Read-only. Reserved. This filed has been replaced by
      --  PCR_CPU_HS_DIV_NUM and PCR_CPU_LS_DIV_NUM
      PLL_FREQ_SEL           : Boolean := True;
      --  Set 1 to force cpu_waiti_clk enable.
      CPU_WAIT_MODE_FORCE_ON : Boolean := True;
      --  This field used to set delay cycle when cpu enter waiti mode, after
      --  delay waiti_clk will close
      CPU_WAITI_DELAY_NUM    : CPU_WAITI_CONF_CPU_WAITI_DELAY_NUM_Field :=
                                16#0#;
      --  unspecified
      Reserved_8_31          : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_WAITI_CONF_Register use record
      CPUPERIOD_SEL          at 0 range 0 .. 1;
      PLL_FREQ_SEL           at 0 range 2 .. 2;
      CPU_WAIT_MODE_FORCE_ON at 0 range 3 .. 3;
      CPU_WAITI_DELAY_NUM    at 0 range 4 .. 7;
      Reserved_8_31          at 0 range 8 .. 31;
   end record;

   subtype CPU_FREQ_CONF_CPU_LS_DIV_NUM_Field is HAL.UInt8;
   subtype CPU_FREQ_CONF_CPU_HS_DIV_NUM_Field is HAL.UInt8;

   --  CPU_FREQ configuration register
   type CPU_FREQ_CONF_Register is record
      --  Set as one within (0,1,3) to generate clk_cpu drived by clk_hproot.
      --  The clk_cpu is div1(default)/div2/div4 of clk_hproot. This field is
      --  only avaliable for low-speed clock-source such as XTAL/FOSC, and
      --  should be used together with PCR_AHB_LS_DIV_NUM.
      CPU_LS_DIV_NUM    : CPU_FREQ_CONF_CPU_LS_DIV_NUM_Field := 16#0#;
      --  Set as one within (0,1,3) to generate clk_cpu drived by clk_hproot.
      --  The clk_cpu is div1(default)/div2/div4 of clk_hproot. This field is
      --  only avaliable for high-speed clock-source such as SPLL, and should
      --  be used together with PCR_AHB_HS_DIV_NUM.
      CPU_HS_DIV_NUM    : CPU_FREQ_CONF_CPU_HS_DIV_NUM_Field := 16#0#;
      --  Given that PCR_CPU_HS_DIV_NUM is 0, set this field as 1 to force
      --  clk_cpu at 120MHz. Only avaliable when PCR_CPU_HS_DIV_NUM is 0 and
      --  clk_cpu is driven by SPLL.
      CPU_HS_120M_FORCE : Boolean := False;
      --  unspecified
      Reserved_17_31    : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_FREQ_CONF_Register use record
      CPU_LS_DIV_NUM    at 0 range 0 .. 7;
      CPU_HS_DIV_NUM    at 0 range 8 .. 15;
      CPU_HS_120M_FORCE at 0 range 16 .. 16;
      Reserved_17_31    at 0 range 17 .. 31;
   end record;

   subtype AHB_FREQ_CONF_AHB_LS_DIV_NUM_Field is HAL.UInt8;
   subtype AHB_FREQ_CONF_AHB_HS_DIV_NUM_Field is HAL.UInt8;

   --  AHB_FREQ configuration register
   type AHB_FREQ_CONF_Register is record
      --  Set as one within (0,1,3,7) to generate clk_ahb drived by clk_hproot.
      --  The clk_ahb is div1(default)/div2/div4/div8 of clk_hproot. This field
      --  is only avaliable for low-speed clock-source such as XTAL/FOSC, and
      --  should be used together with PCR_CPU_LS_DIV_NUM.
      AHB_LS_DIV_NUM : AHB_FREQ_CONF_AHB_LS_DIV_NUM_Field := 16#0#;
      --  Set as one within (3,7,15) to generate clk_ahb drived by clk_hproot.
      --  The clk_ahb is div4(default)/div8/div16 of clk_hproot. This field is
      --  only avaliable for high-speed clock-source such as SPLL, and should
      --  be used together with PCR_CPU_HS_DIV_NUM.
      AHB_HS_DIV_NUM : AHB_FREQ_CONF_AHB_HS_DIV_NUM_Field := 16#3#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB_FREQ_CONF_Register use record
      AHB_LS_DIV_NUM at 0 range 0 .. 7;
      AHB_HS_DIV_NUM at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype APB_FREQ_CONF_APB_DECREASE_DIV_NUM_Field is HAL.UInt8;
   subtype APB_FREQ_CONF_APB_DIV_NUM_Field is HAL.UInt8;

   --  APB_FREQ configuration register
   type APB_FREQ_CONF_Register is record
      --  If this field's value is grater than PCR_APB_DIV_NUM, the clk_apb
      --  will be automatically down to clk_apb_decrease only when no access is
      --  on apb-bus, and will recover to the previous frequency when a new
      --  access appears on apb-bus. Set as one within (0,1,3) to set
      --  clk_apb_decrease as div1/div2/div4(default) of clk_ahb. Note that
      --  enable this function will reduce performance. Users can set this
      --  field as zero to disable the auto-decrease-apb-freq function. By
      --  default, this function is disable.
      APB_DECREASE_DIV_NUM : APB_FREQ_CONF_APB_DECREASE_DIV_NUM_Field :=
                              16#0#;
      --  Set as one within (0,1,3) to generate clk_apb drived by clk_ahb. The
      --  clk_apb is div1(default)/div2/div4 of clk_ahb.
      APB_DIV_NUM          : APB_FREQ_CONF_APB_DIV_NUM_Field := 16#0#;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB_FREQ_CONF_Register use record
      APB_DECREASE_DIV_NUM at 0 range 0 .. 7;
      APB_DIV_NUM          at 0 range 8 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype SYSCLK_FREQ_QUERY_0_FOSC_FREQ_Field is HAL.UInt8;
   subtype SYSCLK_FREQ_QUERY_0_PLL_FREQ_Field is HAL.UInt10;

   --  SYSCLK frequency query 0 register
   type SYSCLK_FREQ_QUERY_0_Register is record
      --  Read-only. This field indicates the frequency(MHz) of FOSC.
      FOSC_FREQ      : SYSCLK_FREQ_QUERY_0_FOSC_FREQ_Field;
      --  Read-only. This field indicates the frequency(MHz) of SPLL.
      PLL_FREQ       : SYSCLK_FREQ_QUERY_0_PLL_FREQ_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCLK_FREQ_QUERY_0_Register use record
      FOSC_FREQ      at 0 range 0 .. 7;
      PLL_FREQ       at 0 range 8 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  SPLL DIV clock-gating configuration register
   type PLL_DIV_CLK_EN_Register is record
      --  This field is used to open 240 MHz clock (div2 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_240M_CLK_EN : Boolean := True;
      --  This field is used to open 160 MHz clock (div3 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_160M_CLK_EN : Boolean := True;
      --  This field is used to open 120 MHz clock (div4 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_120M_CLK_EN : Boolean := True;
      --  This field is used to open 80 MHz clock (div6 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_80M_CLK_EN  : Boolean := True;
      --  This field is used to open 48 MHz clock (div10 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_48M_CLK_EN  : Boolean := True;
      --  This field is used to open 40 MHz clock (div12 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_40M_CLK_EN  : Boolean := True;
      --  This field is used to open 20 MHz clock (div24 of SPLL) drived from
      --  SPLL. 0: close, 1: open(default). Only avaliable when high-speed
      --  clock-source SPLL is active.
      PLL_20M_CLK_EN  : Boolean := True;
      --  unspecified
      Reserved_7_31   : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL_DIV_CLK_EN_Register use record
      PLL_240M_CLK_EN at 0 range 0 .. 0;
      PLL_160M_CLK_EN at 0 range 1 .. 1;
      PLL_120M_CLK_EN at 0 range 2 .. 2;
      PLL_80M_CLK_EN  at 0 range 3 .. 3;
      PLL_48M_CLK_EN  at 0 range 4 .. 4;
      PLL_40M_CLK_EN  at 0 range 5 .. 5;
      PLL_20M_CLK_EN  at 0 range 6 .. 6;
      Reserved_7_31   at 0 range 7 .. 31;
   end record;

   --  CLK_OUT_EN configuration register
   type CTRL_CLK_OUT_EN_Register is record
      --  Set 1 to enable 20m clock
      CLK20_OEN       : Boolean := True;
      --  Set 1 to enable 22m clock
      CLK22_OEN       : Boolean := True;
      --  Set 1 to enable 44m clock
      CLK44_OEN       : Boolean := True;
      --  Set 1 to enable bb clock
      CLK_BB_OEN      : Boolean := True;
      --  Set 1 to enable 80m clock
      CLK80_OEN       : Boolean := True;
      --  Set 1 to enable 160m clock
      CLK160_OEN      : Boolean := True;
      --  Set 1 to enable 320m clock
      CLK_320M_OEN    : Boolean := True;
      --  Reserved
      CLK_ADC_INF_OEN : Boolean := True;
      --  Reserved
      CLK_DAC_CPU_OEN : Boolean := True;
      --  Set 1 to enable 40x_bb clock
      CLK40X_BB_OEN   : Boolean := True;
      --  Set 1 to enable xtal clock
      CLK_XTAL_OEN    : Boolean := True;
      --  unspecified
      Reserved_11_31  : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_CLK_OUT_EN_Register use record
      CLK20_OEN       at 0 range 0 .. 0;
      CLK22_OEN       at 0 range 1 .. 1;
      CLK44_OEN       at 0 range 2 .. 2;
      CLK_BB_OEN      at 0 range 3 .. 3;
      CLK80_OEN       at 0 range 4 .. 4;
      CLK160_OEN      at 0 range 5 .. 5;
      CLK_320M_OEN    at 0 range 6 .. 6;
      CLK_ADC_INF_OEN at 0 range 7 .. 7;
      CLK_DAC_CPU_OEN at 0 range 8 .. 8;
      CLK40X_BB_OEN   at 0 range 9 .. 9;
      CLK_XTAL_OEN    at 0 range 10 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   subtype CTRL_TICK_CONF_XTAL_TICK_NUM_Field is HAL.UInt8;
   subtype CTRL_TICK_CONF_FOSC_TICK_NUM_Field is HAL.UInt8;

   --  TICK configuration register
   type CTRL_TICK_CONF_Register is record
      --  ******* Description ***********
      XTAL_TICK_NUM  : CTRL_TICK_CONF_XTAL_TICK_NUM_Field := 16#27#;
      --  ******* Description ***********
      FOSC_TICK_NUM  : CTRL_TICK_CONF_FOSC_TICK_NUM_Field := 16#7#;
      --  ******* Description ***********
      TICK_ENABLE    : Boolean := True;
      --  ******* Description ***********
      RST_TICK_CNT   : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_TICK_CONF_Register use record
      XTAL_TICK_NUM  at 0 range 0 .. 7;
      FOSC_TICK_NUM  at 0 range 8 .. 15;
      TICK_ENABLE    at 0 range 16 .. 16;
      RST_TICK_CNT   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CTRL_32K_CONF_CLK_32K_SEL_Field is HAL.UInt2;

   --  32KHz clock configuration register
   type CTRL_32K_CONF_Register is record
      --  This field indicates which one 32KHz clock will be used by
      --  MODEM_SYSTEM and timergroup. 0: OSC32K(default), 1: XTAL32K, 2/3:
      --  32KHz from pad GPIO0.
      CLK_32K_SEL   : CTRL_32K_CONF_CLK_32K_SEL_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_32K_CONF_Register use record
      CLK_32K_SEL   at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SRAM_POWER_CONF_SRAM_FORCE_PU_Field is HAL.UInt4;
   subtype SRAM_POWER_CONF_SRAM_FORCE_PD_Field is HAL.UInt4;
   subtype SRAM_POWER_CONF_SRAM_CLKGATE_FORCE_ON_Field is HAL.UInt4;
   subtype SRAM_POWER_CONF_ROM_FORCE_PU_Field is HAL.UInt3;
   subtype SRAM_POWER_CONF_ROM_FORCE_PD_Field is HAL.UInt3;
   subtype SRAM_POWER_CONF_ROM_CLKGATE_FORCE_ON_Field is HAL.UInt3;

   --  HP SRAM/ROM configuration register
   type SRAM_POWER_CONF_Register is record
      --  Set this bit to force power up SRAM
      SRAM_FORCE_PU         : SRAM_POWER_CONF_SRAM_FORCE_PU_Field := 16#F#;
      --  Set this bit to force power down SRAM.
      SRAM_FORCE_PD         : SRAM_POWER_CONF_SRAM_FORCE_PD_Field := 16#0#;
      --  1: Force to open the clock and bypass the gate-clock when accessing
      --  the SRAM. 0: A gate-clock will be used when accessing the SRAM.
      SRAM_CLKGATE_FORCE_ON : SRAM_POWER_CONF_SRAM_CLKGATE_FORCE_ON_Field :=
                               16#0#;
      --  Set this bit to force power up ROM
      ROM_FORCE_PU          : SRAM_POWER_CONF_ROM_FORCE_PU_Field := 16#7#;
      --  Set this bit to force power down ROM.
      ROM_FORCE_PD          : SRAM_POWER_CONF_ROM_FORCE_PD_Field := 16#0#;
      --  1: Force to open the clock and bypass the gate-clock when accessing
      --  the ROM. 0: A gate-clock will be used when accessing the ROM.
      ROM_CLKGATE_FORCE_ON  : SRAM_POWER_CONF_ROM_CLKGATE_FORCE_ON_Field :=
                               16#0#;
      --  unspecified
      Reserved_21_31        : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_POWER_CONF_Register use record
      SRAM_FORCE_PU         at 0 range 0 .. 3;
      SRAM_FORCE_PD         at 0 range 4 .. 7;
      SRAM_CLKGATE_FORCE_ON at 0 range 8 .. 11;
      ROM_FORCE_PU          at 0 range 12 .. 14;
      ROM_FORCE_PD          at 0 range 15 .. 17;
      ROM_CLKGATE_FORCE_ON  at 0 range 18 .. 20;
      Reserved_21_31        at 0 range 21 .. 31;
   end record;

   --  reset event bypass backdoor configuration register
   type RESET_EVENT_BYPASS_Register is record
      --  This field is used to control reset event relationship for
      --  tee_reg/apm_reg/hp_system_reg. 1: tee_reg/apm_reg/hp_system_reg will
      --  only be reset by power-reset. some reset event will be bypass. 0:
      --  tee_reg/apm_reg/hp_system_reg will not only be reset by power-reset,
      --  but also some reset event.
      APM                : Boolean := False;
      --  This field is used to control reset event relationship for
      --  system-bus. 1: system bus (including arbiter/router) will only be
      --  reset by power-reset. some reset event will be bypass. 0: system bus
      --  (including arbiter/router) will not only be reset by power-reset, but
      --  also some reset event.
      RESET_EVENT_BYPASS : Boolean := True;
      --  unspecified
      Reserved_2_31      : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_EVENT_BYPASS_Register use record
      APM                at 0 range 0 .. 0;
      RESET_EVENT_BYPASS at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  PCR clock gating configure register
   type CLOCK_GATE_Register is record
      --  Set this bit as 1 to force on clock gating.
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_GATE_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  Date register.
   type DATE_Register is record
      --  PCR version information.
      DATE           : DATE_DATE_Field := 16#2206150#;
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

   --  PCR Peripheral
   type PCR_Peripheral is record
      --  UART0 configuration register
      UART0_CONF                 : aliased UART0_CONF_Register;
      --  UART0_SCLK configuration register
      UART0_SCLK_CONF            : aliased UART0_SCLK_CONF_Register;
      --  UART0 power control register
      UART0_PD_CTRL              : aliased UART0_PD_CTRL_Register;
      --  UART1 configuration register
      UART1_CONF                 : aliased UART1_CONF_Register;
      --  UART1_SCLK configuration register
      UART1_SCLK_CONF            : aliased UART1_SCLK_CONF_Register;
      --  UART1 power control register
      UART1_PD_CTRL              : aliased UART1_PD_CTRL_Register;
      --  MSPI configuration register
      MSPI_CONF                  : aliased MSPI_CONF_Register;
      --  MSPI_CLK configuration register
      MSPI_CLK_CONF              : aliased MSPI_CLK_CONF_Register;
      --  I2C configuration register
      I2C0_CONF                  : aliased I2C0_CONF_Register;
      --  I2C_SCLK configuration register
      I2C_SCLK_CONF              : aliased I2C_SCLK_CONF_Register;
      --  UHCI configuration register
      UHCI_CONF                  : aliased UHCI_CONF_Register;
      --  RMT configuration register
      RMT_CONF                   : aliased RMT_CONF_Register;
      --  RMT_SCLK configuration register
      RMT_SCLK_CONF              : aliased RMT_SCLK_CONF_Register;
      --  LEDC configuration register
      LEDC_CONF                  : aliased LEDC_CONF_Register;
      --  LEDC_SCLK configuration register
      LEDC_SCLK_CONF             : aliased LEDC_SCLK_CONF_Register;
      --  TIMERGROUP0 configuration register
      TIMERGROUP0_CONF           : aliased TIMERGROUP0_CONF_Register;
      --  TIMERGROUP0_TIMER_CLK configuration register
      TIMERGROUP0_TIMER_CLK_CONF : aliased TIMERGROUP0_TIMER_CLK_CONF_Register;
      --  TIMERGROUP0_WDT_CLK configuration register
      TIMERGROUP0_WDT_CLK_CONF   : aliased TIMERGROUP0_WDT_CLK_CONF_Register;
      --  TIMERGROUP1 configuration register
      TIMERGROUP1_CONF           : aliased TIMERGROUP1_CONF_Register;
      --  TIMERGROUP1_TIMER_CLK configuration register
      TIMERGROUP1_TIMER_CLK_CONF : aliased TIMERGROUP1_TIMER_CLK_CONF_Register;
      --  TIMERGROUP1_WDT_CLK configuration register
      TIMERGROUP1_WDT_CLK_CONF   : aliased TIMERGROUP1_WDT_CLK_CONF_Register;
      --  SYSTIMER configuration register
      SYSTIMER_CONF              : aliased SYSTIMER_CONF_Register;
      --  SYSTIMER_FUNC_CLK configuration register
      SYSTIMER_FUNC_CLK_CONF     : aliased SYSTIMER_FUNC_CLK_CONF_Register;
      --  TWAI0 configuration register
      TWAI0_CONF                 : aliased TWAI0_CONF_Register;
      --  TWAI0_FUNC_CLK configuration register
      TWAI0_FUNC_CLK_CONF        : aliased TWAI0_FUNC_CLK_CONF_Register;
      --  TWAI1 configuration register
      TWAI1_CONF                 : aliased TWAI1_CONF_Register;
      --  TWAI1_FUNC_CLK configuration register
      TWAI1_FUNC_CLK_CONF        : aliased TWAI1_FUNC_CLK_CONF_Register;
      --  I2S configuration register
      I2S_CONF                   : aliased I2S_CONF_Register;
      --  I2S_TX_CLKM configuration register
      I2S_TX_CLKM_CONF           : aliased I2S_TX_CLKM_CONF_Register;
      --  I2S_TX_CLKM_DIV configuration register
      I2S_TX_CLKM_DIV_CONF       : aliased I2S_TX_CLKM_DIV_CONF_Register;
      --  I2S_RX_CLKM configuration register
      I2S_RX_CLKM_CONF           : aliased I2S_RX_CLKM_CONF_Register;
      --  I2S_RX_CLKM_DIV configuration register
      I2S_RX_CLKM_DIV_CONF       : aliased I2S_RX_CLKM_DIV_CONF_Register;
      --  SARADC configuration register
      SARADC_CONF                : aliased SARADC_CONF_Register;
      --  SARADC_CLKM configuration register
      SARADC_CLKM_CONF           : aliased SARADC_CLKM_CONF_Register;
      --  TSENS_CLK configuration register
      TSENS_CLK_CONF             : aliased TSENS_CLK_CONF_Register;
      --  USB_DEVICE configuration register
      USB_DEVICE_CONF            : aliased USB_DEVICE_CONF_Register;
      --  INTMTX configuration register
      INTMTX_CONF                : aliased INTMTX_CONF_Register;
      --  PCNT configuration register
      PCNT_CONF                  : aliased PCNT_CONF_Register;
      --  ETM configuration register
      ETM_CONF                   : aliased ETM_CONF_Register;
      --  PWM configuration register
      PWM_CONF                   : aliased PWM_CONF_Register;
      --  PWM_CLK configuration register
      PWM_CLK_CONF               : aliased PWM_CLK_CONF_Register;
      --  PARL_IO configuration register
      PARL_IO_CONF               : aliased PARL_IO_CONF_Register;
      --  PARL_CLK_RX configuration register
      PARL_CLK_RX_CONF           : aliased PARL_CLK_RX_CONF_Register;
      --  PARL_CLK_TX configuration register
      PARL_CLK_TX_CONF           : aliased PARL_CLK_TX_CONF_Register;
      --  SDIO_SLAVE configuration register
      SDIO_SLAVE_CONF            : aliased SDIO_SLAVE_CONF_Register;
      --  PVT_MONITOR configuration register
      PVT_MONITOR_CONF           : aliased PVT_MONITOR_CONF_Register;
      --  PVT_MONITOR function clock configuration register
      PVT_MONITOR_FUNC_CLK_CONF  : aliased PVT_MONITOR_FUNC_CLK_CONF_Register;
      --  GDMA configuration register
      GDMA_CONF                  : aliased GDMA_CONF_Register;
      --  SPI2 configuration register
      SPI2_CONF                  : aliased SPI2_CONF_Register;
      --  SPI2_CLKM configuration register
      SPI2_CLKM_CONF             : aliased SPI2_CLKM_CONF_Register;
      --  AES configuration register
      AES_CONF                   : aliased AES_CONF_Register;
      --  SHA configuration register
      SHA_CONF                   : aliased SHA_CONF_Register;
      --  RSA configuration register
      RSA_CONF                   : aliased RSA_CONF_Register;
      --  RSA power control register
      RSA_PD_CTRL                : aliased RSA_PD_CTRL_Register;
      --  ECC configuration register
      ECC_CONF                   : aliased ECC_CONF_Register;
      --  ECC power control register
      ECC_PD_CTRL                : aliased ECC_PD_CTRL_Register;
      --  DS configuration register
      DS_CONF                    : aliased DS_CONF_Register;
      --  HMAC configuration register
      HMAC_CONF                  : aliased HMAC_CONF_Register;
      --  IOMUX configuration register
      IOMUX_CONF                 : aliased IOMUX_CONF_Register;
      --  IOMUX_CLK configuration register
      IOMUX_CLK_CONF             : aliased IOMUX_CLK_CONF_Register;
      --  MEM_MONITOR configuration register
      MEM_MONITOR_CONF           : aliased MEM_MONITOR_CONF_Register;
      --  REGDMA configuration register
      REGDMA_CONF                : aliased REGDMA_CONF_Register;
      --  retention configuration register
      RETENTION_CONF             : aliased RETENTION_CONF_Register;
      --  TRACE configuration register
      TRACE_CONF                 : aliased TRACE_CONF_Register;
      --  ASSIST configuration register
      ASSIST_CONF                : aliased ASSIST_CONF_Register;
      --  CACHE configuration register
      CACHE_CONF                 : aliased CACHE_CONF_Register;
      --  MODEM_APB configuration register
      MODEM_APB_CONF             : aliased MODEM_APB_CONF_Register;
      --  TIMEOUT configuration register
      TIMEOUT_CONF               : aliased TIMEOUT_CONF_Register;
      --  SYSCLK configuration register
      SYSCLK_CONF                : aliased SYSCLK_CONF_Register;
      --  CPU_WAITI configuration register
      CPU_WAITI_CONF             : aliased CPU_WAITI_CONF_Register;
      --  CPU_FREQ configuration register
      CPU_FREQ_CONF              : aliased CPU_FREQ_CONF_Register;
      --  AHB_FREQ configuration register
      AHB_FREQ_CONF              : aliased AHB_FREQ_CONF_Register;
      --  APB_FREQ configuration register
      APB_FREQ_CONF              : aliased APB_FREQ_CONF_Register;
      --  SYSCLK frequency query 0 register
      SYSCLK_FREQ_QUERY_0        : aliased SYSCLK_FREQ_QUERY_0_Register;
      --  SPLL DIV clock-gating configuration register
      PLL_DIV_CLK_EN             : aliased PLL_DIV_CLK_EN_Register;
      --  CLK_OUT_EN configuration register
      CTRL_CLK_OUT_EN            : aliased CTRL_CLK_OUT_EN_Register;
      --  TICK configuration register
      CTRL_TICK_CONF             : aliased CTRL_TICK_CONF_Register;
      --  32KHz clock configuration register
      CTRL_32K_CONF              : aliased CTRL_32K_CONF_Register;
      --  HP SRAM/ROM configuration register
      SRAM_POWER_CONF            : aliased SRAM_POWER_CONF_Register;
      --  reset event bypass backdoor configuration register
      RESET_EVENT_BYPASS         : aliased RESET_EVENT_BYPASS_Register;
      --  fpga debug register
      FPGA_DEBUG                 : aliased HAL.UInt32;
      --  PCR clock gating configure register
      CLOCK_GATE                 : aliased CLOCK_GATE_Register;
      --  Date register.
      DATE                       : aliased DATE_Register;
   end record
     with Volatile;

   for PCR_Peripheral use record
      UART0_CONF                 at 16#0# range 0 .. 31;
      UART0_SCLK_CONF            at 16#4# range 0 .. 31;
      UART0_PD_CTRL              at 16#8# range 0 .. 31;
      UART1_CONF                 at 16#C# range 0 .. 31;
      UART1_SCLK_CONF            at 16#10# range 0 .. 31;
      UART1_PD_CTRL              at 16#14# range 0 .. 31;
      MSPI_CONF                  at 16#18# range 0 .. 31;
      MSPI_CLK_CONF              at 16#1C# range 0 .. 31;
      I2C0_CONF                  at 16#20# range 0 .. 31;
      I2C_SCLK_CONF              at 16#24# range 0 .. 31;
      UHCI_CONF                  at 16#28# range 0 .. 31;
      RMT_CONF                   at 16#2C# range 0 .. 31;
      RMT_SCLK_CONF              at 16#30# range 0 .. 31;
      LEDC_CONF                  at 16#34# range 0 .. 31;
      LEDC_SCLK_CONF             at 16#38# range 0 .. 31;
      TIMERGROUP0_CONF           at 16#3C# range 0 .. 31;
      TIMERGROUP0_TIMER_CLK_CONF at 16#40# range 0 .. 31;
      TIMERGROUP0_WDT_CLK_CONF   at 16#44# range 0 .. 31;
      TIMERGROUP1_CONF           at 16#48# range 0 .. 31;
      TIMERGROUP1_TIMER_CLK_CONF at 16#4C# range 0 .. 31;
      TIMERGROUP1_WDT_CLK_CONF   at 16#50# range 0 .. 31;
      SYSTIMER_CONF              at 16#54# range 0 .. 31;
      SYSTIMER_FUNC_CLK_CONF     at 16#58# range 0 .. 31;
      TWAI0_CONF                 at 16#5C# range 0 .. 31;
      TWAI0_FUNC_CLK_CONF        at 16#60# range 0 .. 31;
      TWAI1_CONF                 at 16#64# range 0 .. 31;
      TWAI1_FUNC_CLK_CONF        at 16#68# range 0 .. 31;
      I2S_CONF                   at 16#6C# range 0 .. 31;
      I2S_TX_CLKM_CONF           at 16#70# range 0 .. 31;
      I2S_TX_CLKM_DIV_CONF       at 16#74# range 0 .. 31;
      I2S_RX_CLKM_CONF           at 16#78# range 0 .. 31;
      I2S_RX_CLKM_DIV_CONF       at 16#7C# range 0 .. 31;
      SARADC_CONF                at 16#80# range 0 .. 31;
      SARADC_CLKM_CONF           at 16#84# range 0 .. 31;
      TSENS_CLK_CONF             at 16#88# range 0 .. 31;
      USB_DEVICE_CONF            at 16#8C# range 0 .. 31;
      INTMTX_CONF                at 16#90# range 0 .. 31;
      PCNT_CONF                  at 16#94# range 0 .. 31;
      ETM_CONF                   at 16#98# range 0 .. 31;
      PWM_CONF                   at 16#9C# range 0 .. 31;
      PWM_CLK_CONF               at 16#A0# range 0 .. 31;
      PARL_IO_CONF               at 16#A4# range 0 .. 31;
      PARL_CLK_RX_CONF           at 16#A8# range 0 .. 31;
      PARL_CLK_TX_CONF           at 16#AC# range 0 .. 31;
      SDIO_SLAVE_CONF            at 16#B0# range 0 .. 31;
      PVT_MONITOR_CONF           at 16#B4# range 0 .. 31;
      PVT_MONITOR_FUNC_CLK_CONF  at 16#B8# range 0 .. 31;
      GDMA_CONF                  at 16#BC# range 0 .. 31;
      SPI2_CONF                  at 16#C0# range 0 .. 31;
      SPI2_CLKM_CONF             at 16#C4# range 0 .. 31;
      AES_CONF                   at 16#C8# range 0 .. 31;
      SHA_CONF                   at 16#CC# range 0 .. 31;
      RSA_CONF                   at 16#D0# range 0 .. 31;
      RSA_PD_CTRL                at 16#D4# range 0 .. 31;
      ECC_CONF                   at 16#D8# range 0 .. 31;
      ECC_PD_CTRL                at 16#DC# range 0 .. 31;
      DS_CONF                    at 16#E0# range 0 .. 31;
      HMAC_CONF                  at 16#E4# range 0 .. 31;
      IOMUX_CONF                 at 16#E8# range 0 .. 31;
      IOMUX_CLK_CONF             at 16#EC# range 0 .. 31;
      MEM_MONITOR_CONF           at 16#F0# range 0 .. 31;
      REGDMA_CONF                at 16#F4# range 0 .. 31;
      RETENTION_CONF             at 16#F8# range 0 .. 31;
      TRACE_CONF                 at 16#FC# range 0 .. 31;
      ASSIST_CONF                at 16#100# range 0 .. 31;
      CACHE_CONF                 at 16#104# range 0 .. 31;
      MODEM_APB_CONF             at 16#108# range 0 .. 31;
      TIMEOUT_CONF               at 16#10C# range 0 .. 31;
      SYSCLK_CONF                at 16#110# range 0 .. 31;
      CPU_WAITI_CONF             at 16#114# range 0 .. 31;
      CPU_FREQ_CONF              at 16#118# range 0 .. 31;
      AHB_FREQ_CONF              at 16#11C# range 0 .. 31;
      APB_FREQ_CONF              at 16#120# range 0 .. 31;
      SYSCLK_FREQ_QUERY_0        at 16#124# range 0 .. 31;
      PLL_DIV_CLK_EN             at 16#128# range 0 .. 31;
      CTRL_CLK_OUT_EN            at 16#12C# range 0 .. 31;
      CTRL_TICK_CONF             at 16#130# range 0 .. 31;
      CTRL_32K_CONF              at 16#134# range 0 .. 31;
      SRAM_POWER_CONF            at 16#138# range 0 .. 31;
      RESET_EVENT_BYPASS         at 16#FF0# range 0 .. 31;
      FPGA_DEBUG                 at 16#FF4# range 0 .. 31;
      CLOCK_GATE                 at 16#FF8# range 0 .. 31;
      DATE                       at 16#FFC# range 0 .. 31;
   end record;

   --  PCR Peripheral
   PCR_Periph : aliased PCR_Peripheral
     with Import, Address => PCR_Base;

end ESP32_C6_SVD.PCR;
