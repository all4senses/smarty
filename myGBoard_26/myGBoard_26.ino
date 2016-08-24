// Printout like Serial << "text" << data << endl;
//#include <Streaming.h>








//--------------------------------------------------------------------------------------------------------
//------------  EasyTransfer  Communication between several arduinos via I2C ------------------------------------------


#include <Wire.h>
extern "C" { 
#include "utility/twi.h"  // from Wire library, so we can do bus scanning
}

#include <EasyTransferI2C.h>

EasyTransferI2C ET; 

// Main a4s header file that is ued by all afs_arduino projects
#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_header.h>



extern byte const lights_number;

SEND_RECEIVE_DATA_STRUCTURE data_transfer;


// -----------------------------------------------
// -------------------- End of EasyTransfer ---------------------------------------------





#include "SIM900.h"
#include <SoftwareSerial.h>
//If not used, is better to exclude the HTTP library,
//for RAM saving.
//If your sketch reboots itself proprably you have finished,
//your memory available.
//#include "inetGSM.h"

//http://www.open-electronics.org/arduino-gsm-shield/
// https://github.com/MarcoMartines/GSM-GPRS-GPS-Shield

//If you want to use the Arduino functions to manage SMS, uncomment the lines below.
#include "sms.h"
#include "call.h"

//We have to create the classes for SMSs and calls.
CallGSM call;
SMSGSM sms;


//To change pins for Software Serial, use the two lines in GSM.cpp.

//GSM Shield for Arduino
//www.open-electronics.org
//this code is based on the example of Arduino Labs.

//Simple sketch to send and receive SMS.

boolean started = false;

byte pos, call_stat;
char phone_num[30]; // array for the phone number string 12/15
char sms_text[60]; // array for the SMS text string
char del_status = -1;




#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_secure.h>
extern char const smsPass[];
extern char *phones[];


class gsm_et_class {
  
  public:
  

          void gsm_setup() {
            
            Serial.println("GSM Shield testing...");

            // https://mail.google.com/mail/u/0/?pli=1#search/in%3Adraft+arduino?compose=14861d423f535764
            //http://bf-arduinolab.wikidot.com/docs:gboard-configurations

            // Use D6 for power up the SIM900
            pinMode(6, OUTPUT);
            // Use D7 for reset the SIM900
            pinMode(7, OUTPUT);

            //Start configuration of shield with baudrate.
            //For http uses is raccomanded to use 4800 or slower.
            if (gsm.begin(2400)){
              Serial.println("\nstatus=READY");
              started = true; 
            }
            else {
              Serial.println("\nstatus=IDLE");
            }

          }




          void gsm_callPhone(byte op, byte phone_index) {

            //CALL_NONE                   - no call activity
            //CALL_INCOM_VOICE_AUTH       - incoming voice - authorized
            //CALL_INCOM_VOICE_NOT_AUTH   - incoming voice - not authorized
            //CALL_ACTIVE_VOICE           - active voice
            //CALL_INCOM_DATA_AUTH        - incoming data call - authorized
            //CALL_INCOM_DATA_NOT_AUTH    - incoming data call - not authorized  
            //CALL_ACTIVE_DATA            - active data call
            //CALL_NO_RESPONSE            - no response to the AT command 
            //CALL_COMM_LINE_BUSY         - comm line is not free

            call_stat = call.CallStatusWithAuth(phone_num,1,3);

            if (op != I2C_OP_CALL_HANGUP && call_stat != CALL_NONE) {
              call.HangUp();
              delay(1000);
            }

            switch (op) {
              case I2C_OP_CALL_PHONE:
                Serial.print("Call to "); Serial.print(phones[phone_index]);
                call.Call(phones[phone_index]);
                break;

              case I2C_OP_CALL_HANGUP:
                call.HangUp();
                Serial.println("Hanged");
                break;  

            }
          }



          void et_sendCommand_light(byte lamp_num, byte op) {

          //  byte lamp = 0;
          //  String taskRequestedStr = "";
          //  
          //  taskRequestedStr = taskRequestedStr + op + " for the lamp " + lamp;  

              // Set sending data
              data_transfer.to = I2C_MEGA_ADDRESS;
              data_transfer.op = op;
              data_transfer.target_1 = lamp_num;

              //Serial <<  "Sending: data_transfer.to = " << data_transfer.to << ", data_transfer.lamp = " << lamp << ", data_transfer.op = " << data_transfer.op << endl;

              ET.sendData(data_transfer.to);

              // Reset sending data
              data_transfer.op = 0;
              data_transfer.target_1 = 20;
          }




          void gsm_process_sms() {

            char* p;
            p = strstr(sms_text, smsPass);

             if (p){
               //Serial.println("SMS Pass OK");
               p=strstr(sms_text, "switch");

               if(p){
                  Serial.println("Switch");
                  et_sendCommand_light(14, I2C_OP_LAMP_SWITCH);
                  //gsm_callPhone(I2C_OP_CALL_PHONE, 0);
               }

               else{
                 p=strstr(sms_text,"off");
                 if(p){
                   Serial.println("OFF");
                   et_sendCommand_light(14, I2C_OP_LAMP_OFF);
                 }
               }

             } // End of if (p) outer 
             else {
               Serial.println("Bad SMS Pass");
             }

          } // end of void gsm_process_sms() {




