/*
Using three 74HC595s to control 24 leds (outputs) on the arduino uno. 
This is an improved version by John Rogers
*/

/*
Larson Scanner v2.0

Changed by Christian K. Kaderud for the PCB Larson Scanner

Twitter: @kaderud
Github: https://github.com/kaderud/KiCad-LarsonScanner


Credits:
https://github.com/driewe/NightRider
https://create.arduino.cc/projecthub/driewe/playing-night-rider-with-three-74hc595s-709cc0
https://www.hackster.io/driewe/playing-night-rider-with-three-74hc595s-709cc0
*/


/*
Pins used on ATmega328p:

Data pin  = PD4
Latch pin = PD5
Clock pin = PD6
*/

int numLights = 24;
unsigned long light = 0;  // Bit pattern for entire display

byte b1 = 0;  // byte place holders for each shift register
byte b2 = 0;  // extracted from "light"
byte b3 = 0;  // extracted from "light"

void setup() {
  DDRD |= (1 << PD4) | (1 << PD5) | (1 << PD6); // DDRD - The Port D Data Direction Register
}

void loop() {
  for (int i=0; i<numLights*2; i++) {
    int shift = i;
    if (i >= numLights) // if i is above numLights then wee need to start
    {
      shift = numLights*2-i-1; // moving back to the left
    }
    // Extract the bytes of the light pattern to be sent out
    light = (long) (1) << shift;
    b1 = (byte) ( (light >> 16) & 0xFF);
    b2 = (byte) ( (light >> 8) & 0xFF);
    b3 = (byte) ( (light) & 0xFF);
    updateShiftRegister(); // shift out b1, b2 and b3
    delay(30);
  }
}

void updateShiftRegister() {
  PORTD &= ~(1 << PD5);
  shiftOut(4, 6, MSBFIRST, b1); // dataPin, clockPin
  shiftOut(4, 6, MSBFIRST, b2);
  shiftOut(4, 6, MSBFIRST, b3);
  PORTD |= (1 << PD5);
}
