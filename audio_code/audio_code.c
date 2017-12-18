/* Audio Bench
 * 
 * Sean Hickey
 * 9 Dec 2017
 *
 *
 * Load and play WAV audio files from an SD card
 * triggered by two people sitting on a bench(?)
 *
 * This file assumes the following:
 * - Audio files are located in the root directory of the SD card
 * - Audio files have filenames in ALL_CAPS
 * - Audio files are WAV format with the following specs:
 *    - 22050 sampling rate
 *    - PCM Audio
 *    - 2 channels (stereo)
 *    - Unsigned 16-bit sample values
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "pff/pff.h"
#include "pff/diskio.h"

#define SIT_PIN_PORT PORTD
#define SIT_PIN PIN3_bm
#define SIT_PIN_VALUE (SIT_PIN_PORT.IN & SIT_PIN)

#define SAMPLING_RATE 22050
#define DIGITAL_GAIN 1.0
#define FADE_OUT_TIME_IN_SECONDS 5.0
#define FADE_OUT_INCREMENT (1.0 / (SAMPLING_RATE * FADE_OUT_TIME_IN_SECONDS))
#define FADE_IN_TIME_IN_SECONDS 1.0
#define FADE_IN_INCREMENT (1.0 / (SAMPLING_RATE * FADE_IN_TIME_IN_SECONDS))

#define DIE cli(); while(1){}

typedef enum PlayerState {
    STOPPED,
    PLAYING,
    FADING_OUT,
    FADING_IN
} PlayerState;

typedef struct AudioState {

    PlayerState playerState;
    float fade;

    uint32_t totalSamples; // This counts an LR pair as ONE sample
    uint32_t samplesRead;
    uint32_t samplesPlayed;

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

static volatile AudioState audioState;

static uint8_t sampleBuffer0[512];
static uint8_t sampleBuffer1[512];
static uint8_t sampleBuffer2[512];
static volatile int readingBuffer = 0;
static volatile bool shouldFillNextBuffer = true;
static volatile int samplesIdx = 0;


static FATFS fs;

static volatile uint8_t previousSitPinValue;
static volatile uint8_t currentSitPinValue;


/*
 * Retrieve and parse a WAV file from disk chosen (pseudo-)randomly.
 * At the end of this function, the first two buffers are loaded
 * with the first samples of audio data and the read/write pointer
 * points to the next samples to load into the third buffer
 */

