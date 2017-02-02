#include <Bounce.h>


// the MIDI channel number to send messages
const int channel = 1;

//-------------PIN NUMBERS-----------------------
// these are the Arduino numbered pins to which are things are connected:

//LEDs (Analog Outputs/PWM or Digital Output)
const int ledPin1 = 2;    //this is NOT a PWM pin
const int ledPin2 = 6;    //a PWM pin
const int ledPin3 = 9;    //a PWM pin 
const int ledPin4 = 10;   //a PWM pin

//faders and joysticks (Analog Inputs)
const int faderPin1 = A0;  
const int faderPin2 = A1;
const int faderPin3 = A2; 
const int faderPin4 = A3; 
const int faderPin5 = A4; 
const int faderPin6 = A5;  

const int joyPin1 = A6;
const int joyPin2 = A7;

//these two pins are broken out as 3-pin headers; 
//they are connected to two pens that can be
//analog inputs, digital inputs/ouputs, pwm outputs, or I2C bus
const int multiPin1 = A8; 
const int multiPin2 = A9;  

//Push Buttongs (Digital Inputs)
const int buttonPin1 = 5;
const int buttonPin2 = 7;
const int buttonPin3 = 11;
const int buttonPin4 = 12;

const int joyButtonPin = 8;

//-------------MIDI NUMBERS-----------------------


//LEDs are triggered by Note messages; velocity is mapped to brightness 
const int ledNote1 = 60;
const int ledNote2 = 61;
const int ledNote3 = 62;
const int ledNote4 = 63;

const int faderCtl1 = 14;
const int faderCtl2 = 15;
const int faderCtl3 = 16;
const int faderCtl4 = 17;
const int faderCtl5 = 18;
const int faderCtl6 = 19;

const int joyCtl1 = 20;
const int joyCtl2 = 21;

const int multiCtl1 = 22;
const int multiCtl2 = 23;

//Buttons trigger Note messages; velocity is 127 or 0
const int joyButtonNote = 60;
const int buttonNote1 = 61;
const int buttonNote2 = 62;
const int buttonNote3 = 63;
const int buttonNote4 = 64;

//-------------Continuous Control: send Changes only--------------
int faderPrev1 = -1;
int faderPrev2 = -1;
int faderPrev3 = -1;
int faderPrev4 = -1;
int faderPrev5 = -1;
int faderPrev6 = -1;
int joyPrev1 = -1;
int joyPrev2 = -1;

int multiPrev1 = -1;
int multiPrev2 = -1;


elapsedMillis msec = 0;

// Create Bounce objects for each button.  The Bounce object
// automatically deals with contact chatter or "bounce", and
// it makes detecting changes very simple.

Bounce button1 = Bounce(buttonPin1, 5);  // 5 = 5 ms debounce time
Bounce button2 = Bounce(buttonPin2, 5);  // which is appropriate for good
Bounce button3 = Bounce(buttonPin3, 5);  // quality mechanical pushbuttons
Bounce button4 = Bounce(buttonPin4, 5);
Bounce joyButton = Bounce(joyButtonPin, 5);


//----------------------SETUP-----------------------
void setup() {

  //pinMode(3, OUTPUT);
  usbMIDI.setHandleNoteOff(OnNoteOff);
  usbMIDI.setHandleNoteOn(OnNoteOn) ;

// store previously sent values, to detect changes


// Configure the pins for input mode with pullup resistors.
// The pushbuttons connect from each pin to ground.  When
  // the button is pressed, the pin reads LOW because the button
  // shorts it to ground.  When released, the pin reads HIGH
  // because the pullup resistor connects to +5 volts inside
  // the chip.  LOW for "on", and HIGH for "off" may seem
  // backwards, but using the on-chip pullup resistors is very
  // convenient.  The scheme is called "active low", and it's
  // very commonly used in electronics... so much that the chip
  // has built-in pullup resistors!
  pinMode(buttonPin1, INPUT_PULLUP);
  pinMode(buttonPin2, INPUT_PULLUP);
  pinMode(buttonPin3, INPUT_PULLUP);
  pinMode(buttonPin4, INPUT_PULLUP);
  pinMode(joyButtonPin, INPUT_PULLUP);
  




}
//----------------------for SENDING MIDI-----------------------
void buttonInput(){
  // Update all the buttons.  There should not be any long
  // delays in loop(), so this runs repetitively at a rate
  // faster than the buttons could be pressed and released.
  button1.update();
  button2.update();
  button3.update();
  button4.update();
  joyButton.update();

  // Check each button for "falling" edge.
  // Send a MIDI Note On message when each button presses
  // Update the Joystick buttons only upon changes.
  // falling = high (not pressed - voltage from pullup resistor)
  // to low (pressed - button connects pin to ground)
 
  if (button1.fallingEdge()) {
    usbMIDI.sendNoteOn(buttonNote1, 127, channel);  // 61 = C#4
  }
  if (button2.fallingEdge()) {
    usbMIDI.sendNoteOn(buttonNote2, 127, channel);  // 62 = D4
  }
  if (button3.fallingEdge()) {
    usbMIDI.sendNoteOn(buttonNote3, 127, channel);  // 63 = D#4
  }
  if (button4.fallingEdge()) {
    usbMIDI.sendNoteOn(buttonNote4, 127, channel);  // 64 = E4
  }
  if (joyButton.fallingEdge()) {
    usbMIDI.sendNoteOn(joyButtonNote, 127, channel);  // 64 = E4
  }
      // Check each button for "rising" edge
  // Send a MIDI Note Off message when each button releases
  // For many types of projects, you only care when the button
  // is pressed and the release isn't needed.
  // rising = low (pressed - button connects pin to ground)
  //          to high (not pressed - voltage from pullup resistor)

  if (button1.risingEdge()) {
    usbMIDI.sendNoteOff(buttonNote1, 0, channel);  // 61 = C#4
  }
  if (button2.risingEdge()) {
    usbMIDI.sendNoteOff(buttonNote2, 0, channel);  // 62 = D4
  }
  if (button3.risingEdge()) {
    usbMIDI.sendNoteOff(buttonNote3, 0, channel);  // 63 = D#4
  }
  if (button4.risingEdge()) {
    usbMIDI.sendNoteOff(buttonNote4, 0, channel);  // 64 = E4
  }
    if (joyButton.risingEdge()) {
    usbMIDI.sendNoteOff(joyButtonNote, 0, channel);  // 64 = E4
  }
}


