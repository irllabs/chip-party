#include <Bounce2.h>


// the MIDI channel number to send messages
const int channel = 1;

const int ledArray[] = {5, 6, 20, 21}; //led pin numbers
const int ledNotes[] = {60, 61, 62, 63}; //note numbers for leds
const int leds = sizeof(ledArray); //used for loops

const int faderArray[] = {A0, A9, A20, A10, A11, A12}; //fader pins
const int faderCtls[] = {14, 15, 16, 17, 18, 19}; //fader MIDI CC #s
const int faders = sizeof(faderArray); //used for loops
int faderPrevs[faders]; //used to store previous values

const int joyPotArray[] = {A15, A16, A18, A17}; //pins
const int joyPotCtls[] = {20, 21, 22, 23}; //CCs
const int joyPots = sizeof(joyPotArray); //for loops
int joyPotPrevs[joyPots]; //previous values

const int joyButtonArray[] = {24, 30}; //pins
const int joyButtonNotes [] = {65, 66}; //note numbers
const int joyButtons = sizeof(joyButtonArray); // for loops
Bounce * joyButtDebouncer = new Bounce[joyButtons]; // Create Bounce objects for each button.

const int buttonArray[] = {13, 14}; //pins
const int buttonNotes[] = {61, 62}; //note nums
const int buttons = sizeof(buttonArray); //for loops
Bounce * buttDebouncer = new Bounce[buttons]; // Create Bounce objects for each button.

elapsedMillis msec = 0;


void setup() {
  
  for (int b = 0; b < faders; b++) {
    faderPrevs[b] = -1;
  } // set all previous fader values to -1 at startup

  for (int b = 0; b < joyPots; b++) {
    joyPotPrevs[b] = -1;
  } // set all previous joystick potentiometer values to -1 at startup

  for (int b = 0; b < joyButtons; b++) {
    pinMode(joyButtonArray[b], INPUT_PULLUP);
    joyButtDebouncer[b].attach(joyButtonArray[b]);
    joyButtDebouncer[b].interval(5);
  } //set up button pins and attach them to Bounce objects and set time interals


  for (int b = 0; b < buttons; b++) {
    pinMode(buttonArray[b], INPUT_PULLUP);
    buttDebouncer[b].attach(buttonArray[b]);
    buttDebouncer[b].interval(5);
  } //set up button pins and attach them to Bounce objects and set time interals

  usbMIDI.setHandleNoteOff(OnNoteOff); //OnNoteOff function below
  usbMIDI.setHandleNoteOn(OnNoteOn);  //OnNoteOn function below
  
}

void buttonInput(){

  for (int b = 0; b < joyButtons; b++) {
    joyButtDebouncer[b].update();
  if (joyButtDebouncer[b].fallingEdge()) {
    usbMIDI.sendNoteOn(joyButtonNotes[b], 127, channel);  
  }
  if (joyButtDebouncer[b].risingEdge()) {
    usbMIDI.sendNoteOff(joyButtonNotes[b], 0, channel); 
  }
  }


  for (int b = 0; b < buttons; b++) {
    buttDebouncer[b].update();
  if (buttDebouncer[b].fallingEdge()) {
    usbMIDI.sendNoteOn(buttonNotes[b], 127, channel);  
  }
  if (buttDebouncer[b].risingEdge()) {
    usbMIDI.sendNoteOff(buttonNotes[b], 0, channel); 
  }
  }
  
}

void faderInput(){

  if (msec >= 20) {
    msec = 0;
    for (int b = 0; b < faders; b++) {
      int f = analogRead(faderArray[b]) / 8;
      if (f != faderPrevs[b]) {
        usbMIDI.sendControlChange(faderCtls[b], f, channel);
        faderPrevs[b] = f;
      }
    }
    for (int b = 0; b < joyPots; b++) {
      int f = analogRead(joyPotArray[b]) / 8;
      if (f != joyPotPrevs[b]) {
        usbMIDI.sendControlChange(joyPotCtls[b], f, channel);
        joyPotPrevs[b] = f;
      }
    }    
  }
}

void OnNoteOn(byte channel, byte note, byte velocity)
{

  for (int b = 0; b < leds; b++) {
  if (note==ledNotes[b]){
    analogWrite(ledArray[b], velocity*2);
  }
  }
    
}

void OnNoteOff(byte channel, byte note, byte velocity)
{

  for (int b = 0; b < leds; b++) {
  if (note==ledNotes[b]){
    analogWrite(ledArray[b], 0);
  }
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
