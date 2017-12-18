// Audio Bench
// 
// Sean Hickey
// 9 Dec 2017
//
//
// Load and play WAV audio files from an SD card
// triggered by two people sitting on a bench(?)
//
// This file assumes the following:
// - Audio files are located in the root directory of the SD card
// - Audio files have filenames in ALL_CAPS
// - Audio files are WAV format with the following specs:
//    - 22050 sampling rate
//    - PCM Audio
//    - Stereo channels
//    - Unsigned 16-bit sample values

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "pff/pff.h"
#include "pff/diskio.h"

typedef enum PlayerState {
   STOPPED,
   PLAYING,
   FADING_OUT,
   FADING_IN
} PlayerState;

typedef struct AudioState {
   
   PlayerState playerState = STOPPED;
   float gain = 1.0;
   float fadeValue = 1.0;
   
   uint32_t samplesPlayed = 0;
   uint32_t totalSamples = 0;
   
} AudioState;

typedef enum PinState {
   LOW,
   HIGH,
   RISING,
   FALLING
} PinState;

typedef int bool;
#define true 1
#define false 0

typedef struct WavHeader {
   char riffGroupId[4];
   uint32_t fileLength;
   char riffType[4];

   char fmtGroupId[4];
   uint32_t fmtChunkSize;
   uint16_t formatTag;
   uint16_t numChannels;
   uint32_t samplesPerSecond;
   uint32_t avgBytesPerSecond;
   uint16_t blockAlign;
   uint16_t bitsPerSample;

   char dataGroupId[4];
   uint32_t dataChunkSize;
} WavHeader;

static volatile 

static volatile uint8_t sampleBuffer0[512];
static volatile uint8_t sampleBuffer1[512];
static volatile uint8_t sampleBuffer2[512];
static volatile bool playing = true;
static volatile int readingBuffer = 0;
static volatile bool shouldFillNextBuffer = true;
static volatile int samplesIdx = 0;

static volatile float digitalGain = 1;

static volatile FATFS fs;

