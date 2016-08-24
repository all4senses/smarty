
// Printout like Serial << "text" << data << endl;
#include <Streaming.h>

// Even More convenient output.
// http://www.cplusplus.com/reference/cstdio/printf/        
// http://en.cppreference.com/w/cpp/io/c/fprintf

#define PRINT_SERIAL 1
#define BUFF_MAX 100
//char buff[BUFF_MAX];
/*
if (PRINT_SERIAL) {
  int str = 123;  
  snprintf(buff, BUFF_MAX, "%d.%02d.%02d %02d:%02d:%02d %s \n %ld", str, str, str, 3, 2, 14, "Te\n\nst", str);
  Serial.println(buff);
}
*/  







/*  ---------------------------------------------------------------------------------- */

/* ---------------------------   EaseVR Voice Recognition ---------------------------- */

/*  ---------------------------------------------------------------------------------- */

//#if defined(ARDUINO) && ARDUINO >= 100
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

//#else
//  //#error "Arduino version not supported. Please update your IDE."
//#endif


  









//--------------------------------------------------------------------------------------------------------
//------------  EasyTransfer  Communication between several arduinos via I2C ------------------------------------------



#include <Wire.h>
#include <EasyTransferI2C.h>

// http://tronixstuff.com/2010/10/20/tutorial-arduino-and-the-i2c-bus/
// If you are using an Arduino Mega, SDA is pin 20 and SCL is 21, so note that shields with I2C need to be specifically for the Mega. If you have another type of board, check your data sheet or try the Arduino team’s hardware website.  And finally, if you are using a bare DIP ATmega328-PU microcontroller, you will use pins 27 for SDA and 28 for SCL.
// http://arduino.ru/forum/apparatnye-voprosy/mozhno-li-ispolzovat-i2c-na-drugikh-pinakh-ne-20-i-21-mega-2560


//create object
EasyTransferI2C ET; 



// -----------------------------------------------
// -------------------- End of EasyTransfer ---------------------------------------------





//YWROBOT
//Compatible with the Arduino IDE 1.0
//Library version:1.1
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display 




// Main a4s header file that is ued by all afs_arduino projects
#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_header.h>
extern byte const lights_number;

#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_secure.h>
extern char *phones[];




const char* lights_names[lights_number] = {
                                "Postir", //{34, A0},  // lamp #0, // Rele #1 -----> Постирочная -----> НЕ ПОДКЛЮЧЕНО к сенсору тока // on the board BL1: S-34 (желтый на Реле 1), A0 - NC (1 с конца (не считая пустого) на ток сенс. 1)

                                "SpalNeo", //{27, A13}, // lamp #1, // Rele #2, Spalnia Neon // on the board BL11: S-27 (3 с начала Реле 2), A13 (желтый на ток сенс. 2)
                                
                                "KoridVanna", //{14, A0}, // lamp #2   // Rele #1, Koridor vozle vannoy // on the board BL8: S-14 (фиолет на Реле 1/8), A0 (2 от начала на ток сенс. 1)
                                "Kabinet", //{15, A1}, // lamp #3  // Rele #1, Kabinet 
                                "SpalPodv", //{16, A2}, // lamp #4  // Rele #1, Спальня, подвесы
                                "KoridToch", //{17, A3}, // lamp #5  // Rele #1, Коридор, точки
                                "KoridPodv", //{18, A4}, // lamp #6  // Rele #1, Коридор, подвесы
                                "DetStol", //{19, A5}, // lamp #7  // Rele #1, Детская, над столом
                                "DetKrovat", //{33, A15}, // lamp #8  // Rele #1, Детская, над кроватями
                                
                                "DetTochk", //{26, A12}, // lamp #9  // Rele #2, Детская, точки
                                "VannaSv", //{25, A11}, // lamp #10 // Rele #2, Ванная, свет
                                "KuhVytiazh", //{24, A10}, // lamp #11 // Rele #2, Свет из вытяжки
                                "ZalLustr", //{23, A9}, // lamp #12 // Rele #2, Зал, люстра
                                "KuhPodsv", //{22, A8}, // lamp #13  // Rele #2, Kitchen Podsvetka // on the board BL16: S-22 (3 с конца Реле 2), A8 (белый на ток сенс. 2)
                                "ZalNeo", //{35, A7}, // lamp #14 // Rele #2, Зал, неон на 3д-панелях
                                "KuhTochk", //{36, A6}, // lamp #15 // Rele #2, Кухня, точки
                                
                                "Pusto", //{37, A0}, // lamp #16 // Rele #3, ПУСТО -----> НЕ ПОДКЛЮЧЕНО в линию (т.к. сломана кнопка откл реле.) и к сенсору тока
                                "VanVent", //{38, A14}, // lamp #17 // Rele #3, Ванная, вентилятор
                             };

//
///*
//typedef struct{
// byte state : 1;
// byte op : 2; // 0 - nothing, 1 - read, 2 - write
//}LIGHT;
//*/
//
//typedef struct{
//  //put your variable definitions here for the data you want to receive
//  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
// 
//  byte from : 3;
//  byte to : 3;
//  boolean wait_responce;
//  
//  byte op : 5; // 1 - read lights, 2 - turn on, 3 - turn off, 4 - switch vice versa...
//  
//  byte lamp;
//  
//  //LIGHT lights[18];
//  boolean lights[18];
//
//}RECEIVE_DATA_STRUCTURE;
//
////give a name to the group of data
SEND_RECEIVE_DATA_STRUCTURE data_transfer;
//
//// Amount of addressed lights in the house
////byte lights_amount;
//


// constants won't change. Used here to set a pin number :
// RELAY is connected to this! And will switch ON on TRIE
//const int relayPin_1 =  27;//2;      // the number of the LED (RELAY) pin.


//
//byte const lights_number = 18;
//
//// http://www.cppforschool.com/tutorial/array2.html
byte lights_to_pins[lights_number][2] = {
                                {34, A0},  // lamp #0, // Rele #1 -----> Постирочная -----> НЕ ПОДКЛЮЧЕНО к сенсору тока // on the board BL1: S-34 (желтый на Реле 1), A0 - NC (1 с конца (не считая пустого) на ток сенс. 1)

                                {27, A13}, // lamp #1, // Rele #2, Spalnia Neon // on the board BL11: S-27 (3 с начала Реле 2), A13 (желтый на ток сенс. 2)
                                
                                {14, A0}, // lamp #2   // Rele #1, Koridor vozle vannoy // on the board BL8: S-14 (фиолет на Реле 1/8), A0 (2 от начала на ток сенс. 1)
                                {15, A1}, // lamp #3  // Rele #1, Kabinet 
                                {16, A2}, // lamp #4  // Rele #1, Спальня, подвесы
                                {17, A3}, // lamp #5  // Rele #1, Коридор, точки
                                {18, A4}, // lamp #6  // Rele #1, Коридор, подвесы
                                {19, A5}, // lamp #7  // Rele #1, Детская, над столом
                                {33, A15}, // lamp #8  // Rele #1, Детская, над кроватями
                                
                                {26, A12}, // lamp #9  // Rele #2, Детская, точки
                                {25, A11}, // lamp #10 // Rele #2, Ванная, свет
                                {24, A10}, // lamp #11 // Rele #2, Свет из вытяжки
                                {23, A9}, // lamp #12 // Rele #2, Зал, люстра
                                {22, A8}, // lamp #13  // Rele #2, Kitchen Posvetka // on the board BL16: S-22 (3 с конца Реле 2), A8 (белый на ток сенс. 2)
                                {35, A7}, // lamp #14 // Rele #2, Зал, неон на 3д-панелях
                                {36, A6}, // lamp #15 // Rele #2, Кухня, точки
                                
                                {37, A0}, // lamp #16 // Rele #3, ПУСТО -----> НЕ ПОДКЛЮЧЕНО в линию (т.к. сломана кнопка откл реле.) и к сенсору тока
                                {38, A14}, // lamp #17 // Rele #3, Ванная, вентилятор
                             };
                             







// -------------------------------------------------------------------------------------------
// ---------------------- Real Time Clock and Alarms -----------------------------------------
// -------------------------------------------------------------------------------------------


//--------------------------- Date and time functions using a DS1307 RTC connected via I2C and Wire lib

//#include <Wire.h>
#include <EEPROM.h>
#include <RTClib.h>





typedef struct{
  uint8_t a_hour;
  uint8_t a_minute;
  byte a_num;
  boolean active;
  char name[10];
  byte target_type; // 0 - lamp
  byte target_nums[3]; // 0 - 17 for lamp, -1 for empty lamp num
  boolean target_states[3]; //
  
  void test() {
    
  }
}RTC_CUSTOM_ALARM_STRUCTURE;

byte const rtc_alarms_amount = 4;
RTC_CUSTOM_ALARM_STRUCTURE rtc_custom_alarms[rtc_alarms_amount] = {
                                                    {16, 41, 1, true, "Zal1", 0, {14, 12, 99}, {0,1,0}}, // 99 for not set
                                                    {16, 43, 2, true, "ZalSwit2", 0, {14, 12, 99}, {1,0,0}}, // 99 for not set
                                                    
                                                    // 4 - Спальня, подвесы, 7 - Детская, над столом, 13 - Kitchen Posvetka
                                                    ////{6, 53, 3, true, "SpalDet1", 0, {4, 7, 13}, {1,1,1}}, // 99 for not set
                                                    // 9 - Детская, точки, 7 - Детская, над столом, 1 - Spalnia Neon
                                                    ////{7, 0, 4, true, "Detsk2", 0, {9, 7, 1}, {1,0,1}}, // 99 for not set
                                                  };






// ----- RTC Temperature -----------
/*
DS3231_test.pde
Eric Ayars
4/11

Test/demo of read routines for a DS3231 RTC.

Turn on the serial monitor after loading this to check if things are
working as they should.

*/
#include <DS3231.h>
//#include <D:/Alex_D/_Apps/_Arduino/arduino-1.0.5-r2/libraries/DS3231/DS3231.h>

//DS3231 Clock;





// RTC time, temperature and eeprom
class rtc_class {
  
    public:
      
            RTC_DS1307 rtc; // Used for a time and eeprom
            // Used for a temperature only
            DS3231 Clock; 
            char buff_local[BUFF_MAX];
            ////uint32_t current_millis;
            ////unsigned long lastCheckTime;
            ////long checkPeriod; // = 20000;  // period of checking up the time, ms.
            
            // Real Time Clock setup
            ///void rtc_setup(long check) {
            void rtc_setup() {  
              
              ////lastCheckTime = 0;
              ////checkPeriod = check;
                      
              rtc.begin();

              if (! rtc.isrunning()) {
                Serial.println("RTC is NOT running!");
                // following line sets the RTC to the date & time this sketch was compiled
                rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
                // This line sets the RTC with an explicit date & time, for example to set
                // January 21, 2014 at 3am you would call:
                // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
              }
              else { 
                DateTime now = rtc.now();
                if (now.year() != 2016) 
                {
                  rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
                  Serial.println("RTC has been reset to the sketch compiled time........");    
                }
              }
              Serial.println("RTC started...");
              
              DateTime now = rtc.now();
              rtc_print_dateTime(now);
            }

            char* rtc_getDateTime() {
              char* dayOfWeekStr;
              DateTime now = rtc.now();
              switch (now.dayOfWeek()) {
                case 1:
                  dayOfWeekStr = "Mo";
                  break;
                case 2:  
                  dayOfWeekStr = "Tu";
                  break;
                case 3:  
                  dayOfWeekStr = "We";
                  break;  
                case 4:  
                  dayOfWeekStr = "Th";
                  break;  
                case 5:  
                  dayOfWeekStr = "Fr";
                  break;  
                case 6:  
                  dayOfWeekStr = "Sa";
                  break;  
                case 0:  
                  dayOfWeekStr = "Su";
                  break;  
              }
              snprintf(buff_local, BUFF_MAX, "%d/%d%s%d:%d", now.month(), now.day(), dayOfWeekStr, now.hour(), now.minute());
              return buff_local;
            }
            void rtc_print_dateTime(DateTime now) {
              
              Serial.print(now.year(), DEC);
              Serial.print('/');
              Serial.print(now.month(), DEC);
              Serial.print('/');
              Serial.print(now.day(), DEC);
              Serial.print(' ');
              Serial.print(now.hour(), DEC);
              Serial.print(':');
              Serial.print(now.minute(), DEC);
              Serial.print(':');
              Serial.print(now.second(), DEC);
              Serial.println();

//              Serial.print(" since midnight 1/1/1970 = ");
//              Serial.print(now.unixtime());
//              Serial.print("s = ");
//              Serial.print(now.unixtime() / 86400L);
//              Serial.println("d");

//              // calculate a date which is 7 days and 30 seconds into the future
//              DateTime future (now.unixtime() + 7 * 86400L + 30);
//
//              Serial.print(" now + 7d + 30s: ");
//              Serial.print(future.year(), DEC);
//              Serial.print('/');
//              Serial.print(future.month(), DEC);
//              Serial.print('/');
//              Serial.print(future.day(), DEC);
//              Serial.print(' ');
//              Serial.print(future.hour(), DEC);
//              Serial.print(':');
//              Serial.print(future.minute(), DEC);
//              Serial.print(':');
//              Serial.print(future.second(), DEC);
//              Serial.println();
//
//              Serial.println();
            }

            int rtc_getTemperature() {
              return Clock.getTemperature();
            }
            
