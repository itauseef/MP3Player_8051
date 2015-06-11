/**
STA013 - MP3 Decoder Driver Header
Author - Tauseef Indikar & Gaurav Shukla
Created on - 3/18/2015

For - ESD S15

------***------***------
These are initialization and basic features functions for STA013 MP3 decoder.

Reference:
http://www.procyonengineering.com/embedded/avr/avrlib/docs/html/sta013_8c-source.html
--Author       : Pascal Stang
--The above code is an AVR Library code.
--It has been modified for operation with AT89C51RC2/MCS51 along with the following modifications by Tauseef Indikar & Gaurav Shukla.

1) I2C functions (driver_i2c.h) which are called for send and receive do not have ACK checks to make working faster.
2) An oscillator value independent Patch is used.
3) 90 ms delay whenever a soft reset is issued. (for compatibility with new patch as it has soft resets in it)
4) Hard reset code has been removed.
5) Patch Update code has been completely rewritten.
6) Initialization code changed to start path with DATA_REQ enabled.
7) Decoder Start code changed to suit 14.7456 MHz clock.
8) PCM I2S Output of STA013 Configured for CS4334 DAC.
9) Demand code removed. DATA_REQ input from STA013 is handled in MP3_Read code in SD Card driver.

This code is distributed under the GNU Public License
which can be found at http://www.gnu.org/licenses/gpl.txt
------***------***------
**/

#ifndef DRIVER_STA013_H_INCLUDED
#define DRIVER_STA013_H_INCLUDED

//***********((((((((INCLUSIONS))))))))***********

#include "../main.h"

//***********((((((((DEFINITIONS))))))))***********

// STA013 I2C address
#define STA_I2C_DEV						0x86
#define STA_IDENT						0xAC

// STA013 register (sub)address
#define STA_REG_VERSION                0x00
#define STA_REG_IDENT                  0x01
#define STA_REG_PLLCTL_1               0x05
#define STA_REG_PLLCTL_2               0x06
#define STA_REG_PLLCTL_3               0x07
#define STA_REG_REQ_POL                0x0c
#define STA_REG_SCLK_POL               0x0d
#define STA_REG_ERROR_CODE             0x0f
#define STA_REG_SOFT_RESET             0x10
#define STA_REG_PLAY                   0x13
#define STA_REG_MUTE                   0x14
#define STA_REG_CMD_INTERRUPT          0x16
#define STA_REG_DATA_REQ_ENABLE        0x18
#define STA_REG_SYNCSTATUS             0x40
#define STA_REG_ANCCOUNT_L             0x41
#define STA_REG_ANCCOUNT_H             0x42
#define STA_REG_HEAD_H                 0x43
#define STA_REG_HEAD_M                 0x44
#define STA_REG_HEAD_L                 0x45
#define STA_REG_DLA                    0x46
#define STA_REG_DLB                    0x47
#define STA_REG_DRA                    0x48
#define STA_REG_DRB                    0x49
#define STA_REG_MFSDF_441              0x50
#define STA_REG_PLLFRAC_441_L          0x51
#define STA_REG_PLLFRAC_441_H          0x52
#define STA_REG_PCMDIVIDER             0x54
#define STA_REG_PCMCONF                0x55
#define STA_REG_PCMCROSS               0x56
#define STA_REG_ANC_DATA_1             0x59
#define STA_REG_ANC_DATA_2             0x5a
#define STA_REG_ANC_DATA_3             0x5b
#define STA_REG_ANC_DATA_4             0x5c
#define STA_REG_ANC_DATA_5             0x5d
#define STA_REG_MFSDF                  0x61
#define STA_REG_DAC_CLK_MODE           0x63
#define STA_REG_PLLFRAC_L              0x64
#define STA_REG_PLLFRAC_H              0x65
#define STA_REG_FRAME_CNT_L            0x67
#define STA_REG_FRAME_CNT_M            0x68
#define STA_REG_FRAME_CNT_H            0x69
#define STA_REG_AVERAGE_BITRATE        0x6a
#define STA_REG_SOFTVERSION            0x71
#define STA_REG_RUN                    0x72
#define STA_REG_TREBLE_FREQUENCY_LOW   0x77
#define STA_REG_TREBLE_FREQUENCY_HIGH  0x78
#define STA_REG_BASS_FREQUENCY_LOW     0x79
#define STA_REG_BASS_FREQUENCY_HIGH    0x7a
#define STA_REG_TREBLE_ENHANCE         0x7b
#define STA_REG_BASS_ENHANCE           0x7c
#define STA_REG_TONE_ATTEN             0x7d

#define MIN_VOLUME_ATTENUATION			0
#define MAX_VOLUME_ATTENUATION			96
#define MIN_TONE_ATTENUATION			0
#define MAX_TONE_ATTENUATION			96
#define MIN_BASS_FREQUENCY				100
#define MAX_BASS_FREQUENCY				500
#define MIN_BASS_ENHANCE				-12	// -18dB in 1.5 dB steps
#define MAX_BASS_ENHANCE				+12	// +18dB in 1.5 dB steps
#define MIN_TREBLE_FREQUENCY			1000
#define MAX_TREBLE_FREQUENCY			5000
#define MIN_TREBLE_ENHANCE				-12	// -18dB in 1.5 dB steps
#define MAX_TREBLE_ENHANCE				+12	// +18dB in 1.5 dB steps
#define SOFTMUTE_VOLUME_CHANGE			20


#define STA013_DEMAND_PIN       P1_4             // port pin to which DEMAND line is connected
#define STA013_CS_ENABLE        P1_3             // port pin to which DEMAND line is connected

//***********((((((((GLOBAL VARIABLES))))))))***********

//***********((((((((DECLARATIONS))))))))***********

unsigned char STA013ReadReg(unsigned char reg);
void STA013WriteReg(unsigned char reg, unsigned char data1);
void STA013DownloadUpdate(void);
unsigned char  STA013Init(void);

void STA013StartDecoder(void);
void STA013StopDecoder(void);
void STA013PauseDecoder(void);
void STA013ResumeDecoder(void);

void STA013GetMP3Info();
unsigned int STA013GetAverageBitrate(void);

void STA013SetVolume(unsigned char volume, signed char balance);
void STA013SetTone(signed char bassEnh, unsigned int bassFreq, signed char trebleEnh, unsigned int trebleFreq);

#endif // DRIVER_STA013_H_INCLUDED
