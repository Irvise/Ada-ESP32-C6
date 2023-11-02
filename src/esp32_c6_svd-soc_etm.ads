pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package ESP32_C6_SVD.SOC_ETM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CH_ENA_AD0_CH_ENA array
   type CH_ENA_AD0_CH_ENA_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  channel enable register
   type CH_ENA_AD0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_ENA as a value
            Val : HAL.UInt32;
         when True =>
            --  CH_ENA as an array
            Arr : CH_ENA_AD0_CH_ENA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CH_ENA_AD0_SET_CH_SET array
   type CH_ENA_AD0_SET_CH_SET_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  channel enable set register
   type CH_ENA_AD0_SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_SET as a value
            Val : HAL.UInt32;
         when True =>
            --  CH_SET as an array
            Arr : CH_ENA_AD0_SET_CH_SET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD0_SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CH_ENA_AD0_CLR_CH_CLR array
   type CH_ENA_AD0_CLR_CH_CLR_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  channel enable clear register
   type CH_ENA_AD0_CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_CLR as a value
            Val : HAL.UInt32;
         when True =>
            --  CH_CLR as an array
            Arr : CH_ENA_AD0_CLR_CH_CLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD0_CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CH_ENA_AD1_CH_ENA array
   type CH_ENA_AD1_CH_ENA_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for CH_ENA_AD1_CH_ENA
   type CH_ENA_AD1_CH_ENA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_ENA as a value
            Val : HAL.UInt18;
         when True =>
            --  CH_ENA as an array
            Arr : CH_ENA_AD1_CH_ENA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for CH_ENA_AD1_CH_ENA_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  channel enable register
   type CH_ENA_AD1_Register is record
      --  ch32 enable
      CH_ENA         : CH_ENA_AD1_CH_ENA_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD1_Register use record
      CH_ENA         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  CH_ENA_AD1_SET_CH_SET array
   type CH_ENA_AD1_SET_CH_SET_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for CH_ENA_AD1_SET_CH_SET
   type CH_ENA_AD1_SET_CH_SET_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_SET as a value
            Val : HAL.UInt18;
         when True =>
            --  CH_SET as an array
            Arr : CH_ENA_AD1_SET_CH_SET_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for CH_ENA_AD1_SET_CH_SET_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  channel enable set register
   type CH_ENA_AD1_SET_Register is record
      --  Write-only. ch32 set
      CH_SET         : CH_ENA_AD1_SET_CH_SET_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD1_SET_Register use record
      CH_SET         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  CH_ENA_AD1_CLR_CH_CLR array
   type CH_ENA_AD1_CLR_CH_CLR_Field_Array is array (32 .. 49) of Boolean
     with Component_Size => 1, Size => 18;

   --  Type definition for CH_ENA_AD1_CLR_CH_CLR
   type CH_ENA_AD1_CLR_CH_CLR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH_CLR as a value
            Val : HAL.UInt18;
         when True =>
            --  CH_CLR as an array
            Arr : CH_ENA_AD1_CLR_CH_CLR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for CH_ENA_AD1_CLR_CH_CLR_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   --  channel enable clear register
   type CH_ENA_AD1_CLR_Register is record
      --  Write-only. ch32 clear
      CH_CLR         : CH_ENA_AD1_CLR_CH_CLR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_ENA_AD1_CLR_Register use record
      CH_CLR         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CH0_EVT_ID_CH0_EVT_ID_Field is HAL.UInt8;

   --  channel0 event id register
   type CH0_EVT_ID_Register is record
      --  ch0_evt_id
      CH0_EVT_ID    : CH0_EVT_ID_CH0_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_EVT_ID_Register use record
      CH0_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH0_TASK_ID_CH0_TASK_ID_Field is HAL.UInt8;

   --  channel0 task id register
   type CH0_TASK_ID_Register is record
      --  ch0_task_id
      CH0_TASK_ID   : CH0_TASK_ID_CH0_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_TASK_ID_Register use record
      CH0_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH1_EVT_ID_CH1_EVT_ID_Field is HAL.UInt8;

   --  channel1 event id register
   type CH1_EVT_ID_Register is record
      --  ch1_evt_id
      CH1_EVT_ID    : CH1_EVT_ID_CH1_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_EVT_ID_Register use record
      CH1_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH1_TASK_ID_CH1_TASK_ID_Field is HAL.UInt8;

   --  channel1 task id register
   type CH1_TASK_ID_Register is record
      --  ch1_task_id
      CH1_TASK_ID   : CH1_TASK_ID_CH1_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_TASK_ID_Register use record
      CH1_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH2_EVT_ID_CH2_EVT_ID_Field is HAL.UInt8;

   --  channel2 event id register
   type CH2_EVT_ID_Register is record
      --  ch2_evt_id
      CH2_EVT_ID    : CH2_EVT_ID_CH2_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_EVT_ID_Register use record
      CH2_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH2_TASK_ID_CH2_TASK_ID_Field is HAL.UInt8;

   --  channel2 task id register
   type CH2_TASK_ID_Register is record
      --  ch2_task_id
      CH2_TASK_ID   : CH2_TASK_ID_CH2_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_TASK_ID_Register use record
      CH2_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH3_EVT_ID_CH3_EVT_ID_Field is HAL.UInt8;

   --  channel3 event id register
   type CH3_EVT_ID_Register is record
      --  ch3_evt_id
      CH3_EVT_ID    : CH3_EVT_ID_CH3_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_EVT_ID_Register use record
      CH3_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH3_TASK_ID_CH3_TASK_ID_Field is HAL.UInt8;

   --  channel3 task id register
   type CH3_TASK_ID_Register is record
      --  ch3_task_id
      CH3_TASK_ID   : CH3_TASK_ID_CH3_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_TASK_ID_Register use record
      CH3_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH4_EVT_ID_CH4_EVT_ID_Field is HAL.UInt8;

   --  channel4 event id register
   type CH4_EVT_ID_Register is record
      --  ch4_evt_id
      CH4_EVT_ID    : CH4_EVT_ID_CH4_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_EVT_ID_Register use record
      CH4_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH4_TASK_ID_CH4_TASK_ID_Field is HAL.UInt8;

   --  channel4 task id register
   type CH4_TASK_ID_Register is record
      --  ch4_task_id
      CH4_TASK_ID   : CH4_TASK_ID_CH4_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_TASK_ID_Register use record
      CH4_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH5_EVT_ID_CH5_EVT_ID_Field is HAL.UInt8;

   --  channel5 event id register
   type CH5_EVT_ID_Register is record
      --  ch5_evt_id
      CH5_EVT_ID    : CH5_EVT_ID_CH5_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_EVT_ID_Register use record
      CH5_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH5_TASK_ID_CH5_TASK_ID_Field is HAL.UInt8;

   --  channel5 task id register
   type CH5_TASK_ID_Register is record
      --  ch5_task_id
      CH5_TASK_ID   : CH5_TASK_ID_CH5_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_TASK_ID_Register use record
      CH5_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH6_EVT_ID_CH6_EVT_ID_Field is HAL.UInt8;

   --  channel6 event id register
   type CH6_EVT_ID_Register is record
      --  ch6_evt_id
      CH6_EVT_ID    : CH6_EVT_ID_CH6_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_EVT_ID_Register use record
      CH6_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH6_TASK_ID_CH6_TASK_ID_Field is HAL.UInt8;

   --  channel6 task id register
   type CH6_TASK_ID_Register is record
      --  ch6_task_id
      CH6_TASK_ID   : CH6_TASK_ID_CH6_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_TASK_ID_Register use record
      CH6_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH7_EVT_ID_CH7_EVT_ID_Field is HAL.UInt8;

   --  channel7 event id register
   type CH7_EVT_ID_Register is record
      --  ch7_evt_id
      CH7_EVT_ID    : CH7_EVT_ID_CH7_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_EVT_ID_Register use record
      CH7_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH7_TASK_ID_CH7_TASK_ID_Field is HAL.UInt8;

   --  channel7 task id register
   type CH7_TASK_ID_Register is record
      --  ch7_task_id
      CH7_TASK_ID   : CH7_TASK_ID_CH7_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_TASK_ID_Register use record
      CH7_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH8_EVT_ID_CH8_EVT_ID_Field is HAL.UInt8;

   --  channel8 event id register
   type CH8_EVT_ID_Register is record
      --  ch8_evt_id
      CH8_EVT_ID    : CH8_EVT_ID_CH8_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_EVT_ID_Register use record
      CH8_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH8_TASK_ID_CH8_TASK_ID_Field is HAL.UInt8;

   --  channel8 task id register
   type CH8_TASK_ID_Register is record
      --  ch8_task_id
      CH8_TASK_ID   : CH8_TASK_ID_CH8_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_TASK_ID_Register use record
      CH8_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH9_EVT_ID_CH9_EVT_ID_Field is HAL.UInt8;

   --  channel9 event id register
   type CH9_EVT_ID_Register is record
      --  ch9_evt_id
      CH9_EVT_ID    : CH9_EVT_ID_CH9_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_EVT_ID_Register use record
      CH9_EVT_ID    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH9_TASK_ID_CH9_TASK_ID_Field is HAL.UInt8;

   --  channel9 task id register
   type CH9_TASK_ID_Register is record
      --  ch9_task_id
      CH9_TASK_ID   : CH9_TASK_ID_CH9_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_TASK_ID_Register use record
      CH9_TASK_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH10_EVT_ID_CH10_EVT_ID_Field is HAL.UInt8;

   --  channel10 event id register
   type CH10_EVT_ID_Register is record
      --  ch10_evt_id
      CH10_EVT_ID   : CH10_EVT_ID_CH10_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_EVT_ID_Register use record
      CH10_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH10_TASK_ID_CH10_TASK_ID_Field is HAL.UInt8;

   --  channel10 task id register
   type CH10_TASK_ID_Register is record
      --  ch10_task_id
      CH10_TASK_ID  : CH10_TASK_ID_CH10_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_TASK_ID_Register use record
      CH10_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH11_EVT_ID_CH11_EVT_ID_Field is HAL.UInt8;

   --  channel11 event id register
   type CH11_EVT_ID_Register is record
      --  ch11_evt_id
      CH11_EVT_ID   : CH11_EVT_ID_CH11_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_EVT_ID_Register use record
      CH11_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH11_TASK_ID_CH11_TASK_ID_Field is HAL.UInt8;

   --  channel11 task id register
   type CH11_TASK_ID_Register is record
      --  ch11_task_id
      CH11_TASK_ID  : CH11_TASK_ID_CH11_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_TASK_ID_Register use record
      CH11_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH12_EVT_ID_CH12_EVT_ID_Field is HAL.UInt8;

   --  channel12 event id register
   type CH12_EVT_ID_Register is record
      --  ch12_evt_id
      CH12_EVT_ID   : CH12_EVT_ID_CH12_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_EVT_ID_Register use record
      CH12_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH12_TASK_ID_CH12_TASK_ID_Field is HAL.UInt8;

   --  channel12 task id register
   type CH12_TASK_ID_Register is record
      --  ch12_task_id
      CH12_TASK_ID  : CH12_TASK_ID_CH12_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_TASK_ID_Register use record
      CH12_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH13_EVT_ID_CH13_EVT_ID_Field is HAL.UInt8;

   --  channel13 event id register
   type CH13_EVT_ID_Register is record
      --  ch13_evt_id
      CH13_EVT_ID   : CH13_EVT_ID_CH13_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_EVT_ID_Register use record
      CH13_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH13_TASK_ID_CH13_TASK_ID_Field is HAL.UInt8;

   --  channel13 task id register
   type CH13_TASK_ID_Register is record
      --  ch13_task_id
      CH13_TASK_ID  : CH13_TASK_ID_CH13_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_TASK_ID_Register use record
      CH13_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH14_EVT_ID_CH14_EVT_ID_Field is HAL.UInt8;

   --  channel14 event id register
   type CH14_EVT_ID_Register is record
      --  ch14_evt_id
      CH14_EVT_ID   : CH14_EVT_ID_CH14_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_EVT_ID_Register use record
      CH14_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH14_TASK_ID_CH14_TASK_ID_Field is HAL.UInt8;

   --  channel14 task id register
   type CH14_TASK_ID_Register is record
      --  ch14_task_id
      CH14_TASK_ID  : CH14_TASK_ID_CH14_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_TASK_ID_Register use record
      CH14_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH15_EVT_ID_CH15_EVT_ID_Field is HAL.UInt8;

   --  channel15 event id register
   type CH15_EVT_ID_Register is record
      --  ch15_evt_id
      CH15_EVT_ID   : CH15_EVT_ID_CH15_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_EVT_ID_Register use record
      CH15_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH15_TASK_ID_CH15_TASK_ID_Field is HAL.UInt8;

   --  channel15 task id register
   type CH15_TASK_ID_Register is record
      --  ch15_task_id
      CH15_TASK_ID  : CH15_TASK_ID_CH15_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_TASK_ID_Register use record
      CH15_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH16_EVT_ID_CH16_EVT_ID_Field is HAL.UInt8;

   --  channel16 event id register
   type CH16_EVT_ID_Register is record
      --  ch16_evt_id
      CH16_EVT_ID   : CH16_EVT_ID_CH16_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH16_EVT_ID_Register use record
      CH16_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH16_TASK_ID_CH16_TASK_ID_Field is HAL.UInt8;

   --  channel16 task id register
   type CH16_TASK_ID_Register is record
      --  ch16_task_id
      CH16_TASK_ID  : CH16_TASK_ID_CH16_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH16_TASK_ID_Register use record
      CH16_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH17_EVT_ID_CH17_EVT_ID_Field is HAL.UInt8;

   --  channel17 event id register
   type CH17_EVT_ID_Register is record
      --  ch17_evt_id
      CH17_EVT_ID   : CH17_EVT_ID_CH17_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH17_EVT_ID_Register use record
      CH17_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH17_TASK_ID_CH17_TASK_ID_Field is HAL.UInt8;

   --  channel17 task id register
   type CH17_TASK_ID_Register is record
      --  ch17_task_id
      CH17_TASK_ID  : CH17_TASK_ID_CH17_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH17_TASK_ID_Register use record
      CH17_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH18_EVT_ID_CH18_EVT_ID_Field is HAL.UInt8;

   --  channel18 event id register
   type CH18_EVT_ID_Register is record
      --  ch18_evt_id
      CH18_EVT_ID   : CH18_EVT_ID_CH18_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH18_EVT_ID_Register use record
      CH18_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH18_TASK_ID_CH18_TASK_ID_Field is HAL.UInt8;

   --  channel18 task id register
   type CH18_TASK_ID_Register is record
      --  ch18_task_id
      CH18_TASK_ID  : CH18_TASK_ID_CH18_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH18_TASK_ID_Register use record
      CH18_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH19_EVT_ID_CH19_EVT_ID_Field is HAL.UInt8;

   --  channel19 event id register
   type CH19_EVT_ID_Register is record
      --  ch19_evt_id
      CH19_EVT_ID   : CH19_EVT_ID_CH19_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH19_EVT_ID_Register use record
      CH19_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH19_TASK_ID_CH19_TASK_ID_Field is HAL.UInt8;

   --  channel19 task id register
   type CH19_TASK_ID_Register is record
      --  ch19_task_id
      CH19_TASK_ID  : CH19_TASK_ID_CH19_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH19_TASK_ID_Register use record
      CH19_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH20_EVT_ID_CH20_EVT_ID_Field is HAL.UInt8;

   --  channel20 event id register
   type CH20_EVT_ID_Register is record
      --  ch20_evt_id
      CH20_EVT_ID   : CH20_EVT_ID_CH20_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH20_EVT_ID_Register use record
      CH20_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH20_TASK_ID_CH20_TASK_ID_Field is HAL.UInt8;

   --  channel20 task id register
   type CH20_TASK_ID_Register is record
      --  ch20_task_id
      CH20_TASK_ID  : CH20_TASK_ID_CH20_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH20_TASK_ID_Register use record
      CH20_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH21_EVT_ID_CH21_EVT_ID_Field is HAL.UInt8;

   --  channel21 event id register
   type CH21_EVT_ID_Register is record
      --  ch21_evt_id
      CH21_EVT_ID   : CH21_EVT_ID_CH21_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH21_EVT_ID_Register use record
      CH21_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH21_TASK_ID_CH21_TASK_ID_Field is HAL.UInt8;

   --  channel21 task id register
   type CH21_TASK_ID_Register is record
      --  ch21_task_id
      CH21_TASK_ID  : CH21_TASK_ID_CH21_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH21_TASK_ID_Register use record
      CH21_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH22_EVT_ID_CH22_EVT_ID_Field is HAL.UInt8;

   --  channel22 event id register
   type CH22_EVT_ID_Register is record
      --  ch22_evt_id
      CH22_EVT_ID   : CH22_EVT_ID_CH22_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH22_EVT_ID_Register use record
      CH22_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH22_TASK_ID_CH22_TASK_ID_Field is HAL.UInt8;

   --  channel22 task id register
   type CH22_TASK_ID_Register is record
      --  ch22_task_id
      CH22_TASK_ID  : CH22_TASK_ID_CH22_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH22_TASK_ID_Register use record
      CH22_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH23_EVT_ID_CH23_EVT_ID_Field is HAL.UInt8;

   --  channel23 event id register
   type CH23_EVT_ID_Register is record
      --  ch23_evt_id
      CH23_EVT_ID   : CH23_EVT_ID_CH23_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH23_EVT_ID_Register use record
      CH23_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH23_TASK_ID_CH23_TASK_ID_Field is HAL.UInt8;

   --  channel23 task id register
   type CH23_TASK_ID_Register is record
      --  ch23_task_id
      CH23_TASK_ID  : CH23_TASK_ID_CH23_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH23_TASK_ID_Register use record
      CH23_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH24_EVT_ID_CH24_EVT_ID_Field is HAL.UInt8;

   --  channel24 event id register
   type CH24_EVT_ID_Register is record
      --  ch24_evt_id
      CH24_EVT_ID   : CH24_EVT_ID_CH24_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH24_EVT_ID_Register use record
      CH24_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH24_TASK_ID_CH24_TASK_ID_Field is HAL.UInt8;

   --  channel24 task id register
   type CH24_TASK_ID_Register is record
      --  ch24_task_id
      CH24_TASK_ID  : CH24_TASK_ID_CH24_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH24_TASK_ID_Register use record
      CH24_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH25_EVT_ID_CH25_EVT_ID_Field is HAL.UInt8;

   --  channel25 event id register
   type CH25_EVT_ID_Register is record
      --  ch25_evt_id
      CH25_EVT_ID   : CH25_EVT_ID_CH25_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH25_EVT_ID_Register use record
      CH25_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH25_TASK_ID_CH25_TASK_ID_Field is HAL.UInt8;

   --  channel25 task id register
   type CH25_TASK_ID_Register is record
      --  ch25_task_id
      CH25_TASK_ID  : CH25_TASK_ID_CH25_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH25_TASK_ID_Register use record
      CH25_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH26_EVT_ID_CH26_EVT_ID_Field is HAL.UInt8;

   --  channel26 event id register
   type CH26_EVT_ID_Register is record
      --  ch26_evt_id
      CH26_EVT_ID   : CH26_EVT_ID_CH26_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH26_EVT_ID_Register use record
      CH26_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH26_TASK_ID_CH26_TASK_ID_Field is HAL.UInt8;

   --  channel26 task id register
   type CH26_TASK_ID_Register is record
      --  ch26_task_id
      CH26_TASK_ID  : CH26_TASK_ID_CH26_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH26_TASK_ID_Register use record
      CH26_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH27_EVT_ID_CH27_EVT_ID_Field is HAL.UInt8;

   --  channel27 event id register
   type CH27_EVT_ID_Register is record
      --  ch27_evt_id
      CH27_EVT_ID   : CH27_EVT_ID_CH27_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH27_EVT_ID_Register use record
      CH27_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH27_TASK_ID_CH27_TASK_ID_Field is HAL.UInt8;

   --  channel27 task id register
   type CH27_TASK_ID_Register is record
      --  ch27_task_id
      CH27_TASK_ID  : CH27_TASK_ID_CH27_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH27_TASK_ID_Register use record
      CH27_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH28_EVT_ID_CH28_EVT_ID_Field is HAL.UInt8;

   --  channel28 event id register
   type CH28_EVT_ID_Register is record
      --  ch28_evt_id
      CH28_EVT_ID   : CH28_EVT_ID_CH28_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH28_EVT_ID_Register use record
      CH28_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH28_TASK_ID_CH28_TASK_ID_Field is HAL.UInt8;

   --  channel28 task id register
   type CH28_TASK_ID_Register is record
      --  ch28_task_id
      CH28_TASK_ID  : CH28_TASK_ID_CH28_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH28_TASK_ID_Register use record
      CH28_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH29_EVT_ID_CH29_EVT_ID_Field is HAL.UInt8;

   --  channel29 event id register
   type CH29_EVT_ID_Register is record
      --  ch29_evt_id
      CH29_EVT_ID   : CH29_EVT_ID_CH29_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH29_EVT_ID_Register use record
      CH29_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH29_TASK_ID_CH29_TASK_ID_Field is HAL.UInt8;

   --  channel29 task id register
   type CH29_TASK_ID_Register is record
      --  ch29_task_id
      CH29_TASK_ID  : CH29_TASK_ID_CH29_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH29_TASK_ID_Register use record
      CH29_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH30_EVT_ID_CH30_EVT_ID_Field is HAL.UInt8;

   --  channel30 event id register
   type CH30_EVT_ID_Register is record
      --  ch30_evt_id
      CH30_EVT_ID   : CH30_EVT_ID_CH30_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH30_EVT_ID_Register use record
      CH30_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH30_TASK_ID_CH30_TASK_ID_Field is HAL.UInt8;

   --  channel30 task id register
   type CH30_TASK_ID_Register is record
      --  ch30_task_id
      CH30_TASK_ID  : CH30_TASK_ID_CH30_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH30_TASK_ID_Register use record
      CH30_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH31_EVT_ID_CH31_EVT_ID_Field is HAL.UInt8;

   --  channel31 event id register
   type CH31_EVT_ID_Register is record
      --  ch31_evt_id
      CH31_EVT_ID   : CH31_EVT_ID_CH31_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH31_EVT_ID_Register use record
      CH31_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH31_TASK_ID_CH31_TASK_ID_Field is HAL.UInt8;

   --  channel31 task id register
   type CH31_TASK_ID_Register is record
      --  ch31_task_id
      CH31_TASK_ID  : CH31_TASK_ID_CH31_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH31_TASK_ID_Register use record
      CH31_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH32_EVT_ID_CH32_EVT_ID_Field is HAL.UInt8;

   --  channel32 event id register
   type CH32_EVT_ID_Register is record
      --  ch32_evt_id
      CH32_EVT_ID   : CH32_EVT_ID_CH32_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH32_EVT_ID_Register use record
      CH32_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH32_TASK_ID_CH32_TASK_ID_Field is HAL.UInt8;

   --  channel32 task id register
   type CH32_TASK_ID_Register is record
      --  ch32_task_id
      CH32_TASK_ID  : CH32_TASK_ID_CH32_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH32_TASK_ID_Register use record
      CH32_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH33_EVT_ID_CH33_EVT_ID_Field is HAL.UInt8;

   --  channel33 event id register
   type CH33_EVT_ID_Register is record
      --  ch33_evt_id
      CH33_EVT_ID   : CH33_EVT_ID_CH33_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH33_EVT_ID_Register use record
      CH33_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH33_TASK_ID_CH33_TASK_ID_Field is HAL.UInt8;

   --  channel33 task id register
   type CH33_TASK_ID_Register is record
      --  ch33_task_id
      CH33_TASK_ID  : CH33_TASK_ID_CH33_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH33_TASK_ID_Register use record
      CH33_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH34_EVT_ID_CH34_EVT_ID_Field is HAL.UInt8;

   --  channel34 event id register
   type CH34_EVT_ID_Register is record
      --  ch34_evt_id
      CH34_EVT_ID   : CH34_EVT_ID_CH34_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH34_EVT_ID_Register use record
      CH34_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH34_TASK_ID_CH34_TASK_ID_Field is HAL.UInt8;

   --  channel34 task id register
   type CH34_TASK_ID_Register is record
      --  ch34_task_id
      CH34_TASK_ID  : CH34_TASK_ID_CH34_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH34_TASK_ID_Register use record
      CH34_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH35_EVT_ID_CH35_EVT_ID_Field is HAL.UInt8;

   --  channel35 event id register
   type CH35_EVT_ID_Register is record
      --  ch35_evt_id
      CH35_EVT_ID   : CH35_EVT_ID_CH35_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH35_EVT_ID_Register use record
      CH35_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH35_TASK_ID_CH35_TASK_ID_Field is HAL.UInt8;

   --  channel35 task id register
   type CH35_TASK_ID_Register is record
      --  ch35_task_id
      CH35_TASK_ID  : CH35_TASK_ID_CH35_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH35_TASK_ID_Register use record
      CH35_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH36_EVT_ID_CH36_EVT_ID_Field is HAL.UInt8;

   --  channel36 event id register
   type CH36_EVT_ID_Register is record
      --  ch36_evt_id
      CH36_EVT_ID   : CH36_EVT_ID_CH36_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH36_EVT_ID_Register use record
      CH36_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH36_TASK_ID_CH36_TASK_ID_Field is HAL.UInt8;

   --  channel36 task id register
   type CH36_TASK_ID_Register is record
      --  ch36_task_id
      CH36_TASK_ID  : CH36_TASK_ID_CH36_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH36_TASK_ID_Register use record
      CH36_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH37_EVT_ID_CH37_EVT_ID_Field is HAL.UInt8;

   --  channel37 event id register
   type CH37_EVT_ID_Register is record
      --  ch37_evt_id
      CH37_EVT_ID   : CH37_EVT_ID_CH37_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH37_EVT_ID_Register use record
      CH37_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH37_TASK_ID_CH37_TASK_ID_Field is HAL.UInt8;

   --  channel37 task id register
   type CH37_TASK_ID_Register is record
      --  ch37_task_id
      CH37_TASK_ID  : CH37_TASK_ID_CH37_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH37_TASK_ID_Register use record
      CH37_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH38_EVT_ID_CH38_EVT_ID_Field is HAL.UInt8;

   --  channel38 event id register
   type CH38_EVT_ID_Register is record
      --  ch38_evt_id
      CH38_EVT_ID   : CH38_EVT_ID_CH38_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH38_EVT_ID_Register use record
      CH38_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH38_TASK_ID_CH38_TASK_ID_Field is HAL.UInt8;

   --  channel38 task id register
   type CH38_TASK_ID_Register is record
      --  ch38_task_id
      CH38_TASK_ID  : CH38_TASK_ID_CH38_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH38_TASK_ID_Register use record
      CH38_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH39_EVT_ID_CH39_EVT_ID_Field is HAL.UInt8;

   --  channel39 event id register
   type CH39_EVT_ID_Register is record
      --  ch39_evt_id
      CH39_EVT_ID   : CH39_EVT_ID_CH39_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH39_EVT_ID_Register use record
      CH39_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH39_TASK_ID_CH39_TASK_ID_Field is HAL.UInt8;

   --  channel39 task id register
   type CH39_TASK_ID_Register is record
      --  ch39_task_id
      CH39_TASK_ID  : CH39_TASK_ID_CH39_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH39_TASK_ID_Register use record
      CH39_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH40_EVT_ID_CH40_EVT_ID_Field is HAL.UInt8;

   --  channel40 event id register
   type CH40_EVT_ID_Register is record
      --  ch40_evt_id
      CH40_EVT_ID   : CH40_EVT_ID_CH40_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH40_EVT_ID_Register use record
      CH40_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH40_TASK_ID_CH40_TASK_ID_Field is HAL.UInt8;

   --  channel40 task id register
   type CH40_TASK_ID_Register is record
      --  ch40_task_id
      CH40_TASK_ID  : CH40_TASK_ID_CH40_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH40_TASK_ID_Register use record
      CH40_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH41_EVT_ID_CH41_EVT_ID_Field is HAL.UInt8;

   --  channel41 event id register
   type CH41_EVT_ID_Register is record
      --  ch41_evt_id
      CH41_EVT_ID   : CH41_EVT_ID_CH41_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH41_EVT_ID_Register use record
      CH41_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH41_TASK_ID_CH41_TASK_ID_Field is HAL.UInt8;

   --  channel41 task id register
   type CH41_TASK_ID_Register is record
      --  ch41_task_id
      CH41_TASK_ID  : CH41_TASK_ID_CH41_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH41_TASK_ID_Register use record
      CH41_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH42_EVT_ID_CH42_EVT_ID_Field is HAL.UInt8;

   --  channel42 event id register
   type CH42_EVT_ID_Register is record
      --  ch42_evt_id
      CH42_EVT_ID   : CH42_EVT_ID_CH42_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH42_EVT_ID_Register use record
      CH42_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH42_TASK_ID_CH42_TASK_ID_Field is HAL.UInt8;

   --  channel42 task id register
   type CH42_TASK_ID_Register is record
      --  ch42_task_id
      CH42_TASK_ID  : CH42_TASK_ID_CH42_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH42_TASK_ID_Register use record
      CH42_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH43_EVT_ID_CH43_EVT_ID_Field is HAL.UInt8;

   --  channel43 event id register
   type CH43_EVT_ID_Register is record
      --  ch43_evt_id
      CH43_EVT_ID   : CH43_EVT_ID_CH43_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH43_EVT_ID_Register use record
      CH43_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH43_TASK_ID_CH43_TASK_ID_Field is HAL.UInt8;

   --  channel43 task id register
   type CH43_TASK_ID_Register is record
      --  ch43_task_id
      CH43_TASK_ID  : CH43_TASK_ID_CH43_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH43_TASK_ID_Register use record
      CH43_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH44_EVT_ID_CH44_EVT_ID_Field is HAL.UInt8;

   --  channel44 event id register
   type CH44_EVT_ID_Register is record
      --  ch44_evt_id
      CH44_EVT_ID   : CH44_EVT_ID_CH44_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH44_EVT_ID_Register use record
      CH44_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH44_TASK_ID_CH44_TASK_ID_Field is HAL.UInt8;

   --  channel44 task id register
   type CH44_TASK_ID_Register is record
      --  ch44_task_id
      CH44_TASK_ID  : CH44_TASK_ID_CH44_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH44_TASK_ID_Register use record
      CH44_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH45_EVT_ID_CH45_EVT_ID_Field is HAL.UInt8;

   --  channel45 event id register
   type CH45_EVT_ID_Register is record
      --  ch45_evt_id
      CH45_EVT_ID   : CH45_EVT_ID_CH45_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH45_EVT_ID_Register use record
      CH45_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH45_TASK_ID_CH45_TASK_ID_Field is HAL.UInt8;

   --  channel45 task id register
   type CH45_TASK_ID_Register is record
      --  ch45_task_id
      CH45_TASK_ID  : CH45_TASK_ID_CH45_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH45_TASK_ID_Register use record
      CH45_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH46_EVT_ID_CH46_EVT_ID_Field is HAL.UInt8;

   --  channel46 event id register
   type CH46_EVT_ID_Register is record
      --  ch46_evt_id
      CH46_EVT_ID   : CH46_EVT_ID_CH46_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH46_EVT_ID_Register use record
      CH46_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH46_TASK_ID_CH46_TASK_ID_Field is HAL.UInt8;

   --  channel46 task id register
   type CH46_TASK_ID_Register is record
      --  ch46_task_id
      CH46_TASK_ID  : CH46_TASK_ID_CH46_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH46_TASK_ID_Register use record
      CH46_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH47_EVT_ID_CH47_EVT_ID_Field is HAL.UInt8;

   --  channel47 event id register
   type CH47_EVT_ID_Register is record
      --  ch47_evt_id
      CH47_EVT_ID   : CH47_EVT_ID_CH47_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH47_EVT_ID_Register use record
      CH47_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH47_TASK_ID_CH47_TASK_ID_Field is HAL.UInt8;

   --  channel47 task id register
   type CH47_TASK_ID_Register is record
      --  ch47_task_id
      CH47_TASK_ID  : CH47_TASK_ID_CH47_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH47_TASK_ID_Register use record
      CH47_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH48_EVT_ID_CH48_EVT_ID_Field is HAL.UInt8;

   --  channel48 event id register
   type CH48_EVT_ID_Register is record
      --  ch48_evt_id
      CH48_EVT_ID   : CH48_EVT_ID_CH48_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH48_EVT_ID_Register use record
      CH48_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH48_TASK_ID_CH48_TASK_ID_Field is HAL.UInt8;

   --  channel48 task id register
   type CH48_TASK_ID_Register is record
      --  ch48_task_id
      CH48_TASK_ID  : CH48_TASK_ID_CH48_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH48_TASK_ID_Register use record
      CH48_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH49_EVT_ID_CH49_EVT_ID_Field is HAL.UInt8;

   --  channel49 event id register
   type CH49_EVT_ID_Register is record
      --  ch49_evt_id
      CH49_EVT_ID   : CH49_EVT_ID_CH49_EVT_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH49_EVT_ID_Register use record
      CH49_EVT_ID   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH49_TASK_ID_CH49_TASK_ID_Field is HAL.UInt8;

   --  channel49 task id register
   type CH49_TASK_ID_Register is record
      --  ch49_task_id
      CH49_TASK_ID  : CH49_TASK_ID_CH49_TASK_ID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH49_TASK_ID_Register use record
      CH49_TASK_ID  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  etm clock enable register
   type CLK_EN_Register is record
      --  clock enable
      CLK_EN        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_EN_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DATE_DATE_Field is HAL.UInt28;

   --  etm date register
   type DATE_Register is record
      --  date
      DATE           : DATE_DATE_Field := 16#2203092#;
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

   --  Event Task Matrix
   type SOC_ETM_Peripheral is record
      --  channel enable register
      CH_ENA_AD0     : aliased CH_ENA_AD0_Register;
      --  channel enable set register
      CH_ENA_AD0_SET : aliased CH_ENA_AD0_SET_Register;
      --  channel enable clear register
      CH_ENA_AD0_CLR : aliased CH_ENA_AD0_CLR_Register;
      --  channel enable register
      CH_ENA_AD1     : aliased CH_ENA_AD1_Register;
      --  channel enable set register
      CH_ENA_AD1_SET : aliased CH_ENA_AD1_SET_Register;
      --  channel enable clear register
      CH_ENA_AD1_CLR : aliased CH_ENA_AD1_CLR_Register;
      --  channel0 event id register
      CH0_EVT_ID     : aliased CH0_EVT_ID_Register;
      --  channel0 task id register
      CH0_TASK_ID    : aliased CH0_TASK_ID_Register;
      --  channel1 event id register
      CH1_EVT_ID     : aliased CH1_EVT_ID_Register;
      --  channel1 task id register
      CH1_TASK_ID    : aliased CH1_TASK_ID_Register;
      --  channel2 event id register
      CH2_EVT_ID     : aliased CH2_EVT_ID_Register;
      --  channel2 task id register
      CH2_TASK_ID    : aliased CH2_TASK_ID_Register;
      --  channel3 event id register
      CH3_EVT_ID     : aliased CH3_EVT_ID_Register;
      --  channel3 task id register
      CH3_TASK_ID    : aliased CH3_TASK_ID_Register;
      --  channel4 event id register
      CH4_EVT_ID     : aliased CH4_EVT_ID_Register;
      --  channel4 task id register
      CH4_TASK_ID    : aliased CH4_TASK_ID_Register;
      --  channel5 event id register
      CH5_EVT_ID     : aliased CH5_EVT_ID_Register;
      --  channel5 task id register
      CH5_TASK_ID    : aliased CH5_TASK_ID_Register;
      --  channel6 event id register
      CH6_EVT_ID     : aliased CH6_EVT_ID_Register;
      --  channel6 task id register
      CH6_TASK_ID    : aliased CH6_TASK_ID_Register;
      --  channel7 event id register
      CH7_EVT_ID     : aliased CH7_EVT_ID_Register;
      --  channel7 task id register
      CH7_TASK_ID    : aliased CH7_TASK_ID_Register;
      --  channel8 event id register
      CH8_EVT_ID     : aliased CH8_EVT_ID_Register;
      --  channel8 task id register
      CH8_TASK_ID    : aliased CH8_TASK_ID_Register;
      --  channel9 event id register
      CH9_EVT_ID     : aliased CH9_EVT_ID_Register;
      --  channel9 task id register
      CH9_TASK_ID    : aliased CH9_TASK_ID_Register;
      --  channel10 event id register
      CH10_EVT_ID    : aliased CH10_EVT_ID_Register;
      --  channel10 task id register
      CH10_TASK_ID   : aliased CH10_TASK_ID_Register;
      --  channel11 event id register
      CH11_EVT_ID    : aliased CH11_EVT_ID_Register;
      --  channel11 task id register
      CH11_TASK_ID   : aliased CH11_TASK_ID_Register;
      --  channel12 event id register
      CH12_EVT_ID    : aliased CH12_EVT_ID_Register;
      --  channel12 task id register
      CH12_TASK_ID   : aliased CH12_TASK_ID_Register;
      --  channel13 event id register
      CH13_EVT_ID    : aliased CH13_EVT_ID_Register;
      --  channel13 task id register
      CH13_TASK_ID   : aliased CH13_TASK_ID_Register;
      --  channel14 event id register
      CH14_EVT_ID    : aliased CH14_EVT_ID_Register;
      --  channel14 task id register
      CH14_TASK_ID   : aliased CH14_TASK_ID_Register;
      --  channel15 event id register
      CH15_EVT_ID    : aliased CH15_EVT_ID_Register;
      --  channel15 task id register
      CH15_TASK_ID   : aliased CH15_TASK_ID_Register;
      --  channel16 event id register
      CH16_EVT_ID    : aliased CH16_EVT_ID_Register;
      --  channel16 task id register
      CH16_TASK_ID   : aliased CH16_TASK_ID_Register;
      --  channel17 event id register
      CH17_EVT_ID    : aliased CH17_EVT_ID_Register;
      --  channel17 task id register
      CH17_TASK_ID   : aliased CH17_TASK_ID_Register;
      --  channel18 event id register
      CH18_EVT_ID    : aliased CH18_EVT_ID_Register;
      --  channel18 task id register
      CH18_TASK_ID   : aliased CH18_TASK_ID_Register;
      --  channel19 event id register
      CH19_EVT_ID    : aliased CH19_EVT_ID_Register;
      --  channel19 task id register
      CH19_TASK_ID   : aliased CH19_TASK_ID_Register;
      --  channel20 event id register
      CH20_EVT_ID    : aliased CH20_EVT_ID_Register;
      --  channel20 task id register
      CH20_TASK_ID   : aliased CH20_TASK_ID_Register;
      --  channel21 event id register
      CH21_EVT_ID    : aliased CH21_EVT_ID_Register;
      --  channel21 task id register
      CH21_TASK_ID   : aliased CH21_TASK_ID_Register;
      --  channel22 event id register
      CH22_EVT_ID    : aliased CH22_EVT_ID_Register;
      --  channel22 task id register
      CH22_TASK_ID   : aliased CH22_TASK_ID_Register;
      --  channel23 event id register
      CH23_EVT_ID    : aliased CH23_EVT_ID_Register;
      --  channel23 task id register
      CH23_TASK_ID   : aliased CH23_TASK_ID_Register;
      --  channel24 event id register
      CH24_EVT_ID    : aliased CH24_EVT_ID_Register;
      --  channel24 task id register
      CH24_TASK_ID   : aliased CH24_TASK_ID_Register;
      --  channel25 event id register
      CH25_EVT_ID    : aliased CH25_EVT_ID_Register;
      --  channel25 task id register
      CH25_TASK_ID   : aliased CH25_TASK_ID_Register;
      --  channel26 event id register
      CH26_EVT_ID    : aliased CH26_EVT_ID_Register;
      --  channel26 task id register
      CH26_TASK_ID   : aliased CH26_TASK_ID_Register;
      --  channel27 event id register
      CH27_EVT_ID    : aliased CH27_EVT_ID_Register;
      --  channel27 task id register
      CH27_TASK_ID   : aliased CH27_TASK_ID_Register;
      --  channel28 event id register
      CH28_EVT_ID    : aliased CH28_EVT_ID_Register;
      --  channel28 task id register
      CH28_TASK_ID   : aliased CH28_TASK_ID_Register;
      --  channel29 event id register
      CH29_EVT_ID    : aliased CH29_EVT_ID_Register;
      --  channel29 task id register
      CH29_TASK_ID   : aliased CH29_TASK_ID_Register;
      --  channel30 event id register
      CH30_EVT_ID    : aliased CH30_EVT_ID_Register;
      --  channel30 task id register
      CH30_TASK_ID   : aliased CH30_TASK_ID_Register;
      --  channel31 event id register
      CH31_EVT_ID    : aliased CH31_EVT_ID_Register;
      --  channel31 task id register
      CH31_TASK_ID   : aliased CH31_TASK_ID_Register;
      --  channel32 event id register
      CH32_EVT_ID    : aliased CH32_EVT_ID_Register;
      --  channel32 task id register
      CH32_TASK_ID   : aliased CH32_TASK_ID_Register;
      --  channel33 event id register
      CH33_EVT_ID    : aliased CH33_EVT_ID_Register;
      --  channel33 task id register
      CH33_TASK_ID   : aliased CH33_TASK_ID_Register;
      --  channel34 event id register
      CH34_EVT_ID    : aliased CH34_EVT_ID_Register;
      --  channel34 task id register
      CH34_TASK_ID   : aliased CH34_TASK_ID_Register;
      --  channel35 event id register
      CH35_EVT_ID    : aliased CH35_EVT_ID_Register;
      --  channel35 task id register
      CH35_TASK_ID   : aliased CH35_TASK_ID_Register;
      --  channel36 event id register
      CH36_EVT_ID    : aliased CH36_EVT_ID_Register;
      --  channel36 task id register
      CH36_TASK_ID   : aliased CH36_TASK_ID_Register;
      --  channel37 event id register
      CH37_EVT_ID    : aliased CH37_EVT_ID_Register;
      --  channel37 task id register
      CH37_TASK_ID   : aliased CH37_TASK_ID_Register;
      --  channel38 event id register
      CH38_EVT_ID    : aliased CH38_EVT_ID_Register;
      --  channel38 task id register
      CH38_TASK_ID   : aliased CH38_TASK_ID_Register;
      --  channel39 event id register
      CH39_EVT_ID    : aliased CH39_EVT_ID_Register;
      --  channel39 task id register
      CH39_TASK_ID   : aliased CH39_TASK_ID_Register;
      --  channel40 event id register
      CH40_EVT_ID    : aliased CH40_EVT_ID_Register;
      --  channel40 task id register
      CH40_TASK_ID   : aliased CH40_TASK_ID_Register;
      --  channel41 event id register
      CH41_EVT_ID    : aliased CH41_EVT_ID_Register;
      --  channel41 task id register
      CH41_TASK_ID   : aliased CH41_TASK_ID_Register;
      --  channel42 event id register
      CH42_EVT_ID    : aliased CH42_EVT_ID_Register;
      --  channel42 task id register
      CH42_TASK_ID   : aliased CH42_TASK_ID_Register;
      --  channel43 event id register
      CH43_EVT_ID    : aliased CH43_EVT_ID_Register;
      --  channel43 task id register
      CH43_TASK_ID   : aliased CH43_TASK_ID_Register;
      --  channel44 event id register
      CH44_EVT_ID    : aliased CH44_EVT_ID_Register;
      --  channel44 task id register
      CH44_TASK_ID   : aliased CH44_TASK_ID_Register;
      --  channel45 event id register
      CH45_EVT_ID    : aliased CH45_EVT_ID_Register;
      --  channel45 task id register
      CH45_TASK_ID   : aliased CH45_TASK_ID_Register;
      --  channel46 event id register
      CH46_EVT_ID    : aliased CH46_EVT_ID_Register;
      --  channel46 task id register
      CH46_TASK_ID   : aliased CH46_TASK_ID_Register;
      --  channel47 event id register
      CH47_EVT_ID    : aliased CH47_EVT_ID_Register;
      --  channel47 task id register
      CH47_TASK_ID   : aliased CH47_TASK_ID_Register;
      --  channel48 event id register
      CH48_EVT_ID    : aliased CH48_EVT_ID_Register;
      --  channel48 task id register
      CH48_TASK_ID   : aliased CH48_TASK_ID_Register;
      --  channel49 event id register
      CH49_EVT_ID    : aliased CH49_EVT_ID_Register;
      --  channel49 task id register
      CH49_TASK_ID   : aliased CH49_TASK_ID_Register;
      --  etm clock enable register
      CLK_EN         : aliased CLK_EN_Register;
      --  etm date register
      DATE           : aliased DATE_Register;
   end record
     with Volatile;

   for SOC_ETM_Peripheral use record
      CH_ENA_AD0     at 16#0# range 0 .. 31;
      CH_ENA_AD0_SET at 16#4# range 0 .. 31;
      CH_ENA_AD0_CLR at 16#8# range 0 .. 31;
      CH_ENA_AD1     at 16#C# range 0 .. 31;
      CH_ENA_AD1_SET at 16#10# range 0 .. 31;
      CH_ENA_AD1_CLR at 16#14# range 0 .. 31;
      CH0_EVT_ID     at 16#18# range 0 .. 31;
      CH0_TASK_ID    at 16#1C# range 0 .. 31;
      CH1_EVT_ID     at 16#20# range 0 .. 31;
      CH1_TASK_ID    at 16#24# range 0 .. 31;
      CH2_EVT_ID     at 16#28# range 0 .. 31;
      CH2_TASK_ID    at 16#2C# range 0 .. 31;
      CH3_EVT_ID     at 16#30# range 0 .. 31;
      CH3_TASK_ID    at 16#34# range 0 .. 31;
      CH4_EVT_ID     at 16#38# range 0 .. 31;
      CH4_TASK_ID    at 16#3C# range 0 .. 31;
      CH5_EVT_ID     at 16#40# range 0 .. 31;
      CH5_TASK_ID    at 16#44# range 0 .. 31;
      CH6_EVT_ID     at 16#48# range 0 .. 31;
      CH6_TASK_ID    at 16#4C# range 0 .. 31;
      CH7_EVT_ID     at 16#50# range 0 .. 31;
      CH7_TASK_ID    at 16#54# range 0 .. 31;
      CH8_EVT_ID     at 16#58# range 0 .. 31;
      CH8_TASK_ID    at 16#5C# range 0 .. 31;
      CH9_EVT_ID     at 16#60# range 0 .. 31;
      CH9_TASK_ID    at 16#64# range 0 .. 31;
      CH10_EVT_ID    at 16#68# range 0 .. 31;
      CH10_TASK_ID   at 16#6C# range 0 .. 31;
      CH11_EVT_ID    at 16#70# range 0 .. 31;
      CH11_TASK_ID   at 16#74# range 0 .. 31;
      CH12_EVT_ID    at 16#78# range 0 .. 31;
      CH12_TASK_ID   at 16#7C# range 0 .. 31;
      CH13_EVT_ID    at 16#80# range 0 .. 31;
      CH13_TASK_ID   at 16#84# range 0 .. 31;
      CH14_EVT_ID    at 16#88# range 0 .. 31;
      CH14_TASK_ID   at 16#8C# range 0 .. 31;
      CH15_EVT_ID    at 16#90# range 0 .. 31;
      CH15_TASK_ID   at 16#94# range 0 .. 31;
      CH16_EVT_ID    at 16#98# range 0 .. 31;
      CH16_TASK_ID   at 16#9C# range 0 .. 31;
      CH17_EVT_ID    at 16#A0# range 0 .. 31;
      CH17_TASK_ID   at 16#A4# range 0 .. 31;
      CH18_EVT_ID    at 16#A8# range 0 .. 31;
      CH18_TASK_ID   at 16#AC# range 0 .. 31;
      CH19_EVT_ID    at 16#B0# range 0 .. 31;
      CH19_TASK_ID   at 16#B4# range 0 .. 31;
      CH20_EVT_ID    at 16#B8# range 0 .. 31;
      CH20_TASK_ID   at 16#BC# range 0 .. 31;
      CH21_EVT_ID    at 16#C0# range 0 .. 31;
      CH21_TASK_ID   at 16#C4# range 0 .. 31;
      CH22_EVT_ID    at 16#C8# range 0 .. 31;
      CH22_TASK_ID   at 16#CC# range 0 .. 31;
      CH23_EVT_ID    at 16#D0# range 0 .. 31;
      CH23_TASK_ID   at 16#D4# range 0 .. 31;
      CH24_EVT_ID    at 16#D8# range 0 .. 31;
      CH24_TASK_ID   at 16#DC# range 0 .. 31;
      CH25_EVT_ID    at 16#E0# range 0 .. 31;
      CH25_TASK_ID   at 16#E4# range 0 .. 31;
      CH26_EVT_ID    at 16#E8# range 0 .. 31;
      CH26_TASK_ID   at 16#EC# range 0 .. 31;
      CH27_EVT_ID    at 16#F0# range 0 .. 31;
      CH27_TASK_ID   at 16#F4# range 0 .. 31;
      CH28_EVT_ID    at 16#F8# range 0 .. 31;
      CH28_TASK_ID   at 16#FC# range 0 .. 31;
      CH29_EVT_ID    at 16#100# range 0 .. 31;
      CH29_TASK_ID   at 16#104# range 0 .. 31;
      CH30_EVT_ID    at 16#108# range 0 .. 31;
      CH30_TASK_ID   at 16#10C# range 0 .. 31;
      CH31_EVT_ID    at 16#110# range 0 .. 31;
      CH31_TASK_ID   at 16#114# range 0 .. 31;
      CH32_EVT_ID    at 16#118# range 0 .. 31;
      CH32_TASK_ID   at 16#11C# range 0 .. 31;
      CH33_EVT_ID    at 16#120# range 0 .. 31;
      CH33_TASK_ID   at 16#124# range 0 .. 31;
      CH34_EVT_ID    at 16#128# range 0 .. 31;
      CH34_TASK_ID   at 16#12C# range 0 .. 31;
      CH35_EVT_ID    at 16#130# range 0 .. 31;
      CH35_TASK_ID   at 16#134# range 0 .. 31;
      CH36_EVT_ID    at 16#138# range 0 .. 31;
      CH36_TASK_ID   at 16#13C# range 0 .. 31;
      CH37_EVT_ID    at 16#140# range 0 .. 31;
      CH37_TASK_ID   at 16#144# range 0 .. 31;
      CH38_EVT_ID    at 16#148# range 0 .. 31;
      CH38_TASK_ID   at 16#14C# range 0 .. 31;
      CH39_EVT_ID    at 16#150# range 0 .. 31;
      CH39_TASK_ID   at 16#154# range 0 .. 31;
      CH40_EVT_ID    at 16#158# range 0 .. 31;
      CH40_TASK_ID   at 16#15C# range 0 .. 31;
      CH41_EVT_ID    at 16#160# range 0 .. 31;
      CH41_TASK_ID   at 16#164# range 0 .. 31;
      CH42_EVT_ID    at 16#168# range 0 .. 31;
      CH42_TASK_ID   at 16#16C# range 0 .. 31;
      CH43_EVT_ID    at 16#170# range 0 .. 31;
      CH43_TASK_ID   at 16#174# range 0 .. 31;
      CH44_EVT_ID    at 16#178# range 0 .. 31;
      CH44_TASK_ID   at 16#17C# range 0 .. 31;
      CH45_EVT_ID    at 16#180# range 0 .. 31;
      CH45_TASK_ID   at 16#184# range 0 .. 31;
      CH46_EVT_ID    at 16#188# range 0 .. 31;
      CH46_TASK_ID   at 16#18C# range 0 .. 31;
      CH47_EVT_ID    at 16#190# range 0 .. 31;
      CH47_TASK_ID   at 16#194# range 0 .. 31;
      CH48_EVT_ID    at 16#198# range 0 .. 31;
      CH48_TASK_ID   at 16#19C# range 0 .. 31;
      CH49_EVT_ID    at 16#1A0# range 0 .. 31;
      CH49_TASK_ID   at 16#1A4# range 0 .. 31;
      CLK_EN         at 16#1A8# range 0 .. 31;
      DATE           at 16#1AC# range 0 .. 31;
   end record;

   --  Event Task Matrix
   SOC_ETM_Periph : aliased SOC_ETM_Peripheral
     with Import, Address => SOC_ETM_Base;

end ESP32_C6_SVD.SOC_ETM;