            // Real Time Clock process.
            /*
            void rtc_process() {

              current_millis = millis();

              // Check alarms onec in a while, in a predefined periods...
              //if (current_millis - millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] > millisTimeouts[MILLIS_TIME_RTC_CHECK_INDEX]) {
              if (current_millis - lastCheckTime > checkPeriod) {  

                // Reset last check time.
                //millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] = current_millis;
                lastCheckTime = current_millis;

                DateTime now = rtc.now();

                // Check alarms preset and fire active for the current time.
                for (int i = 0; i <= rtc_alarms_amount - 1; i++) {

                  if (rtc_custom_alarms[i].active == true && now.hour() >= rtc_custom_alarms[i].a_hour && now.minute() >= rtc_custom_alarms[i].a_minute) {
                    rtc_custom_alarms[i].active = false; // Stop alarm firing for future.

            //        I2C_OP_LAMP_READ = 1,
            //        I2C_OP_LAMP_ON = 3,
            //        I2C_OP_LAMP_OFF = 2,
            //        I2C_OP_LAMP_SWITCH = 4,

                    if (rtc_custom_alarms[i].target_type == 0) { // target_type == 0 for lamps
                      for (int j = 0; j < 3; j++) {
                        if (rtc_custom_alarms[i].target_nums[j] < lights_number) { // We have just 18 lamps
                          //light_obj.lightState(14, 4);  
                          light_obj.lightState(rtc_custom_alarms[i].target_nums[j], (rtc_custom_alarms[i].target_states[j] ? I2C_OP_LAMP_ON : I2C_OP_LAMP_OFF) );
                        }
                      }
                    } // End of if (rtc_custom_alarms[i].target_type == 0) { // target_type == 0 for lamps

                    rtc_print_dateTime(now);

                    Serial.print("RTC Alarm is fired: "); Serial.print(i); Serial.print(" - ");  Serial.println(rtc_custom_alarms[i].name);  
                    
                  } // End of if (rtc_custom_alarms[i].active == true && now.hour() >= rtc_custom_alarms[i].a_hour && now.minute() >= rtc_custom_alarms[i].a_minute) {

                } // End of for (int i = 0; i <= rtc_alarms_amount - 1; i++)

              } // End of if (current_millis - millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] > millisTimeouts[MILLIS_TIME_RTC_CHECK_INDEX])

            } // End of void rtc_process() {
  
            */
            
            
            void rtc_eeprom_write() {
              
              
              int addr=0,i;    
           //   for(i=0;i<56;i++)
           //    {
           //     //i2c_eeprom_write_byte(0x57,addr,i+65);
           //     addr++;
           //     addr=addr%26;     
           //     Serial.print(addr);
           //     Serial.println(char(i+65));
           //     //delay(10); //add a small delay
           //    }


               //i2c_eeprom_write_byte(0x57,0,11);

               //delay(5000); //add a small delay
              /*
               Serial.println("Read simple value i at address 0:"); 
               i = i2c_eeprom_read_byte(0x57, 0); //access an address from the memory
               Serial.print("i ="); Serial.println(i); 
               Serial.print("char(i) = "); Serial.println(char(i)); 
               Serial.println();

               Serial.println("Read simple value i at address 1:"); 
               i = i2c_eeprom_read_byte(0x57, 1); //access an address from the memory
               Serial.print("i = "); Serial.println(i); 
               Serial.print("char(i) = "); Serial.println(char(i)); 
               Serial.println();
               */


               Serial.println();
               Serial.println("Write a struct: {4, 41, 1, true, 'Zal1', 0, {14, 12, -1}, {0,1,0}},"); 

               Serial.print("sizeof(rtc_custom_alarms[0]) = "); Serial.println(sizeof(rtc_custom_alarms[0]));
               //Serial.print("sizeof(rtc_custom_alarms[1] = "); Serial.println(sizeof(rtc_custom_alarms[1]));
               Serial.print("rtc_custom_alarms[0].name = "); Serial.println(rtc_custom_alarms[0].name); 
               Serial.print("rtc_custom_alarms[0].a_minute = "); Serial.println(rtc_custom_alarms[0].a_minute); 

               i = EEPROM_writeAnything(0x57, 1, rtc_custom_alarms[0]);
               Serial.print("Reported result size of the written struct = "); Serial.println(i); 
               Serial.println();

               delay(100); //add a small delay
               

            }
            
            
            
            
            void rtc_eeprom_read() {
              
              
              int addr = 0, i;    

               Serial.println("Read a struct RTC_CUSTOM_ALARM_STRUCTURE from eeprom..."); 

               RTC_CUSTOM_ALARM_STRUCTURE rtc_custom_alarms_test;

               i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms_test);

               Serial.print("Readen length: "); Serial.println(i); 

               Serial.print("Readen name: "); Serial.println(rtc_custom_alarms_test.name); 
               Serial.print("Readen a_minute: "); Serial.println(rtc_custom_alarms_test.a_minute); 


               /*
               delay(5000); //add a small delay
               i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms[0]);
               Serial.print("length 0: "); Serial.println(i); 
               Serial.print("Name 0: "); Serial.println(rtc_custom_alarms[0].name); 
               Serial.print("a_minute 0: "); Serial.println(rtc_custom_alarms[0].a_minute); 


               delay(5000); //add a small delay
               i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms[1]);
               Serial.print("length 1: "); Serial.println(i); 
               Serial.print("Name 1: "); Serial.println(rtc_custom_alarms[1].name); 
               Serial.print("a_minute 1: "); Serial.println(rtc_custom_alarms[1].a_minute);
               */

            }
} rtc_obj;



class lcd_class {
  
      public: 
        
        char* current_1st;
        // Update time on lcd - proceccClockTicTac
        uint32_t current_millis;
        unsigned long lastCheckTime;
        long switchPeriod; // = 35;  // period of the test led switching, ms.
              
        void lcd_setup() {
          switchPeriod = 60000; // 1 min
          lastCheckTime = 0;
          Serial.println("TicTac started...");
                
          // Initialize the lcd 
          lcd.init();                      
          //lcd.autoscroll();
          current_1st = "";
          lcd_print_on_1st("Hello,I'm ready!");
        }
        
        void lcd_print_on_1st(char *str) {
          current_1st = str;
          lcd_printDateTimeTemperature();
        }
        
        void backlight(boolean state) {
          if (state) {
           lcd_printDateTimeTemperature();
           lcd.backlight();  
          }
          else {
           lcd.noBacklight(); 
          }
        }
        
        void lcd_printDateTimeTemperature() {
          //return;
          char buff_local[17];
          lcd.clear();
          lcd.setCursor(0, 0);
          
          // Print a message to the 1st line.
          lcd.print(current_1st);
          snprintf(buff_local, 16, current_1st);
          lcd.print(buff_local);
          
          lcd.setCursor(0, 1);
          snprintf(buff_local, 16, "%s,%d%c", rtc_obj.rtc_getDateTime(), rtc_obj.rtc_getTemperature(), (char)223);
          lcd.print(buff_local);
          
          // Print to Serial
          //Serial.println(current_1st);
          //Serial.println(lcd_buff);
        }
        
        void processClockTicTac() {
          current_millis = millis();
          if (current_millis - lastCheckTime > switchPeriod) {
            lastCheckTime = current_millis;
            lcd_printDateTimeTemperature();
          }
        }
  
}lcd_obj;



class misc_class {

        public:
          
          void print(char *str, int target = 0) {
            // target = 0 - lcd + serial; 1 - lcd; 2 - seial
            if (target == 0) {
              Serial.println(str);
              lcd_obj.lcd_print_on_1st(str);
            }
            else if (target == 1) {
              lcd_obj.lcd_print_on_1st(str);
            }
            else if (target == 2) {
              Serial.println(str);
            }
          }
          
}misc_obj;


class light_class {

        public:
                      /****************************************************************************/	
                      //	Function: Measure the amplitude current of the alternating current and 
                      //			  the effective current of the sinusoidal alternating current.
                      //	Hardware: Grove - Electricity Sensor		
                      //	Date: 	 Jan 19,2013
                      //	by www.seeedstudio.com
                      //#define ELECTRICITY_SENSOR A15//A0 // Analog input pin that sensor is attached to

                      float amplitude_current;               //amplitude current
                      float effective_value;       //effective current 
                      int sensor_max;
                      

                      // Electro sensor get max
                      // Function: Sample for 1000ms and get the maximum value from the SIG pin
                      int light_getElectricityMaxValue(byte electricitySensor)
                      {
                              //Serial.print("in max electricitySensor: ");
                              //Serial.println(electricitySensor);

                        int sensorValue;             //value read from the sensor
                        int sensorMax = 0;
                        uint32_t start_time = millis();
                        while((millis() - start_time) < 1000)//sample for 1000ms
                        {
                          //sensorValue = analogRead(ELECTRICITY_SENSOR);
                                      sensorValue = analogRead(electricitySensor);
                                      //sensorValue = analogRead(A15);


                                      //Serial.print("sensorValue: ");
                                      //Serial.println(sensorValue);

                          if (sensorValue > sensorMax) 
                          {
                            //record the maximum sensor value
                            sensorMax = sensorValue;
                          }
                        }
                        return sensorMax;
                      }




                      // Electro Get Current values, return Effective vakue
                      float light_getElectricityValues(byte electricitySensor) {

                              //sensor_max = getCurrentMaxValue();

                              //Serial.print("electricitySensor: ");
                              //Serial.println(electricitySensor);

                              sensor_max = light_getElectricityMaxValue(electricitySensor);

                              //Serial.print("sensor_max: ");
                              //Serial.println(sensor_max);

                              /*
                        Serial.print("sensor_max = ");
                        Serial.println(sensor_max);
                              */
                        //the VCC on the Grove interface of the sensor is 5v
                        amplitude_current = (float) sensor_max/1024*5/800*2000000;
                        effective_value = amplitude_current/1.414; //minimum_current=1/1024*5/800*2000000/1.414=8.6(mA) 

                              /*					//Only for sinusoidal alternating current
                        Serial.println("The amplitude of the current is(in mA)");
                        Serial.println(amplitude_current,1);//Only one number after the decimal point
                        Serial.println("The effective value of the current is(in mA)");
                        Serial.println(effective_value,1); 
                              */
                              return effective_value;
                      }



