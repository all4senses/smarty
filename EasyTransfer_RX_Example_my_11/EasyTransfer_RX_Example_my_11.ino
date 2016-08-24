#include <Streaming.h>
#include <Wire.h>
#include <EasyTransferI2C.h>

//create object
EasyTransferI2C ET; 

typedef struct{
 byte state : 1;
 byte op : 2; // 0 - nothing, 1 - read, 2 - write
}LIGHT;

typedef struct{
  //put your variable definitions here for the data you want to receive
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
  byte blinks : 4;
  byte pause : 4;
  
  byte from : 2;
  byte to : 2;
  
  char op[8];
  
  LIGHT lights[18];

}RECEIVE_DATA_STRUCTURE;

//give a name to the group of data
RECEIVE_DATA_STRUCTURE mydata_in;

//define slave i2c address
#define I2C_MEGA_ADDRESS 4 // own address to work as receiver

byte lights_amount = sizeof(mydata_in.lights);

void setup(){
  Wire.begin(I2C_MEGA_ADDRESS); // own address to work as receiver
  //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc. 
  ET.begin(details(mydata_in), &Wire);
  //define handler function on receiving data
  Wire.onReceive(receive);
  
  pinMode(13, OUTPUT);
  
  Serial.begin(9600);
  
  Serial << "lights amount = " << lights_amount << endl;
}



void loop() {
  //check and see if a data packet has come in. 
  if(ET.receiveData()){

    
    Serial << "mydata_in.blinks = " << mydata_in.blinks << endl;
    Serial << "mydata_in.pause = " << mydata_in.pause << endl;
    Serial << "mydata_in.from = " << mydata_in.from << endl;
    Serial << "mydata_in.to = " << mydata_in.to << endl;
    if (strcmp(mydata_in.op, "Read") == 0) {
      Serial << "mydata_in.op = " << "Read" << endl;
    }
    else {
      Serial << "mydata_in.op = " << "Not Read" << endl;
    }
    Serial << "mydata_in.op = " << mydata_in.op << endl;
    Serial << "mydata_in size of = " << sizeof(mydata_in) << endl;
    
    for(int i = 0; i < lights_amount; i++){
      if (mydata_in.lights[i].op == 2) {
        Serial << "light " << i << " state = " << mydata_in.lights[i].state << ", op = " << mydata_in.lights[i].op << endl;
      }
    }
    
    Serial << endl << endl;
    
    
    //this is how you access the variables. [name of the group].[variable name]
    //since we have data, we will blink it out. 
    for(int i = mydata_in.blinks; i>0; i--){
      digitalWrite(13, HIGH);
      delay(mydata_in.pause * 100);
      digitalWrite(13, LOW);
      delay(mydata_in.pause * 100);
    }
    
    
  }
}

void receive(int numBytes) {}
