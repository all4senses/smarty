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
//IRsend irsend;

decode_results results;

// IR. Storage for the recorded code
int codeType = -1; // The type of code
unsigned long codeValue; // The code value if not raw
unsigned int rawCodes[RAWBUF]; // The durations if raw
int codeLen; // The length of the code
int toggle = 0; // The RC5/6 toggle state

//int lastButtonState; // Used to reset reciever. Actually, not used now.









// constants won't change. Used here to set a pin number :
// RELAY is connected to this! And will switch ON on TRIE
const int relayPin_1 =  27;//2;      // the number of the LED (RELAY) pin. 

// Variables will change :
int relayPin_1_state = LOW;             // relayPin_1_state used to test the relay state

// Generally, you shuould use "unsigned long" for variables that hold time
// The value will quickly become too large for an int to store
unsigned long previousMillis = 0;        // will store last time LED was updated

// constants won't change :
const long interval = 10000;           // interval at which to blink (milliseconds)





 

/****************************************************************************/	
//	Function: Measure the amplitude current of the alternating current and 
//			  the effective current of the sinusoidal alternating current.
//	Hardware: Grove - Electricity Sensor		
//	Date: 	 Jan 19,2013
//	by www.seeedstudio.com
#define ELECTRICITY_SENSOR A15//A0 // Analog input pin that sensor is attached to

float amplitude_current;               //amplitude current
float effective_value;       //effective current 
int sensor_max;




/*  ---------------------------------------------------------------------------------- */

/* ---------------------------   EaseVR Voice Recognition ---------------------------- */

/*  ---------------------------------------------------------------------------------- */

#if defined(ARDUINO) && ARDUINO >= 100
  #include "Arduino.h"
  #include "Platform.h"
  #include "SoftwareSerial.h"
#ifndef CDC_ENABLED
  // Shield Jumper on SW
  SoftwareSerial port(12,13);
#else
  // Shield Jumper on HW (for Leonardo)
  #define port Serial1
#endif
#else
  #error "Arduino version not supported. Please update your IDE."
#endif

#include "EasyVR.h"

#define EVR_STARTED 1
#define EVR_FINISHED 2
#define EVR_IDLE 0

EasyVR easyvr(port);
 
// Номер пина для светодиода, индицирующего ожидание команды
//const int LED_WAIT = 13;
 
int easyVR_recognition_status = 0;

// Номер группы команд
enum
{
    GROUP_MAIN = 5, //2,
};
 
// Коды команд из группы 1
enum
{
    G2_APPLE = 0,
    G2_ORANGE = 4,
    G2_NUTS = 3,
};
 


//int delta, min_time_to_reset;

unsigned long millis_current, millis_step_2_start;
int millis_timeout = 10000; // 10sec 
int millis_step = 1;












//--------------------------------------------------------------------------------------------------------
//------------  EasyTransfer  Communication between several arduinos via I2C ------------------------------------------



#include <Wire.h>
#include <EasyTransferI2C.h>


//define slave i2c address
//#define I2C_MEGA_ADDRESS 4 // own address to work as receiver
enum
{
  I2C_UNO_ADDRESS = 4,
  I2C_MEGA_ADDRESS = 5,
  I2C_GBOARD_ADDRESS = 6,
};


enum
{
  I2C_OP_READ_LIGHTS = 1,
  I2C_OP_WRITE_LIGHTS = 2,
};


//create object
EasyTransferI2C ET; 

typedef struct{
 byte state : 1;
 byte op : 2; // 0 - nothing, 1 - read, 2 - write
}LIGHT;

typedef struct{
  //put your variable definitions here for the data you want to receive
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
 
  byte from : 2;
  byte to : 2;
  
  //char op[8];
  byte op : 3; // 1 - read lights, 2 - wright lights, ...
  
  
  LIGHT lights[18];

}RECEIVE_DATA_STRUCTURE;

//give a name to the group of data
RECEIVE_DATA_STRUCTURE mydata_in;

// Amount of addressed lights in the house
byte lights_amount;


// -----------------------------------------------
// -------------------- End of EasyTransfer ---------------------------------------------










void et_setup(){
  
  
  Wire.begin(I2C_MEGA_ADDRESS); // own address to work as receiver
  //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc. 
  ET.begin(details(mydata_in), &Wire);
  //define handler function on receiving data
  Wire.onReceive(et_on_receive_event);
  
  lights_amount = sizeof(mydata_in.lights);
  
  Serial << "EaseTransfer started!..." << endl << "lights amount = " << lights_amount << endl;
}