void faderInput() {
  // only check the analog inputs 50 times per second,
  // to prevent a flood of MIDI messages
  if (msec >= 20) {
    msec = 0;
    int f1 = analogRead(faderPin1) / 8;
    int f2 = analogRead(faderPin2) / 8;
    int f3 = analogRead(faderPin3) / 8;
    int f4 = analogRead(faderPin4) / 8;
    int f5 = analogRead(faderPin5) / 8;
    int f6 = analogRead(faderPin6) / 8;

    
    int j1 = analogRead(joyPin1) / 8;
    int j2 = analogRead(joyPin2) / 8;

    
    int m1 = analogRead(multiPin1) / 8;
    int m2 = analogRead(multiPin2) / 8;
    
    // only transmit MIDI messages if analog input changed
    if (f1 != faderPrev1) {
      usbMIDI.sendControlChange(faderCtl1, f1, channel);
      faderPrev1 = f1;
    }

    if (f2 != faderPrev2) {
      usbMIDI.sendControlChange(faderCtl2, f2, channel);
      faderPrev2 = f2;
    }

    if (f3 != faderPrev3) {
      usbMIDI.sendControlChange(faderCtl3, f3, channel);
      faderPrev3 = f3;
    }

    if (f4 != faderPrev4) {
      usbMIDI.sendControlChange(faderCtl4, f4, channel);
      faderPrev4 = f4;
    }

    if (f5 != faderPrev5) {
      usbMIDI.sendControlChange(faderCtl5, f5, channel);
      faderPrev5 = f5;
    }

    if (f6 != faderPrev6) {
      usbMIDI.sendControlChange(faderCtl6, f6, channel);
      faderPrev6 = f6;
    }

    if (j1 != joyPrev1) {
      usbMIDI.sendControlChange(joyCtl1, j1, channel);
      joyPrev1 = j1;
    }

    if (j2 != joyPrev2) {
      usbMIDI.sendControlChange(joyCtl2, j2, channel);
      joyPrev2 = j2;
    }

    if (m1 != multiPrev1) {
      usbMIDI.sendControlChange(multiCtl1, m1, channel);
      multiPrev1 = m1;
    }

    if (m2 != multiPrev2) {
      usbMIDI.sendControlChange(multiCtl2, m2, channel);
      multiPrev2 = m2;
    }
  }
}

unsigned long t=0;


//----------------------for RECEIVING MIDI-----------------------
void OnNoteOn(byte channel, byte note, byte velocity)
{
  if (note==ledNote1) {
    analogWrite(ledPin1, velocity*2);
  }

  if (note==ledNote2) {
    analogWrite(ledPin2, velocity*2);
  }

  if (note==ledNote3) {
    analogWrite(ledPin3, velocity*2);
  }

  if (note==ledNote4) {
    analogWrite(ledPin4, velocity*2);
  }
}

void OnNoteOff(byte channel, byte note, byte velocity)
{
  if (note==ledNote1) {
    analogWrite(ledPin1, 0);
  }

  if (note==ledNote2) {
    analogWrite(ledPin2, 0);
  }

  if (note==ledNote3) {
    analogWrite(ledPin3, 0);
  }

  if (note==ledNote4) {
    analogWrite(ledPin4, 0);
  }
}

void loop() {
  int type, note, velocity, channel, d1, d2;

  //---------for sending midi---------
  //process buttons
  buttonInput();

  //process faders
  faderInput();

  //--------for receiving midi---------

  
    // MIDI Controllers should discard incoming MIDI messages.
  // http://forum.pjrc.com/threads/24179-Teensy-3-Ableton-Analog-CC-causes-midi-crash
  usbMIDI.read();
}
