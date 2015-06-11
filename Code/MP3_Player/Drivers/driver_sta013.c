/**
STA013 - MP3 Decoder Driver
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

//***********((((((((INCLUSIONS))))))))***********

#include "..\main.h"

//***********((((((((GLOBAL VARIABLES))))))))***********

/** ~4 KB Oscillator Independent Patch Update for STA013 */
/** DATA_REQ pin sometimes hangs at high or low if Patch is not loaded properly */
/** I was loading this through the SD Card but to make it independent of SD Card - now storing it in CODEMEM */
/** Source - decoder.bin in stsw-audio007.zip got from http://www.st.com/web/en/catalog/tools/PF257487# */
/** Format of contents of file is (RR, VV) Register Address - Value to be stored */
code static unsigned char STA013_Patch[] =
{
#include "STA013Update.h"
, 0xFF,0xFF /** End with 0xFF so that we can check and end Patch Upload */
};

/** PG 17 from DATASHEET. Values are divided by 2 */
code static unsigned char MP3_Bitrates[] =
{
    0,  4,  8, 12, 16, 20, 24, 28, 32, 40, 48, 56,  64,  72,  80, 0,    // ID=0
    0, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 0     // ID=1
};

/** PG 17 from DATASHEET */
code static unsigned char MP3_SamplingFrequencies[] =
{
    11, 12,  8,  0,      // MPEG 2.5 rates
    0,  0,  0,  0,       // reserved rates
    22, 24, 16,  0,      // MPEG 2   rates
    44, 48, 32,  0       // MPEG 1   rates
};

//***********((((((((FUNCTIONS))))))))***********

/** Read Register Value in STA013 */
unsigned char STA013ReadReg(unsigned char reg)
{
    return  i2cReceive(STA_I2C_DEV, reg);
}

/** Write Register Value in STA013 */
void STA013WriteReg(unsigned char reg, unsigned char data1)
{
    i2cSend(STA_I2C_DEV, reg, data1);
    if (reg==STA_REG_SOFT_RESET)    // Wait for 90ms after delay
        Delay(90);                  // Not waiting will not load Patch properly as Patch also contains few soft resets
}

/** Write Patch to designated Registers */
void STA013DownloadUpdate(void)
{
	unsigned int i=0;
	while( (STA013_Patch[i] != 0xff) )
		STA013WriteReg(STA013_Patch[i++], STA013_Patch[i++]);
    // Patch Data is a couplet of Register Address and Value of Register
}


/** Initialization */
unsigned char STA013Init(void)
{
    Delay(30);
    // identify STA013 device
    if(STA013ReadReg(STA_REG_IDENT) != STA_IDENT)
        {
        #if PRINTDEBUG
        printf_tiny("\r\n STA013 not detected.");
        #endif // PRINTDEBUG
        return FALSE;
        }

    // enable DATA_REQ
    STA013WriteReg(STA_REG_DATA_REQ_ENABLE,0x04);

    // do firmware configuration and update
    STA013DownloadUpdate();

    // start decoder
    STA013StartDecoder();

    return TRUE;
}