                      // 1:Read 2:Off 3:On 4:Switch
                      boolean lightState(byte lamp_num, byte op, int depend_on_lamp = -1) {

                        /*
                        I2C_OP_LAMP_READ = 1,
                        I2C_OP_LAMP_ON = 3,
                        I2C_OP_LAMP_OFF = 2,
                        I2C_OP_LAMP_SWITCH = 4,
                        */

                          char buff_local[BUFF_MAX];
                          
                          boolean changeRelayState = false, finalLampState = false;
                          boolean main_lamp_state, control_lamp_state;

                          if (lamp_num == 0) {
                            // Postirochnaya - Not connected to a sensor.
                            if (op !=4 ) {
                              // if op is not switch, do nothing and just show as turned off (default)
                              return false;
                            }    
                          }
                          else if (lamp_num == 16) {
                            // l-16 (BL9) Not connected to anything at all
                            // do nothing and just show as turned off (default)
                              return false;
                          }


                          //relayPin_1_state = digitalRead(relayPin_1);
                          //int pin_state = digitalRead(light_to_pin[lamp_num]);
                          int pin_state = digitalRead(lights_to_pins[lamp_num][0]);

                          // Get the current LAMP state - On (is there a High Current) or OFF (or Low Current)
                          //getCurrentValues(); // can return a value, but now we'll take a global var.

                          // Current/real tok on the current lamp (is the lamp on or off)
                          //float light_effectiveElectricityValue = light_getElectricityValues(lights_to_pins[lamp_num][1]);
                          main_lamp_state = light_getElectricityValues(lights_to_pins[lamp_num][1]) < 15 ? false : true;
                          
                          if (depend_on_lamp >= 0) {
                            //Serial.print("Check control lamp  ");Serial.println(depend_on_lamp);
                            //float light_effectiveElectricityValue_2 = light_getElectricityValues(lights_to_pins[data_transfer.target_2][1]);
                            
                            //float light_effectiveElectricityValue_2 = light_getElectricityValues(lights_to_pins[depend_on_lamp][1]);
                            control_lamp_state = light_getElectricityValues(lights_to_pins[depend_on_lamp][1]) < 15 ? false : true;
                            
                            if ( (control_lamp_state && (op == I2C_OP_LAMP_ON_IF_SECOND_OFF || op == I2C_OP_LAMP_OFF_IF_SECOND_OFF)) 
                                    ||
                                 (!control_lamp_state && (op == I2C_OP_LAMP_ON_IF_SECOND_ON || op == I2C_OP_LAMP_OFF_IF_SECOND_ON) )
                               )
                            {
                              //Serial.println("Control lamp is "); Serial.println(control_lamp_state ? "ON" : "OFF"); Serial.println(". Skip...");
                              
                              if (PRINT_SERIAL) {
                                snprintf(buff_local, BUFF_MAX, "L:L=%d,CtrlL=%s->SkipSwitch", lights_to_pins[lamp_num][0], (control_lamp_state ? "ON" : "OFF"));
                                misc_obj.print(buff_local);
                              }
                              
                              return control_lamp_state;
                            }
                            
                            
                            //Serial.println("Control lamp is "); Serial.println(control_lamp_state ? "ON" : "OFF"); Serial.println("... Do what it is supposed to do...");
                            if (PRINT_SERIAL) {
                              snprintf(buff_local, BUFF_MAX, "L:L=%d,CtrlL=%s->DoSwitch", lights_to_pins[lamp_num][0], (control_lamp_state ? "ON" : "OFF"));
                              misc_obj.print(buff_local);
                            }
                          }
                          
                          switch (op) {

                              case I2C_OP_LAMP_READ: // 1 - Read a current state.

                                //Serial.println("Read electro state"); 

                                if (!main_lamp_state) {
                                  //Serial.println("Current state = LOW"); 
                                  pin_state = LOW;
                                }
                                else {
                                  //Serial.println("Current state = HIGH"); 
                                  pin_state = HIGH;
                                }

                                break;


                              case I2C_OP_LAMP_OFF_IF_SECOND_OFF:
                              case I2C_OP_LAMP_OFF: // 2 - Turn Off, if it's now Turned ON

                                //Serial.println("Light Off"); 

                                if (!main_lamp_state) {
                                  // Remain the Relay state
                                  changeRelayState = false;
                                }
                                else {
                                   // Change rhe relay state
                                   changeRelayState = true;
                                }

                                break;


                              case I2C_OP_LAMP_ON_IF_SECOND_OFF:
                              case I2C_OP_LAMP_ON: //  - Turn On, if it's now Turned OFF

                                //Serial.println("Light On"); 

                                if (main_lamp_state) { // > 50
                                  // Remain the Relay state
                                  changeRelayState = false;
                                }
                                else {
                                   // Change rhe relay state
                                   changeRelayState = true;
                                }

                                break;


                              case I2C_OP_LAMP_SWITCH: // 4- if the LED is off turn it on and vice-versa:

                                //Serial.println("Switch the light Vise Versa"); 
                                changeRelayState = true;

                                break;

                          } // End of Switch (state) {

                          // set the LED with the relayPin_1_state of the variable:
                          //digitalWrite(relayPin_1, pin_state); 
                          if (changeRelayState) {
                            Serial.print("Switch the light Vise Versa:");Serial.println(lamp_num); 
                            if (pin_state == LOW) {
                              pin_state = HIGH;
                            }
                            else {
                              pin_state = LOW;
                            }
                            //digitalWrite(light_to_pin[lamp_num], pin_state); 
                            digitalWrite(lights_to_pins[lamp_num][0], pin_state); 
                            delay(20); // 100 is working for sure, 30 - seems working!
                            //light_effectiveElectricityValue = light_getElectricityValues(lights_to_pins[lamp_num][1]);
                            main_lamp_state = light_getElectricityValues(lights_to_pins[lamp_num][1]) < 15 ? false : true;
                          }

                          //Serial.print("lamp #"); Serial.print(lamp_num); 
                          //Serial.print(", light_effectiveElectricityValue: "); Serial.println(light_effectiveElectricityValue); 

                          // For l-0 (postirochnaya with not connected electro sensor)
                          // just show turned off forever
                          if (lamp_num == 0) {
                            //light_effectiveElectricityValue = 0;
                            main_lamp_state = false;
                          }

                          //finalLampState = light_effectiveElectricityValue < 15 ? false : true;
                          
                          if (!main_lamp_state) {
                            //finalLampState = false;
                            // If it's Koridos tochki off - turn off LCD backlight
                            if (lamp_num == 5) {
                              lcd_obj.backlight(false);
                            }
                            else {
                              if (PRINT_SERIAL) {
                                snprintf(buff_local, BUFF_MAX, "%s OFF", lights_names[lamp_num]);
                                misc_obj.print(buff_local);
                              }
                            }
                          }
                          else {
                            //finalLampState = true;
                            // If it's Koridos tochki on - turn on LCD backlight
                            if (lamp_num == 5) {
                              lcd_obj.backlight(true);
                            }
                            else {
                              if (PRINT_SERIAL) {
                                snprintf(buff_local, BUFF_MAX, "%s ON", lights_names[lamp_num]);
                                misc_obj.print(buff_local);
                              }
                            }
                          }
                          //return finalLampState;
                          return main_lamp_state;
                      }


                      void lightState_all(byte op) {
                          //Serial.print('Turn Off all lights: ');Serial.println(op);

                          for(int i = 0; i < lights_number; i++){
                             // Set and read a real lamp state.
                             data_transfer.lights[i] = lightState(i, op);
                             //Serial << "light " << i << " state = " << data_transfer.lights[i] << ", op = " << op /*data_transfer.op*/ << endl;
                           } // End of for(int i = 0; i < lights_amount; i++){
                      }


                      void light_relaysAndElectricitySensors_setup() {

                        // lights_to_pins[lights_number][2]

                        for (byte i = 0; i < lights_number; i++) {

                           // set the digital pin as output:
                          //pinMode(relayPin_1, OUTPUT);
                          pinMode(lights_to_pins[i][0], OUTPUT);


                          // Electro Sensor
                          //pinMode(ELECTRICITY_SENSOR, INPUT);
                          pinMode(lights_to_pins[i][1], INPUT);

                        }
                        //pinMode(ELECTRICITY_SENSOR, INPUT);
                      }


} light_obj;





class et_class {
  
        public:
            
                        void et_setup() { 
                          
                          char buff_local[BUFF_MAX];
                          
                          // EasyTransfer setup.
  
                          Wire.begin(I2C_MEGA_ADDRESS); // own address to work as receiver
                          //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc. 
                          ET.begin(details(data_transfer), &Wire);
                          //define handler function on receiving data
                          Wire.onReceive(et_on_receive_event);

                          //lights_amount = sizeof(data_transfer.lights);

                          ////Serial << "EaseTransfer started!..." << endl; // << "lights amount = " << lights_amount << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "ETransfer Started!");
                            misc_obj.print(buff_local);
                          }
                          
                        }
                          
                          
                        void et_receiving_process() {

                          boolean light_state;
                          char buff_local[BUFF_MAX];
                          
                          //check and see if a data packet has come in. 
                          if(ET.receiveData()){

                            ////Serial << "Request recieved from  = " << data_transfer.from << ", to = " << data_transfer.to << ", op = " << data_transfer.op << " for lamp = %d" << data_transfer.target_1<< ", wait for responce = "  << data_transfer.wait_responce << endl;
                            
                            if (PRINT_SERIAL) {
                              snprintf(buff_local, BUFF_MAX, "Et:Rcv%d->%d,op=%d,L%d,RespWait=%d", data_transfer.from, data_transfer.to, data_transfer.op, data_transfer.target_1, (data_transfer.wait_responce ? 1 : 0) );
                              misc_obj.print(buff_local);
                            }
                            
                        //    Serial << "data_transfer.from = " << data_transfer.from << endl;
                        //    Serial << "data_transfer.to = " << data_transfer.to << endl;
                        //    Serial << "data_transfer.op = " << data_transfer.op << endl;
                        //    Serial << "data_transfer size of = " << sizeof(data_transfer) << endl;
                        //    Serial << "data_transfer.target_1= " << data_transfer.target_1<< endl;

                            if ( (data_transfer.op == I2C_OP_LAMP_READ || data_transfer.op == I2C_OP_LAMP_ON || data_transfer.op == I2C_OP_LAMP_OFF || data_transfer.op == I2C_OP_LAMP_SWITCH || data_transfer.op == I2C_OP_LAMP_ON_IF_SECOND_OFF || data_transfer.op == I2C_OP_LAMP_OFF_IF_SECOND_OFF || data_transfer.op == I2C_OP_LAMP_ON_IF_SECOND_ON || data_transfer.op == I2C_OP_LAMP_OFF_IF_SECOND_ON) && data_transfer.target_1>= 0) {

                                  if (data_transfer.target_1 <= 17 && data_transfer.target_1 >=0) {
                                    // Switch one (two) lamp(s))
                                    if (
                                            (data_transfer.target_2 <= 17 && data_transfer.target_2 >=0)
                                              &&
                                            (
                                              data_transfer.op == I2C_OP_LAMP_ON_IF_SECOND_OFF || data_transfer.op == I2C_OP_LAMP_OFF_IF_SECOND_OFF
                                              || data_transfer.op == I2C_OP_LAMP_ON_IF_SECOND_ON || data_transfer.op == I2C_OP_LAMP_OFF_IF_SECOND_ON    
                                            )
                                        ) 
                                    {
                                      // Dependent switch, where target_1 depends on target_2
                                      light_state = light_obj.lightState(data_transfer.target_1, data_transfer.op, data_transfer.target_2);
                                    }
                                    else {
                                      // Switch one lamp...
                                      light_state = light_obj.lightState(data_transfer.target_1, data_transfer.op);
                                      // ...or two lamps, if the target_2 is set also
                                      if (data_transfer.target_2 <= 17 && data_transfer.target_2 >= 0) {
                                        // and prepare a responce for the second lamp (it may be needed or not below)
                                        data_transfer.lights[data_transfer.target_2] = light_obj.lightState(data_transfer.target_2, data_transfer.op);
                                      }
                                    }
                                    // Set and read a real lamp state,
                                    // and prepare a responce (it may be needed or not below)
                                    data_transfer.lights[data_transfer.target_1] = light_state;
                                  }
                                  else if (data_transfer.target_1 > 17) {
                                     // Set/read all lights.
                                     light_obj.lightState_all(data_transfer.op);
                                  } // End of else


                                  // If the request board is awaiting of the responce, send it now.
                                  if(data_transfer.wait_responce) {

                                      // Set sending data
                                      data_transfer.to = data_transfer.from;
                                      data_transfer.from = I2C_MEGA_ADDRESS;
                                      data_transfer.wait_responce = 0;
                                      data_transfer.op = I2C_OP_LAMP_ANSWER;
                                      //data_transfer.target_1= 0;//lamp;
                                      // Set a real lamp state.
                                      // Was set above
                                      //data_transfer.lights[data_transfer.target_1] = light_state;

                                      //Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", data_transfer.target_1= " << lamp << ", data_transfer.op = " << data_transfer.op << endl;

                                      ET.sendData(data_transfer.to);
                                      ////Serial <<  "Sending responce to = " << data_transfer.to << ", data_transfer.target_1= " << data_transfer.target_1<< ", data_transfer.op = " << data_transfer.op << ", state = " << data_transfer.lights[data_transfer.target_1] << endl;
                                      
                                      if (PRINT_SERIAL) {
                                        snprintf(buff_local, BUFF_MAX, "Et:Snd%d->%d,trgt1=%d,op=%d,state=%d,RespWait=%d", data_transfer.from, data_transfer.to, data_transfer.target_1, data_transfer.op, data_transfer.lights[data_transfer.target_1], (data_transfer.wait_responce ? 1 : 0) );
                                        misc_obj.print(buff_local);
                                      }
                            
                                      // Reset sending data
                                      data_transfer.op = 0;
                                      data_transfer.target_1= -1;

                                  } // End of if(data_transfer.wait_responce)

                            } // End of if ( (op == I2C_OP_LAMP_READ || op == I2C_OP_LAMP_ON || op == I2C_OP_LAMP_OFF || op == I2C_OP_LAMP_SWITCH) && lamp >= 0)

                          } // End of if(ET.receiveData()){
                          
                        } // End of void et_receiving_process() {


                        // Dummy ET receive event function. Is not used actually.
                        static void et_on_receive_event(int numBytes) {}
                        
                        


} et_obj;





//---------------------- IR Receiver Sensor -----------------------

