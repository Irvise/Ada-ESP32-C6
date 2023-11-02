pragma Style_Checks (Off);

--  Copyright 2023 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32c6.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  32-bit RISC-V MCU & 2.4 GHz Wi-Fi 6 & Bluetooth 5 (LE) & IEEE 802.15.4
package ESP32_C6_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address := System'To_Address (16#60088000#);
   APB_SARADC_Base : constant System.Address := System'To_Address (16#6000E000#);
   ASSIST_DEBUG_Base : constant System.Address := System'To_Address (16#600C2000#);
   ATOMIC_Base : constant System.Address := System'To_Address (16#60011000#);
   DMA_Base : constant System.Address := System'To_Address (16#60080000#);
   DS_Base : constant System.Address := System'To_Address (16#6008C000#);
   ECC_Base : constant System.Address := System'To_Address (16#6008B000#);
   EFUSE_Base : constant System.Address := System'To_Address (16#600B0800#);
   EXTMEM_Base : constant System.Address := System'To_Address (16#600C8000#);
   GPIO_Base : constant System.Address := System'To_Address (16#60091000#);
   GPIO_SD_Base : constant System.Address := System'To_Address (16#60091F00#);
   HINF_Base : constant System.Address := System'To_Address (16#60016000#);
   HMAC_Base : constant System.Address := System'To_Address (16#6008D000#);
   HP_APM_Base : constant System.Address := System'To_Address (16#60099000#);
   HP_SYS_Base : constant System.Address := System'To_Address (16#60095000#);
   I2C0_Base : constant System.Address := System'To_Address (16#60004000#);
   I2S0_Base : constant System.Address := System'To_Address (16#6000C000#);
   INTERRUPT_CORE0_Base : constant System.Address := System'To_Address (16#60010000#);
   INTPRI_Base : constant System.Address := System'To_Address (16#600C5000#);
   IO_MUX_Base : constant System.Address := System'To_Address (16#60090000#);
   LEDC_Base : constant System.Address := System'To_Address (16#60007000#);
   LP_PERI_Base : constant System.Address := System'To_Address (16#600B2800#);
   LP_ANA_Base : constant System.Address := System'To_Address (16#600B2C00#);
   LP_AON_Base : constant System.Address := System'To_Address (16#600B1000#);
   LP_APM_Base : constant System.Address := System'To_Address (16#600B3800#);
   LP_APM0_Base : constant System.Address := System'To_Address (16#60099800#);
   LP_CLKRST_Base : constant System.Address := System'To_Address (16#600B0400#);
   LP_I2C0_Base : constant System.Address := System'To_Address (16#600B1800#);
   LP_I2C_ANA_MST_Base : constant System.Address := System'To_Address (16#600B2400#);
   LP_IO_Base : constant System.Address := System'To_Address (16#600B2000#);
   LP_TEE_Base : constant System.Address := System'To_Address (16#600B3400#);
   LP_TIMER_Base : constant System.Address := System'To_Address (16#600B0C00#);
   LP_UART_Base : constant System.Address := System'To_Address (16#600B1400#);
   LP_WDT_Base : constant System.Address := System'To_Address (16#600B1C00#);
   MCPWM0_Base : constant System.Address := System'To_Address (16#60014000#);
   MEM_MONITOR_Base : constant System.Address := System'To_Address (16#60092000#);
   MODEM_LPCON_Base : constant System.Address := System'To_Address (16#600AF000#);
   MODEM_SYSCON_Base : constant System.Address := System'To_Address (16#600A9800#);
   OTP_DEBUG_Base : constant System.Address := System'To_Address (16#600B3C00#);
   PARL_IO_Base : constant System.Address := System'To_Address (16#60015000#);
   PAU_Base : constant System.Address := System'To_Address (16#60093000#);
   PCNT_Base : constant System.Address := System'To_Address (16#60012000#);
   PCR_Base : constant System.Address := System'To_Address (16#60096000#);
   PMU_Base : constant System.Address := System'To_Address (16#600B0000#);
   RMT_Base : constant System.Address := System'To_Address (16#60006000#);
   RNG_Base : constant System.Address := System'To_Address (16#600B2800#);
   RSA_Base : constant System.Address := System'To_Address (16#6008A000#);
   SHA_Base : constant System.Address := System'To_Address (16#60089000#);
   SLCHOST_Base : constant System.Address := System'To_Address (16#60017000#);
   SOC_ETM_Base : constant System.Address := System'To_Address (16#60013000#);
   SPI0_Base : constant System.Address := System'To_Address (16#60002000#);
   SPI1_Base : constant System.Address := System'To_Address (16#60003000#);
   SPI2_Base : constant System.Address := System'To_Address (16#60081000#);
   SYSTIMER_Base : constant System.Address := System'To_Address (16#6000A000#);
   TEE_Base : constant System.Address := System'To_Address (16#60098000#);
   TIMG0_Base : constant System.Address := System'To_Address (16#60008000#);
   TIMG1_Base : constant System.Address := System'To_Address (16#60009000#);
   TRACE_Base : constant System.Address := System'To_Address (16#600C0000#);
   TWAI0_Base : constant System.Address := System'To_Address (16#6000B000#);
   TWAI1_Base : constant System.Address := System'To_Address (16#6000D000#);
   UART0_Base : constant System.Address := System'To_Address (16#60000000#);
   UART1_Base : constant System.Address := System'To_Address (16#60001000#);
   UHCI0_Base : constant System.Address := System'To_Address (16#60005000#);
   USB_DEVICE_Base : constant System.Address := System'To_Address (16#6000F000#);

end ESP32_C6_SVD;
