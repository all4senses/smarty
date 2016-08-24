//#include <Arduino.h>
//
//extern HardwareSerial Serial;
//
//#define TEMP_SENSOR A3 
//
//float temp;
//
//void setup (){
//  
//  pinMode(TEMP_SENSOR, INPUT);
//  
//  Serial.begin(9600);
//    
//    
//    
//  // Кнопкa.  
//  pinMode(4, INPUT);
//  // включим подтягивающий резистор
//  digitalWrite(4, HIGH);
////<editor-fold defaultstate="collapsed" desc="My custom code folding">
//  // светодиод
//  pinMode(9, OUTPUT);
//  digitalWrite(9, HIGH);
//  
//  delay(5000);
//  digitalWrite(9, LOW);  
//  delay(5000);
//  //</editor-fold>
//  digitalWrite(9, HIGH);
//  
//}
//
//void loop(){
//  if(digitalRead(4) == LOW) {
//    digitalWrite(9, HIGH);
//  }
//  else {
//    digitalWrite(9, LOW);
//  }
//  delay(500);
//  
//  temp = analogRead(TEMP_SENSOR)*3.3/1024.0;
//  temp = temp - 0.5;
//  temp = temp / 0.01;
//  Serial.println(temp);
//  Serial.println("action");
//  
//  
//}


/*
 Copyright (C) 2011 J. Coliz <maniacbug@ymail.com>

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 version 2 as published by the Free Software Foundation.
 */

/**
 * Example RF Radio Ping Pair
 *
 * This is an example of how to use the RF24 class.  Write this sketch to two different nodes,
 * connect the role_pin to ground on one.  The ping node sends the current time to the pong node,
 * which responds by sending the value back.  The ping node can then see how long the whole cycle
 * took.
 */

#include <Arduino.h>
extern HardwareSerial Serial;
#include <SPI.h>
//#include <nRF24L01.h>
#include <RF24.h>
#include <D:\Alex_D\_Apps\_Nsk\_Arduino\arduino-1.0.5-r2\libraries\RF24_with_Raspberry\examples\pingpair\printf.h>
//#include "printf.h"


/*
 * IRremote: IRrecvDemo - demonstrates receiving IR codes with IRrecv
 * An IR detector/demodulator must be connected to the input RECV_PIN.
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */

#include <IRremote.h>

int RECV_PIN = 3;
IRrecv irrecv(RECV_PIN);
decode_results results;


// Set up nRF24L01 radio on SPI bus plus pins 9 & 10
//RF24 radio(9,10);

RF24 radio(8,7);

// sets the role of this unit in hardware.  Connect to GND to be the 'pong' receiver
// Leave open to be the 'ping' transmitter
////const int role_pin = 7;

//
// Topology
//

// Radio pipe addresses for the 2 nodes to communicate.
const uint64_t pipes[2] = { 0xF0F0F0F0E1LL, 0xF0F0F0F0D2LL };

//
// Role management
//
// Set up role.  This sketch uses the same software for all the nodes
// in this system.  Doing so greatly simplifies testing.  The hardware itself specifies
// which node it is.
//
// This is done through the role_pin
//

// The various roles supported by this sketch
typedef enum { role_ping_out = 1, role_pong_back } role_e;

// The debug-friendly names of those roles
const char* role_friendly_name[] = { "invalid", "Ping out", "Pong back"};

// The role of the current running sketch
role_e role;
// радио 
// создаём структуру для передачи значений
typedef struct{         
  int ModuleID;        // идентификатор датчика
  int CommandTo;       // команда модулю номер ...
  int Command;        // команда
                            // 0 - нет команды или ответ
                            // 1 - получить значение
                            // 2 - установить значение
                            // 3 - подтверждение получения данных (в ответном сообщении)
  int SensorID;         // идентификатор параметра 
  float ParamValue;    // значение параметра
  boolean Status;      // статус
                            // 0 - RO
                            // 1 - RW
  char Comment[16];    // комментарий
}
Message;

// создаем структуру для описания параметров сенсоров
typedef struct{
  float Value;         // значение 
  boolean Status;      // статус
                            // 0 - RO
                            // 1 - RW
  char Note[16];       // комментарий
  boolean Sent; // Sensor data has been sent out
                // 0 - no
                // 1 - yes
  unsigned long DelayAfterSend;
  //HEX ValueHEX;         // значение 
} 
Parameter;