/*
 * IRrecord: record and play back IR signals as a minimal 
 * An IR detector/demodulator must be connected to the input IR_RECV_PIN.
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


//int IR_RECV_PIN = 46; //23;//5;//11;
//int BUTTON_PIN = 12;
//int STATUS_PIN = 13;

//IRrecv irrecv(IR_RECV_PIN);

class ir_class {
  
        public:

                
                //IRsend irsend;

                decode_results ir_results;
                
                // http://stackoverflow.com/questions/6542688/unable-to-declare-class-without-initialization
                IRrecv* irrecv;
                
                // IR. Storage for the recorded code
                int ir_codeType; // = -1; // The type of code
                unsigned long ir_codeValue; // The code value if not raw
                unsigned int ir_rawCodes[RAWBUF]; // The durations if raw
                int ir_codeLen; // The length of the code
                int ir_toggle; // = 0; // The RC5/6 toggle state

                //int lastButtonState; // Used to reset reciever. Actually, not used now.

                
                // Codes chain handling
                unsigned long lastCode;
                uint32_t current_millis;
                unsigned long chainLastCheckTime;
                long chainInterval; // = 10000;  // Max Interval between codes to treat it as a chain

                
                
                
                

                void ir_setup(byte rPin) {
                  
                  char buff_local[BUFF_MAX];
                  irrecv = new IRrecv(rPin);
                  ir_codeType = -1;
                  ir_toggle = 0;
                  
                  lastCode = 0;
                  chainInterval = 10000; // 10 sec
                  chainLastCheckTime = 0;

                  
                  irrecv->enableIRIn(); // Start the receiver

                  ////Serial.println("IR started!");
                  
                  if (PRINT_SERIAL) {
                    snprintf(buff_local, BUFF_MAX, "IR started!");
                    misc_obj.print(buff_local);
                  }
                }

                
                void ir_processCodesChain(unsigned long code) {
                  
                  current_millis = millis();

                  if (current_millis - chainLastCheckTime > chainInterval) {

                    chainLastCheckTime = current_millis;
                    lastCode = 0;
                    
                  } // End of if (current_millis - chainLastCheckTime > chainInterval) {

                  
                  switch (code) {
                    
                    case 551505585: // LG Teletext Red
                      
                      break;
                      
                    case 551521905: // LG Teletext Green
                      
                      break;
                      
                    case 551487735: // LG 0
                      
                      break;
                      
                    case 551520375: // LG 1 // 1 = Spalnia neon
                      if (lastCode == 551521905) { // LG Green TELETEXT = On 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(1, 3); // Switch On Spalnia neon
                      }
                      else if (lastCode == 551505585) { // LG Red TELETEXT = Off 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(1, 2); // Switch Off Spalnia neon
                      }
                      break;
                      
                    case 551504055: // LG 2 // 2 - koridor vozle vanny
                      if (lastCode == 551521905) { // LG Green TELETEXT = On 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(2, 3); // Switch On koridor vozle vanny
                      }
                      else if (lastCode == 551505585) { // LG Red TELETEXT = Off 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(2, 2); // Switch Off koridor vozle vanny
                      }
                      break;
                      
                    case 551536695: // LG 3  // 14 - Zal Neon
                      if (lastCode == 551521905) { // LG Green TELETEXT = On 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(14, 3); // Switch On Zal Neon
                      }
                      else if (lastCode == 551505585) { // LG Red TELETEXT = Off 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(14, 2); // Switch Off Zal Neon
                      }
                      break;
                      
                    case 551495895: // LG 4  
                      
                      break;
                      
                    case 551528535: // LG 5  
                      
                      break;
                      
                    case 551512215: // LG 6  // 6 - Koridor podvesy
                      if (lastCode == 551521905) { // LG Green TELETEXT = On 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(6, 3); // Switch On Koridor podvesy
                      }
                      else if (lastCode == 551505585) { // LG Red TELETEXT = Off 
                        // 1:Read 2:Off 3:On 4:Switch
                        light_obj.lightState(6, 2); // Switch Off Koridor podvesy
                      }
                      break;
                      
                    case 551544855: // LG 7  
                      
                      break;
                      
                    case 551491815: // LG 8
                      
                      break;
                      
                    case 551524455: // LG 9  
                      
                      break;
                  }
                  
                  lastCode = code;
                }
                
                
                // Stores the code for later playback
                // Most of this code is just logging
                void ir_processCode(decode_results *ir_results) {
                  
                  char buff_local[BUFF_MAX];
                  ir_codeType = ir_results->decode_type;
                  int count = ir_results->rawlen;
                  
                  if (ir_codeType == UNKNOWN) {
                    //Serial.println("Received unknown code, saving as raw");
                    ir_codeLen = ir_results->rawlen - 1;
                    // To store raw codes:
                    // Drop first value (gap)
                    // Convert from ticks to microseconds
                    // Tweak marks shorter, and spaces longer to cancel out IR receiver distortion
                    for (int i = 1; i <= ir_codeLen; i++) {
                      if (i % 2) {
                        // Mark
                        ir_rawCodes[i - 1] = ir_results->rawbuf[i]*USECPERTICK - MARK_EXCESS;
                        //Serial.print(" m");
                      } 
                      else {
                        // Space
                        ir_rawCodes[i - 1] = ir_results->rawbuf[i]*USECPERTICK + MARK_EXCESS;
                        //Serial.print(" s");
                      }
                      //Serial.print(ir_rawCodes[i - 1], DEC);
                    }
                    //Serial.println("");
                  }
                  else {
                    
                    //Serial.print("ir_results->value = "); Serial.println(ir_results->value);
                    ////Serial.print("ir_codeType = "); Serial.println(ir_codeType);
                    
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "ir_codeType = %d", ir_codeType);
                      misc_obj.print(buff_local);
                    }
                    
                    if (ir_codeType == NEC) {
                      
                      ////Serial.print("Received NEC: ");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "Received NEC:");
                        misc_obj.print(buff_local);
                      }

                      // Don't record a NEC repeat value as that's useless.
                      if (ir_results->value == REPEAT) {
                        ////Serial.println("IR repeat; ignoring.");
                        if (PRINT_SERIAL) {
                          snprintf(buff_local, BUFF_MAX, "IR repeat: ignoring...");
                          misc_obj.print(buff_local);
                        }
                        return;
                      }
                      
                      ////Serial << "Nec code: " << ir_results->value << endl;
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "Nec code: %d", ir_results->value);
                        misc_obj.print(buff_local);
                      }
                      
                      switch (ir_results->value) {
                        
                        case 1632062133:
                          ////Serial << "Key: << - Call #0" << endl;  // Turn Off, if is now Turned ON
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: << - Call #0");
                            misc_obj.print(buff_local);
                          }

                          // Set sending data
                          data_transfer.to = I2C_GBOARD_ADDRESS;
                          data_transfer.op = I2C_OP_CALL_PHONE;
                          data_transfer.target_1 = 0;

                          ////Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", call number #0 = " << ", data_transfer.op = " << data_transfer.op << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sending: data_transfer.to %d, call number #0, op = %d", data_transfer.to, data_transfer.op);
                            misc_obj.print(buff_local);
                          }
                          
                          //send the data
                          //if (et_ifRemoteDeviceReady(I2C_MEGA_ADDRESS)) 
                          {
                            ET.sendData(data_transfer.to);
                            //Serial << "Data to MEGA was sent..." << endl;
                          }
                          //    else {
                          //      Serial << "MEGA is not ready" << endl;
                          //    }

                          ////data_transfer.op = 0;
                          ////data_transfer.target_1= 20;
                          break;
                        
                          
                        case 1632078453:
                          
                          ////Serial << "Key: >> - Call #1" << endl;  // Turn Off, if is now Turned ON
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: >> - Call #1");
                            misc_obj.print(buff_local);
                          }

                          // Set sending data
                          data_transfer.to = I2C_GBOARD_ADDRESS;
                          data_transfer.op = I2C_OP_CALL_PHONE;
                          data_transfer.target_1 = 1;

                          ////Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", call number #1 = " << ", data_transfer.op = " << data_transfer.op << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sending: data_transfer.to %d, call number #1, op = %d", data_transfer.to, data_transfer.op);
                            misc_obj.print(buff_local);
                          }
                          
                          ET.sendData(data_transfer.to);
                          
                          break;
                          
                          
                        case 1632065703:
                          
                          //Serial << "Key: Menu - Call to #2" << endl;  
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: Menu - Call to #2");
                            misc_obj.print(buff_local);
                          }

                          // Set sending data
                          data_transfer.to = I2C_GBOARD_ADDRESS;
                          data_transfer.op = I2C_OP_CALL_PHONE;
                          data_transfer.target_1 = 2;

                          ////Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", call to #2 " << ", data_transfer.op = " << data_transfer.op << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sending: data_transfer.to %d, call number #2, op = %d", data_transfer.to, data_transfer.op);
                            misc_obj.print(buff_local);
                          }
                          
                          ET.sendData(data_transfer.to);
                          
                          break;
                          
                        
                        case 1632104973:
                          
                          ////Serial << "Key: Play (triangle) - Call to #3" << endl; 
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: Play - Call to #3");
                            misc_obj.print(buff_local);
                          }

                          // Set sending data
                          data_transfer.to = I2C_GBOARD_ADDRESS;
                          data_transfer.op = I2C_OP_CALL_PHONE;
                          data_transfer.target_1 = 3;

                          ////Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", call to #3 " << ", data_transfer.op = " << data_transfer.op << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sending: data_transfer.to %d, call number #3, op = %d", data_transfer.to, data_transfer.op);
                            misc_obj.print(buff_local);
                          }
                          
                          ET.sendData(data_transfer.to);
                          
                          break;
                          
                         
                        case 1632053973:
                          
                          ////Serial << "Key: Stop (square) - HangUp" << endl;  
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: Stop - HangUp");
                            misc_obj.print(buff_local);
                          }

                          // Set sending data
                          data_transfer.to = I2C_GBOARD_ADDRESS;
                          data_transfer.op = I2C_OP_CALL_HANGUP;

                          ////Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", call hang up " << ", data_transfer.op = " << data_transfer.op << endl;
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sending: data_transfer.to %d, call hang up, op = %d", data_transfer.to, data_transfer.op);
                            misc_obj.print(buff_local);
                          }
                          
                          ET.sendData(data_transfer.to);
                          
                          break;
                          
                          
                        case 1632050403:
                          
                          ////Serial.println("Key: Power"); // Turn OFF all llights
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key:Power. OFF all lights");
                            misc_obj.print(buff_local);
                          }

                          // 1:Read 2:Off 3:On 4:Switch
                          light_obj.lightState_all(I2C_OP_LAMP_OFF); // Turn off all lights
                          
                          break;
                          
                          
                        case 1632071823:
                          
                          ////Serial.println("Key: OK");  // Switch Detskaya tochki
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: OK. Switch Detskaya tochki");
                            misc_obj.print(buff_local);
                          }

                          // 1:Read 2:Off 3:On 4:Switch
                          light_obj.lightState(9, I2C_OP_LAMP_OFF); // 9 - Detskaya tochki
                          light_obj.lightState(7, I2C_OP_LAMP_OFF); // 9 - Detskaya stol
                          
                          break;
                          
                          
                        case 551505585: // LG Teletext Red
                        case 551521905: // LG Teletext Green
                        case 551487735: // LG 0
                        case 551520375: // LG 1
                        case 551504055: // LG 2
                        case 551536695: // LG 3  
                        case 551495895: // LG 4  
                        case 551528535: // LG 5  
                        case 551512215: // LG 6  
                        case 551544855: // LG 7  
                        case 551491815: // LG 8
                        case 551524455: // LG 9  
  
                          //light_obj.lightState(2, 4); // Switch koridor vozle vanny
                          ////Serial.println("Key: LG AUTO BLOCK");
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key: LG AUTO BLOCK");
                            misc_obj.print(buff_local);
                          }
                          
                          ir_processCodesChain(ir_results->value);
                            
                          break;
                          
                          
                        default:
                          ////Serial.print("Key Other, code: "); Serial.println(ir_results->value);
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Key Other, code: %d", ir_results->value);
                            misc_obj.print(buff_local);
                          }
                          
                          break;
                      }
                      
                      //  Print a command on LCD
                      if (data_transfer.op == I2C_OP_CALL_PHONE) {
                        //char lcd_string[BUFF_MAX];
                        ////snprintf(lcd_string, BUFF_MAX, "Call%s", phones[data_transfer.target_1]);
                        ////lcd_obj.lcd_print_on_1st(lcd_string);
                        if (PRINT_SERIAL) {
                          snprintf(buff_local, BUFF_MAX, "Call%s", phones[data_transfer.target_1]);
                          misc_obj.print(buff_local);
                        }
                      }
                      else if (data_transfer.op == I2C_OP_CALL_HANGUP) {
                       ////lcd_obj.lcd_print_on_1st("Call HangUp..."); 
                        if (PRINT_SERIAL) {
                          snprintf(buff_local, BUFF_MAX, "IR Call HangUp...");
                          misc_obj.print(buff_local);
                        }
                      }
                      
                      // Reset the data.
                      data_transfer.op = 0;
                      data_transfer.target_1= 20;
                      
                    } 
                    else if (ir_codeType == SONY) {
                      ////Serial.print("Received SONY: ");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "IR Received SONY:");
                        misc_obj.print(buff_local);
                      }
                    } 
                    else if (ir_codeType == RC5) {
                      ////Serial.print("Received RC5: ");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "IR Received RC5:");
                        misc_obj.print(buff_local);
                      }
                    } 
                    else if (ir_codeType == RC6) {
                      ////Serial.print("Received RC6: ");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "IR Received RC6:");
                        misc_obj.print(buff_local);
                      }
                    } 
                    else {
                      ////Serial.print("Unexpected ir_codeType ");
                      ////Serial.print(ir_codeType, DEC);
                      ////Serial.println("");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "Unexpected ir_codeType %d", ir_codeType);
                        misc_obj.print(buff_local);
                      }
                    }
                    //Serial.println(ir_results->value, HEX);
                    ////Serial.println(ir_results->value);
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "IR code: %d", ir_results->value);
                      misc_obj.print(buff_local);
                    }
                    
                    ir_codeValue = ir_results->value;
                    ir_codeLen = ir_results->bits;
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
                  if (irrecv->decode(&ir_results)) {
                    
                    //digitalWrite(STATUS_PIN, HIGH);
                    ir_processCode(&ir_results);

                    //sendCode(0);
                    irrecv->enableIRIn(); // Re-enable receiver
                    irrecv->resume(); // resume receiver

                    //digitalWrite(STATUS_PIN, LOW);
                  }
                  //lastButtonState = buttonState;
                }



} ir_obj;





#include "EasyVR.h"

#define EVR_STARTED 1
#define EVR_FINISHED 2
#define EVR_IDLE 0

EasyVR easyvr(port);
 
// Номер пина для светодиода, индицирующего ожидание команды
//const int LED_WAIT = 13;
 
//int easyVR_recognition_status = 0;

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
 



class easyVR_class {
  
      public:
                  int easyVR_recognition_status;
                  int easyVR_started;
                  
                  
                  unsigned long millis_current, millis_step_2_start;
                  int millis_timeout; // 10sec 
                  int millis_step;


                  //void easyVR_setup() {
                  void easyVR_setup() {
                    
                      char buff_local[BUFF_MAX];
                      easyVR_started = 4999;
                      easyVR_recognition_status = 0;
                      
                      millis_timeout = 10000; // 10sec 
                      millis_step = 1;


                    
                      port.begin(9600);
                      // РћР¶РёРґР°РЅРёРµ СЃРѕРµРґРёРЅРµРЅРёСЏ СЃ РїР»Р°С‚РѕР№
                      //
                      //Serial.print("EasyVR is being tested...");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "EasyVR is being tested...");
                        misc_obj.print(buff_local);
                      }
                    
                      while(!easyvr.detect()) {
                        if (easyVR_started < 0) {
                          ////Serial.println("EasyVR has not been started because of some problems.");
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "EasyVR has not been started because of some problems.");
                            misc_obj.print(buff_local);
                          }
                          
                          return;
                        }
                        easyVR_started -= 1000;
                        Serial.print(".");
                        delay(1000);
                      }
                      
                      ////Serial.println("EasyVR started!");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "EasyVR started!");
                        misc_obj.print(buff_local);
                      }
                      
                      // РЈСЃС‚Р°РЅРѕРІРєР° С‚Р°Р№РјР°СѓС‚Р° РЅР° СЂР°СЃРїРѕР·РЅР°РІР°РЅРёРµ
                      easyvr.setTimeout(5);

                      // Р’С‹Р±РѕСЂ СЏР·С‹РєР° (РђРЅРіР»РёР№СЃРєРёР№)
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
                    
                      char buff_local[BUFF_MAX];
                      
                      if (easyVR_started < 0) {
                        // Skip processing, because EasyVR has not been started.
                        return;
                      }

                      int8_t idx;

                      // Р—Р°Р¶РёРіР°РµРј СЃРІРµС‚РѕРґРёРѕРґ РґР»СЏ РёРЅРґРёРєР°С†РёРё СЂРµР¶РёРјР° РѕР¶РёРґР°РЅРёСЏ РєРѕРјР°РЅРґС‹
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
                            //Serial.println("");
                            ////Serial.println("EVR: Timer reset to step 1");
                            if (PRINT_SERIAL) {  
                              snprintf(buff_local, BUFF_MAX, "EVR: Timer reset to step 1");
                              misc_obj.print(buff_local);
                            }
                            
                            easyVR_recognition_status = EVR_IDLE;
                          }

                      }


                      if (easyVR_recognition_status == EVR_IDLE) {

                        // Р—Р°РїСѓСЃРєР°РµРј РїСЂРѕС†РµРґСѓСЂСѓ СЂР°СЃРїРѕР·РЅР°РІР°РЅРёСЏ
                        //easyvr.recognizeCommand(GROUP_MAIN);
                        easyvr.recognizeWord(GROUP_MAIN); // GROUP_MAIN = 5; //custom grammar

                        easyVR_recognition_status = EVR_STARTED;
                        ////Serial.println("Waiting for EasyVR recognition...");
                      }
                      else if (easyVR_recognition_status == EVR_STARTED) {

                        if (easyvr.hasFinished()) {

                          easyVR_recognition_status = EVR_FINISHED;
                          ////Serial.println("EaseVR Got the word from the Mic...!"); 
                          // Р•СЃР»Рё СѓР±СЂР°С‚СЊ СЌС‚Сѓ Р·Р°РґРµСЂР¶РєСѓ, С‚Рѕ РјС‹ РїРµСЂРµСЃС‚Р°РЅРµРј РІРёРґРµС‚СЊ, РєРѕРіРґР° Р·Р°РєР°РЅС‡РёРІР°РµС‚СЃСЏ
                          // РѕРґРёРЅ РїРµСЂРёРѕРґ РѕР¶РёРґР°РЅРёСЏ РєРѕРјР°РЅРґС‹ Рё РЅР°С‡РёРЅР°РµС‚СЃСЏ РІС‚РѕСЂРѕР№. Р•СЃР»Рё РїСЂРѕРёР·РЅРµСЃРµРЅРёРµ РєРѕРјР°РЅРґС‹
                          // РїСЂРёРґС‘С‚СЃСЏ РЅР° РіСЂР°РЅРёС†Сѓ РґРІСѓС… РїРµСЂРёРѕРґРѕРІ, С‚Рѕ СЂР°СЃРїРѕР·РЅР°РІР°РЅРёРµ Р·Р°РєРѕРЅС‡РёС‚СЃСЏ РЅРµСѓРґР°С‡РµР№.
                          ////delay(500);

                          // РџРѕР»СѓС‡Р°РµРј РєРѕРґ СЂР°СЃРїРѕР·РЅР°РЅРЅРѕР№ РєРѕРјР°РЅРґС‹
                          //idx = easyvr.getCommand();
                          idx = easyvr.getWord();


                          ////Serial.print("Got word, idx = "); 
                          ////Serial.print(idx);
                          ////Serial.print(' ');
                          ////Serial.println(easyVR_getWordTitle(idx));
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Got word, idx = %d, %s", idx, easyVR_getWordTitle(idx));
                            misc_obj.print(buff_local);
                          }

                          if(idx >= 0)
                          {

                             //Serial.println(idx); 
                             easyvr.setPinOutput(EasyVR::IO1, HIGH);
                             // Р’С‹РїРѕР»РЅРёРј РґРµР№СЃС‚РІРёРµ РїРѕ РєРѕРјР°РЅРґРµ
                             easyVR_action(GROUP_MAIN, idx);
                          }
                          else
                          {
                              // РћС€РёР±РєР° СЂР°СЃРїРѕР·РЅР°РІР°РЅРёСЏ РёР»Рё С‚Р°Р№РјР°СѓС‚
                          }
                          easyVR_recognition_status = EVR_IDLE;
                          easyvr.setPinOutput(EasyVR::IO1, LOW);
                        }
                      }


                      /*
                      //Serial.println("Wait...");
                      // РћР¶РёРґР°РµРј РѕРєРѕРЅС‡Р°РЅРёРµ РїСЂРѕС†РµСЃСЃР°
                      while(!easyvr.hasFinished());

                      Serial.println("Got it!"); 
                      // РўСѓС€РёРј СЃРІРµС‚РѕРґРёРѕРґ - Р»РёР±Рѕ С‚Р°Р№РјР°СѓС‚, Р»РёР±Рѕ РєРѕРјР°РЅРґР° СЂР°СЃРїРѕР·РЅР°РЅР°
                      //digitalWrite(LED_WAIT, LOW);

                      // Р•СЃР»Рё СѓР±СЂР°С‚СЊ СЌС‚Сѓ Р·Р°РґРµСЂР¶РєСѓ, С‚Рѕ РјС‹ РїРµСЂРµСЃС‚Р°РЅРµРј РІРёРґРµС‚СЊ, РєРѕРіРґР° Р·Р°РєР°РЅС‡РёРІР°РµС‚СЃСЏ
                      // РѕРґРёРЅ РїРµСЂРёРѕРґ РѕР¶РёРґР°РЅРёСЏ РєРѕРјР°РЅРґС‹ Рё РЅР°С‡РёРЅР°РµС‚СЃСЏ РІС‚РѕСЂРѕР№. Р•СЃР»Рё РїСЂРѕРёР·РЅРµСЃРµРЅРёРµ РєРѕРјР°РЅРґС‹
                      // РїСЂРёРґС‘С‚СЃСЏ РЅР° РіСЂР°РЅРёС†Сѓ РґРІСѓС… РїРµСЂРёРѕРґРѕРІ, С‚Рѕ СЂР°СЃРїРѕР·РЅР°РІР°РЅРёРµ Р·Р°РєРѕРЅС‡РёС‚СЃСЏ РЅРµСѓРґР°С‡РµР№.
                      delay(500);

                      // РџРѕР»СѓС‡Р°РµРј РєРѕРґ СЂР°СЃРїРѕР·РЅР°РЅРЅРѕР№ РєРѕРјР°РЅРґС‹
                      idx = easyvr.getCommand();


                      if(idx >= 0)
                      {
                         Serial.println(idx); 
                          // Р’С‹РїРѕР»РЅРёРј РґРµР№СЃС‚РІРёРµ РїРѕ РєРѕРјР°РЅРґРµ
                          easyVR_action(GROUP_MAIN, idx);
                      }
                      else
                      {
                          // РћС€РёР±РєР° СЂР°СЃРїРѕР·РЅР°РІР°РЅРёСЏ РёР»Рё С‚Р°Р№РјР°СѓС‚
                      }

                      */
                  }



                  // Р”Р°РЅРЅР°СЏ С„СѓРЅРєС†РёСЏ РІС‹Р·С‹РІР°РµС‚СЃСЏ РІ СЃР»СѓС‡Р°Рµ СѓСЃРїРµС€РЅРѕРіРѕ
                  // СЂР°СЃРїРѕР·РЅР°РІР°РЅРёСЏ С„СЂР°Р·С‹
                  void easyVR_action(int8_t group, int8_t idx)
                  {

                      char buff_local[BUFF_MAX];

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


                      ////Serial.print("millis_current = ");
                      ////Serial.println(millis_current);

                      ////Serial.print("millis_step_2_start = ");
                      ////Serial.println(millis_step_2_start);

                      //delta = millis_current - millis_step_2_start
                      ////Serial.print("delta = ");
                      ////Serial.println(millis_current - millis_step_2_start);
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "millis_current = %d, millis_step_2_start = %d, delta = %d", millis_current, millis_step_2_start, millis_current - millis_step_2_start);
                        misc_obj.print(buff_local);
                      }

                  //    // millis_current < millis_step_2_start controls overflows of millis_current (set to 0) that occur after it become  232-1, that is 4,294,967,295   
                  //    // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
                  //    if (millis_current > (millis_step_2_start + millis_timeout) || millis_current < millis_step_2_start) { 
                  //      millis_step_2_start = millis_current;
                  //      Serial.println("");
                  //      Serial.println("Timer reset");
                  //    }
                  //    
                  //    return;


                      if (millis_step == 1) {

                        if (idx == 0) {
                          // Right word! NExt step.
                          easyvr.playSound(2, 12); // SND_BEEP = 0

                          millis_step = 2;    
                          millis_step_2_start = millis_current;
                        }

                      }
                      else if (millis_step == 2) {


                  //        //if (millis_current > millis_step_2_start + millis_timeout) {
                  //          
                  //        // millis_current < millis_step_2_start controls overflows of millis_current (set to 0) that occur after it become  232-1, that is 4,294,967,295   
                  //        // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
                  //        if (millis_current > (millis_step_2_start + millis_timeout) || millis_current < millis_step_2_start) { 
                  //          
                  //          // Time is out, reset to the first step.
                  //          easyvr.playPhoneTone(10, 1);
                  //          easyvr.playPhoneTone(10, 1);
                  //          easyvr.playPhoneTone(10, 1);  
                  //          easyvr.playPhoneTone(10, 1);  
                  //          easyvr.playPhoneTone(10, 1);  
                  //          easyvr.playPhoneTone(10, 1);  
                  //          easyvr.playPhoneTone(10, 1);  
                  //          easyvr.playPhoneTone(10, 1);  
                  //          
                  //          millis_step = 1;
                  //          Serial.println("");
                  //          Serial.println("Timer reset");
                  //        }
                  //        else 

                          if (idx > 0) {
                            // We got a right word

                            easyvr.playPhoneTone(10, 10);

                            // We have processed the command. 
                            // Now reset, and wait for next Key word with next command
                            millis_step = 1;
                            // but in case of a wrong word, the step should have remain 2...and be reset later on timeout...

                            switch (idx) {
                              case 1: // Santa Claus wake up
                                  ////Serial.println(easyVR_getWordTitle(idx));
                                  if (PRINT_SERIAL) {
                                    snprintf(buff_local, BUFF_MAX, "EVR: %s", easyVR_getWordTitle(idx));
                                    misc_obj.print(buff_local);
                                  }
                                  
                                  //lightSwitch(1);

                                  // 1:Read 2:Off 3:On 4:Switch
                                  light_obj.lightState(0, 3);

                                  easyvr.playPhoneTone(10, 1);
                                  easyvr.playPhoneTone(10, 1);
                                  break;

                              case 2: // Main Hall light up
                                  ////Serial.println(easyVR_getWordTitle(idx));
                                  if (PRINT_SERIAL) {
                                    snprintf(buff_local, BUFF_MAX, "EVR: %s", easyVR_getWordTitle(idx));
                                    misc_obj.print(buff_local);
                                  }
                                  
                                  //lightSwitch(1);

                                  // 1:Read 2:Off 3:On 4:Switch
                                  light_obj.lightState(0, 3);

                                  easyvr.playPhoneTone(10, 1);
                                  easyvr.playPhoneTone(10, 1);
                                  break;
                              case 3: // Kitchen light switch
                                  ////Serial.println(easyVR_getWordTitle(idx));
                                  if (PRINT_SERIAL) {
                                    snprintf(buff_local, BUFF_MAX, "EVR: %s", easyVR_getWordTitle(idx));
                                    misc_obj.print(buff_local);
                                  }
                                  
                                  //lightSwitch(2);

                                  // 1:Read 2:Off 3:On 4:Switch
                                  light_obj.lightState(0, 4);

                                  easyvr.playPhoneTone(5, 1);
                                  easyvr.playPhoneTone(5, 1);
                                  break;

                              case 4: // Turn off main hall
                                  ////Serial.println(easyVR_getWordTitle(idx));
                                  if (PRINT_SERIAL) {
                                    snprintf(buff_local, BUFF_MAX, "EVR: %s", easyVR_getWordTitle(idx));
                                    misc_obj.print(buff_local);
                                  }
                                  
                                  //lightSwitch(0);

                                  // 1:Read 2:Off 3:On 4:Switch
                                  light_obj.lightState(0, 2);

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


                  //    // РђРєС‚РёРІРёСЂСѓРµРј СЃРµСЂРІСѓ, СЃРѕРѕС‚РІРµС‚СЃС‚РІСѓСЋС‰СѓСЋ СЂР°СЃРїРѕР·РЅР°РЅРЅРѕРјСѓ РєРѕРґСѓ
                  //    switch (group)
                  //    {
                  //      case GROUP_MAIN:
                  //        switch (idx)
                  //        {
                  //        case G2_APPLE: // 0
                  //            Serial.println("Apple!");
                  //            lightSwitch(1);
                  //            //easyvr.playSound(2, EasyVR::VOL_FULL); // SND_BEEP = 0
                  //            easyvr.playSound(2, 3); // SND_BEEP = 0
                  //            //easyvr.playPhoneTone(1, 3);
                  //            break;
                  //        case G2_ORANGE: // 4
                  //            Serial.println("Orange");
                  //            lightSwitch(2);
                  //            easyvr.playPhoneTone(10, 1);
                  //            easyvr.playPhoneTone(10, 1);
                  //            break;
                  //        case G2_NUTS: // 3
                  //            Serial.println("Nuts");
                  //            lightSwitch(0);
                  //            easyvr.playPhoneTone(5, 1);
                  //            break;
                  //        }
                  //        break;
                  //    }

                  }

} easyVR_obj;









// UltraSonic sensor class
class ultraS_class {
  
    public:
                  //raw duration in milliseconds, us_cm is the
                  //converted amount into a distance
                  //long duration;
                  byte us_cm, us_prev_cm;
                  unsigned long millis_ultra_current, millis_ultra_start, millis_ultra_triggered;
                  
                  // TRIG pin which triggers ultrasonic sound
                  byte us_trigger_pin;
                  // ECHO pin which delivers time to receive echo using pulseIn()
                  byte us_echo_pin; 
                  //range in us_cm which is considered safe to enter, anything coming within less than 5 us_cm triggers red LED
                  byte us_trigger_distance;
                  byte testLedPin;

                  // UltraSonic sensor setup and process
                  //void ultraS_setup() {
                  void ultraS_setup(byte trigger_pin = 41, byte echo_pin = 42, byte trigger_distance = 110, byte testLed = 13) {
                    
                    char buff_local[BUFF_MAX];
                    us_trigger_pin = trigger_pin;
                    us_echo_pin = echo_pin; 
                    us_trigger_distance = trigger_distance;
                    
                    testLedPin = testLed;
                    
                    us_prev_cm = 0;
                    
                    //initializing the Ultrasonic pin states
                    pinMode(us_trigger_pin, OUTPUT);
                    pinMode(us_echo_pin, INPUT);
                    // Test led
                    pinMode(testLedPin, OUTPUT);

                    ////Serial.println("UltraSonic started...");
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "UltraSonic started...");
                      misc_obj.print(buff_local);
                    }
                  }


                  void ultraS_getDistance() {

                    //sending the signal, starting with LOW for a clean signal
                    digitalWrite(us_trigger_pin, LOW);
                    delayMicroseconds(2);
                    digitalWrite(us_trigger_pin, HIGH);
                    delayMicroseconds(5);
                    digitalWrite(us_trigger_pin, LOW);

                    // receiving the duration in microseconds for the sound to bounce off the object infront
                    // and convert the time into a distance

                    //duration = pulseIn(us_echoInPin, HIGH);

                    // The speed of sound is 340 m/s or 29 microseconds per centimeter.
                    // The ping travels out and back, so to find the distance of the
                    // object we take half of the distance travelled.
                    us_cm = pulseIn(us_echo_pin, HIGH) / 29 / 2;

                  }


                  void ultraS_doTriggerAction(boolean on) {
                    char buff_local[BUFF_MAX];
                    if (on) {
                      // Turn on a light 
                      ////Serial.println("Sonic Trigger is ON");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "Sonic Trigger is ON");
                        misc_obj.print(buff_local);
                      }
                      
                      digitalWrite(testLedPin, HIGH);
                      // 1:Read 2:Off 3:On 4:Switch
                      light_obj.lightState(12, I2C_OP_LAMP_ON); // 12 - Зал, люстра
                    }
                    else {
                      // Turn off a light
                      ////Serial.println("Sonic Trigger is OFF");
                      if (PRINT_SERIAL) {
                        snprintf(buff_local, BUFF_MAX, "Sonic Trigger is OFF");
                        misc_obj.print(buff_local);
                      }
                      
                      digitalWrite(testLedPin, LOW);
                      // 1:Read 2:Off 3:On 4:Switch
                      light_obj.lightState(12, I2C_OP_LAMP_OFF); // 12 - Зал, люстра
                    }

                  }

                  void ultraS_process() {

                    char buff_local[BUFF_MAX];
                    boolean us_significant_change = false;

                    millis_ultra_current = millis();
                    ultraS_getDistance();

                    // If ultraS is triggered, so we are waiting for the triggering timeout to turn off the trigger.
                    if (millis_ultra_triggered){
                      if (millis_ultra_current - millis_ultra_triggered > 10000) {
                        // If the time of triggering state is up, we turn the trigger off.
                        ////Serial.print("Sonic after turn off, "); Serial.println(us_cm);
                        if (PRINT_SERIAL) {
                          snprintf(buff_local, BUFF_MAX, "Sonic after turn off, %d", us_cm);
                          misc_obj.print(buff_local);
                        }
                        
                        if (us_cm > us_trigger_distance) 
                        {
                          ultraS_doTriggerAction(false);
                          millis_ultra_triggered = false;
                        }
                        else {
                          // Set a new triggered time, a bit shorter than the main trigger time
                          ////Serial.println("Sonic trigger is prolongated");
                          if (PRINT_SERIAL) {
                            snprintf(buff_local, BUFF_MAX, "Sonic trigger is prolongated");
                            misc_obj.print(buff_local);
                          }
                          
                          millis_ultra_triggered = millis_ultra_current;
                        }
                      }
                      return;  
                    }



                    //if (us_cm > us_prev_cm + 5 || us_cm < us_prev_cm - 5) 
                    {
                      if (us_cm > us_prev_cm + 50 || us_cm < us_prev_cm - 50) {
                        //Serial.print(us_cm); Serial.println("cm - new significant change...");
                      }
                      us_prev_cm = us_cm; 
                      us_significant_change = true;
                    }
                  //  else {
                  //    us_cm = us_prev_cm;    
                  //  }

                    if (us_cm <= us_trigger_distance) {
                      if (us_significant_change) {
                        //Serial.print("Sonic <= Trigger distance, "); Serial.println(us_cm);
                      }

                      if (!millis_ultra_start) {
                        // Just has entered to the Trigger distance zone.
                        //Serial.println("Timer started.");
                        millis_ultra_start = millis_ultra_current;
                      }
                      else {
                        if ( (millis_ultra_current - millis_ultra_start > 50) && (millis_ultra_current - millis_ultra_start < 80) ) {
                          //Serial.println("Timer before trig started.");
                        }
                        //Serial.print("Time left to triggering: "); Serial.println(200 - (millis_ultra_current - millis_ultra_start));
                        if (millis_ultra_current - millis_ultra_start > 150) {
                          // Needed amount of time in the triggering zone - now we do the triggering
                          millis_ultra_triggered = millis_ultra_current;
                          millis_ultra_start = false;
                          ultraS_doTriggerAction(true);
                        }
                      }
                    }
                    else {
                      //digitalWrite(13, LOW);
                      if (millis_ultra_start && (millis_ultra_current - millis_ultra_start > 20) ) {
                        //Serial.println("Timer before trig stopped.");
                      }
                      millis_ultra_start = false;
                    }

                  } // End of void ultraS_process() {


  
  
} ultraS_obj;















