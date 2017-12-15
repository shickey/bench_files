//
// hello.txrx.45.c
//
// step response transmit-receive hello-world
//    9600 baud FTDI interface
//
// Neil Gershenfeld
// 11/6/11
//
// (c) Massachusetts Institute of Technology 2011
// This work may be reproduced, modified, distributed,
// performed, and displayed for any purpose. Copyright is
// retained and must be preserved. The work is provided
// as is; no warranty is provided, and users accept all 
// liability.
//

#include <avr/io.h>
#include <util/delay.h>

#define output(directions,pin) (directions |= pin) // set port direction for output
#define set(port,pin) (port |= pin) // set port pin
#define clear(port,pin) (port &= (~pin)) // clear port pin
#define pin_test(pins,pin) (pins & pin) // test for port pin
#define bit_test(byte,bit) (byte & (1 << bit)) // test for bit set
#define bit_delay_time 10002 // bit delay for 9600 with overhead
#define bit_delay() _delay_us(bit_delay_time) // RS232 bit delay
#define half_bit_delay() _delay_us(bit_delay_time/2) // RS232 half bit delay
#define settle_delay() _delay_us(100) // settle delay
#define char_delay() _delay_ms(10) // char delay

#define serial_port PORTB
#define serial_direction DDRB
#define serial_pin_out (1 << PB0)
#define sensor_out (1 << PB1)

void put_char(volatile unsigned char *port, unsigned char pin, char txchar) {
   //
   // send character in txchar on port pin
   //    assumes line driver (inverts bits)
   //
   // start bit
   //
 clear(*port,pin);
 bit_delay();
   //
   // unrolled loop to write data bits
   //
 if bit_test(txchar,0)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,1)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,2)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,3)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,4)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,5)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,6)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
if bit_test(txchar,7)
  set(*port,pin);
else
  clear(*port,pin);
bit_delay();
   //
   // stop bit
   //
set(*port,pin);
bit_delay();
   //
   // char delay
   //
bit_delay();
}

#define SIT_THRESHOLD_ONE 30
#define SIT_THRESHOLD_TWO 300

int main(void) {
    //
    // main
    //

    //
    // set clock divider to /1
    //
    CLKPR = (1 << CLKPCE);
    CLKPR = (0 << CLKPS3) | (0 << CLKPS2) | (0 << CLKPS1) | (0 << CLKPS0);

    //
    // initialize output pins
    //
    set(serial_port, serial_pin_out);
    output(serial_direction, serial_pin_out);
    set(PORTB, sensor_out);
    output(DDRB, sensor_out);

   //
   // init A/D
   //
   ADMUX = (1 << REFS1) | (0 << REFS0); // Internal 1.1V ref (datasheet says don't use Vcc or AREF with differential ADC)
      // | (0 << ADLAR) // right adjust
      // | (0 << MUX5) | (0 << MUX4) | (1 << MUX3) | (0 << MUX2) | (0 << MUX1) | (1 << MUX0); // PA0 - PA1 difference (20x gain)
   ADCSRA = (1 << ADEN) // enable
      | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // prescaler /2




    // Main loop

    uint16_t val1A = 0;
    uint16_t val1B = 0;
    uint16_t val2A = 0;
    uint16_t val2B = 0;

    while (1) {

        // Read each sensor

        // PA0 - PA1 difference (20x gain)
        ADMUX = (1 << REFS1) | (0 << REFS0) | (0 << MUX5) | (0 << MUX4) | (1 << MUX3) | (0 << MUX2) | (0 << MUX1) | (1 << MUX0);
        //Start conversion
        ADCSRA |= (1 << ADSC);
        // Wait for completion
        while (ADCSRA & (1 << ADSC)) {
            ;
        }
        // Store the value
        val1A = ADC;

        // PA2 - PA3 difference (20x gain)
        ADMUX = (1 << REFS1) | (0 << REFS0) | (0 << MUX5) | (1 << MUX4) | (0 << MUX3) | (0 << MUX2) | (0 << MUX1) | (1 << MUX0);
        ADCSRA |= (1 << ADSC);
        while (ADCSRA & (1 << ADSC)) {
            ;
        }
        val1B = ADC;

        // PA4 - PA5 difference (20x gain)
        ADMUX = (1 << REFS1) | (0 << REFS0) | (0 << MUX5) | (1 << MUX4) | (1 << MUX3) | (0 << MUX2) | (1 << MUX1) | (1 << MUX0);
        ADCSRA |= (1 << ADSC);
        while (ADCSRA & (1 << ADSC)) {
            ;
        }
        val2A = ADC;

        // PA6 - PA7 difference (20x gain)
        ADMUX = (1 << REFS1) | (0 << REFS0) | (0 << MUX5) | (1 << MUX4) | (1 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0);
        ADCSRA |= (1 << ADSC);
        while (ADCSRA & (1 << ADSC)) {
            ;
        }
        val2B = ADC;

        uint16_t avg1 = (val1A + val1B) / 2;
        uint16_t avg2 = (val2A + val2B) / 2;

        if (avg1 > SIT_THRESHOLD_ONE && avg2 > SIT_THRESHOLD_TWO) {
            set(PORTB, sensor_out);
        }
        else {
            clear(PORTB, sensor_out);
        }

        // Simplest debounce possible
        _delay_ms(5);


        //
        // send framing
        //
        // put_char(&serial_port, serial_pin_out, 1);
        // char_delay();
        // put_char(&serial_port, serial_pin_out, 2);
        // char_delay();
        // put_char(&serial_port, serial_pin_out, 3);
        // char_delay();
        // put_char(&serial_port, serial_pin_out, 4);

        //
        // send result
        //
        // put_char(&serial_port, serial_pin_out, (val1A & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, ((val1A >> 8) & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, (val1B & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, ((val1B >> 8) & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, (val2A & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, ((val2A >> 8) & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, (val2B & 0xFF));
        // char_delay();
        // put_char(&serial_port, serial_pin_out, ((val2B >> 8) & 0xFF));
        // char_delay();
    }
}
