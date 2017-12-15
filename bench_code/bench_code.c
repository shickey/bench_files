//
// hello.servo.44.c
//
// servo motor hello-world
//
// set lfuse to 0x5E for 20 MHz xtal
//
// Neil Gershenfeld
// 4/8/12
//
// (c) Massachusetts Institute of Technology 2012
// This work may be reproduced, modified, distributed,
// performed, and displayed for any purpose. Copyright is
// retained and must be preserved. The work is provided
// as is; no warranty is provided, and users accept all 
// liability.
//

// #include <avr/io.h>
// #include <util/delay.h>

// #include "audio_data.h"

// #define output(directions,pin) (directions |= pin) // set port direction for output
// #define set(port,pin) (port |= pin) // set port pin
// #define clear(port,pin) (port &= (~pin)) // clear port pin
// #define pin_test(pins,pin) (pins & pin) // test for port pin
// #define bit_test(byte,bit) (byte & (1 << bit)) // test for bit set


// int main(void) {

//    OSC.CTRL = OSC_RC8MEN_bm; // 8MHz internal oscillator
//    while (!(OSC.STATUS & OSC_RC8MRDY_bm)); // wait for clock to be ready
//    CCP = CCP_IOREG_gc; // enable protected register change
//    CLK.CTRL = CLK_SCLKSEL_RC8M_gc; // switch to 8MHz clock

//    // PORTA.DIRSET = 0b00000100 ; // Set pin 0 to be output.

//    // Set up DAC
//    DACA.CTRLA = DAC_CH0EN_bm | DAC_ENABLE_bm; // Enable Channel 0 out and the DAC
//    DACA.CTRLB = DAC_CHSEL_SINGLE_gc;
//    DACA.CTRLC = DAC_REFSEL_AVCC_gc;// | DAC_LEFTADJ_bm;
//    // DACA.CH0GAINCAL = 0xFF;

//    uint16_t idx = 0;

//    // int mod = 0;

//    while(1){ // loop forever
//       while (!(DACA.STATUS & DAC_CH0DRE_bm)) ; // Wait for the previous conversion to finish

//       // if (mod) {
//       //    DACA.CH0DATA = 0xFFF;   
//       // }
//       // else {
//       //    DACA.CH0DATA = 0x00;
//       // }

//       // mod = (mod + 1) % 2;
//       // DACA.CH0DATA = 0x000;
//       // _delay_ms(1000);
//       // DACA.CH0DATA = 0x800;
//       // _delay_ms(1000);
//       // DACA.CH0DATA = 0xFFF;
//       // _delay_ms(1000);
//       // idx++;

//       // DACA.CH0DATAH = idx;

//       // idx++;

//       // if (idx == 0xFF) {
//       //    idx = 0;
//       // }

//       // _delay_us(1);


      


//       if (idx < 2048) {
//         // uint16_t sample = samples[idx];
//         // DACA.CH0DATA = sample;
//         // idx++;
//         DACA.CH0DATA = samples[idx];

//       }
//       else {
//         DACA.CH0DATA = 0x800;
//         if (idx > (2048 * 2)) {
//             idx = 0;
//         }
//       }

//       idx++;

//       // PORTA.OUTSET = 0b00001100 ; // set the output high.
//       // _delay_us( 50 ) ; // wait.
//       // PORTA.OUTCLR = 0b00001000 ; // set the output low.
//       // _delay_us( 50 ) ; // wait.
//       // PORTA.OUTSET = 0b00001000 ; // set the output high.
//       // PORTA.OUTCLR = 0b00000100 ; // set the output low.
//       // _delay_us( 50 ) ; // wait.
//       // PORTA.OUTCLR = 0b00001000 ; // set the output low.
//       // _delay_us( 50 ) ; // wait.
//       // PORTA.OUTSET = 0b00001100 ; // set the output high.
//       // _delay_ms( 1000 ) ; // wait.
//       // PORTA.OUTCLR = 0b00001100 ; // set the output low.
//       // _delay_ms( 1000 ) ; // wait.

//       // PORTA.OUTSET = 0b00000100 ; // set the output high.

//       _delay_us( 125 ); // Wait for 1000 cycles

//       // PORTA.OUTCLR = 0b00000100 ; // set the output low.

//    }

// }

//
// hello.dac.8E5.c
//
// 8E5 dac
//

#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>


uint16_t lookup[128] = {
2047, 2147, 2247, 2347, 2446, 2544, 2641, 2736, 2830, 2922, 3011, 3099, 3184, 3266, 3345, 3421, 3494, 3563, 3629, 3691, 3749, 3802, 3852, 3897, 3938, 3974, 4005, 4032, 4054, 4071, 4084, 4091, 4094, 4091, 4084, 4071, 4054, 4032, 4005, 3974, 3938, 3897, 3852, 3802, 3749, 3691, 3629, 3563, 3494, 3421, 3345, 3266, 3184, 3099, 3011, 2922, 2830, 2736, 2641, 2544, 2446, 2347, 2247, 2147, 2047, 1947, 1847, 1747, 1648, 1550, 1453, 1358, 1264, 1172, 1083, 995, 910, 828, 749, 673, 600, 531, 465, 403, 345, 292, 242, 197, 156, 120, 89, 62, 40, 23, 10, 3, 0, 3, 10, 23, 40, 62, 89, 120, 156, 197, 242, 292, 345, 403, 465, 531, 600, 673, 749, 828, 910, 995, 1083, 1172, 1264, 1358, 1453, 1550, 1648, 1747, 1847, 1947
};

int main(void) {
   //
   // main
   //
   uint16_t angle=0;
   //
   // set up clock
   //
   //OSC.CTRL = OSC_RC32MEN_bm; // enable 32MHz clock
   //while (!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for clock to be ready
   //CCP = CCP_IOREG_gc; // enable protected register change
   //CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock

   OSC.PLLCTRL = OSC_PLLFAC4_bm | OSC_PLLFAC3_bm; // 2 MHz * 24 = 48 MHz
   OSC.CTRL = OSC_PLLEN_bm; // enable PLL
   while (!(OSC.STATUS & OSC_PLLRDY_bm)); // wait for PLL to be ready
   CCP = CCP_IOREG_gc; // enable protected register change
   CLK.CTRL = CLK_SCLKSEL_PLL_gc; // switch to PLL

   //set up dac
   DACA.CTRLB = ( DACA.CTRLB & ~DAC_CHSEL_gm ) | DAC_CHSEL_DUAL_gc;
   DACA.CTRLC = ( DACA.CTRLC & ~( DAC_REFSEL_gm | DAC_LEFTADJ_bm ) ) | DAC_REFSEL_AVCC_gc;
   DACA.CTRLA = ( DACA.CTRLA & ~DAC_CH1EN_bm ) | DAC_CH0EN_bm | DAC_ENABLE_bm;
   while(1){
 DACA.CH0DATA = lookup[angle];
 angle = (angle+1)%128;
 _delay_us(50);
   }
}