volatile boolean rc_click = false;
volatile byte rc_btns[4] = {0,0,0,0}; // 0 - null, 1 - short, 2 - long


void rc_interrupt() {
  
  char buff_local[BUFF_MAX];

  ////Serial.println("-> Interrupt RISING");
  if (PRINT_SERIAL) {
    snprintf(buff_local, BUFF_MAX, "RC-> Interrupt RISING");
    misc_obj.print(buff_local);
  }

  if (digitalRead(29)) rc_btns[0] = 1;
    if (digitalRead(30)) rc_btns[1] = 1;
      if (digitalRead(31)) rc_btns[2] = 1;
        if (digitalRead(32)) rc_btns[3] = 1; 

  rc_click = true;      
}








// Works, but deprecatedin favor of struct lightOff_afterTimeout_struct elements array.
/*
//namespace{ //namespace to deal with .ino preprocessor bug
class lightOff_afterTimeout_class {
  
  public: 
    
    byte lamp_num, lamp_num_should_be_on, lamp_num_should_be_off;
    long checkPeriod, timeOn, maxTimeOn;
    uint32_t lastCheckTime;
    boolean state, on_lamp_state, off_lamp_state;
    
    lightOff_afterTimeout_class() {
      
    }
    
    lightOff_afterTimeout_class(byte lamp, long maxTime_min, long checkPeriod_min, int lamp_depend_on = 100, int lamp_depend_off = 100) {
      lightOff_setup(lamp, maxTime_min, checkPeriod_min, lamp_depend_on, lamp_depend_off);
    }
    
    void lightOff_setup(byte lamp, long maxTime_min, long checkPeriod_min, int lamp_depend_on = 100, int lamp_depend_off = 100) {
      lamp_num = lamp;
      lamp_num_should_be_on = lamp_depend_on;
      lamp_num_should_be_off = lamp_depend_off;
      lastCheckTime = 0;
      timeOn = 0;
      maxTimeOn = maxTime_min*60*1000;
      checkPeriod = checkPeriod_min*60*1000; // 1 mins
      state = light_obj.lightState(lamp_num, I2C_OP_LAMP_READ);
      //if (lamp_depend_off >= -1) {
      //  second_lamp_state = light_obj.lightState(lamp_num_should_be_on, I2C_OP_LAMP_READ);
      //}
      
      //Serial.print("lamp_num_should_be_on = "); Serial.println(lamp_num_should_be_on);
      //Serial.print("lamp_num_should_be_off = "); Serial.println(lamp_num_should_be_off);
      Serial.print("TurnOff init for lamp "); Serial.print(lamp_num); Serial.print(". Init lamp state = ");
      if (state) {
        Serial.println("On...");
      }
      else {
        Serial.println("Off...");
      }
      
    }
    
    void lightOff_process() {
      
      if (!lamp_num || lamp_num > lights_number - 1) {
        return;
      }

      boolean skip_turning_off = false;
      uint32_t current_millis = millis();
      
      if (current_millis - lastCheckTime > checkPeriod) {
        
        Serial.print("Check lamp "); Serial.println(lamp_num);  
        
        lastCheckTime = current_millis;
        
        state = light_obj.lightState(lamp_num, I2C_OP_LAMP_READ);
        
        if (!state) {
          Serial.println("Turned off, reset timer...");  
          timeOn = 0;
        }
        else if(lastCheckTime) {
          timeOn = timeOn + checkPeriod;
          Serial.print("Time on = "); Serial.print(timeOn); Serial.print(". Max on = "); Serial.println(maxTimeOn);
        }
        
        if (timeOn >= maxTimeOn) {
          
          if (lamp_num_should_be_on != 100 || lamp_num_should_be_off != 100) {
            
            if (lamp_num_should_be_on != 100) {
              on_lamp_state = light_obj.lightState(lamp_num_should_be_on, I2C_OP_LAMP_READ);
              if (on_lamp_state) {
                Serial.println("Time is up. Turn off! Because Second lamp is on."); 
                //state = light_obj.lightState(lamp_num, I2C_OP_LAMP_OFF);
              }
              else {
                Serial.println("Time is up, but leave ON, because Second lamp is off."); 
                skip_turning_off = true;
              }
            }
            
            if (lamp_num_should_be_off != 100) {
              off_lamp_state = light_obj.lightState(lamp_num_should_be_off, I2C_OP_LAMP_READ);
              if (!off_lamp_state) {
                Serial.println("Time is up. Turn off! Because Third lamp is off."); 
              }
              else {
                Serial.println("Time is up, but leave ON, because Third lamp is on."); 
                skip_turning_off = true;
              }
            }
            
            if (skip_turning_off == false) {
              state = light_obj.lightState(lamp_num, I2C_OP_LAMP_OFF);
            }
            
          }
          else {
            Serial.println("Time is up. Turn off!"); 
            state = light_obj.lightState(lamp_num, I2C_OP_LAMP_OFF);
          }
          Serial.println("Reset timeOn timer...");
          timeOn = 0;
        }
      }
    }
};//lightOff_object;
//} // End of //namespace{ //namespace to deal with .ino preprocessor bug

*/


