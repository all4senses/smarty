// Printout like Serial << "text" << data << endl;
#include <Streaming.h>

 
 




/*
 * IRrecord: record and play back IR signals as a minimal 
 * An IR detector/demodulator must be connected to the input RECV_PIN.
 * An IR LED must be connected to the output PWM pin 3.
 * A button must be connected to the input BUTTON_PIN; this is the
 * send button.
 * A visible LED can be connected to STATUS_PIN to provide status.
 *
 * The logic is:
 * If the button is pressed, send the IR code.
 * If an IR code is received, record it.
 *
 * Version 0.11 September, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */

#include <IRremote.h>

int RECV_PIN = 23;//5;//11;
//int BUTTON_PIN = 12;
//int STATUS_PIN = 13;

IRrecv irrecv(RECV_PIN);
IRsend irsend;

decode_results results;

// IR. Storage for the recorded code
int codeType = -1; // The type of code
unsigned long codeValue; // The code value if not raw
unsigned int rawCodes[RAWBUF]; // The durations if raw
int codeLen; // The length of the code
int toggle = 0; // The RC5/6 toggle state



// Stores the code for later playback
// Most of this code is just logging
void storeCode(decode_results *results) {
  codeType = results->decode_type;
  int count = results->rawlen;
  if (codeType == UNKNOWN) {
    Serial.println("Received unknown code, saving as raw");
    codeLen = results->rawlen - 1;
    // To store raw codes:
    // Drop first value (gap)
    // Convert from ticks to microseconds
    // Tweak marks shorter, and spaces longer to cancel out IR receiver distortion
    for (int i = 1; i <= codeLen; i++) {
      if (i % 2) {
        // Mark
        rawCodes[i - 1] = results->rawbuf[i]*USECPERTICK - MARK_EXCESS;
        Serial.print(" m");
      } 
      else {
        // Space
        rawCodes[i - 1] = results->rawbuf[i]*USECPERTICK + MARK_EXCESS;
        Serial.print(" s");
      }
      Serial.print(rawCodes[i - 1], DEC);
    }
    Serial.println("");
  }
  else {
    if (codeType == NEC) {
      Serial.print("Received NEC: ");
      if (results->value == REPEAT) {
        // Don't record a NEC repeat value as that's useless.
        Serial.println("repeat; ignoring.");
        return;
      }
      else {
        /*
        // Get the current LAMP state - On (is there a High Current) or OFF (or Low Current)
        getCurrentValues(); // can return a value, but now we'll take a global var.
        
        relayPin_1_state = digitalRead(relayPin_1);

        int changeRelayState = 0;
        */
        if (results->value == 1632050403) {
          
          Serial.println("Key: Power"); // Turn On, if is now Turned OFF
          lightSwitch(1);
          
          /*
          if (effective_value > 50) {
            // Remain the Relay state
            changeRelayState = 0;
          }
          else {
             // Change rhe relay state
             changeRelayState = 1;
          }
          
          if (changeRelayState) {
            if (relayPin_1_state == LOW) {
              relayPin_1_state = HIGH;
            }
            else {
              relayPin_1_state = LOW;
            }
          }
          */
        }
        else if (results->value == 1632065703) {
          
          Serial.println("Key: Menu");  // Turn Off, if is now Turned ON
          lightSwitch(0);
          
          /*
          if (effective_value < 50) {
            // Remain the Relay state
            changeRelayState = 0;
          }
          else {
             // Change rhe relay state
             changeRelayState = 1;
          }
          
          if (changeRelayState) {
            if (relayPin_1_state == LOW) {
              relayPin_1_state = HIGH;
            }
            else {
              relayPin_1_state = LOW;
            }
          }
          */
        }
        else {
          
          Serial.println("Key: Other");
          lightSwitch(2);
          /*
          // if the LED is off turn it on and vice-versa:
          if (relayPin_1_state == LOW)
            relayPin_1_state = HIGH;
          else
            relayPin_1_state = LOW;
          */  
        }
        /*
        // set the LED with the relayPin_1_state of the variable:
        digitalWrite(relayPin_1, relayPin_1_state);  
        */
      }
      
      
      
    } 
    else if (codeType == SONY) {
      Serial.print("Received SONY: ");
    } 
    else if (codeType == RC5) {
      Serial.print("Received RC5: ");
    } 
    else if (codeType == RC6) {
      Serial.print("Received RC6: ");
    } 
    else {
      Serial.print("Unexpected codeType ");
      Serial.print(codeType, DEC);
      Serial.println("");
    }
    //Serial.println(results->value, HEX);
    Serial.println(results->value);
    codeValue = results->value;
    codeLen = results->bits;
  }
}


// Main ir actions to launch in the main loop function
void ir_process() {
  
  // If button pressed, send the code.
  //int buttonState = digitalRead(BUTTON_PIN);
  //if (lastButtonState == HIGH && buttonState == LOW) {
  //  Serial.println("Released");
  //  irrecv.enableIRIn(); // Re-enable receiver
  //}
/*
  if (buttonState) {
    Serial.println("Pressed, sending");
    digitalWrite(STATUS_PIN, HIGH);
    sendCode(lastButtonState == buttonState);
    digitalWrite(STATUS_PIN, LOW);
    delay(50); // Wait a bit between retransmissions
  } 
  else
 */ 
  if (irrecv.decode(&results)) {
    //digitalWrite(STATUS_PIN, HIGH);
    storeCode(&results);
    
    //sendCode(0);
    irrecv.enableIRIn(); // Re-enable receiver
    irrecv.resume(); // resume receiver
    
    //digitalWrite(STATUS_PIN, LOW);
  }
  //lastButtonState = buttonState;
}


void ir_setup(){
  irrecv.enableIRIn(); // Start the receiver
  Serial.println("Start IR");
}









void relays_and_current_sensors_setup() {
   // set the digital pin as output:
  pinMode(relayPin_1, OUTPUT);    

  // Electro Sensor
  pinMode(ELECTRICITY_SENSOR, INPUT);
}







void setup()
{
  Serial.begin(9600);
  Serial.println("Start...");
  
  ir_setup();
  
  relays_and_current_sensors_setup();
  
  et_setup(); // EasyTransfer
  
  easyVR_setup();
}






void loop() {
  
  ir_process();
  
  easyVR_process();
  
  et_receiving_process();  
}