          void gsm_checkImcoming_process() {

            if(!started){
              return;
            }

            //Checks status of call
            call_stat = call.CallStatusWithAuth(phone_num,1,3);

            //If the incoming call is from an authorized number
            //saved on SIM in the positions range from 1 to 3.
            if(call_stat == CALL_INCOM_VOICE_AUTH || call_stat == CALL_INCOM_VOICE_NOT_AUTH){
              Serial.print("Incoming call: "); Serial.println(phone_num);

              //if (!strcmp(phone_num, "+79139828121")) {
              if (!strcmp(phone_num, phones[0])) {
                Serial.println("Auth. Picked up");
                call.PickUp();
              }
              else {
                Serial.println("NOT Auth. Hanged");
                call.HangUp();
              }
              //sms.SendSMS(number,value_str);
              delay(800);
            }


            // Check and process incoming SMS

            pos = sms.IsSMSPresent(SMS_ALL);

            if (pos) {
              sms.GetSMS((int)pos, phone_num, sms_text, 60);

              // PDU for cyrillic fonts 
              // http://www.edaboard.com/thread15630.html
              // http://rednaxela.net/pdu.php

              //Serial.print("Pos: "); Serial.println(pos); 

              if (!strcmp(phone_num, phones[0])) {
                Serial.print("Auth ph "); Serial.println(phone_num); Serial.print("SMS: "); Serial.println(sms_text);
                gsm_process_sms();
              }
              else {
                //Serial.print("Not Auth ph "); Serial.println(phone_num); Serial.print("SMS: "); Serial.println(sms_text);
              }

              //sms.DeleteSMS(pos);
              // http://we.easyelectronics.ru/part/gsm-gprs-modul-sim900-chast-vtoraya.html
              gsm_DeleteAllSMS();

              //Serial.print("Sms del stat = "); Serial.println(del_status);
              delay(800);
            }


          } // end of gsm_checkImcoming_process()




          // Changed a library function char SMSGSM::DeleteSMS(byte position) 
          // to make it delete all SMS
          // Because having many bad (russian) or just many sms causes to unable of deleting sms one by one
          // http://we.easyelectronics.ru/part/gsm-gprs-modul-sim900-chast-vtoraya.html
          void gsm_DeleteAllSMS() 
          {
            if (CLS_FREE != gsm.GetCommLineStatus()) return;
            gsm.SetCommLineStatus(CLS_ATCMD);

            // a4s delete all sms
            gsm.SimpleWriteln(F("AT+CMGD=1,4"));

            // 5000 msec. for initial comm tmout
            // 20 msec. for inter character timeout
            switch (gsm.WaitResp(5000, 50, "OK")) {
              default:
                break;
            }

            gsm.SetCommLineStatus(CLS_FREE);
            return;
          } 



          void et_setup(){

            Wire.begin(I2C_GBOARD_ADDRESS); // own address to work as receiver
            //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc. 
            ET.begin(details(data_transfer), &Wire);
            //define handler function on receiving data
            Wire.onReceive(et_on_receive_event);

            Serial.println("EaseTransfer started!...");
          }


          void et_receiving_process() {

            //check and see if a data packet has come in. 
            if(ET.receiveData()){

          //    Serial.print("data_transfer.from = "); Serial.println(data_transfer.from);
          //    Serial.print("data_transfer.to = "); Serial.println(data_transfer.to);
          //  
          //    Serial.print("data_transfer.op = "); Serial.println(data_transfer.op);
          //    Serial.print("data_transfer size of = "); Serial.println(sizeof(data_transfer));

              if (data_transfer.op == I2C_OP_CALL_PHONE || data_transfer.op == I2C_OP_CALL_HANGUP) {
          //      if (data_transfer.op == I2C_OP_CALL_PHONE) {
          //        Serial.print("Requested phone call to #"); Serial.print(data_transfer.target_1); 
          //      }
          //      else {
          //        Serial.print("Requested phone hangup");
          //      }
          //      Serial.print(" from the board #"); Serial.println(data_transfer.from);
                //Serial.print("Requested phone call to "); Serial.print(data_transfer.target_1); Serial.print(" from the board #"); Serial.println(data_transfer.from);
                gsm_callPhone(data_transfer.op, data_transfer.target_1);
              }
              //Serial << "data_transfer.lamp = " << data_transfer.lamp << endl;

            }
          }


          // Dummy ET receive event function. Is not used actually.
          static void et_on_receive_event(int numBytes) {}

}gsm_et_obj;




// Test class md_class.... actually its improved version used on UNO
/*
class md_class {
  
    public:
          
            byte md_pin;

            // Motion Detect setup.
            void md_setup(byte pin) {

              //Initializing the MD pin states.
              md_pin = pin;
              pinMode(md_pin, INPUT);

              Serial.println("Motion Detect started...");
            }


            // Motion Detect process.
            void md_process() {

              if (digitalRead(md_pin)) {
                Serial.println("Motion detected...");
              }
            }

          
      
}md_obj;
*/


testLed_class testLed_obj;






void setup() 
{
  //Serial connection.
  Serial.begin(9600);
  
  gsm_et_obj.gsm_setup();
  gsm_et_obj.et_setup();
  
  //md_obj.md_setup(); // Motion Detect setup.
  
  testLed_obj.testLed_setup(14, 3500); // 14 pin for testLed, 3500 - period of testLed switch in ms
}

void loop() 
{
  gsm_et_obj.gsm_checkImcoming_process();
  gsm_et_obj.et_receiving_process();
  
 // md_obj.md_process(); // Motion Detect process.
 
 testLed_obj.testLed_process();
}