/**
 * Main struct that used (for this struct elements array) for handling lights off.
 * Handled directly by static functions of a special class lightOff_process_functions_class
 */
typedef struct{
    // Defined on init a struct object
    byte lamp_num;
    uint32_t maxTimeOn;
    uint32_t checkPeriod;
    byte lamp_num_should_be_on;
    byte lamp_num_should_be_off;
    // Defined later with the setup function lightOff_process_functions_class::lightOff_data_setup()
    uint32_t timeOn;
    uint32_t lastCheckTime;
}lightOff_afterTimeout_struct;



// Works, but deprecatedin favor of struct lightOff_afterTimeout_struct elements array.
/*
// http://forum.arduino.cc/index.php?topic=44393.15

byte const lightOff_objects_num = 2;

// Works.
lightOff_afterTimeout_class *lightOff_objects[lightOff_objects_num];

// "New" Doesn't work, but maybe will work in newer Arduino versions

// lightOff_afterTimeout_class *lightOff_objects = new lightOff_afterTimeout_class[2]{{14, 2, 1, 100, 12},{2, 2, 1, 100, 100}};

//, because...
// http://arduino.stackexchange.com/questions/12821/malloc-with-objects-in-arduino-libraries
// http://forum.arduino.cc/index.php?topic=44393.0
// http://stackoverflow.com/questions/21464214/arduino-c-class-with-arrays
// http://www.cppgameprogramming.com/cgi/nav.cgi?page=arrayclasses

// http://stackoverflow.com/questions/8579694/how-do-i-declare-an-array-with-a-custom-class
// http://www.java2s.com/Tutorial/Cpp/0180__Class/Createanarrayofobjects.htm

*/





