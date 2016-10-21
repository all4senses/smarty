/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   a4s_header.h
 * Author: Alex
 *
 * Created on 13 ноября 2015 г., 17:20
 */

#ifndef A4S_HEADER_H
#define A4S_HEADER_H

enum {
  I2C_UNO_ADDRESS = 4, // Remote, UNO address to work as tranceiver, master
  I2C_MEGA_ADDRESS = 5, // own, MEGA address to work as receiver, slave
  I2C_GBOARD_ADDRESS = 6,
};

enum {
  I2C_OP_LAMP_READ = 1,
  I2C_OP_LAMP_OFF = 2,
  I2C_OP_LAMP_ON = 3,
  I2C_OP_LAMP_SWITCH = 4,
  
  I2C_OP_LAMP_ANSWER = 9,
  
  I2C_OP_CALL_PHONE = 5,
  I2C_OP_CALL_HANGUP = 8,
  
  I2C_OP_LAMP_ON_IF_SECOND_OFF = 9,
  I2C_OP_LAMP_OFF_IF_SECOND_OFF = 10,
  I2C_OP_LAMP_ON_IF_SECOND_ON = 11,
  I2C_OP_LAMP_OFF_IF_SECOND_ON = 12,
};

enum {
  //In Arduino sun - sat => 0 - 6
  ALARM_DAY_ALLWEEK = 7, // mon - sun
  ALARM_DAY_WEEKDAYS = 8, // mon - fri
  ALARM_DAY_WEEKDAYS_EXT = 9,// week days + saturday
  ALARM_DAY_WEEKEND = 10, // sat + sun
};



static byte const lights_number = 18;
//
// http://www.cppforschool.com/tutorial/array2.html
//static byte lights_to_pins[lights_number][2] = {
//                                {34, A0},  // lamp #0, // Rele #1 -----> Постирочная -----> НЕ ПОДКЛЮЧЕНО к сенсору тока // on the board BL1: S-34 (желтый на Реле 1), A0 - NC (1 с конца (не считая пустого) на ток сенс. 1)
//
//                                {27, A13}, // lamp #1, // Rele #2, Spalnia Neon // on the board BL11: S-27 (3 с начала Реле 2), A13 (желтый на ток сенс. 2)
//                                
//                                {14, A0}, // lamp #2   // Rele #1, Koridor vozle vannoy // on the board BL8: S-14 (фиолет на Реле 1/8), A0 (2 от начала на ток сенс. 1)
//                                {15, A1}, // lamp #3  // Rele #1, Kabinet 
//                                {16, A2}, // lamp #4  // Rele #1, Спальня, подвесы
//                                {17, A3}, // lamp #5  // Rele #1, Коридор, точки
//                                {18, A4}, // lamp #6  // Rele #1, Коридор, подвесы
//                                {19, A5}, // lamp #7  // Rele #1, Детская, над столом
//                                {33, A15}, // lamp #8  // Rele #1, Детская, над кроватями
//                                
//                                {26, A12}, // lamp #9  // Rele #2, Детская, точки
//                                {25, A11}, // lamp #10 // Rele #2, Ванная, свет
//                                {24, A10}, // lamp #11 // Rele #2, Свет из вытяжки
//                                {23, A9}, // lamp #12 // Rele #2, Зал, люстра
//                                {22, A8}, // lamp #13  // Rele #2, Kitchen Posvetka // on the board BL16: S-22 (3 с конца Реле 2), A8 (белый на ток сенс. 2)
//                                {35, A7}, // lamp #14 // Rele #2, Зал, неон на 3д-панелях
//                                {36, A6}, // lamp #15 // Rele #2, Кухня, точки
//                                
//                                {37, A0}, // lamp #16 // Rele #3, ПУСТО -----> НЕ ПОДКЛЮЧЕНО в линию (т.к. сломана кнопка откл реле.) и к сенсору тока
//                                {38, A14}, // lamp #17 // Rele #3, Ванная, вентилятор
//                             };
  


/*
typedef struct{
 byte state : 1;
 byte op : 2; // 0 - nothing, 1 - read, 2 - write
}LIGHT;
*/

typedef struct{
  //put your variable definitions here for the data you want to receive
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
 
  byte from : 3;
  byte to : 3;
  boolean wait_responce;
  
  byte op : 5; // 1 - read lights, 2 - turn on, 3 - turn off, 4 - switch vice versa...
  
  byte target_1;
  
  byte target_2;
  
  //LIGHT lights[18];
  boolean lights[18];

}SEND_RECEIVE_DATA_STRUCTURE;
//
////give a name to the group of data
//RECEIVE_DATA_STRUCTURE data_transfer;

// Amount of addressed lights in the house
//byte lights_amount;




class testLed_class {

    public: 
      
              boolean testLedState;
              uint32_t current_millis;
              uint32_t lastCheckTime;
              long switchPeriod; // = 3500;  // period of the test led switching, ms.
              byte testLedPin; // = 12; // Uno pin num with the test led.
              
              // Test led blinking setup.
              void testLed_setup(byte pin, long sp) {
                
                testLedPin = pin;
                switchPeriod = sp;
                
                testLedState = false;
                lastCheckTime = 0;
                
                pinMode(testLedPin, OUTPUT);

                Serial.println("Test led blinking started...");
              }


              // Test led blinking process.
              void testLed_process() {

                current_millis = millis();

                if (current_millis - lastCheckTime > switchPeriod) {

                  lastCheckTime = current_millis;
                  if (testLedState) {
                    testLedState = false;
                    digitalWrite(testLedPin, LOW);
                    //Serial.println("testLed ------");
                  }
                  else {
                    testLedState = true;
                    digitalWrite(testLedPin, HIGH);
                    //Serial.println("testLed +++++++++++++");
                  }
                } // End of if (current_millis - millisTimes[MILLIS_TIME_TEST_LED] > millisTimeouts[MILLIS_TIME_TEST_LED]) {
              } // End of void testLed_process() {

}; //testLed_obj;



#endif /* A4S_HEADER_H */