// описание параметров модуля
#define MID 901                        // идентификатор модуля
#define NumSensors 3                   // количество сенсоров (плюс еще одно обязательное занчение в нулевом элементе - имя модуля)

Parameter MySensors[NumSensors+1] = {  // описание сенсоров (и первичная инициализация)
  {NumSensors,0,"SensorNode_02",1,0},           // в поле "комментарий" указываем пояснительную информацию о модуле
  {0,0,"Temperature",1,0},
  {0,0,"IRremote",1,1000},
  {0,0,"Battery",1,0}
};


// создадим структуру для сообщений от сенсоров
Message sensor; 
// создадим структуру для ответов
Message answer;

unsigned long currentTime, lastTimeSent_temp, lastTimeSent_battery, lastTimeSent_led;


void sensors_init() {
  // Temperature sensor
  pinMode(A3, INPUT);
  // Battery
  pinMode(A2, INPUT);
  // IRReceiver sensor.
  irrecv.enableIRIn(); // Start the receiver
}


void setup(void)
{
  //digitalWrite(9, HIGH);
  //
  // Role
  role = role_ping_out;
  
  // Print preamble
  Serial.begin(9600);
  printf_begin();
  printf("\n\rRF24/examples/pingpair/\n\r");
  printf("ROLE: %s\n\r",role_friendly_name[role]);

  // Setup and configure rf radio
  radio.begin();

  // optionally, increase the delay between retries & # of retries
  // radio.setRetries(15,15);

  // optionally, reduce the payload size.  seems to
  // improve reliability
  //radio.setPayloadSize(8);
 radio.setPALevel(RF24_PA_LOW);
 radio.setChannel(0x4c);

  //
  // Open pipes to other nodes for communication
  //

  // This simple sketch opens two pipes for these two nodes to communicate
  // back and forth.
  // Open 'our' pipe for writing
  // Open the 'other' pipe for reading, in position #1 (we can have up to 5 pipes open for reading)

//  if ( role == role_ping_out )
//  {
    radio.openWritingPipe(pipes[0]);
    radio.openReadingPipe(1,pipes[1]);
//  }
//  else
//  {
//    radio.openWritingPipe(pipes[1]);
//    radio.openReadingPipe(1,pipes[0]);
//  }

  //
  // Start listening
  //
  // if( radio.setDataRate( RF24_250KBPS ) ) {
  //   printf( "Data rate 250KBPS set!\n\r" ) ;
  // } else {
  //   printf( "Data rate 250KBPS set FAILED!!\n\r" ) ;
  // }
  // radio.setDataRate( RF24_2MBPS ) ;
  // radio.setPALevel( RF24_PA_MAX ) ;
  radio.enableDynamicPayloads() ;
  radio.setAutoAck( true ) ;
  // RF will be turned on just in time of real sendings
  ////radio.powerUp() ;
  ////radio.startListening();

  // Dump the configuration of the rf unit for debugging
  radio.printDetails();
  
  sensors_init();
}


void sensors_getLocalData() {
  
  /*
  typedef struct{
    float Value;         // значение 
    boolean Status;      // статус
                              // 0 - RO
                              // 1 - RW
    char Note[16];       // комментарий
    boolean Sent; // Sensor data has been sent out
                  // 0 - no
                  // 1 - yes
  } 
  Parameter;      
  */
  
  // MySensors[1] - Temperature sensor.
  // 10000 - seconds between temperature reports sendings.
  if (currentTime - lastTimeSent_temp > 5000) {
    // Get temperature
    float temp;
    temp = analogRead(A3)*3.3/1024.0;
    temp = temp - 0.5;
    temp = temp / 0.01;
    MySensors[1].Value = temp;
    MySensors[1].Sent = 0;
    // Reset time between sendings.
    lastTimeSent_temp = currentTime;
  }
  
  
  // MySensors[3] - Battery sensor.
  // 10000 - seconds between temperature reports sendings.
  if (currentTime - lastTimeSent_battery > 100000) {
    // Get temperature
    float battery;
    battery = analogRead(A2);
    MySensors[3].Value = battery;
    MySensors[3].Sent = 0;
    // Reset time between sendings.
    lastTimeSent_battery = currentTime;
  }
  
  // MySensors[2] - IR
  /*
  if (irrecv.decode(&results)) {
    MySensors[2].Value = results.value;
    MySensors[2].Sent = 0;
    Serial.println(results.value, HEX);
    Serial.println(results.value, DEC);
    printf("IR Code = %f\n\r", MySensors[2].Value);
    
    //printf("Type: %s \n\r",results.decode_type);
    Serial.println(results.decode_type);
            
    switch (results.value) {
      //case 4255908178:
      case 4239130559:
        printf("JVC POWER, IR Code = %ul\n\r", results.value);
        break;
        
      case 4272685797:
      case 4255908178:
        printf("JVC POWER, IR Code = %ul\n\r", results.value);
        break;
    }
    
    irrecv.resume(); // Receive the next value
  }
  */
  
}