// Will be calculated automatically.

byte lightOff_struct_objects_num = 0;

lightOff_afterTimeout_struct lightOff_data[] = {  //{lamp_num, maxTimeOn (min), checkPeriod (min), lamp_num_should_be_on (num of lamp that should be on to turn off the target lamp), lamp_num_should_be_off (num of lamp that should be off to turn off the target lamp)}
  
                                                // Test
//                                                {14, 2, 1, 100, 12}, // 14 - zal neon, 12 zal lustra (should be off)
//                                                {2, 2, 1, 100, 100}, // 2- koridor k spalne
//                                                {13, 2, 1, 15, 100}, // 13 - kitchen podsvetka, 15 - Кухня, точки (should be on))
                                                // Working
                                                {7, 38, 12, 9, 100}, // 7 - Детская, над столом, 9 Детская, точки (should be on))
                                                {17, 8, 9, 100, 10}, // 17 - Ванная вентилятор, 10 - Ванная свет (should be off)
                                                {13, 12, 11, 15, 100}, // 13 - kitchen podsvetka, 15 - Кухня, точки (should be on))
                                                
                                                {6, 11, 12, 100, 100}, // 13 - Коридор, подвесы
                                                {5, 11, 12, 100, 100}, // 13 - Коридор, точки
                                              };


/**
 * Main struct that used (for this struct elements array) for handling lights off.
 * Special class with functions for directly handling of a struct lightOff_afterTimeout_struct elements array
 * 
 * and deprecated class lightOff_afterTimeout_class objects array.
 */
class lightOff_process_functions_class {
  
  public:
    
          /**
           * Handling of array of Class lightOff_afterTimeout_class objects, that is defined as
           * lightOff_afterTimeout_class *lightOff_objects[lightOff_objects_num];
           * Deprecated in favor of using of struct lightOff_afterTimeout_struct array elements
           */

          /* 
          // * Setup for arrays of class lightOff_afterTimeout_class objects.
          // * Should be called directly from here, without a class object
          // * like lightOff_process_functions_class::lightOff_objects_setup()
          static void lightOff_objects_setup() {
  
            // Doesn't work (eventually)
            //lightOff_objects_num = sizeof(lightOff_data) / sizeof(lightOff_data[0]);
            // *lightOff_objects = (lightOff_afterTimeout_class*) malloc(sizeof(lightOff_afterTimeout_class)*lightOff_objects_num);

            for (uint16_t i = 0; i < lightOff_objects_num; i++) {
              lightOff_objects[i] = (lightOff_afterTimeout_class *) malloc(sizeof(lightOff_afterTimeout_class));
              lightOff_objects[i]->lightOff_setup(lightOff_data[i].lamp_num, lightOff_data[i].maxTimeOn, lightOff_data[i].checkPeriod, lightOff_data[i].lamp_num_should_be_on,  lightOff_data[i].lamp_num_should_be_off); 
            }
          }

          // * Process for arrays of class lightOff_afterTimeout_class objects. 
          // * Should be called directly from here, without a class object
          // * like lightOff_process_functions_class::lightOff_objects_process()
          static void lightOff_objects_process() {
            for (uint16_t i = 0; i < lightOff_objects_num; i++) {
              lightOff_objects[i]->lightOff_process();
            }
          }
          
          */
          
                    
          /**
           * Struct lightOff_afterTimeout_struct array elements
           * Used instead of deprecated (by me) Class lightOff_afterTimeout_class objects array.
           */

          //* Setup for arrays of struct lightOff_afterTimeout_struct elements.
          //* Should be called directly from here, without a class object
          //* like lightOff_process_functions_class::lightOff_data_setup()
          static void lightOff_data_setup() {

            char buff_local[BUFF_MAX];
            boolean state;

            uint32_t current_millis = millis();
            
            // Count number of lightOff elements in a struct/class
            // http://blogs.msdn.com/b/the1/archive/2004/05/07/128242.aspx
            // http://stackoverflow.com/questions/4839626/element-count-of-an-array-in-c
            lightOff_struct_objects_num = sizeof(lightOff_data) / sizeof(lightOff_data[0]);
            
            ////Serial.print("lightOff_objects_num = ");Serial.println(lightOff_struct_objects_num);  
            if (PRINT_SERIAL) {
              snprintf(buff_local, BUFF_MAX, "L_off:objects=%d", lightOff_struct_objects_num);
              misc_obj.print(buff_local);
            }
            
            for (uint16_t i = 0; i < lightOff_struct_objects_num; i++) {
              lightOff_data[i].maxTimeOn = lightOff_data[i].maxTimeOn*60*1000; 
              lightOff_data[i].checkPeriod = lightOff_data[i].checkPeriod*60*1000; 
              lightOff_data[i].lastCheckTime = current_millis;
              lightOff_data[i].timeOn = 0;
              state = light_obj.lightState(lightOff_data[i].lamp_num, I2C_OP_LAMP_READ);
              
              if (PRINT_SERIAL) {
                snprintf(buff_local, BUFF_MAX, "L_off:init L%d=%s", lightOff_data[i].lamp_num, (state ? "On" : "Off"));
                misc_obj.print(buff_local);
              }
            }
          }


          //* Process for arrays of struct lightOff_afterTimeout_struct elements.
          //* Should be called directly from here, without a class object
          //* like lightOff_process_functions_class::lightOff_data_setup()
          static void lightOff_data_process() {

            char buff_local[BUFF_MAX];
            boolean state, on_lamp_state, off_lamp_state;
            boolean skip_turning_off;
            uint32_t current_millis;
            
            current_millis = millis();

            for (uint16_t i = 0; i < lightOff_struct_objects_num; i++) {

                skip_turning_off = false;

                if (!lightOff_data[i].lamp_num || lightOff_data[i].lamp_num > lights_number - 1) {
                  return;
                }

                // If time is to check the lamp...
                if ( (current_millis - lightOff_data[i].lastCheckTime) > lightOff_data[i].checkPeriod) {

                            lightOff_data[i].timeOn = lightOff_data[i].timeOn + (current_millis - lightOff_data[i].lastCheckTime);
                            lightOff_data[i].lastCheckTime = current_millis;

                            state = light_obj.lightState(lightOff_data[i].lamp_num, I2C_OP_LAMP_READ);

                            if (!state) {
                              // The lamp is Off, Rest timeOn and Skip to the next lamp checking...
                              if (PRINT_SERIAL) {
                                snprintf(buff_local, BUFF_MAX, "loff:L%doff,resetTimer", lightOff_data[i].lamp_num);
                                misc_obj.print(buff_local);
                              }
                              
                              lightOff_data[i].timeOn = 0;
                              continue; // Skip to the next lamp checking...
                            }
                            // Else check if we have to turn it Off...
                            
                            

                            //Serial.print("current_millis: ");Serial.println(current_millis);
                            //Serial.print("timeOn: ");Serial.println(lightOff_data[i].timeOn);
                            
                            // !!! 
                            // !!! Strange... On shows negative value, MaxOn shows ZERO! 
                            // WHY???
                            if (PRINT_SERIAL) {
                              snprintf(buff_local, BUFF_MAX, "loff:L%don=%d.MaxOn=%d", lightOff_data[i].lamp_num, lightOff_data[i].timeOn, lightOff_data[i].maxTimeOn);
                              misc_obj.print(buff_local);
                            }

                            // If Time is Up. Turn Off if other conditions are meet.
                            if (lightOff_data[i].timeOn >= lightOff_data[i].maxTimeOn) {

                              // The lamp does not depend on other lamps states...
                              if (lightOff_data[i].lamp_num_should_be_on == 100 && lightOff_data[i].lamp_num_should_be_off == 100) {
                                    if (PRINT_SERIAL) {
                                      snprintf(buff_local, BUFF_MAX, "loff:L%dTimeUp.TurnOff!", lightOff_data[i].lamp_num);
                                      misc_obj.print(buff_local);
                                    }

                                    skip_turning_off = false;
                              }
                              // If this lamp depends on other lamp states...
                              else {

                                    if (lightOff_data[i].lamp_num_should_be_on != 100) {
                                      
                                            on_lamp_state = light_obj.lightState(lightOff_data[i].lamp_num_should_be_on, I2C_OP_LAMP_READ);
                                            if (on_lamp_state) {
                                              if (PRINT_SERIAL) {
                                                snprintf(buff_local, BUFF_MAX, "loff:L%dTimeUp.2nd=On.TurnOff", lightOff_data[i].lamp_num);
                                                misc_obj.print(buff_local);
                                              }

                                              skip_turning_off = false;
                                              //lightOff_data[i].state = light_obj.lightState(lightOff_data[i].lamp_num, I2C_OP_LAMP_OFF);
                                            }
                                            else {
                                              ////Serial.println("Time is up, but leave ON, because Second lamp is off."); 
                                              if (PRINT_SERIAL) {
                                                snprintf(buff_local, BUFF_MAX, "loff:L%dTimeUpBut2nd=Off.LeaveON!", lightOff_data[i].lamp_num);
                                                misc_obj.print(buff_local);
                                              }

                                              skip_turning_off = true;
                                            }
                                    } // End of if (lightOff_data[i].lamp_num_should_be_on != 100) {

                                    if (lightOff_data[i].lamp_num_should_be_off != 100) {
                                            off_lamp_state = light_obj.lightState(lightOff_data[i].lamp_num_should_be_off, I2C_OP_LAMP_READ);
                                            if (!off_lamp_state) {
                                              if (PRINT_SERIAL) {
                                                snprintf(buff_local, BUFF_MAX, "loff:L%dTimeUp2nd=Off.TurnOff!", lightOff_data[i].lamp_num);
                                                misc_obj.print(buff_local);
                                              }

                                              skip_turning_off = false;
                                              //lightOff_data[i].state = light_obj.lightState(lightOff_data[i].lamp_num, I2C_OP_LAMP_OFF);
                                            }
                                            else {
                                              if (PRINT_SERIAL) {
                                                snprintf(buff_local, BUFF_MAX, "loff:L%dTimeUpBut2nd=On.LeaveON!", lightOff_data[i].lamp_num);
                                                misc_obj.print(buff_local);
                                              }

                                              skip_turning_off = true;
                                            }
                                    } // End of if (lightOff_data[i].lamp_num_should_be_off != 100) {

                              } // End of if (lightOff_data[i].lamp_num_should_be_on != 100 || lightOff_data[i].lamp_num_should_be_off != 100) {
                              
                              // Turn Off if set above.
                              if (!skip_turning_off) {
                                state = light_obj.lightState(lightOff_data[i].lamp_num, I2C_OP_LAMP_OFF);
                                lightOff_data[i].timeOn = 0;
                              }

                            } // End of if (lightOff_data[i].timeOn >= lightOff_data[i].maxTimeOn) {

                } // End of if (current_millis - lightOff_data[i].lastCheckTime > lightOff_data[i].checkPeriod) {

                
            } // End of for (uint16_t i = 0; i < lightOff_struct_objects_num; i++) {
            
          } // End of static void lightOff_data_process() {
          
          
          

}; // End of class lightOff_process_functions_class {







class rc_class {
  
  public:
    
              // Remote Control setup.
              //void rc_setup() {
    
              void rc_setup() {
                //Initializing the Remote Control pin states.
                //pinMode(28, INPUT); // VT

                char buff_local[BUFF_MAX];
                
                pinMode(29, INPUT);
                pinMode(30, INPUT);
                pinMode(31, INPUT);
                pinMode(32, INPUT);

                attachInterrupt(0, rc_interrupt, RISING);        // Set D2 as interrupt pin

                ////Serial.println("RemoteControl started...");
                if (PRINT_SERIAL) {
                  snprintf(buff_local, BUFF_MAX, "RemoteControl started...");
                  misc_obj.print(buff_local);
                }
              }

              
              

              // Remote Control process.
              void rc_process() {

                char buff_local[BUFF_MAX];
                if (rc_click) {

                  rc_click = false;

              //    if (rc_btns[0]) Serial.println("blah 29");
              //    if (rc_btns[1]) Serial.println("qwerty 30");

                  if (rc_btns[2]) {
                    ////Serial.println("Switch spalnia podvesy - A pin 31");  
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "Switch spalnia podvesy - A pin 31");
                      misc_obj.print(buff_local);
                    }
                
                    light_obj.lightState(4, 4); // Switch spalnia podvesy - A
                    //lightState(4, 4); // Switch spalnia podvesy - A
                  }    
                  if (rc_btns[3]) {
                    ////Serial.println("Switch spalnia neon - B pin 32");  
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "Switch spalnia neon - B pin 32");
                      misc_obj.print(buff_local);
                    }
                    
                    light_obj.lightState(1, 4); // Switch spalnia neon - B
                    //lightState(1, 4); // Switch spalnia neon - B
                  }

                  // Reset rx buttons values.
                  for (int i = 0; i < 4; i++) {
                      rc_btns[i] = 0;
                  }

                }  
              }

      
} rc_obj;