void loadFile() {

    cli(); // Chill with interrupts for the moment

    // Stop any current audio
    if (audioState.playerState != STOPPED) {
        DACA.CH0DATA = 0x800;
        DACA.CH1DATA = 0x800;
        audioState.playerState = STOPPED;
    }

    // Load a new WAV file
    FRESULT success = FR_NOT_OPENED;
    do {
        int file = rand() % 6;
        if (file == 0) {
            success = pf_open("GRANDMA.WAV"); // Evidently PetitFS (or maybe FAT in general) uses all uppercase in filenames
        }
        else if (file == 1) {
            success = pf_open("IDAHO.WAV");
        }
        else if (file == 2) {
            success = pf_open("OKLAHOMA.WAV");
        }
        else if (file == 3) {
            success = pf_open("IMMIGRATION.WAV");
        }
        else if (file == 4) {
            success = pf_open("INTERVIEW-69.WAV");
        }
        else if (file == 5) {
            success = pf_open("TRUMP.WAV");
        }
    } while (success != FR_OK);

    // At this point, we're assuming we found a reasonable WAV file
    UINT bytes_read = 0;
    BYTE buff[sizeof(WavHeader)];

    // Access the WAV file header
    pf_read(buff, sizeof(WavHeader), &bytes_read);
    WavHeader *header = (WavHeader *)buff;

    audioState.fade = 1.0;
    audioState.totalSamples = header->dataChunkSize / header->blockAlign;
    audioState.samplesRead = 0;
    audioState.samplesPlayed = 0;

    // Populate the first two buffers
    // This basically assumes we have at least 1024 bytes in the file
    // If we don't, why is it even on the disk??
    pf_read(sampleBuffer0, 512, &bytes_read);
    audioState.samplesRead += (bytes_read / 4);

    pf_read(sampleBuffer1, 512, &bytes_read);
    audioState.samplesRead += (bytes_read / 4);

    readingBuffer = 0;

    sei(); // Reenable interrupts
}



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
        DIE;
    }


    // Initialize sit pin values
    currentSitPinValue = SIT_PIN_VALUE;

    // Initialize Audio State
    audioState.playerState = STOPPED;
    audioState.fade = 1.0;
    audioState.samplesPlayed = 0;
    audioState.totalSamples = 0;


    sei(); // Enable global interrupts


    while (1) {

        bool rising = false;
        bool falling = false;

        // Sample the pin coming from the load cell
        previousSitPinValue = currentSitPinValue;
        currentSitPinValue = SIT_PIN_VALUE;

        // Detect rising/falling edge
        if (previousSitPinValue && !currentSitPinValue) {
            falling = true;
        }
        else if (!previousSitPinValue && currentSitPinValue) {
            rising = true;
        }

        if (rising || falling) { // We only care about rising and falling edges, so if neither of these are detected, short circuit and go right to sample reading
            // Switch based on the current state of the playback
            switch (audioState.playerState) {
                case STOPPED:
                if (rising) {
                    loadFile();
                    audioState.playerState = PLAYING;
                }
                break;

                case PLAYING:
                if (falling) {
                    audioState.playerState = FADING_OUT;
                }
                break;

                case FADING_OUT:
                if (rising) {
                    audioState.playerState = FADING_IN;
                }

                break;

                case FADING_IN:
                if (falling) {
                    audioState.playerState = FADING_OUT;
                }
                break;
            }
        }

        // Refill audio buffers as necessary

        if (shouldFillNextBuffer && (audioState.samplesRead < audioState.totalSamples)) {

            UINT bytes_read;

            if (readingBuffer == 0) {
                pf_read(sampleBuffer2, 512, &bytes_read);
            }
            else if (readingBuffer == 1) {
                pf_read(sampleBuffer0, 512, &bytes_read);
            }
            else {
                pf_read(sampleBuffer1, 512, &bytes_read);
            }

            audioState.samplesRead += (bytes_read / 4);
            shouldFillNextBuffer = false;
        }

    }

}


/*
 * Audio Samples Output Interrupt
 */
ISR(TCC4_OVF_vect) {
    TCC4.INTFLAGS = TC4_OVFIF_bm; // Clear interrupt flag

    PlayerState playerState = audioState.playerState;

    if (playerState == STOPPED) {
        DACA.CH0DATA = 0x800;             
        DACA.CH1DATA = 0x800;
        return;
    }

    if (audioState.samplesPlayed >= audioState.totalSamples) {
        DACA.CH0DATA = 0x800;             
        DACA.CH1DATA = 0x800;
        audioState.playerState = STOPPED;
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

    uint16_t sampleL = (uint16_t)(((int32_t)(samples[samplesIdx]) + 32768) * DIGITAL_GAIN); // Shift to unsigned int
    uint16_t sampleR = (uint16_t)(((int32_t)(samples[samplesIdx + 1]) + 32768) * DIGITAL_GAIN); // Shift to unsigned int

    if (playerState == FADING_OUT || playerState == FADING_IN) {
        sampleL = (uint16_t)(sampleL * audioState.fade);
        sampleR = (uint16_t)(sampleR * audioState.fade);
        
    }

    DACA.CH0DATA = sampleL >> 4; // Toss out the 4 LSBs
    DACA.CH1DATA = sampleR >> 4; // Toss out the 4 LSBs

    // Update fade multipliers
    if (playerState == FADING_OUT) {
        audioState.fade -= FADE_OUT_INCREMENT;
        if (audioState.fade <= 0) {
            audioState.fade = 0;
            audioState.playerState = STOPPED;
        }
    }
    else if (playerState == FADING_IN) {
        audioState.fade += FADE_IN_INCREMENT;
        if (audioState.fade >= 1.0) {
            audioState.fade = 1.0;
            audioState.playerState = PLAYING;
        }
    }

    samplesIdx += 2; // Assuming stereo sound

    if (samplesIdx >= 256) {
        samplesIdx = 0;
        readingBuffer = (readingBuffer + 1) % 3;
        shouldFillNextBuffer = true;
    }

}