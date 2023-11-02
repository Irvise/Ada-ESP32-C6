pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.GPIOSD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SIGMADELTA_SD0_IN_Field is HAL.UInt8;
   subtype SIGMADELTA_SD0_PRESCALE_Field is HAL.UInt8;

   --  Duty Cycle Configure Register of SDM%s
   type SIGMADELTA_Register is record
      --  This field is used to configure the duty cycle of sigma delta
      --  modulation output.
      SD0_IN         : SIGMADELTA_SD0_IN_Field := 16#0#;
      --  This field is used to set a divider value to divide APB clock.
      SD0_PRESCALE   : SIGMADELTA_SD0_PRESCALE_Field := 16#FF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIGMADELTA_Register use record
      SD0_IN         at 0 range 0 .. 7;
      SD0_PRESCALE   at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Duty Cycle Configure Register of SDM%s
   type SIGMADELTA_Registers is array (0 .. 3) of SIGMADELTA_Register;

   --  Clock Gating Configure Register
   type CLOCK_GATE_Register is record
      --  Clock enable bit of configuration registers for sigma delta
      --  modulation.
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

   --  MISC Register
   type SIGMADELTA_MISC_Register is record
      --  unspecified
      Reserved_0_29   : HAL.UInt30 := 16#0#;
      --  Clock enable bit of sigma delta modulation.
      FUNCTION_CLK_EN : Boolean := False;
      --  Reserved.
      SPI_SWAP        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIGMADELTA_MISC_Register use record
      Reserved_0_29   at 0 range 0 .. 29;
      FUNCTION_CLK_EN at 0 range 30 .. 30;
      SPI_SWAP        at 0 range 31 .. 31;
   end record;

   subtype GLITCH_FILTER_CH_FILTER_CH0_INPUT_IO_NUM_Field is HAL.UInt6;
   subtype GLITCH_FILTER_CH_FILTER_CH0_WINDOW_THRES_Field is HAL.UInt6;
   subtype GLITCH_FILTER_CH_FILTER_CH0_WINDOW_WIDTH_Field is HAL.UInt6;

   --  Glitch Filter Configure Register of Channel%s
   type GLITCH_FILTER_CH_Register is record
      --  Glitch Filter channel enable bit.
      FILTER_CH0_EN           : Boolean := False;
      --  Glitch Filter input io number.
      FILTER_CH0_INPUT_IO_NUM : GLITCH_FILTER_CH_FILTER_CH0_INPUT_IO_NUM_Field :=
                                 16#0#;
      --  Glitch Filter window threshold.
      FILTER_CH0_WINDOW_THRES : GLITCH_FILTER_CH_FILTER_CH0_WINDOW_THRES_Field :=
                                 16#0#;
      --  Glitch Filter window width.
      FILTER_CH0_WINDOW_WIDTH : GLITCH_FILTER_CH_FILTER_CH0_WINDOW_WIDTH_Field :=
                                 16#0#;
      --  unspecified
      Reserved_19_31          : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLITCH_FILTER_CH_Register use record
      FILTER_CH0_EN           at 0 range 0 .. 0;
      FILTER_CH0_INPUT_IO_NUM at 0 range 1 .. 6;
      FILTER_CH0_WINDOW_THRES at 0 range 7 .. 12;
      FILTER_CH0_WINDOW_WIDTH at 0 range 13 .. 18;
      Reserved_19_31          at 0 range 19 .. 31;
   end record;

   --  Glitch Filter Configure Register of Channel%s
   type GLITCH_FILTER_CH_Registers is array (0 .. 7)
     of GLITCH_FILTER_CH_Register;

   subtype ETM_EVENT_CH_CFG_ETM_CH0_EVENT_SEL_Field is HAL.UInt5;

   --  Etm Config register of Channel%s
   type ETM_EVENT_CH_CFG_Register is record
      --  Etm event channel select gpio.
      ETM_CH0_EVENT_SEL : ETM_EVENT_CH_CFG_ETM_CH0_EVENT_SEL_Field := 16#0#;
      --  unspecified
      Reserved_5_6      : HAL.UInt2 := 16#0#;
      --  Etm event send enable bit.
      ETM_CH0_EVENT_EN  : Boolean := False;
      --  unspecified
      Reserved_8_31     : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_EVENT_CH_CFG_Register use record
      ETM_CH0_EVENT_SEL at 0 range 0 .. 4;
      Reserved_5_6      at 0 range 5 .. 6;
      ETM_CH0_EVENT_EN  at 0 range 7 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   --  Etm Config register of Channel%s
   type ETM_EVENT_CH_CFG_Registers is array (0 .. 7)
     of ETM_EVENT_CH_CFG_Register;

   subtype ETM_TASK_P0_CFG_ETM_TASK_GPIO0_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P0_CFG_ETM_TASK_GPIO1_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P0_CFG_ETM_TASK_GPIO2_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P0_CFG_ETM_TASK_GPIO3_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P0_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO0_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO0_SEL : ETM_TASK_P0_CFG_ETM_TASK_GPIO0_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO1_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO1_SEL : ETM_TASK_P0_CFG_ETM_TASK_GPIO1_SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO2_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO2_SEL : ETM_TASK_P0_CFG_ETM_TASK_GPIO2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23     : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO3_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO3_SEL : ETM_TASK_P0_CFG_ETM_TASK_GPIO3_SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P0_CFG_Register use record
      ETM_TASK_GPIO0_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO0_SEL at 0 range 1 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      ETM_TASK_GPIO1_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO1_SEL at 0 range 9 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      ETM_TASK_GPIO2_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO2_SEL at 0 range 17 .. 19;
      Reserved_20_23     at 0 range 20 .. 23;
      ETM_TASK_GPIO3_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO3_SEL at 0 range 25 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P1_CFG_ETM_TASK_GPIO4_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P1_CFG_ETM_TASK_GPIO5_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P1_CFG_ETM_TASK_GPIO6_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P1_CFG_ETM_TASK_GPIO7_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P1_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO4_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO4_SEL : ETM_TASK_P1_CFG_ETM_TASK_GPIO4_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO5_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO5_SEL : ETM_TASK_P1_CFG_ETM_TASK_GPIO5_SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO6_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO6_SEL : ETM_TASK_P1_CFG_ETM_TASK_GPIO6_SEL_Field := 16#0#;
      --  unspecified
      Reserved_20_23     : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO7_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO7_SEL : ETM_TASK_P1_CFG_ETM_TASK_GPIO7_SEL_Field := 16#0#;
      --  unspecified
      Reserved_28_31     : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P1_CFG_Register use record
      ETM_TASK_GPIO4_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO4_SEL at 0 range 1 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      ETM_TASK_GPIO5_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO5_SEL at 0 range 9 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      ETM_TASK_GPIO6_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO6_SEL at 0 range 17 .. 19;
      Reserved_20_23     at 0 range 20 .. 23;
      ETM_TASK_GPIO7_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO7_SEL at 0 range 25 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P2_CFG_ETM_TASK_GPIO8_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P2_CFG_ETM_TASK_GPIO9_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P2_CFG_ETM_TASK_GPIO10_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P2_CFG_ETM_TASK_GPIO11_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P2_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO8_EN   : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO8_SEL  : ETM_TASK_P2_CFG_ETM_TASK_GPIO8_SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO9_EN   : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO9_SEL  : ETM_TASK_P2_CFG_ETM_TASK_GPIO9_SEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO10_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO10_SEL : ETM_TASK_P2_CFG_ETM_TASK_GPIO10_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_23      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO11_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO11_SEL : ETM_TASK_P2_CFG_ETM_TASK_GPIO11_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P2_CFG_Register use record
      ETM_TASK_GPIO8_EN   at 0 range 0 .. 0;
      ETM_TASK_GPIO8_SEL  at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO9_EN   at 0 range 8 .. 8;
      ETM_TASK_GPIO9_SEL  at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO10_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO10_SEL at 0 range 17 .. 19;
      Reserved_20_23      at 0 range 20 .. 23;
      ETM_TASK_GPIO11_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO11_SEL at 0 range 25 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P3_CFG_ETM_TASK_GPIO12_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P3_CFG_ETM_TASK_GPIO13_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P3_CFG_ETM_TASK_GPIO14_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P3_CFG_ETM_TASK_GPIO15_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P3_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO12_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO12_SEL : ETM_TASK_P3_CFG_ETM_TASK_GPIO12_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO13_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO13_SEL : ETM_TASK_P3_CFG_ETM_TASK_GPIO13_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO14_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO14_SEL : ETM_TASK_P3_CFG_ETM_TASK_GPIO14_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_23      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO15_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO15_SEL : ETM_TASK_P3_CFG_ETM_TASK_GPIO15_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P3_CFG_Register use record
      ETM_TASK_GPIO12_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO12_SEL at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO13_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO13_SEL at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO14_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO14_SEL at 0 range 17 .. 19;
      Reserved_20_23      at 0 range 20 .. 23;
      ETM_TASK_GPIO15_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO15_SEL at 0 range 25 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P4_CFG_ETM_TASK_GPIO16_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P4_CFG_ETM_TASK_GPIO17_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P4_CFG_ETM_TASK_GPIO18_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P4_CFG_ETM_TASK_GPIO19_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P4_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO16_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO16_SEL : ETM_TASK_P4_CFG_ETM_TASK_GPIO16_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO17_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO17_SEL : ETM_TASK_P4_CFG_ETM_TASK_GPIO17_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO18_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO18_SEL : ETM_TASK_P4_CFG_ETM_TASK_GPIO18_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_23      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO19_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO19_SEL : ETM_TASK_P4_CFG_ETM_TASK_GPIO19_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P4_CFG_Register use record
      ETM_TASK_GPIO16_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO16_SEL at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO17_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO17_SEL at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO18_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO18_SEL at 0 range 17 .. 19;
      Reserved_20_23      at 0 range 20 .. 23;
      ETM_TASK_GPIO19_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO19_SEL at 0 range 25 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P5_CFG_ETM_TASK_GPIO20_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P5_CFG_ETM_TASK_GPIO21_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P5_CFG_ETM_TASK_GPIO22_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P5_CFG_ETM_TASK_GPIO23_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P5_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO20_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO20_SEL : ETM_TASK_P5_CFG_ETM_TASK_GPIO20_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO21_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO21_SEL : ETM_TASK_P5_CFG_ETM_TASK_GPIO21_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO22_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO22_SEL : ETM_TASK_P5_CFG_ETM_TASK_GPIO22_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_23      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO23_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO23_SEL : ETM_TASK_P5_CFG_ETM_TASK_GPIO23_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P5_CFG_Register use record
      ETM_TASK_GPIO20_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO20_SEL at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO21_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO21_SEL at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO22_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO22_SEL at 0 range 17 .. 19;
      Reserved_20_23      at 0 range 20 .. 23;
      ETM_TASK_GPIO23_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO23_SEL at 0 range 25 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P6_CFG_ETM_TASK_GPIO24_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P6_CFG_ETM_TASK_GPIO25_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P6_CFG_ETM_TASK_GPIO26_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P6_CFG_ETM_TASK_GPIO27_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P6_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO24_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO24_SEL : ETM_TASK_P6_CFG_ETM_TASK_GPIO24_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO25_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO25_SEL : ETM_TASK_P6_CFG_ETM_TASK_GPIO25_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO26_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO26_SEL : ETM_TASK_P6_CFG_ETM_TASK_GPIO26_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_23      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO27_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO27_SEL : ETM_TASK_P6_CFG_ETM_TASK_GPIO27_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_28_31      : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P6_CFG_Register use record
      ETM_TASK_GPIO24_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO24_SEL at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO25_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO25_SEL at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO26_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO26_SEL at 0 range 17 .. 19;
      Reserved_20_23      at 0 range 20 .. 23;
      ETM_TASK_GPIO27_EN  at 0 range 24 .. 24;
      ETM_TASK_GPIO27_SEL at 0 range 25 .. 27;
      Reserved_28_31      at 0 range 28 .. 31;
   end record;

   subtype ETM_TASK_P7_CFG_ETM_TASK_GPIO28_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P7_CFG_ETM_TASK_GPIO29_SEL_Field is HAL.UInt3;
   subtype ETM_TASK_P7_CFG_ETM_TASK_GPIO30_SEL_Field is HAL.UInt3;

   --  Etm Configure Register to decide which GPIO been chosen
   type ETM_TASK_P7_CFG_Register is record
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO28_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO28_SEL : ETM_TASK_P7_CFG_ETM_TASK_GPIO28_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_4_7        : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO29_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO29_SEL : ETM_TASK_P7_CFG_ETM_TASK_GPIO29_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_12_15      : HAL.UInt4 := 16#0#;
      --  Enable bit of GPIO response etm task.
      ETM_TASK_GPIO30_EN  : Boolean := False;
      --  GPIO choose a etm task channel.
      ETM_TASK_GPIO30_SEL : ETM_TASK_P7_CFG_ETM_TASK_GPIO30_SEL_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_31      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETM_TASK_P7_CFG_Register use record
      ETM_TASK_GPIO28_EN  at 0 range 0 .. 0;
      ETM_TASK_GPIO28_SEL at 0 range 1 .. 3;
      Reserved_4_7        at 0 range 4 .. 7;
      ETM_TASK_GPIO29_EN  at 0 range 8 .. 8;
      ETM_TASK_GPIO29_SEL at 0 range 9 .. 11;
      Reserved_12_15      at 0 range 12 .. 15;
      ETM_TASK_GPIO30_EN  at 0 range 16 .. 16;
      ETM_TASK_GPIO30_SEL at 0 range 17 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   subtype VERSION_GPIO_SD_DATE_Field is HAL.UInt28;

   --  Version Control Register
   type VERSION_Register is record
      --  Version control register.
      GPIO_SD_DATE   : VERSION_GPIO_SD_DATE_Field := 16#2203050#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERSION_Register use record
      GPIO_SD_DATE   at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Sigma-Delta Modulation
   type GPIO_SD_Peripheral is record
      --  Duty Cycle Configure Register of SDM%s
      SIGMADELTA       : aliased SIGMADELTA_Registers;
      --  Clock Gating Configure Register
      CLOCK_GATE       : aliased CLOCK_GATE_Register;
      --  MISC Register
      SIGMADELTA_MISC  : aliased SIGMADELTA_MISC_Register;
      --  Glitch Filter Configure Register of Channel%s
      GLITCH_FILTER_CH : aliased GLITCH_FILTER_CH_Registers;
      --  Etm Config register of Channel%s
      ETM_EVENT_CH_CFG : aliased ETM_EVENT_CH_CFG_Registers;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P0_CFG  : aliased ETM_TASK_P0_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P1_CFG  : aliased ETM_TASK_P1_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P2_CFG  : aliased ETM_TASK_P2_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P3_CFG  : aliased ETM_TASK_P3_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P4_CFG  : aliased ETM_TASK_P4_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P5_CFG  : aliased ETM_TASK_P5_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P6_CFG  : aliased ETM_TASK_P6_CFG_Register;
      --  Etm Configure Register to decide which GPIO been chosen
      ETM_TASK_P7_CFG  : aliased ETM_TASK_P7_CFG_Register;
      --  Version Control Register
      VERSION          : aliased VERSION_Register;
   end record
     with Volatile;

   for GPIO_SD_Peripheral use record
      SIGMADELTA       at 16#0# range 0 .. 127;
      CLOCK_GATE       at 16#20# range 0 .. 31;
      SIGMADELTA_MISC  at 16#24# range 0 .. 31;
      GLITCH_FILTER_CH at 16#30# range 0 .. 255;
      ETM_EVENT_CH_CFG at 16#60# range 0 .. 255;
      ETM_TASK_P0_CFG  at 16#A0# range 0 .. 31;
      ETM_TASK_P1_CFG  at 16#A4# range 0 .. 31;
      ETM_TASK_P2_CFG  at 16#A8# range 0 .. 31;
      ETM_TASK_P3_CFG  at 16#AC# range 0 .. 31;
      ETM_TASK_P4_CFG  at 16#B0# range 0 .. 31;
      ETM_TASK_P5_CFG  at 16#B4# range 0 .. 31;
      ETM_TASK_P6_CFG  at 16#B8# range 0 .. 31;
      ETM_TASK_P7_CFG  at 16#BC# range 0 .. 31;
      VERSION          at 16#FC# range 0 .. 31;
   end record;

   --  Sigma-Delta Modulation
   GPIO_SD_Periph : aliased GPIO_SD_Peripheral
     with Import, Address => GPIO_SD_Base;

end ESP32_C6_SVD.GPIOSD;