void et_receiving_process() {
  
  //check and see if a data packet has come in. 
  if(ET.receiveData()){
  
    //Serial << "mydata_in.blinks = " << mydata_in.blinks << endl;
    //Serial << "mydata_in.pause = " << mydata_in.pause << endl;
    Serial << "mydata_in.from = " << mydata_in.from << endl;
    Serial << "mydata_in.to = " << mydata_in.to << endl;
    /*
    if (strcmp(mydata_in.op, "Read") == 0) {
      Serial << "mydata_in.op = " << "Read" << endl;
    }
    else {
      Serial << "mydata_in.op = " << "Not Read" << endl;
    }
    */
    Serial << "mydata_in.op = " << mydata_in.op << endl;
    Serial << "mydata_in size of = " << sizeof(mydata_in) << endl;
    
    for(int i = 0; i < lights_amount; i++){
      if (mydata_in.lights[i].op == 2) {
        Serial << "light " << i << " state = " << mydata_in.lights[i].state << ", op = " << mydata_in.lights[i].op << endl;
        if (i == 3) {
          lightSwitch(2);
        }
      }
    }
    
    Serial << endl << endl;
  }
}


// Dummy ET receive event function. Is not used actually.
void et_on_receive_event(int numBytes) {}










void easyVR_setup() {
  
    port.begin(9600);
    // Ожидание соединения с платой
    while(!easyvr.detect()) delay(1000);
 
    // Установка таймаута на распознавание
    easyvr.setTimeout(5);
 
    // Выбор языка (Английский)
    easyvr.setLanguage(EasyVR::ENGLISH);
 
    delay(1000);
    
    easyvr.playPhoneTone(1, 1);
    easyvr.setPinOutput(EasyVR::IO1, LOW);
    easyvr.playPhoneTone(1, 2);
    easyvr.setPinOutput(EasyVR::IO1, HIGH);
    
}



char* easyVR_getWordTitle(int8_t idx) {
  
  switch (idx) {
    case 0:
       return "Smart home listen to me";
       
     case 1:
       return "Santa Claus Wake up!";
       
     case 2:
       return "Main hall light up";
       
     case 3:
       return "Kitchen light switch";
       
     case 4:
       return "Turn off main hall";
     
     default:
        return "--";
  }
  
}

// Main EasyVR actions to launch in the main loop function
void easyVR_process() {
  
    int8_t idx;
 
    // Зажигаем светодиод для индикации режима ожидания команды
    //digitalWrite(LED_WAIT, HIGH);
    
//    #define EVR_STARTED 1
//    #define EVR_FINISHED 2
//    #define EVR_IDLE 0
    
    
    if (millis_step == 2) {
      
        //if (millis_current > millis_step_2_start + millis_timeout) {
        
        millis_current = millis();
          
        // millis_current < millis_step_2_start controls overflows of millis_current (set to 0) that occur after it become  232-1, that is 4,294,967,295   
        // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
        if (millis_current > (millis_step_2_start + millis_timeout) || millis_current < millis_step_2_start) { 
          
          // Time is out, reset to the first step.
          easyvr.playPhoneTone(10, 1);
          easyvr.playPhoneTone(5, 1);
          easyvr.playPhoneTone(15, 1);  
          easyvr.playPhoneTone(1, 1);  
          easyvr.playPhoneTone(6, 1);  
          
          millis_step = 1;
          Serial.println("");
          Serial.println("Timer reset to step 1");
          easyVR_recognition_status = EVR_IDLE;
        }
        
    }
    
    
    if (easyVR_recognition_status == EVR_IDLE) {
      
      // Запускаем процедуру распознавания
      //easyvr.recognizeCommand(GROUP_MAIN);
      easyvr.recognizeWord(GROUP_MAIN); // GROUP_MAIN = 5; //custom grammar
      
      easyVR_recognition_status = EVR_STARTED;
      ////Serial.println("Waiting for EasyVR recognition...");
    }
    else if (easyVR_recognition_status == EVR_STARTED) {
      
      if (easyvr.hasFinished()) {
        
        easyVR_recognition_status = EVR_FINISHED;
        ////Serial.println("EaseVR Got the word from the Mic...!"); 
        // Если убрать эту задержку, то мы перестанем видеть, когда заканчивается
        // один период ожидания команды и начинается второй. Если произнесение команды
        // придётся на границу двух периодов, то распознавание закончится неудачей.
        ////delay(500);
        
        // Получаем код распознанной команды
        //idx = easyvr.getCommand();
        idx = easyvr.getWord();
        
        
        Serial.print("Got word, idx = "); 
        Serial.print(idx);
        Serial.print(' ');
        Serial.println(easyVR_getWordTitle(idx));
    
        if(idx >= 0)
        {
            
           //Serial.println(idx); 
           easyvr.setPinOutput(EasyVR::IO1, HIGH);
            // Выполним действие по команде
            easyVR_action(GROUP_MAIN, idx);
        }
        else
        {
            // Ошибка распознавания или таймаут
        }
        easyVR_recognition_status = EVR_IDLE;
        easyvr.setPinOutput(EasyVR::IO1, LOW);
      }
    }
    
    
    /*
    //Serial.println("Wait...");
    // Ожидаем окончание процесса
    while(!easyvr.hasFinished());
    
    Serial.println("Got it!"); 
    // Тушим светодиод - либо таймаут, либо команда распознана
    //digitalWrite(LED_WAIT, LOW);
 
    // Если убрать эту задержку, то мы перестанем видеть, когда заканчивается
    // один период ожидания команды и начинается второй. Если произнесение команды
    // придётся на границу двух периодов, то распознавание закончится неудачей.
    delay(500);
 
    // Получаем код распознанной команды
    idx = easyvr.getCommand();
 

    if(idx >= 0)
    {
       Serial.println(idx); 
        // Выполним действие по команде
        easyVR_action(GROUP_MAIN, idx);
    }
    else
    {
        // Ошибка распознавания или таймаут
    }
    
    */
}



