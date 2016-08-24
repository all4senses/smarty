// Printout like Serial << "text" << data << endl;
#include <Streaming.h>









#include "SIM900.h"
#include <SoftwareSerial.h>
//If not used, is better to exclude the HTTP library,
//for RAM saving.
//If your sketch reboots itself proprably you have finished,
//your memory available.
//#include "inetGSM.h"

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
char phone_num[20]; // array for the phone number string 12/15
char sms_text[130]; // array for the SMS text string















//--------------------------------------------------------------------------------------------------------
//------------  EasyTransfer  Communication between several arduinos via I2C ------------------------------------------



#include <Wire.h>
#include <EasyTransferI2C.h>


//create object
EasyTransferI2C ET; 

//define slave i2c address
//#define I2C_MEGA_ADDRESS 4 // own address to work as receiver
enum {
  I2C_UNO_ADDRESS = 4, // Remote, UNO address to work as tranceiver, master
  I2C_MEGA_ADDRESS = 5, // own, MEGA address to work as receiver, slave
  I2C_GBOARD_ADDRESS = 6,
};


enum {
  I2C_OP_LAMP_READ = 1,
  I2C_OP_LAMP_ON = 2,
  I2C_OP_LAMP_OFF = 3,
  I2C_OP_LAMP_SWITCH = 4,
  
  I2C_OP_CALL_121 = 5, // "+79139828121"
  I2C_OP_CALL_7719 = 6, // "+79139137719"
  
  I2C_OP_CALL_SEMA = 7, // "+7"
  I2C_OP_CALL_HANGUP = 8, // "+7"
};


typedef struct{
  //put your variable definitions here for the data you want to receive
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
 
  byte from : 3;
  byte to : 3;
  
  //char op[15];
  byte op : 3; // 1 - read lights, 2 - turn on, 3 - turn off, 4 - switch vice versa,   5 - call to +79139828121
  //String op;
  
  byte lamp;
  
  //LIGHT lights[18];

}RECEIVE_DATA_STRUCTURE;

//give a name to the group of data
RECEIVE_DATA_STRUCTURE mydata_in;

// Amount of addressed lights in the house
//byte lights_amount;


// -----------------------------------------------
// -------------------- End of EasyTransfer ---------------------------------------------








void gsm_callPhone(byte op) {

  //I2C_OP_CALL_121 = 5,
  //I2C_OP_CALL_7719 = 6, 

  //CALL_NONE                   - no call activity
  //CALL_INCOM_VOICE_AUTH       - incoming voice - authorized
  //CALL_INCOM_VOICE_NOT_AUTH   - incoming voice - not authorized
  //CALL_ACTIVE_VOICE           - active voice
  //CALL_INCOM_DATA_AUTH        - incoming data call - authorized
  //CALL_INCOM_DATA_NOT_AUTH    - incoming data call - not authorized  
  //CALL_ACTIVE_DATA            - active data call
  //CALL_NO_RESPONSE            - no response to the AT command 
  //CALL_COMM_LINE_BUSY         - comm line is not free

  //Chekcs status of call
  call_stat = call.CallStatusWithAuth(phone_num,1,3);
  Serial << "Current (previous) call status: " << call_stat << endl;
  if (call_stat != CALL_NONE) {
    //call.HangUp();
  }
  
  switch (op) {
    case I2C_OP_CALL_121:
      // "+79139828121"
      call.Call("+79139828121");
      break;
      
    case I2C_OP_CALL_7719:
      call.Call("+79139137719");
      break;  
      
      
    case I2C_OP_CALL_HANGUP:
      call.HangUp();
      Serial << "Hanged Up..." << endl;
      break;  
  
  }
}





void gsm_setup() {
  
  Serial << "GSM Shield testing." << endl;
  //Start configuration of shield with baudrate.
  //For http uses is raccomanded to use 4800 or slower.
  if (gsm.begin(2400)){
    Serial << "\nstatus=READY" << endl;
    started=true;  
  }
  else {
    Serial << "\nstatus=IDLE" << endl;
  }
  
  if(started){
    //Enable this two lines if you want to send an SMS.
    //if (sms.SendSMS("3471234567", "Arduino SMS"))
      //Serial.println("\nSMS sent OK");
  }
}



