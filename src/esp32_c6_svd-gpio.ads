pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OUT1_DATA_ORIG_Field is HAL.UInt3;

   --  GPIO output register for GPIO32-34
   type OUT1_Register is record
      --  GPIO output register for GPIO32-34
      DATA_ORIG     : OUT1_DATA_ORIG_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT1_Register use record
      DATA_ORIG     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OUT1_W1TS_OUT1_W1TS_Field is HAL.UInt3;

   --  GPIO output set register for GPIO32-34
   type OUT1_W1TS_Register is record
      --  Write-only. GPIO output set register for GPIO32-34
      OUT1_W1TS     : OUT1_W1TS_OUT1_W1TS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT1_W1TS_Register use record
      OUT1_W1TS     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OUT1_W1TC_OUT1_W1TC_Field is HAL.UInt3;

   --  GPIO output clear register for GPIO32-34
   type OUT1_W1TC_Register is record
      --  Write-only. GPIO output clear register for GPIO32-34
      OUT1_W1TC     : OUT1_W1TC_OUT1_W1TC_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT1_W1TC_Register use record
      OUT1_W1TC     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SDIO_SELECT_SDIO_SEL_Field is HAL.UInt8;

   --  GPIO sdio select register
   type SDIO_SELECT_Register is record
      --  GPIO sdio select register
      SDIO_SEL      : SDIO_SELECT_SDIO_SEL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_SELECT_Register use record
      SDIO_SEL      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ENABLE1_DATA_Field is HAL.UInt3;

   --  GPIO output enable register for GPIO32-34
   type ENABLE1_Register is record
      --  GPIO output enable register for GPIO32-34
      DATA          : ENABLE1_DATA_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE1_Register use record
      DATA          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ENABLE1_W1TS_ENABLE1_W1TS_Field is HAL.UInt3;

   --  GPIO output enable set register for GPIO32-34
   type ENABLE1_W1TS_Register is record
      --  Write-only. GPIO output enable set register for GPIO32-34
      ENABLE1_W1TS  : ENABLE1_W1TS_ENABLE1_W1TS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE1_W1TS_Register use record
      ENABLE1_W1TS  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ENABLE1_W1TC_ENABLE1_W1TC_Field is HAL.UInt3;

   --  GPIO output enable clear register for GPIO32-34
   type ENABLE1_W1TC_Register is record
      --  Write-only. GPIO output enable clear register for GPIO32-34
      ENABLE1_W1TC  : ENABLE1_W1TC_ENABLE1_W1TC_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE1_W1TC_Register use record
      ENABLE1_W1TC  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STRAP_STRAPPING_Field is HAL.UInt16;

   --  pad strapping register
   type STRAP_Register is record
      --  Read-only. pad strapping register
      STRAPPING      : STRAP_STRAPPING_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STRAP_Register use record
      STRAPPING      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IN1_DATA_NEXT_Field is HAL.UInt3;

   --  GPIO input register for GPIO32-34
   type IN1_Register is record
      --  Read-only. GPIO input register for GPIO32-34
      DATA_NEXT     : IN1_DATA_NEXT_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN1_Register use record
      DATA_NEXT     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STATUS1_INTERRUPT_Field is HAL.UInt3;

   --  GPIO interrupt status register for GPIO32-34
   type STATUS1_Register is record
      --  GPIO interrupt status register for GPIO32-34
      INTERRUPT     : STATUS1_INTERRUPT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS1_Register use record
      INTERRUPT     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STATUS1_W1TS_STATUS1_W1TS_Field is HAL.UInt3;

   --  GPIO interrupt status set register for GPIO32-34
   type STATUS1_W1TS_Register is record
      --  Write-only. GPIO interrupt status set register for GPIO32-34
      STATUS1_W1TS  : STATUS1_W1TS_STATUS1_W1TS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS1_W1TS_Register use record
      STATUS1_W1TS  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STATUS1_W1TC_STATUS1_W1TC_Field is HAL.UInt3;

   --  GPIO interrupt status clear register for GPIO32-34
   type STATUS1_W1TC_Register is record
      --  Write-only. GPIO interrupt status clear register for GPIO32-34
      STATUS1_W1TC  : STATUS1_W1TC_STATUS1_W1TC_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS1_W1TC_Register use record
      STATUS1_W1TC  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PCPU_INT1_PROCPU_INT1_Field is HAL.UInt3;

   --  GPIO PRO_CPU interrupt status register for GPIO32-34
   type PCPU_INT1_Register is record
      --  Read-only. GPIO PRO_CPU interrupt status register for GPIO32-34
      PROCPU_INT1   : PCPU_INT1_PROCPU_INT1_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCPU_INT1_Register use record
      PROCPU_INT1   at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PCPU_NMI_INT1_PROCPU_NMI_INT1_Field is HAL.UInt3;

   --  GPIO PRO_CPU(not shielded) interrupt status register for GPIO32-34
   type PCPU_NMI_INT1_Register is record
      --  Read-only. GPIO PRO_CPU(not shielded) interrupt status register for
      --  GPIO32-34
      PROCPU_NMI_INT1 : PCPU_NMI_INT1_PROCPU_NMI_INT1_Field;
      --  unspecified
      Reserved_3_31   : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCPU_NMI_INT1_Register use record
      PROCPU_NMI_INT1 at 0 range 0 .. 2;
      Reserved_3_31   at 0 range 3 .. 31;
   end record;

   subtype CPUSDIO_INT1_SDIO_INT1_Field is HAL.UInt3;

   --  GPIO CPUSDIO interrupt status register for GPIO32-34
   type CPUSDIO_INT1_Register is record
      --  Read-only. GPIO CPUSDIO interrupt status register for GPIO32-34
      SDIO_INT1     : CPUSDIO_INT1_SDIO_INT1_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSDIO_INT1_Register use record
      SDIO_INT1     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PIN_SYNC2_BYPASS_Field is HAL.UInt2;
   subtype PIN_SYNC1_BYPASS_Field is HAL.UInt2;
   subtype PIN_INT_TYPE_Field is HAL.UInt3;
   subtype PIN_CONFIG_Field is HAL.UInt2;
   subtype PIN_INT_ENA_Field is HAL.UInt5;

   --  GPIO pin configuration register
   type PIN_Register is record
      --  set GPIO input_sync2 signal mode. 0:disable. 1:trigger at negedge.
      --  2or3:trigger at posedge.
      SYNC2_BYPASS   : PIN_SYNC2_BYPASS_Field := 16#0#;
      --  set this bit to select pad driver. 1:open-drain. 0:normal.
      PAD_DRIVER     : Boolean := False;
      --  set GPIO input_sync1 signal mode. 0:disable. 1:trigger at negedge.
      --  2or3:trigger at posedge.
      SYNC1_BYPASS   : PIN_SYNC1_BYPASS_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  set this value to choose interrupt mode. 0:disable GPIO interrupt.
      --  1:trigger at posedge. 2:trigger at negedge. 3:trigger at any edge.
      --  4:valid at low level. 5:valid at high level
      INT_TYPE       : PIN_INT_TYPE_Field := 16#0#;
      --  set this bit to enable GPIO wakeup.(can only wakeup CPU from
      --  Light-sleep Mode)
      WAKEUP_ENABLE  : Boolean := False;
      --  reserved
      CONFIG         : PIN_CONFIG_Field := 16#0#;
      --  set bit 13 to enable CPU interrupt. set bit 14 to enable CPU(not
      --  shielded) interrupt.
      INT_ENA        : PIN_INT_ENA_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIN_Register use record
      SYNC2_BYPASS   at 0 range 0 .. 1;
      PAD_DRIVER     at 0 range 2 .. 2;
      SYNC1_BYPASS   at 0 range 3 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      INT_TYPE       at 0 range 7 .. 9;
      WAKEUP_ENABLE  at 0 range 10 .. 10;
      CONFIG         at 0 range 11 .. 12;
      INT_ENA        at 0 range 13 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  GPIO pin configuration register
   type PIN_Registers is array (0 .. 34) of PIN_Register;

   subtype STATUS_NEXT1_STATUS_INTERRUPT_NEXT1_Field is HAL.UInt3;

   --  GPIO interrupt source register for GPIO32-34
   type STATUS_NEXT1_Register is record
      --  Read-only. GPIO interrupt source register for GPIO32-34
      STATUS_INTERRUPT_NEXT1 : STATUS_NEXT1_STATUS_INTERRUPT_NEXT1_Field;
      --  unspecified
      Reserved_3_31          : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_NEXT1_Register use record
      STATUS_INTERRUPT_NEXT1 at 0 range 0 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   subtype FUNC_IN_SEL_CFG_IN_SEL_Field is HAL.UInt6;

   --  GPIO input function configuration register
   type FUNC_IN_SEL_CFG_Register is record
      --  set this value: s=0-34: connect GPIO[s] to this port. s=0x38: set
      --  this port always high level. s=0x3C: set this port always low level.
      IN_SEL        : FUNC_IN_SEL_CFG_IN_SEL_Field := 16#3C#;
      --  set this bit to invert input signal. 1:invert. 0:not invert.
      IN_INV_SEL    : Boolean := False;
      --  set this bit to bypass GPIO. 1:do not bypass GPIO. 0:bypass GPIO.
      SEL           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC_IN_SEL_CFG_Register use record
      IN_SEL        at 0 range 0 .. 5;
      IN_INV_SEL    at 0 range 6 .. 6;
      SEL           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  GPIO input function configuration register
   type FUNC_IN_SEL_CFG_Registers is array (0 .. 127)
     of FUNC_IN_SEL_CFG_Register;

   subtype FUNC_OUT_SEL_CFG_OUT_SEL_Field is HAL.UInt8;

   --  GPIO output function select register
   type FUNC_OUT_SEL_CFG_Register is record
      --  The value of the bits: 0<=s<=256. Set the value to select output
      --  signal. s=0-127: output of GPIO[n] equals input of peripheral[s].
      --  s=128: output of GPIO[n] equals GPIO_OUT_REG[n].
      OUT_SEL        : FUNC_OUT_SEL_CFG_OUT_SEL_Field := 16#80#;
      --  set this bit to invert output signal.1:invert.0:not invert.
      INV_SEL        : Boolean := False;
      --  set this bit to select output enable signal.1:use GPIO_ENABLE_REG[n]
      --  as output enable signal.0:use peripheral output enable signal.
      OEN_SEL        : Boolean := False;
      --  set this bit to invert output enable signal.1:invert.0:not invert.
      OEN_INV_SEL    : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNC_OUT_SEL_CFG_Register use record
      OUT_SEL        at 0 range 0 .. 7;
      INV_SEL        at 0 range 8 .. 8;
      OEN_SEL        at 0 range 9 .. 9;
      OEN_INV_SEL    at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  GPIO output function select register
   type FUNC_OUT_SEL_CFG_Registers is array (0 .. 29)
     of FUNC_OUT_SEL_CFG_Register;

   --  GPIO clock gate register
   type CLOCK_GATE_Register is record
      --  set this bit to enable GPIO clock gate
      CLK_EN        : Boolean := True;
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

   --  GPIO version register
   type DATE_Register is record
      --  version register
      DATE           : DATE_DATE_Field := 16#2201120#;
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

   --  General Purpose Input/Output
   type GPIO_Peripheral is record
      --  GPIO bit select register
      BT_SELECT        : aliased HAL.UInt32;
      --  GPIO output register for GPIO0-31
      OUT_k            : aliased HAL.UInt32;
      --  GPIO output set register for GPIO0-31
      OUT_W1TS         : aliased HAL.UInt32;
      --  GPIO output clear register for GPIO0-31
      OUT_W1TC         : aliased HAL.UInt32;
      --  GPIO output register for GPIO32-34
      OUT1             : aliased OUT1_Register;
      --  GPIO output set register for GPIO32-34
      OUT1_W1TS        : aliased OUT1_W1TS_Register;
      --  GPIO output clear register for GPIO32-34
      OUT1_W1TC        : aliased OUT1_W1TC_Register;
      --  GPIO sdio select register
      SDIO_SELECT      : aliased SDIO_SELECT_Register;
      --  GPIO output enable register for GPIO0-31
      ENABLE           : aliased HAL.UInt32;
      --  GPIO output enable set register for GPIO0-31
      ENABLE_W1TS      : aliased HAL.UInt32;
      --  GPIO output enable clear register for GPIO0-31
      ENABLE_W1TC      : aliased HAL.UInt32;
      --  GPIO output enable register for GPIO32-34
      ENABLE1          : aliased ENABLE1_Register;
      --  GPIO output enable set register for GPIO32-34
      ENABLE1_W1TS     : aliased ENABLE1_W1TS_Register;
      --  GPIO output enable clear register for GPIO32-34
      ENABLE1_W1TC     : aliased ENABLE1_W1TC_Register;
      --  pad strapping register
      STRAP            : aliased STRAP_Register;
      --  GPIO input register for GPIO0-31
      IN_k             : aliased HAL.UInt32;
      --  GPIO input register for GPIO32-34
      IN1              : aliased IN1_Register;
      --  GPIO interrupt status register for GPIO0-31
      STATUS           : aliased HAL.UInt32;
      --  GPIO interrupt status set register for GPIO0-31
      STATUS_W1TS      : aliased HAL.UInt32;
      --  GPIO interrupt status clear register for GPIO0-31
      STATUS_W1TC      : aliased HAL.UInt32;
      --  GPIO interrupt status register for GPIO32-34
      STATUS1          : aliased STATUS1_Register;
      --  GPIO interrupt status set register for GPIO32-34
      STATUS1_W1TS     : aliased STATUS1_W1TS_Register;
      --  GPIO interrupt status clear register for GPIO32-34
      STATUS1_W1TC     : aliased STATUS1_W1TC_Register;
      --  GPIO PRO_CPU interrupt status register for GPIO0-31
      PCPU_INT         : aliased HAL.UInt32;
      --  GPIO PRO_CPU(not shielded) interrupt status register for GPIO0-31
      PCPU_NMI_INT     : aliased HAL.UInt32;
      --  GPIO CPUSDIO interrupt status register for GPIO0-31
      CPUSDIO_INT      : aliased HAL.UInt32;
      --  GPIO PRO_CPU interrupt status register for GPIO32-34
      PCPU_INT1        : aliased PCPU_INT1_Register;
      --  GPIO PRO_CPU(not shielded) interrupt status register for GPIO32-34
      PCPU_NMI_INT1    : aliased PCPU_NMI_INT1_Register;
      --  GPIO CPUSDIO interrupt status register for GPIO32-34
      CPUSDIO_INT1     : aliased CPUSDIO_INT1_Register;
      --  GPIO pin configuration register
      PIN              : aliased PIN_Registers;
      --  GPIO interrupt source register for GPIO0-31
      STATUS_NEXT      : aliased HAL.UInt32;
      --  GPIO interrupt source register for GPIO32-34
      STATUS_NEXT1     : aliased STATUS_NEXT1_Register;
      --  GPIO input function configuration register
      FUNC_IN_SEL_CFG  : aliased FUNC_IN_SEL_CFG_Registers;
      --  GPIO output function select register
      FUNC_OUT_SEL_CFG : aliased FUNC_OUT_SEL_CFG_Registers;
      --  GPIO clock gate register
      CLOCK_GATE       : aliased CLOCK_GATE_Register;
      --  GPIO version register
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      BT_SELECT        at 16#0# range 0 .. 31;
      OUT_k            at 16#4# range 0 .. 31;
      OUT_W1TS         at 16#8# range 0 .. 31;
      OUT_W1TC         at 16#C# range 0 .. 31;
      OUT1             at 16#10# range 0 .. 31;
      OUT1_W1TS        at 16#14# range 0 .. 31;
      OUT1_W1TC        at 16#18# range 0 .. 31;
      SDIO_SELECT      at 16#1C# range 0 .. 31;
      ENABLE           at 16#20# range 0 .. 31;
      ENABLE_W1TS      at 16#24# range 0 .. 31;
      ENABLE_W1TC      at 16#28# range 0 .. 31;
      ENABLE1          at 16#2C# range 0 .. 31;
      ENABLE1_W1TS     at 16#30# range 0 .. 31;
      ENABLE1_W1TC     at 16#34# range 0 .. 31;
      STRAP            at 16#38# range 0 .. 31;
      IN_k             at 16#3C# range 0 .. 31;
      IN1              at 16#40# range 0 .. 31;
      STATUS           at 16#44# range 0 .. 31;
      STATUS_W1TS      at 16#48# range 0 .. 31;
      STATUS_W1TC      at 16#4C# range 0 .. 31;
      STATUS1          at 16#50# range 0 .. 31;
      STATUS1_W1TS     at 16#54# range 0 .. 31;
      STATUS1_W1TC     at 16#58# range 0 .. 31;
      PCPU_INT         at 16#5C# range 0 .. 31;
      PCPU_NMI_INT     at 16#60# range 0 .. 31;
      CPUSDIO_INT      at 16#64# range 0 .. 31;
      PCPU_INT1        at 16#68# range 0 .. 31;
      PCPU_NMI_INT1    at 16#6C# range 0 .. 31;
      CPUSDIO_INT1     at 16#70# range 0 .. 31;
      PIN              at 16#74# range 0 .. 1119;
      STATUS_NEXT      at 16#14C# range 0 .. 31;
      STATUS_NEXT1     at 16#150# range 0 .. 31;
      FUNC_IN_SEL_CFG  at 16#154# range 0 .. 4095;
      FUNC_OUT_SEL_CFG at 16#554# range 0 .. 959;
      CLOCK_GATE       at 16#62C# range 0 .. 31;
      DATE             at 16#6FC# range 0 .. 31;
   end record;

   --  General Purpose Input/Output
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIO_Base;

end ESP32_C6_SVD.GPIO;
