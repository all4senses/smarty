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
#include <RF24.h>
#include <E:\_Alex_E_2\Apps\_Nsk\_Arduino\arduino-1.0.5-r2\libraries\RF24_with_Raspberry\examples\pingpair\printf.h>


//
// Hardware configuration
//

// Set up nRF24L01 radio on SPI bus plus pins 9 & 10


//RF24 radio(CE,CSN);
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

// создаем структуру для описания параметров
typedef struct{
  float Value;         // значение 
  boolean Status;      // статус
                            // 0 - RO
                            // 1 - RW
  char Note[16];       // комментарий
  boolean Sent;
} 
Parameter;

// описание параметров модуля
#define MID 902                        // идентификатор модуля
#define NumSensors 3                   // количество сенсоров (и еще одно обязательное занчение - имя датчика)

//Parameter MySensors[NumSensors+1] = {  // описание датчиков (и первичная инициализация)
//  {NumSensors,0,"Server_Uno_01",1},           // в поле "комментарий" указываем пояснительную информацию о датчике
//  {0,0,"Temperature",1},
//  {0,0,"No IP",1},
//  {0,0,"Date",1}  
//};

  
// создадим структуру для сообщений от сенсоров
Message sensor; 
// создадим структуру для ответов
Message answer;


void setup(void) {

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

    radio.openWritingPipe(pipes[1]);
    radio.openReadingPipe(1,pipes[0]);

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
  radio.powerUp() ;
  radio.startListening();

  // Dump the configuration of the rf unit for debugging
  radio.printDetails();
}


/*
#include <stdarg.h>
void p(char *fmt, ... ){
        char buf[128]; // resulting string limited to 128 chars
        va_list args;
        va_start (args, fmt );
        vsnprintf(buf, 128, fmt, args);
        va_end (args);
        Serial.print(buf);
}

void p(const __FlashStringHelper *fmt, ... ){
    char buf[128]; // resulting string limited to 128 chars
    va_list args;
    va_start (args, fmt);
  #ifdef __AVR__
    vsnprintf_P(buf, sizeof(buf), (const char *)fmt, args); // progmem for AVR
  #else
    vsnprintf(buf, sizeof(buf), (const char *)fmt, args); // for the rest of the world
  #endif
    va_end(args);
    Serial.print(buf);
}
*/   



void loop(void) {

  // Pong back role.  Receive each packet, dump it out, and send it back

  // if there is data ready
  if ( radio.available() ) {
    // Dump the payloads until we've gotten everything
    bool done = false;

    while (!done) {
      // Fetch the payload, and see if this was the last one.
      done = radio.read( &answer, sizeof(answer) );
    }

    // First, stop listening so we can talk
    radio.stopListening();

    printf("Got from %d, %s: sensor.ParamValue = %.2f\n", answer.ModuleID, answer.Comment, answer.ParamValue);

    //подготовим данные в структуру для передачи
    sensor = answer;
    
    sensor.ModuleID = MID; // Own MID
    sensor.CommandTo = 901; //To; // Remote MID
    sensor.Command = 3; // Confirm receiving.
    //memcpy(&sensor.Comment,(char*)answer.Comment, 16); //memcpy(&sensor.Comment,(char*)MySensors[SensorID].Note, 16);
    

    //отправляем данные по RF24
    radio.write( &sensor, sizeof(sensor) ); 

    // Now, resume listening so we catch the next packets.
    radio.startListening();
  }

}


 
    