void sensors_sendOutLocalData_one(int SensorID) {

  // First, stop listening so we can talk.
  radio.stopListening();

  //подготовим данные в структуру для передачи
  sensor.ModuleID = MID; // Own MID
  sensor.CommandTo = 902; //To; // Remote MID
  sensor.Command = 0; // We just send a sensor data to the remote module. (1 - command to a remote module to set the sensor value))
  sensor.SensorID = SensorID; //SensorID;        
  sensor.ParamValue = MySensors[SensorID].Value;
  sensor.Status = MySensors[SensorID].Status;
  memcpy(&sensor.Comment,(char*)MySensors[SensorID].Note, 16);

  printf("Now sending from ModuleID %d, %s: %.2f, \n\r",sensor.ModuleID, sensor.Comment, sensor.ParamValue);
  
  //отправляем данные по RF24
  bool ok = radio.write( &sensor, sizeof(sensor) ); 

  if (ok) {
    printf("Sent %s ok...\n\r", sensor.Comment);
  }
  else {
    printf("Failed sending %s.\n\r", sensor.Comment);
  }

  // Now, continue listening
  radio.startListening();

  // Wait here until we get a response, or timeout (250ms)
  unsigned long started_waiting_at = millis();
  bool timeout = false;
  while ( ! radio.available() && ! timeout ) {
    if (millis() - started_waiting_at > 1+(radio.getMaxTimeout()/1000) ) {
      timeout = true;
    }
  }
  // Describe the results
  if ( timeout ) {
    printf("Failed receiving confirmation, response timed out duration: %d\n\r", (1+radio.getMaxTimeout()/1000) );
  }
  else {
    // Grab the response, compare, and send to debugging spew
    radio.read( &answer, sizeof(answer) );
    // Spew it
    printf("Got receive confirmation from ModuleID %d (%s): %.2f. Start request time: %lu, round-trip delay %lu.  \n\r", answer.ModuleID, answer.Comment, answer.ParamValue, started_waiting_at, millis()-started_waiting_at);
    
  }
  MySensors[SensorID].Sent = 1;
  
}


void sensors_sendOutLocalData_all() {
  boolean radioOn = 0;
  unsigned long maxDelayAfterSend = 0;
  for (int i = 1; i <= NumSensors; i++) {
    // 0 - a sensor data hasn't been sent yet.
    if (MySensors[i].Sent == 0) {
      
      if (!radioOn) {
        radioOn = 1;
        radio.powerUp();
      }
      sensors_sendOutLocalData_one(i);
      if(MySensors[i].DelayAfterSend > maxDelayAfterSend) {
        maxDelayAfterSend = MySensors[i].DelayAfterSend;
      }
      
    } // End of if (MySensors[i].Sent == 0) {
  } // End of for (int i = 1; i <= NumSensors; i++) {
  
  if (radioOn) {
    radio.powerDown();
  }
  if(maxDelayAfterSend > 0) {
    delay(maxDelayAfterSend);
  }
  
}


void led_blink() {
  if (currentTime - lastTimeSent_led > 2000) {
    lastTimeSent_led = currentTime;
    digitalWrite(9, HIGH);
    delay(100);
    digitalWrite(9, LOW);
  }
}


void loop(void) {
  
  // Ping out role.  Repeatedly send the current time
  currentTime = millis();
  
  led_blink();
  
  sensors_getLocalData();
  
  
  sensors_sendOutLocalData_all();
  
  
  // Try again 1s later 
  //delay(1000);


}
