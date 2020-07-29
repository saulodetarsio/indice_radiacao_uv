#include <LEDMatrix.h>
#include <RGBLEDMatrix.h>
#include <TimerAction.h>

/*
  ShiftRegister74HC595.h - Library for easy control of the 74HC595 shift register.
  Created by Timo Denk (www.simsso.de), Nov 2014.
  Additional information are available on http://shiftregister.simsso.de/
  Released into the public domain.
*/

#include <ShiftRegister74HC595.h>

// create shift register object (number of shift registers, data pin, clock pin, latch pin)
ShiftRegister74HC595 sr (4, 10, 11, 12); 
 
void setup() { 
}

void loop() {
 uint8_t pinValues[] = { B00011000, B10101010 };
  sr.setAll(pinValues);

  delay(2000);
}
