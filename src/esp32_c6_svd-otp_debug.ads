pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.OTP_DEBUG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Otp debuger clk_en configuration register.
   type CLK_Register is record
      --  Force clock on for this register file.
      EN            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Otp_debuger apb2otp enable configuration register.
   type APB2OTP_EN_Register is record
      --  Debug mode enable signal.
      APB2OTP_EN    : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2OTP_EN_Register use record
      APB2OTP_EN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  eFuse version register.
   type DATE_Register is record
      --  Stores otp_debug version.
      DATE           : DATE_DATE_Field := 16#211028#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#2#;
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

   --  OTP_DEBUG Peripheral
   type OTP_DEBUG_Peripheral is record
      --  Otp debuger block0 data register1.
      WR_DIS          : aliased HAL.UInt32;
      --  Otp debuger block0 data register2.
      BLK0_BACKUP1_W1 : aliased HAL.UInt32;
      --  Otp debuger block0 data register3.
      BLK0_BACKUP1_W2 : aliased HAL.UInt32;
      --  Otp debuger block0 data register4.
      BLK0_BACKUP1_W3 : aliased HAL.UInt32;
      --  Otp debuger block0 data register5.
      BLK0_BACKUP1_W4 : aliased HAL.UInt32;
      --  Otp debuger block0 data register6.
      BLK0_BACKUP1_W5 : aliased HAL.UInt32;
      --  Otp debuger block0 data register7.
      BLK0_BACKUP2_W1 : aliased HAL.UInt32;
      --  Otp debuger block0 data register8.
      BLK0_BACKUP2_W2 : aliased HAL.UInt32;
      --  Otp debuger block0 data register9.
      BLK0_BACKUP2_W3 : aliased HAL.UInt32;
      --  Otp debuger block0 data register10.
      BLK0_BACKUP2_W4 : aliased HAL.UInt32;
      --  Otp debuger block0 data register11.
      BLK0_BACKUP2_W5 : aliased HAL.UInt32;
      --  Otp debuger block0 data register12.
      BLK0_BACKUP3_W1 : aliased HAL.UInt32;
      --  Otp debuger block0 data register13.
      BLK0_BACKUP3_W2 : aliased HAL.UInt32;
      --  Otp debuger block0 data register14.
      BLK0_BACKUP3_W3 : aliased HAL.UInt32;
      --  Otp debuger block0 data register15.
      BLK0_BACKUP3_W4 : aliased HAL.UInt32;
      --  Otp debuger block0 data register16.
      BLK0_BACKUP3_W5 : aliased HAL.UInt32;
      --  Otp debuger block0 data register17.
      BLK0_BACKUP4_W1 : aliased HAL.UInt32;
      --  Otp debuger block0 data register18.
      BLK0_BACKUP4_W2 : aliased HAL.UInt32;
      --  Otp debuger block0 data register19.
      BLK0_BACKUP4_W3 : aliased HAL.UInt32;
      --  Otp debuger block0 data register20.
      BLK0_BACKUP4_W4 : aliased HAL.UInt32;
      --  Otp debuger block0 data register21.
      BLK0_BACKUP4_W5 : aliased HAL.UInt32;
      --  Otp debuger block1 data register1.
      BLK1_W1         : aliased HAL.UInt32;
      --  Otp debuger block1 data register2.
      BLK1_W2         : aliased HAL.UInt32;
      --  Otp debuger block1 data register3.
      BLK1_W3         : aliased HAL.UInt32;
      --  Otp debuger block1 data register4.
      BLK1_W4         : aliased HAL.UInt32;
      --  Otp debuger block1 data register5.
      BLK1_W5         : aliased HAL.UInt32;
      --  Otp debuger block1 data register6.
      BLK1_W6         : aliased HAL.UInt32;
      --  Otp debuger block1 data register7.
      BLK1_W7         : aliased HAL.UInt32;
      --  Otp debuger block1 data register8.
      BLK1_W8         : aliased HAL.UInt32;
      --  Otp debuger block1 data register9.
      BLK1_W9         : aliased HAL.UInt32;
      --  Otp debuger block2 data register1.
      BLK2_W1         : aliased HAL.UInt32;
      --  Otp debuger block2 data register2.
      BLK2_W2         : aliased HAL.UInt32;
      --  Otp debuger block2 data register3.
      BLK2_W3         : aliased HAL.UInt32;
      --  Otp debuger block2 data register4.
      BLK2_W4         : aliased HAL.UInt32;
      --  Otp debuger block2 data register5.
      BLK2_W5         : aliased HAL.UInt32;
      --  Otp debuger block2 data register6.
      BLK2_W6         : aliased HAL.UInt32;
      --  Otp debuger block2 data register7.
      BLK2_W7         : aliased HAL.UInt32;
      --  Otp debuger block2 data register8.
      BLK2_W8         : aliased HAL.UInt32;
      --  Otp debuger block2 data register9.
      BLK2_W9         : aliased HAL.UInt32;
      --  Otp debuger block2 data register10.
      BLK2_W10        : aliased HAL.UInt32;
      --  Otp debuger block2 data register11.
      BLK2_W11        : aliased HAL.UInt32;
      --  Otp debuger block3 data register1.
      BLK3_W1         : aliased HAL.UInt32;
      --  Otp debuger block3 data register2.
      BLK3_W2         : aliased HAL.UInt32;
      --  Otp debuger block3 data register3.
      BLK3_W3         : aliased HAL.UInt32;
      --  Otp debuger block3 data register4.
      BLK3_W4         : aliased HAL.UInt32;
      --  Otp debuger block3 data register5.
      BLK3_W5         : aliased HAL.UInt32;
      --  Otp debuger block3 data register6.
      BLK3_W6         : aliased HAL.UInt32;
      --  Otp debuger block3 data register7.
      BLK3_W7         : aliased HAL.UInt32;
      --  Otp debuger block3 data register8.
      BLK3_W8         : aliased HAL.UInt32;
      --  Otp debuger block3 data register9.
      BLK3_W9         : aliased HAL.UInt32;
      --  Otp debuger block3 data register10.
      BLK3_W10        : aliased HAL.UInt32;
      --  Otp debuger block3 data register11.
      BLK3_W11        : aliased HAL.UInt32;
      --  Otp debuger block4 data register1.
      BLK4_W1         : aliased HAL.UInt32;
      --  Otp debuger block4 data register2.
      BLK4_W2         : aliased HAL.UInt32;
      --  Otp debuger block4 data register3.
      BLK4_W3         : aliased HAL.UInt32;
      --  Otp debuger block4 data register4.
      BLK4_W4         : aliased HAL.UInt32;
      --  Otp debuger block4 data register5.
      BLK4_W5         : aliased HAL.UInt32;
      --  Otp debuger block4 data register6.
      BLK4_W6         : aliased HAL.UInt32;
      --  Otp debuger block4 data register7.
      BLK4_W7         : aliased HAL.UInt32;
      --  Otp debuger block4 data register8.
      BLK4_W8         : aliased HAL.UInt32;
      --  Otp debuger block4 data register9.
      BLK4_W9         : aliased HAL.UInt32;
      --  Otp debuger block4 data registe10.
      BLK4_W10        : aliased HAL.UInt32;
      --  Otp debuger block4 data register11.
      BLK4_W11        : aliased HAL.UInt32;
      --  Otp debuger block5 data register1.
      BLK5_W1         : aliased HAL.UInt32;
      --  Otp debuger block5 data register2.
      BLK5_W2         : aliased HAL.UInt32;
      --  Otp debuger block5 data register3.
      BLK5_W3         : aliased HAL.UInt32;
      --  Otp debuger block5 data register4.
      BLK5_W4         : aliased HAL.UInt32;
      --  Otp debuger block5 data register5.
      BLK5_W5         : aliased HAL.UInt32;
      --  Otp debuger block5 data register6.
      BLK5_W6         : aliased HAL.UInt32;
      --  Otp debuger block5 data register7.
      BLK5_W7         : aliased HAL.UInt32;
      --  Otp debuger block5 data register8.
      BLK5_W8         : aliased HAL.UInt32;
      --  Otp debuger block5 data register9.
      BLK5_W9         : aliased HAL.UInt32;
      --  Otp debuger block5 data register10.
      BLK5_W10        : aliased HAL.UInt32;
      --  Otp debuger block5 data register11.
      BLK5_W11        : aliased HAL.UInt32;
      --  Otp debuger block6 data register1.
      BLK6_W1         : aliased HAL.UInt32;
      --  Otp debuger block6 data register2.
      BLK6_W2         : aliased HAL.UInt32;
      --  Otp debuger block6 data register3.
      BLK6_W3         : aliased HAL.UInt32;
      --  Otp debuger block6 data register4.
      BLK6_W4         : aliased HAL.UInt32;
      --  Otp debuger block6 data register5.
      BLK6_W5         : aliased HAL.UInt32;
      --  Otp debuger block6 data register6.
      BLK6_W6         : aliased HAL.UInt32;
      --  Otp debuger block6 data register7.
      BLK6_W7         : aliased HAL.UInt32;
      --  Otp debuger block6 data register8.
      BLK6_W8         : aliased HAL.UInt32;
      --  Otp debuger block6 data register9.
      BLK6_W9         : aliased HAL.UInt32;
      --  Otp debuger block6 data register10.
      BLK6_W10        : aliased HAL.UInt32;
      --  Otp debuger block6 data register11.
      BLK6_W11        : aliased HAL.UInt32;
      --  Otp debuger block7 data register1.
      BLK7_W1         : aliased HAL.UInt32;
      --  Otp debuger block7 data register2.
      BLK7_W2         : aliased HAL.UInt32;
      --  Otp debuger block7 data register3.
      BLK7_W3         : aliased HAL.UInt32;
      --  Otp debuger block7 data register4.
      BLK7_W4         : aliased HAL.UInt32;
      --  Otp debuger block7 data register5.
      BLK7_W5         : aliased HAL.UInt32;
      --  Otp debuger block7 data register6.
      BLK7_W6         : aliased HAL.UInt32;
      --  Otp debuger block7 data register7.
      BLK7_W7         : aliased HAL.UInt32;
      --  Otp debuger block7 data register8.
      BLK7_W8         : aliased HAL.UInt32;
      --  Otp debuger block7 data register9.
      BLK7_W9         : aliased HAL.UInt32;
      --  Otp debuger block7 data register10.
      BLK7_W10        : aliased HAL.UInt32;
      --  Otp debuger block7 data register11.
      BLK7_W11        : aliased HAL.UInt32;
      --  Otp debuger block8 data register1.
      BLK8_W1         : aliased HAL.UInt32;
      --  Otp debuger block8 data register2.
      BLK8_W2         : aliased HAL.UInt32;
      --  Otp debuger block8 data register3.
      BLK8_W3         : aliased HAL.UInt32;
      --  Otp debuger block8 data register4.
      BLK8_W4         : aliased HAL.UInt32;
      --  Otp debuger block8 data register5.
      BLK8_W5         : aliased HAL.UInt32;
      --  Otp debuger block8 data register6.
      BLK8_W6         : aliased HAL.UInt32;
      --  Otp debuger block8 data register7.
      BLK8_W7         : aliased HAL.UInt32;
      --  Otp debuger block8 data register8.
      BLK8_W8         : aliased HAL.UInt32;
      --  Otp debuger block8 data register9.
      BLK8_W9         : aliased HAL.UInt32;
      --  Otp debuger block8 data register10.
      BLK8_W10        : aliased HAL.UInt32;
      --  Otp debuger block8 data register11.
      BLK8_W11        : aliased HAL.UInt32;
      --  Otp debuger block9 data register1.
      BLK9_W1         : aliased HAL.UInt32;
      --  Otp debuger block9 data register2.
      BLK9_W2         : aliased HAL.UInt32;
      --  Otp debuger block9 data register3.
      BLK9_W3         : aliased HAL.UInt32;
      --  Otp debuger block9 data register4.
      BLK9_W4         : aliased HAL.UInt32;
      --  Otp debuger block9 data register5.
      BLK9_W5         : aliased HAL.UInt32;
      --  Otp debuger block9 data register6.
      BLK9_W6         : aliased HAL.UInt32;
      --  Otp debuger block9 data register7.
      BLK9_W7         : aliased HAL.UInt32;
      --  Otp debuger block9 data register8.
      BLK9_W8         : aliased HAL.UInt32;
      --  Otp debuger block9 data register9.
      BLK9_W9         : aliased HAL.UInt32;
      --  Otp debuger block9 data register10.
      BLK9_W10        : aliased HAL.UInt32;
      --  Otp debuger block9 data register11.
      BLK9_W11        : aliased HAL.UInt32;
      --  Otp debuger block10 data register1.
      BLK10_W1        : aliased HAL.UInt32;
      --  Otp debuger block10 data register2.
      BLK10_W2        : aliased HAL.UInt32;
      --  Otp debuger block10 data register3.
      BLK10_W3        : aliased HAL.UInt32;
      --  Otp debuger block10 data register4.
      BLK10_W4        : aliased HAL.UInt32;
      --  Otp debuger block10 data register5.
      BLK10_W5        : aliased HAL.UInt32;
      --  Otp debuger block10 data register6.
      BLK10_W6        : aliased HAL.UInt32;
      --  Otp debuger block10 data register7.
      BLK10_W7        : aliased HAL.UInt32;
      --  Otp debuger block10 data register8.
      BLK10_W8        : aliased HAL.UInt32;
      --  Otp debuger block10 data register9.
      BLK10_W9        : aliased HAL.UInt32;
      --  Otp debuger block10 data register10.
      BLK10_W10       : aliased HAL.UInt32;
      --  Otp debuger block10 data register11.
      BLK10_W11       : aliased HAL.UInt32;
      --  Otp debuger clk_en configuration register.
      CLK             : aliased CLK_Register;
      --  Otp_debuger apb2otp enable configuration register.
      APB2OTP_EN      : aliased APB2OTP_EN_Register;
      --  eFuse version register.
      DATE            : aliased DATE_Register;
   end record
     with Volatile;

   for OTP_DEBUG_Peripheral use record
      WR_DIS          at 16#0# range 0 .. 31;
      BLK0_BACKUP1_W1 at 16#4# range 0 .. 31;
      BLK0_BACKUP1_W2 at 16#8# range 0 .. 31;
      BLK0_BACKUP1_W3 at 16#C# range 0 .. 31;
      BLK0_BACKUP1_W4 at 16#10# range 0 .. 31;
      BLK0_BACKUP1_W5 at 16#14# range 0 .. 31;
      BLK0_BACKUP2_W1 at 16#18# range 0 .. 31;
      BLK0_BACKUP2_W2 at 16#1C# range 0 .. 31;
      BLK0_BACKUP2_W3 at 16#20# range 0 .. 31;
      BLK0_BACKUP2_W4 at 16#24# range 0 .. 31;
      BLK0_BACKUP2_W5 at 16#28# range 0 .. 31;
      BLK0_BACKUP3_W1 at 16#2C# range 0 .. 31;
      BLK0_BACKUP3_W2 at 16#30# range 0 .. 31;
      BLK0_BACKUP3_W3 at 16#34# range 0 .. 31;
      BLK0_BACKUP3_W4 at 16#38# range 0 .. 31;
      BLK0_BACKUP3_W5 at 16#3C# range 0 .. 31;
      BLK0_BACKUP4_W1 at 16#40# range 0 .. 31;
      BLK0_BACKUP4_W2 at 16#44# range 0 .. 31;
      BLK0_BACKUP4_W3 at 16#48# range 0 .. 31;
      BLK0_BACKUP4_W4 at 16#4C# range 0 .. 31;
      BLK0_BACKUP4_W5 at 16#50# range 0 .. 31;
      BLK1_W1         at 16#54# range 0 .. 31;
      BLK1_W2         at 16#58# range 0 .. 31;
      BLK1_W3         at 16#5C# range 0 .. 31;
      BLK1_W4         at 16#60# range 0 .. 31;
      BLK1_W5         at 16#64# range 0 .. 31;
      BLK1_W6         at 16#68# range 0 .. 31;
      BLK1_W7         at 16#6C# range 0 .. 31;
      BLK1_W8         at 16#70# range 0 .. 31;
      BLK1_W9         at 16#74# range 0 .. 31;
      BLK2_W1         at 16#78# range 0 .. 31;
      BLK2_W2         at 16#7C# range 0 .. 31;
      BLK2_W3         at 16#80# range 0 .. 31;
      BLK2_W4         at 16#84# range 0 .. 31;
      BLK2_W5         at 16#88# range 0 .. 31;
      BLK2_W6         at 16#8C# range 0 .. 31;
      BLK2_W7         at 16#90# range 0 .. 31;
      BLK2_W8         at 16#94# range 0 .. 31;
      BLK2_W9         at 16#98# range 0 .. 31;
      BLK2_W10        at 16#9C# range 0 .. 31;
      BLK2_W11        at 16#A0# range 0 .. 31;
      BLK3_W1         at 16#A4# range 0 .. 31;
      BLK3_W2         at 16#A8# range 0 .. 31;
      BLK3_W3         at 16#AC# range 0 .. 31;
      BLK3_W4         at 16#B0# range 0 .. 31;
      BLK3_W5         at 16#B4# range 0 .. 31;
      BLK3_W6         at 16#B8# range 0 .. 31;
      BLK3_W7         at 16#BC# range 0 .. 31;
      BLK3_W8         at 16#C0# range 0 .. 31;
      BLK3_W9         at 16#C4# range 0 .. 31;
      BLK3_W10        at 16#C8# range 0 .. 31;
      BLK3_W11        at 16#CC# range 0 .. 31;
      BLK4_W1         at 16#D0# range 0 .. 31;
      BLK4_W2         at 16#D4# range 0 .. 31;
      BLK4_W3         at 16#D8# range 0 .. 31;
      BLK4_W4         at 16#DC# range 0 .. 31;
      BLK4_W5         at 16#E0# range 0 .. 31;
      BLK4_W6         at 16#E4# range 0 .. 31;
      BLK4_W7         at 16#E8# range 0 .. 31;
      BLK4_W8         at 16#EC# range 0 .. 31;
      BLK4_W9         at 16#F0# range 0 .. 31;
      BLK4_W10        at 16#F4# range 0 .. 31;
      BLK4_W11        at 16#F8# range 0 .. 31;
      BLK5_W1         at 16#FC# range 0 .. 31;
      BLK5_W2         at 16#100# range 0 .. 31;
      BLK5_W3         at 16#104# range 0 .. 31;
      BLK5_W4         at 16#108# range 0 .. 31;
      BLK5_W5         at 16#10C# range 0 .. 31;
      BLK5_W6         at 16#110# range 0 .. 31;
      BLK5_W7         at 16#114# range 0 .. 31;
      BLK5_W8         at 16#118# range 0 .. 31;
      BLK5_W9         at 16#11C# range 0 .. 31;
      BLK5_W10        at 16#120# range 0 .. 31;
      BLK5_W11        at 16#124# range 0 .. 31;
      BLK6_W1         at 16#128# range 0 .. 31;
      BLK6_W2         at 16#12C# range 0 .. 31;
      BLK6_W3         at 16#130# range 0 .. 31;
      BLK6_W4         at 16#134# range 0 .. 31;
      BLK6_W5         at 16#138# range 0 .. 31;
      BLK6_W6         at 16#13C# range 0 .. 31;
      BLK6_W7         at 16#140# range 0 .. 31;
      BLK6_W8         at 16#144# range 0 .. 31;
      BLK6_W9         at 16#148# range 0 .. 31;
      BLK6_W10        at 16#14C# range 0 .. 31;
      BLK6_W11        at 16#150# range 0 .. 31;
      BLK7_W1         at 16#154# range 0 .. 31;
      BLK7_W2         at 16#158# range 0 .. 31;
      BLK7_W3         at 16#15C# range 0 .. 31;
      BLK7_W4         at 16#160# range 0 .. 31;
      BLK7_W5         at 16#164# range 0 .. 31;
      BLK7_W6         at 16#168# range 0 .. 31;
      BLK7_W7         at 16#16C# range 0 .. 31;
      BLK7_W8         at 16#170# range 0 .. 31;
      BLK7_W9         at 16#174# range 0 .. 31;
      BLK7_W10        at 16#178# range 0 .. 31;
      BLK7_W11        at 16#17C# range 0 .. 31;
      BLK8_W1         at 16#180# range 0 .. 31;
      BLK8_W2         at 16#184# range 0 .. 31;
      BLK8_W3         at 16#188# range 0 .. 31;
      BLK8_W4         at 16#18C# range 0 .. 31;
      BLK8_W5         at 16#190# range 0 .. 31;
      BLK8_W6         at 16#194# range 0 .. 31;
      BLK8_W7         at 16#198# range 0 .. 31;
      BLK8_W8         at 16#19C# range 0 .. 31;
      BLK8_W9         at 16#1A0# range 0 .. 31;
      BLK8_W10        at 16#1A4# range 0 .. 31;
      BLK8_W11        at 16#1A8# range 0 .. 31;
      BLK9_W1         at 16#1AC# range 0 .. 31;
      BLK9_W2         at 16#1B0# range 0 .. 31;
      BLK9_W3         at 16#1B4# range 0 .. 31;
      BLK9_W4         at 16#1B8# range 0 .. 31;
      BLK9_W5         at 16#1BC# range 0 .. 31;
      BLK9_W6         at 16#1C0# range 0 .. 31;
      BLK9_W7         at 16#1C4# range 0 .. 31;
      BLK9_W8         at 16#1C8# range 0 .. 31;
      BLK9_W9         at 16#1CC# range 0 .. 31;
      BLK9_W10        at 16#1D0# range 0 .. 31;
      BLK9_W11        at 16#1D4# range 0 .. 31;
      BLK10_W1        at 16#1D8# range 0 .. 31;
      BLK10_W2        at 16#1DC# range 0 .. 31;
      BLK10_W3        at 16#1E0# range 0 .. 31;
      BLK10_W4        at 16#1E4# range 0 .. 31;
      BLK10_W5        at 16#1E8# range 0 .. 31;
      BLK10_W6        at 16#1EC# range 0 .. 31;
      BLK10_W7        at 16#1F0# range 0 .. 31;
      BLK10_W8        at 16#1F4# range 0 .. 31;
      BLK10_W9        at 16#1F8# range 0 .. 31;
      BLK10_W10       at 16#1FC# range 0 .. 31;
      BLK10_W11       at 16#200# range 0 .. 31;
      CLK             at 16#204# range 0 .. 31;
      APB2OTP_EN      at 16#208# range 0 .. 31;
      DATE            at 16#20C# range 0 .. 31;
   end record;

   --  OTP_DEBUG Peripheral
   OTP_DEBUG_Periph : aliased OTP_DEBUG_Peripheral
     with Import, Address => OTP_DEBUG_Base;

end ESP32_C6_SVD.OTP_DEBUG;