/** Ref. Table 10 in DATASHEET for 14.7564 MHz Clock Input */
/** The tool cpll.exe can be used to calculate the following values for any Oscillator Value */
/** http://www.st.com/web/en/catalog/tools/PF257482# - cpll.exe */
void STA013StartDecoder(void)
{
    // Soft reset
    STA013WriteReg(STA_REG_SOFT_RESET,			0x01);
    STA013WriteReg(STA_REG_SOFT_RESET,			0x00);

    // Mute and configure DAC output
    STA013WriteReg(STA_REG_MUTE,				0x01);
    STA013WriteReg(STA_REG_PCMDIVIDER,			0x01);	// 256X OVERSAMPLING 32-bit mode, O_FAC = 256
    STA013WriteReg(STA_REG_PCMCONF,				33);	// SET I2S FORMAT FOR CS4334

    // Configure PLL for MP3 rates
    STA013WriteReg(STA_REG_PLLFRAC_441_H,		04);
    STA013WriteReg(STA_REG_PLLFRAC_441_L,		00);
    STA013WriteReg(STA_REG_PLLFRAC_H,			85);
    STA013WriteReg(STA_REG_PLLFRAC_L,			85);
    STA013WriteReg(STA_REG_MFSDF_441,			16);
    STA013WriteReg(STA_REG_MFSDF,				15);

    // Configure interface polarities, etc
    STA013WriteReg(11,3);
    STA013WriteReg(STA_REG_PLLCTL_1,			161);
    STA013WriteReg(STA_REG_PLLCTL_2,			12);
    STA013WriteReg(STA_REG_PLLCTL_3,			00);
    STA013WriteReg(STA_REG_SCLK_POL,			0x00);	// SDI Changes when clock is low
    STA013WriteReg(STA_REG_DATA_REQ_ENABLE,		0x04);
    STA013WriteReg(STA_REG_REQ_POL,             0x05);

    // Check if DATA_REQ line is free to see if STA013 is properly configured
    #if PRINTDEBUG
    if (!(STA013ReadReg(STA_REG_REQ_POL)==0x05&&STA013ReadReg(STA_REG_DATA_REQ_ENABLE)==0x04))
        printf_tiny("\r\n STA 013 Not Properly Configured");
    #endif // PRINTDEBUG

    // Set audio tone controls
    STA013SetTone(0, 0, 0, 0);

    // Unmute and start running
    STA013WriteReg(STA_REG_RUN,  0x01);
    STA013WriteReg(STA_REG_PLAY, 0x01);
    STA013WriteReg(STA_REG_MUTE, 0x00);

    STA013SetVolume(95,0);
}

/** Stop STA013 Decoding Operation */
void STA013StopDecoder(void)
{
    // mute output
    STA013WriteReg(STA_REG_MUTE, 0x01);

    // soft reset
    STA013WriteReg(STA_REG_SOFT_RESET, 0x01);
    STA013WriteReg(STA_REG_SOFT_RESET, 0x00);
}

/** Pause STA013 Operation */
void STA013PauseDecoder(void)
{
    // enable mute
    STA013WriteReg(STA_REG_MUTE, 0x01);
    // stop the decoder
    STA013WriteReg(STA_REG_PLAY, 0x00);
}

/** Resume STA013 Operation */
void STA013ResumeDecoder(void)
{
    // run the decoder
    STA013WriteReg(STA_REG_PLAY, 0x01);
    // disable mute
    STA013WriteReg(STA_REG_MUTE, 0x00);
}

/** Get current playing MP3 attributes from STA013 */
void STA013GetMP3Info()
{
    unsigned int  bitrate;
    unsigned char sampFreq;
    unsigned char mode;
    unsigned char headL, headM, headH;
    unsigned char mpegID, bitrateIndex, sampFreqIndex;

    // get the MP3 header info
    headH = STA013ReadReg(STA_REG_HEAD_H);
    headM = STA013ReadReg(STA_REG_HEAD_M);
    headL = STA013ReadReg(STA_REG_HEAD_L);

    // IDex:ID is in head[20:19]
    // 00 - MPEG2.5
    // 01 - reserved
    // 10 - MPEG2
    // 11 - MPEG1
    mpegID = (headH & 0x18)>>3;

    // sampling frequency is in head[11:10]
    sampFreqIndex = ((headM & 0x0C)>>2) | (mpegID<<2);

    // bitrate index is in head[15:12]
    bitrateIndex = ((headM & 0xF0)>>4) | ((mpegID & 0x01)<<4);
    //bitrateIndex = ((headM & 0xF0)>>4) | (1<<4);

    // mode is in head[7:6]
    // 00 - stereo
    // 01 - joint stereo
    // 10 - dual channel
    // 11 - single channel (mono)
    mode = (headL & 0xC0)>>6;

    bitrate =	2 * MP3_Bitrates[ bitrateIndex ];
    sampFreq = MP3_SamplingFrequencies [sampFreqIndex ];
    printf_tiny("\r\nMode = %d Sampling Freq = %d Bitrate = %d",mode,sampFreq,bitrate);
    /*
       header = (unsigned long)STA013ReadReg(STA_REG_HEAD_H) << 16 |
           (unsigned long)STA013ReadReg(STA_REG_HEAD_M) << 8  |
           (unsigned long)STA013ReadReg(STA_REG_HEAD_L);

    //   hdr->word           = l;
    //   hdr->emphasis       = l & 0x03;
    //   hdr->isOriginal     = (l >> 2) & 0x01;
    //   hdr->isCopyrighted  = (l >> 3) & 0x01;
    //   hdr->modeExtension  = (l >> 4) & 0x03;
    //   hdr->mode           = (l >> 6) & 0x03;
    //   hdr->private        = (l >> 8) & 0x01;
    //   hdr->padding        = (l >> 9) & 0x01;
    //   hdr->frequencyIndex = (l >> 10) & 0x03;
    //   hdr->bitrateIndex   = (l >> 12) & 0x0f;
    //   hdr->protection     = (l >> 16) & 0x01;
    //   hdr->layer          = (l >> 17) & 0x03;
    //   hdr->ID             = (l >> 19) & 0x01;
    //   hdr->ID_ex          = (l >> 20) & 0x01;
    */
}

