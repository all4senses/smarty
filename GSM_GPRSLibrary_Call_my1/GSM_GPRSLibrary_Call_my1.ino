//#include "SIM900.h"
#include <SoftwareSerial.h>
//We don't need the http functions. So we can disable the next line.
//#include "inetGSM.h"
#include "sms.h"
#include "call.h"

//To change pins for Software Serial, use the two lines in GSM.cpp.

//GSM Shield for Arduino
//www.open-electronics.org
//this code is based on the example of Arduino Labs.

//Simple sketch to check if an incoming call is from an authorized
//number and in this case, send to this number an SMS with the value
//of a digital input.

//We have to create the classes for SMSs and calls.
CallGSM call;
SMSGSM sms;

char number[20];
byte stat=0;
int value=0;
int pin=1;
char value_str[5];

char* number2 = "+79139828121";


void setup() 
{
  pinMode(pin,INPUT);
  
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  
  //Serial connection.
  Serial.begin(9600);
  Serial.println("GSM Shield testing.");
  //Start configuration of shield with baudrate.
  //For http uses is raccomanded to use 4800 or slower.
  if (gsm.begin(2400)) {
    Serial.println("\nstatus=READY");

//    gsm.SimpleWrite("ATD");
//    gsm.SimpleWrite(number2);
//    gsm.SimpleWriteln(";");
//    delay(1000);
//    gsm.SimpleWriteln("ATH");

    call.Call("+79139828121");
  }
  else {
    Serial.println("\nstatus=IDLE");
  }
};

void loop() 
{
  

  //Chekcs status of call
  stat=call.CallStatusWithAuth(number,1,3);
  //If the incoming call is from an authorized number
  //saved on SIM in the positions range from 1 to 3.

  Serial.println(stat);
  //CALL_NO_RESPONSE = 9
  //REG_COMM_LINE_BUSY = 10
  //
  if(stat==9 || stat==10){  
    digitalWrite(GSM_ON, HIGH);
			delay(1200);
			digitalWrite(GSM_ON, LOW);
			delay(15000);
     if (gsm.begin(2400)) {
        Serial.println("\nstatus=READY AGAIN");
     } 
  }
  
  if(stat==CALL_INCOM_VOICE_NOT_AUTH){  
  //if(stat!=CALL_NONE && stat!=CALL_ACTIVE_VOICE && number !=""){
  //if(stat==CALL_INCOM_VOICE_AUTH){
    //Hang up the call.
    //call.HangUp();
    
    call.PickUp();
    delay(1000);
    call.Call("+79139828121");
    
    

    
    //Check the value of the input.
//    value=digitalRead(1);
//    //Convert the int to a string.
//    itoa(value,value_str,10);
    //Send an SMS to the previous number with
    //the value read previously.
//    //sms.SendSMS(number,value_str);    
    Serial.println(number);
    

  }
  delay(1000);
};