/*
enum {
  //MILLIS_TIME_TEST_LED_INDEX = 0, // index of variable in the array millisTimes[] for Motion detector in koridor, time 1
  MILLIS_TIME_RTC_CHECK_INDEX = 1,
  //TEST_LED_PIN = 12,
};

// Generally, you shuould use "unsigned long" for variables that hold time
// The value will quickly become too large for an int to store
unsigned long millisTimes[] = { // Last check/set times
                                0, // 0 index as MILLIS_TIME_TEST_LED_INDEX
                                0 // 1 index of MILLIS_TIME_RTC_CHECK_INDEX
                               };        


// constants won't change :
const long millisTimeouts[] = { // interval 1000 = 1 sec
                                3500, //  Test led blinking period
                                20000 // RTC check period, check RTC every 20 sec, because every millisecond make the I2C channel stuck and therefor all other devices connected to i2c don't work.
                              };    

*/

// testLed_class, moved to .h
/*
class testLed_class {

    public: 
  
          //boolean testLedState = false;                               
          boolean varStates[1];// = {
                               //   false, // 0 index as MILLIS_TIME_TEST_LED_INDEX
                               //   //false  // 1 index of MILLIS_TIME_RTC_CHECK_INDEX
                               // };                                       


          // Test led blinking setup.
          //void testLed_setup() {
          void testLed_setup() {
            
            varStates[0] = false;
            
            pinMode(TEST_LED_PIN, OUTPUT);

            Serial.println("Test led blinking started...");
          }


          // Test led blinking process.
          void testLed_process() {

            uint32_t current_millis = millis();

            if (current_millis - millisTimes[MILLIS_TIME_TEST_LED_INDEX] > millisTimeouts[MILLIS_TIME_TEST_LED_INDEX]) {
              millisTimes[MILLIS_TIME_TEST_LED_INDEX] = current_millis;
              if (varStates[MILLIS_TIME_TEST_LED_INDEX] ) { //testLedState

                //testLedState = false;
                varStates[MILLIS_TIME_TEST_LED_INDEX] = false;

                digitalWrite(TEST_LED_PIN, LOW);
                //Serial.println("Test led Off");
              }
              else {
                //testLedState = true;
                varStates[MILLIS_TIME_TEST_LED_INDEX] = true;

                digitalWrite(TEST_LED_PIN, HIGH);
                //Serial.println("Test led On");
              }
            }

          }


} testLed_obj;
*/


testLed_class testLed_obj;







// Deprecated in favor of rtc_class
void eeprom_test() {
  
  char buff_local[BUFF_MAX];
  
   int addr=0,i;    
//   for(i=0;i<56;i++)
//    {
//     //i2c_eeprom_write_byte(0x57,addr,i+65);
//     addr++;
//     addr=addr%26;     
//     Serial.print(addr);
//     Serial.println(char(i+65));
//     //delay(10); //add a small delay
//    }
    
    
    //i2c_eeprom_write_byte(0x57,0,11);
  
    //delay(5000); //add a small delay
   /*
    Serial.println("Read simple value i at address 0:"); 
    i = i2c_eeprom_read_byte(0x57, 0); //access an address from the memory
    Serial.print("i ="); Serial.println(i); 
    Serial.print("char(i) = "); Serial.println(char(i)); 
    Serial.println();
            
    Serial.println("Read simple value i at address 1:"); 
    i = i2c_eeprom_read_byte(0x57, 1); //access an address from the memory
    Serial.print("i = "); Serial.println(i); 
    Serial.print("char(i) = "); Serial.println(char(i)); 
    Serial.println();
    
    
    
    Serial.println();
    Serial.println("Write a struct: {4, 41, 1, true, 'Zal1', 0, {14, 12, -1}, {0,1,0}},"); 
    
    Serial.print("sizeof(rtc_custom_alarms[0]) = "); Serial.println(sizeof(rtc_custom_alarms[0]));
    //Serial.print("sizeof(rtc_custom_alarms[1] = "); Serial.println(sizeof(rtc_custom_alarms[1]));
    Serial.print("rtc_custom_alarms[0].name = "); Serial.println(rtc_custom_alarms[0].name); 
    Serial.print("rtc_custom_alarms[0].a_minute = "); Serial.println(rtc_custom_alarms[0].a_minute); 
    
    i = EEPROM_writeAnything(0x57, 1, rtc_custom_alarms[0]);
    Serial.print("Reported result size of the written struct = "); Serial.println(i); 
    Serial.println();
    
    delay(500); //add a small delay
    */
    
   
    ////Serial.println("Read a struct RTC_CUSTOM_ALARM_STRUCTURE from eeprom...");
    if (PRINT_SERIAL) {
      snprintf(buff_local, BUFF_MAX, "ReadStructFromEprom...");
      misc_obj.print(buff_local);
    }
    
    RTC_CUSTOM_ALARM_STRUCTURE rtc_custom_alarms_test;
    
    i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms_test);
    
    ////Serial.print("Readen length: "); Serial.println(i); 
    if (PRINT_SERIAL) {
      snprintf(buff_local, BUFF_MAX, "eeprom Readen length:%d, name:%s, a_minute:%d", i, rtc_custom_alarms_test.name, rtc_custom_alarms_test.a_minute);
      misc_obj.print(buff_local);
    }
    
    ////Serial.print("Readen name: "); Serial.println(rtc_custom_alarms_test.name); 
    ////Serial.print("Readen a_minute: "); Serial.println(rtc_custom_alarms_test.a_minute); 
    

    /*
    delay(5000); //add a small delay
    i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms[0]);
    Serial.print("length 0: "); Serial.println(i); 
    Serial.print("Name 0: "); Serial.println(rtc_custom_alarms[0].name); 
    Serial.print("a_minute 0: "); Serial.println(rtc_custom_alarms[0].a_minute); 
    
    
    delay(5000); //add a small delay
    i = EEPROM_readAnything(0x57, 1, rtc_custom_alarms[1]);
    Serial.print("length 1: "); Serial.println(i); 
    Serial.print("Name 1: "); Serial.println(rtc_custom_alarms[1].name); 
    Serial.print("a_minute 1: "); Serial.println(rtc_custom_alarms[1].a_minute);
    */
}




class rtc_alarm_class {
  
    public:
      
            uint32_t current_millis;
            unsigned long lastCheckTime;
            long checkPeriod; // = 20000;  // period of checking up the time, ms.
            
            // Real Time Clock setup
            void rtc_alarm_setup(long check) {
              
              lastCheckTime = 0;
              checkPeriod = check;

            }

            
            
            // Real Time Clock process.
            void rtc_alarm_process(rtc_class rtc_obj) {

              char buff_local[BUFF_MAX];
              current_millis = millis();

              // Check alarms onec in a while, in a predefined periods...
              //if (current_millis - millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] > millisTimeouts[MILLIS_TIME_RTC_CHECK_INDEX]) {
              if (current_millis - lastCheckTime > checkPeriod) {  

                // Reset last check time.
                //millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] = current_millis;
                lastCheckTime = current_millis;

                DateTime now = rtc_obj.rtc.now();

                // Check alarms preset and fire active for the current time.
                for (int i = 0; i <= rtc_alarms_amount - 1; i++) {

                  if (rtc_custom_alarms[i].active == true && now.hour() == rtc_custom_alarms[i].a_hour && now.minute() == rtc_custom_alarms[i].a_minute ) {
                    rtc_custom_alarms[i].active = false; // Stop alarm firing for future.

            //        I2C_OP_LAMP_READ = 1,
            //        I2C_OP_LAMP_ON = 3,
            //        I2C_OP_LAMP_OFF = 2,
            //        I2C_OP_LAMP_SWITCH = 4,

                    if (rtc_custom_alarms[i].target_type == 0) { // target_type == 0 for lamps
                      for (int j = 0; j < 3; j++) {
                        if (rtc_custom_alarms[i].target_nums[j] < lights_number) { // We have just 18 lamps
                          //light_obj.lightState(14, 4);  
                          light_obj.lightState(rtc_custom_alarms[i].target_nums[j], (rtc_custom_alarms[i].target_states[j] ? I2C_OP_LAMP_ON : I2C_OP_LAMP_OFF) );
                        }
                      }
                    } // End of if (rtc_custom_alarms[i].target_type == 0) { // target_type == 0 for lamps

                    rtc_obj.rtc_print_dateTime(now);

                    ////Serial.print("RTC Alarm is fired: "); Serial.print(i); Serial.print(" - ");  Serial.println(rtc_custom_alarms[i].name);  
                    if (PRINT_SERIAL) {
                      snprintf(buff_local, BUFF_MAX, "RTC Alarm is fired: %d - %s", i, rtc_custom_alarms[i].name);
                      misc_obj.print(buff_local);
                    }
                    
                  } // End of if (rtc_custom_alarms[i].active == true && now.hour() >= rtc_custom_alarms[i].a_hour && now.minute() >= rtc_custom_alarms[i].a_minute) {

                } // End of for (int i = 0; i <= rtc_alarms_amount - 1; i++)

              } // End of if (current_millis - millisTimes[MILLIS_TIME_RTC_CHECK_INDEX] > millisTimeouts[MILLIS_TIME_RTC_CHECK_INDEX])

            } // End of void rtc_process() {
  
  
} rtc_alarm_obj;




char message[] = "This is some long message that will end up scrolling";
int previous = 0;
int pos = 0;

void printLine(int refreshSeconds){
  //Check if the current second since restart is a mod of refresh seconds , 
  //if it is then update the display , it must also not equal the previously 
  //stored value to prevent duplicate refreshes
  if( millis() >= previous + 300){
  ////if((millis()/1000) % refreshSeconds == 0 && previous != (millis()/1000)){
    ////previous =  (millis()/1000);//Store the current time we entered for comparison on the next cycle
    previous = millis();
    lcd.setCursor(0, 1);//Set our draw position , set second param to 0 to use the top line
    char lcdTop[16];//Create a char array to store the text for the line
    int copySize = 16; // What is the size of our screen , this could probably be moved outside the loop but its more dynamic like this
    if(strlen(message) < 16)
    {
        //if the message is bigger than the current buffer use its length instead;
        copySize = strlen(message);
    }
    //Store the current position temporarily and invert its sign if its negative since we are going in reverse
    int tempPos = pos;
    if(tempPos < 0)
    {
        tempPos = -(tempPos);
    }
    //Build the lcd text by copying the required text out of our template message variable 
    memcpy(&lcdTop[0],&message[tempPos],copySize);
    lcd.print(lcdTop);//Print it from position 0
    //Increase the current position and check if the position + 16 (screen size) would be larger than the message length , if it is go in reverse by inverting the sign.
    pos += 1;
    if(pos +16 == strlen(message))
    {
      pos = -(pos);
    }
  }
}


void setup() {
  
  char buff_local[BUFF_MAX];
  Serial.begin(9600);
  ////Serial.println("Start MEGA...");
  if (PRINT_SERIAL) {
    snprintf(buff_local, BUFF_MAX, "Start MEGA...");
    misc_obj.print(buff_local);
  }
  
  testLed_obj.testLed_setup(12, 3500); // 12 pin for testLed, 3500 - period of testLed switch in ms
  
  
  
  et_obj.et_setup();
  
  light_obj.light_relaysAndElectricitySensors_setup();
  
  ir_obj.ir_setup(46); //int IR_RECV_PIN = 46; //23;//5;//11;
  
  rc_obj.rc_setup(); // Remote Control setup.
  
  // Rtc is in the end of the call stack, because earlier it won't start successfully.
  ///rtc_obj.rtc_setup(20000); // 20000 period of checking the time
  
  rtc_obj.rtc_setup(); // 20000 period of checking the time
  ///////---->rtc_alarm_obj.rtc_alarm_setup(20000); // 20000 period of checking the time
  
  //easyVR_obj.easyVR_setup();
  
  
  //ultraS_obj.ultraS_setup();  //ultraS_obj.ultraS_setup(byte trigger_pin, byte echo_pin, byte trigger_distance, byte testLed = 13)
  

  ///////---->lightOff_process_functions_class::lightOff_data_setup();
  
  ////eeprom_test();
  ///////---->rtc_obj.rtc_eeprom_read();
  
  
  lcd_obj.lcd_setup();
  
  /*
  lcd.init();                      // initialize the lcd 
  // Print a message to the LCD.
  //lcd.backlight();
  lcd.print("Hello, I'm ready!");
  
  
  //float temperature;
  //temperature =  getTemperature();
  temperature = Clock.getTemperature();
  
  Serial.print("Temperature=");
  Serial.print(temperature); 
  lcd.setCursor(0, 1);
  lcd.print("T:"); lcd.print(temperature);lcd.print((char)223);lcd.print("C");
  //lcd.print("\001Y");
  //lcd.print("\x01"); lcd.print("B"); lcd.print("\262X"); lcd.print("\377T");
  */
}



void loop() {
  
  testLed_obj.testLed_process();
  
  et_obj.et_receiving_process(); 
  
  ///////---->rtc_alarm_obj.rtc_alarm_process(rtc_obj);
  
  ir_obj.ir_process();
  
  rc_obj.rc_process(); // 4-button REmote Control process.
  
  //easyVR_obj.easyVR_process();
  
  //ultraS_obj.ultraS_process(); 
  
  
  
  ///////---->lightOff_process_functions_class::lightOff_data_process();
  
  lcd_obj.processClockTicTac();
  
  
  ////printLine(1);
}