void gsm_checkImcoming_process() {

  
  if(!started){
    return;
  }
  
  
  //Chekcs status of call
  call_stat = call.CallStatusWithAuth(phone_num,1,3);
  
  
  //If the incoming call is from an authorized number
  //saved on SIM in the positions range from 1 to 3.
  if(call_stat == CALL_INCOM_VOICE_AUTH || call_stat == CALL_INCOM_VOICE_NOT_AUTH){
    Serial << "Incoming voice call number: " << phone_num << endl;
    
    if (!strcmp(phone_num, "+79139828121")) {
      // if "+79139828121"
      Serial << "Authorized phone number" << endl << "Picked up..." << endl;
      call.PickUp();
    }
    else {
      //Hang up the call.
      Serial << "NOT Authorized phone number" << endl << "Hanged up" << endl;
      call.HangUp();
    }
    //sms.SendSMS(number,value_str);
  }
  
  
  
  
  
  
  
  
  
  pos=sms.IsSMSPresent(SMS_ALL);
  
  if (pos) {
    sms.GetSMS((int)pos, phone_num, sms_text, 130);
    
    Serial << "Pos: " << pos << endl << "SMS phone number: " << phone_num << endl << "SMS text: " << sms_text << endl;
    
    if (!strcmp(phone_num, "+79139828121")) {
      Serial << "Authorized phone number" << endl;
    }
    else {
      Serial << "NOT Authorized phone number" << endl;
    }
    
    sms.DeleteSMS(pos);
  }
  
/*
   p=strstr(message,"testpwd");
 
   if(p){
 
     Serial.println("PSWD OK");
 
     p=strstr(message,"LEDON");
 
     if(p){
 
       Serial.println("LED ON");
 
       digitalWrite(13,HIGH);
 
     }
 
     else{
 
       p=strstr(message,"LEDOFF");
 
       if(p){
 
         Serial.println("LED OFF");
 
         digitalWrite(13,LOW);
 
       }
 
     }
 
   }
 
   sms.DeleteSMS((int)pos);
 
 }
*/


} // end of gsm_checkImcoming_process()












void et_setup(){
  
  Wire.begin(I2C_GBOARD_ADDRESS); // own address to work as receiver
  //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc. 
  ET.begin(details(mydata_in), &Wire);
  //define handler function on receiving data
  Wire.onReceive(et_on_receive_event);
  
  Serial << "EaseTransfer started!..." << endl; // << "lights amount = " << lights_amount << endl;
}


void et_receiving_process() {
  
  //check and see if a data packet has come in. 
  if(ET.receiveData()){
  
    Serial << "mydata_in.from = " << mydata_in.from << endl;
    Serial << "mydata_in.to = " << mydata_in.to << endl;
  
    Serial << "mydata_in.op = " << mydata_in.op << endl;
    Serial << "mydata_in size of = " << sizeof(mydata_in) << endl;
    
    if (mydata_in.op == I2C_OP_CALL_121 || mydata_in.op == I2C_OP_CALL_7719 || mydata_in.op == I2C_OP_CALL_SEMA || mydata_in.op == I2C_OP_CALL_HANGUP) {
      Serial << "Requested phone call to " << mydata_in.op << " from the board #" << mydata_in.from << endl;
      gsm_callPhone(mydata_in.op);
    }
    //Serial << "mydata_in.lamp = " << mydata_in.lamp << endl;
    
  }
}


// Dummy ET receive event function. Is not used actually.
void et_on_receive_event(int numBytes) {}




















void setup() 
{
  //Serial connection.
  Serial.begin(9600);
  
  gsm_setup();
  et_setup();
}

void loop() 
{
  gsm_checkImcoming_process();
  et_receiving_process();
}