// Данная функция вызывается в случае успешного
// распознавания фразы
void easyVR_action(int8_t group, int8_t idx)
{
    
    
    
//    Serial.print("idx = ");
//    Serial.println(idx);
    
//    millis_current = millis();
//    
//    Serial.print("delta = ");
//    Serial.println(millis_current - millis_step_2_start);
//    
//    if (millis_current > (millis_step_2_start + millis_timeout) ) {
//      millis_step_2_start = millis_current;
//    }


    //int delta, min_time_to_reset;
    
    millis_current = millis();
    
    //min_time_to_reset = millis_step_2_start + millis_timeout;

    
    Serial.print("millis_current = ");
    Serial.println(millis_current);
    
    Serial.print("millis_step_2_start = ");
    Serial.println(millis_step_2_start);

    //delta = millis_current - millis_step_2_start
    Serial.print("delta = ");
    Serial.println(millis_current - millis_step_2_start);
    
    /*
    // millis_current < millis_step_2_start controls overflows of millis_current (set to 0) that occur after it become  232-1, that is 4,294,967,295   
    // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
    if (millis_current > (millis_step_2_start + millis_timeout) || millis_current < millis_step_2_start) { 
      millis_step_2_start = millis_current;
      Serial.println("");
      Serial.println("Timer reset");
    }
    
    return;
    */
    
    if (millis_step == 1) {
        
      if (idx == 0) {
        // Right word! NExt step.
        easyvr.playSound(2, 12); // SND_BEEP = 0
        
        millis_step = 2;    
        millis_step_2_start = millis_current;
      }
      
    }
    else if (millis_step == 2) {
        
        /*
        //if (millis_current > millis_step_2_start + millis_timeout) {
          
        // millis_current < millis_step_2_start controls overflows of millis_current (set to 0) that occur after it become  232-1, that is 4,294,967,295   
        // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
        if (millis_current > (millis_step_2_start + millis_timeout) || millis_current < millis_step_2_start) { 
          
          // Time is out, reset to the first step.
          easyvr.playPhoneTone(10, 1);
          easyvr.playPhoneTone(10, 1);
          easyvr.playPhoneTone(10, 1);  
          easyvr.playPhoneTone(10, 1);  
          easyvr.playPhoneTone(10, 1);  
          easyvr.playPhoneTone(10, 1);  
          easyvr.playPhoneTone(10, 1);  
          easyvr.playPhoneTone(10, 1);  
          
          millis_step = 1;
          Serial.println("");
          Serial.println("Timer reset");
        }
        else 
        */
        if (idx > 0) {
          // We got a right word
          
          easyvr.playPhoneTone(10, 10);
          
          // We have processed the command. 
          // Now reset, and wait for next Key word with next command
          millis_step = 1;
          // but in case of a wrong word, the step should have remain 2...and be reset later on timeout...
          
          switch (idx) {
            case 1: // Santa Claus ware up
                Serial.println(easyVR_getWordTitle(idx));
                lightSwitch(1);
                easyvr.playPhoneTone(10, 1);
                easyvr.playPhoneTone(10, 1);
                break;
            case 2: // Main Hall light up
                Serial.println(easyVR_getWordTitle(idx));
                lightSwitch(1);
                easyvr.playPhoneTone(10, 1);
                easyvr.playPhoneTone(10, 1);
                break;
            case 3: // Kitchen light switch
                Serial.println(easyVR_getWordTitle(idx));
                lightSwitch(2);
                easyvr.playPhoneTone(5, 1);
                easyvr.playPhoneTone(5, 1);
                break;

            case 4: // Turn off main hall
                Serial.println(easyVR_getWordTitle(idx));
                lightSwitch(0);
                easyvr.playPhoneTone(5, 1);
                easyvr.playPhoneTone(5, 1);
                break;
                
             default:
                millis_step = 2;
                break;
             
          } // End of switch (idx) {
          
          
          
        } // End of else if (idx > 0) {
        
    } // End of else if (millis_step == 2) {
    
    return;
    
    /*
    // Активируем серву, соответствующую распознанному коду
    switch (group)
    {
      case GROUP_MAIN:
        switch (idx)
        {
        case G2_APPLE: // 0
            Serial.println("Apple!");
            lightSwitch(1);
            //easyvr.playSound(2, EasyVR::VOL_FULL); // SND_BEEP = 0
            easyvr.playSound(2, 3); // SND_BEEP = 0
            //easyvr.playPhoneTone(1, 3);
            break;
        case G2_ORANGE: // 4
            Serial.println("Orange");
            lightSwitch(2);
            easyvr.playPhoneTone(10, 1);
            easyvr.playPhoneTone(10, 1);
            break;
        case G2_NUTS: // 3
            Serial.println("Nuts");
            lightSwitch(0);
            easyvr.playPhoneTone(5, 1);
            break;
        }
        break;
    }
    */
}