int main(void) {

   // Initialize Clock: 32MHz
   
   OSC.CTRL = OSC_RC32MEN_bm; // 32MHz internal oscillator
   while (!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for clock to be ready
   CCP = CCP_IOREG_gc; // enable protected register change
   CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock


   // Initialize DAC: Dual channel, referenced against AVCC (3.3V)

   DACA.CTRLA = DAC_CH0EN_bm | DAC_CH1EN_bm | DAC_ENABLE_bm;
   DACA.CTRLB = DAC_CHSEL_DUAL_gc;
   DACA.CTRLC = DAC_REFSEL_AVCC_gc;     
   
   
   // Initialize timer for sending samples to the DAC with precise timing
   // Currently, this supports WAV files at sample rate 22050
   
   TCC4.PER = 726; // With a 32 MHz clock and a /2 prescaler, counting to 726 gives up close to 22050 events per second
   TCC4.INTCTRLA = TC45_OVFINTLVL_LO_gc;
   TCC4.CTRLA = TC45_CLKSEL_DIV2_gc;
   PMIC.CTRL |= PMIC_LOLVLEN_bm; // Enable low-level interrupts (though sei() still needs to be called before interrupts will start)


   // Initialize the SD card and mount the file system
   
   if ( !(FR_OK == pf_mount(&fs)) ) {
      // TODO: What should we do if the file system fails to load?
      // Can we play a beep sound or something?
      while (1) {}
   }
   
   
   // // UINT bytes_read;
   // // uint32_t dataChunkSize = 0;

   // if ( !(FR_OK == pf_mount(&fs)) ) {

   //    //TODO : THIS JUST FAILS SILENTLY RIGHT NOW
   //     while (1) {}

   //    // BYTE buff[sizeof(WavHeader)];

   //    // if (FR_OK == pf_read(buff, sizeof(WavHeader), &bytes_read)) {
   //    //    WavHeader *header = (WavHeader *)buff;
   //    //    if (header->riffGroupId[0] == 'R'
   //    //        && header->riffGroupId[1] == 'I'
   //    //        && header->riffGroupId[2] == 'F'
   //    //        && header->riffGroupId[3] == 'F') {

   //    //       dataChunkSize = header->dataChunkSize;

   //    //       success = true;
   //    //    }
   //    // }
   // }

   // loadFile();
   
   // // Populate the first two buffers
   // uint32_t totalBytesRead = 0;

   // pf_read(sampleBuffer0, 512, &bytes_read);
   // totalBytesRead += bytes_read;
   // pf_read(sampleBuffer1, 512, &bytes_read);
   // totalBytesRead += bytes_read;

   // playing = true;
   
   

   sei(); // Enable global interrupts


   while (1) {
      
      // Sample the pin coming from the load cell
      
      // Detect rising/falling edge
      
      
      // Switch based on the current state of the playback
      
      // STOPPED
         // If rising, transition to PLAYING
      
      // PLAYING
         // If falling, transition to FADE_OUT
      
      // FADE_OUT
         // If rising, transistion to FADE_IN
      
      // FADE_IN
         // If falling, transistion to FADE_OUT
      
      
      // Refill audio buffers as necessary
      
      
      
      

      if (PORTD.IN & PIN3_bm) {
         // start the audio
         if (!playing) {
            digitalGain = 1.0;
            playing = true;
         }
      }
      else {
         // Wait 2 seconds, see if the pin is still low
         _delay_ms(2000);
            // If it is still low
         if (!(PORTD.IN & PIN3_bm)) {
            playing = false;
            digitalGain = 0;
            DACA.CH0DATA = 0x800;             
            DACA.CH1DATA = 0x800;  
            loadFile();       
         }
      }

      if (shouldFillNextBuffer) {
         // Fill the other buffer while we're reading 

         if (readingBuffer == 0) {
            pf_read(sampleBuffer2, 512, &bytes_read);
         }
         else if (readingBuffer == 1) {
            pf_read(sampleBuffer0, 512, &bytes_read);
         }
         else {
            pf_read(sampleBuffer1, 512, &bytes_read);
         }

         totalBytesRead += bytes_read;
         shouldFillNextBuffer = false;
      }

   }

}

/*
 * Retrieve and parse a WAV file from disk chosen (pseudo-)randomly.
 * At the end of this function, the read/write pointer
 * points to the first byte of samples in the WAV file.
 */

void loadFile() {
   int file = rand() % 6;
   if (file == 0) {
      pf_open("GRANDMA.WAV"); // Evidently PetitFS (or maybe FAT in general) uses all uppercase in filenames
   }
   else if (file == 1) {
      pf_open("IDAHO.WAV");
   }
   else if (file == 2) {
      pf_open("OKLAHOMA.WAV");
   }
   else if (file == 3) {
      pf_open("IMMIGRATION.WAV");
   }
   else if (file == 4) {
      pf_open("INTERVIEW-69.WAV");
   }
   else if (file == 5) {
      pf_open("TRUMP.WAV");
   }
}


/*
 * Audio Samples Output Interrupt
 */
ISR(TCC4_OVF_vect) {
   TCC4.INTFLAGS = TC4_OVFIF_bm; // Clear interrupt flag

   if (!playing) {
      DACA.CH0DATA = 0x800;             
      DACA.CH1DATA = 0x800;
      return;             
   }

   int16_t *samples;
   if (readingBuffer == 0) {
      samples = (int16_t *)sampleBuffer0;
   }
   else if (readingBuffer == 1) {
      samples = (int16_t *)sampleBuffer1;
   }
   else {
      samples = (int16_t *)sampleBuffer2;
   }

   uint16_t sampleL = (uint16_t)(((int32_t)(samples[samplesIdx]) + 32768) * digitalGain); // Shift to unsigned int
   uint16_t sampleR = (uint16_t)(((int32_t)(samples[samplesIdx + 1]) + 32768) * digitalGain); // Shift to unsigned int

   DACA.CH0DATA = sampleL >> 4; // Toss out the 4 LSBs
   DACA.CH1DATA = sampleR >> 4; // Toss out the 4 LSBs

   samplesIdx += 2; // Assuming stereo sound

   if (samplesIdx >= 256) {
      samplesIdx = 0;
      readingBuffer = (readingBuffer + 1) % 3;
      shouldFillNextBuffer = true;
   }

}