/** Get Average Bitrate of Data Supplied to STA013 in Kbps */
unsigned int STA013GetAverageBitrate(void)
{
    return (2 * STA013ReadReg(STA_REG_AVERAGE_BITRATE));
}

/** Set Volume(0-100) and L/R Balance(0-100) for STA013 */
void STA013SetVolume(unsigned char volume, signed char balance)
{
    char attenL, attenR;

    // volume is expected as 0-100 value
    // Note:
    //	#define MIN_VOLUME_ATTENUATION     0
    //	#define MAX_VOLUME_ATTENUATION     96

    if( balance > 0)
    {
        // balance to the left, attenuate right
        attenL = (100 - volume);
        attenR = (100 - volume) - (balance);
    }
    else
    {
        // balance to the right, attenuate left
        attenL = (100 - volume) + (balance);
        attenR = (100 - volume);
    }
    // respect limits
    attenL = MIN(attenL,MAX_VOLUME_ATTENUATION);
    attenL = MAX(attenL,MIN_VOLUME_ATTENUATION);
    attenR = MIN(attenR,MAX_VOLUME_ATTENUATION);
    attenR = MAX(attenR,MIN_VOLUME_ATTENUATION);

    // set volume
    STA013WriteReg(STA_REG_DLA, attenL);
    STA013WriteReg(STA_REG_DLB, MAX_VOLUME_ATTENUATION);
    STA013WriteReg(STA_REG_DRA, attenR);
    STA013WriteReg(STA_REG_DRB, MAX_VOLUME_ATTENUATION);
}

/** Adjust Tones STA013 */
void STA013SetTone(signed char bassEnh, unsigned int bassFreq, signed char trebleEnh, unsigned int trebleFreq)
{
    // set bass enhancement
    STA013WriteReg(STA_REG_BASS_FREQUENCY_LOW,  (bassFreq   ) & 0xFF );
    STA013WriteReg(STA_REG_BASS_FREQUENCY_HIGH, (bassFreq>>8) & 0xFF );
    // respect limits
    bassEnh = MIN(bassEnh,MAX_BASS_ENHANCE);
    bassEnh = MAX(bassEnh,MIN_BASS_ENHANCE);
    STA013WriteReg(STA_REG_BASS_ENHANCE, bassEnh);

    // set treble enhancement
    STA013WriteReg(STA_REG_TREBLE_FREQUENCY_LOW,  (trebleFreq   ) & 0xFF );
    STA013WriteReg(STA_REG_TREBLE_FREQUENCY_HIGH, (trebleFreq>>8) & 0xFF );
    // respect limits
    trebleEnh = MIN(trebleEnh,MAX_TREBLE_ENHANCE);
    trebleEnh = MAX(trebleEnh,MIN_TREBLE_ENHANCE);
    STA013WriteReg(STA_REG_TREBLE_ENHANCE, trebleEnh);

    // set attentuation to avoid clipping
    STA013WriteReg( STA_REG_TONE_ATTEN, MAX(bassEnh,trebleEnh) );
}