// Electro sensor A0 get max
/*Function: Sample for 1000ms and get the maximum value from the SIG pin*/
int getCurrentMaxValue()
{
	int sensorValue;             //value read from the sensor
	int sensorMax = 0;
	uint32_t start_time = millis();
	while((millis()-start_time) < 1000)//sample for 1000ms
	{
		sensorValue = analogRead(ELECTRICITY_SENSOR);
		if (sensorValue > sensorMax) 
		{
			/*record the maximum sensor value*/
			sensorMax = sensorValue;
		}
	}
	return sensorMax;
}

// Electro Get Current values, return Effective vakue
float getCurrentValues() {
        sensor_max = getCurrentMaxValue();
	Serial.print("sensor_max = ");
	Serial.println(sensor_max);
	//the VCC on the Grove interface of the sensor is 5v
	amplitude_current=(float)sensor_max/1024*5/800*2000000;
	effective_value=amplitude_current/1.414;//minimum_current=1/1024*5/800*2000000/1.414=8.6(mA) 
						//Only for sinusoidal alternating current
	Serial.println("The amplitude of the current is(in mA)");
	Serial.println(amplitude_current,1);//Only one number after the decimal point
	Serial.println("The effective value of the current is(in mA)");
	Serial.println(effective_value,1); 
  
        return effective_value;
}



void lightSwitch(int state) {
  
    // Get the current LAMP state - On (is there a High Current) or OFF (or Low Current)
    getCurrentValues(); // can return a value, but now we'll take a global var.
    
    relayPin_1_state = digitalRead(relayPin_1);

    int changeRelayState = 0;
  
    
    switch (state) {
      
        case 1: // Turn On, if it's now Turned OFF
      
          Serial.println("Light On"); 
          
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
          
          break;
        
        
        
        
        case 0: // Turn Off, if it's now Turned ON
         
          Serial.println("Light Off"); 
          
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
          
          break;
        
        
        
        case 2: // if the LED is off turn it on and vice-versa:
          
          Serial.println("Switch the light Vise Versa"); 
          
          if (relayPin_1_state == LOW)
            relayPin_1_state = HIGH;
          else
            relayPin_1_state = LOW;
            
           break;
        
    } // End of Switch (state) {
      
    // set the LED with the relayPin_1_state of the variable:
    digitalWrite(relayPin_1, relayPin_1_state); 
}



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


