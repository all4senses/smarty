#include <Wire.h>
#include <EasyTransferI2C.h>

//create object
EasyTransferI2C ET; 

typedef struct{
  byte state : 1;
  byte op : 2; // 0 - nothing, 1 - read, 2 - write
}LIGHT;

typedef struct{
  //put your variable definitions here for the data you want to send
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
  //byte blinks : 4;
  //byte pause : 4;
  
  byte from : 2;
  byte to : 2;

  //char op[8];
  byte op : 3; // 1 - read lights, 2 - write lights, ...
  
  LIGHT lights[18];
  
}SEND_DATA_STRUCTURE;

//give a name to the group of data
SEND_DATA_STRUCTURE mydata_out;



//define slave i2c address
#define I2C_MEGA_ADDRESS 5 // remote address of the MEGA board to send a data to



void setup(){
  
  mydata_out.from = 1;
  
  Wire.begin();
  //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc.
  ET.begin(details(mydata_out), &Wire);
  
  pinMode(13, OUTPUT);
  
  randomSeed(analogRead(0));
  
  Serial.begin(9600);
}

int16_t rx;

void loop(){
  //this is how you access the variables. [name of the group].[variable name]
  //mydata_out.blinks = random(5);
  //mydata_out.pause = random(5);
  
  mydata_out.to = 2;
  
//  if (mydata_out.blinks == 3) {
//    strcpy(mydata_out.op, "Read");
//  }
//  else {
//    strcpy(mydata_out.op, "Write");
//  }

  mydata_out.op = 7;
  
  Serial.println(mydata_out.op);
  
  
  if (Serial.available() > 0) {
    // check console commands
    rx = Serial.read();
    
    if (rx == '1') {
      rx = 1;
    }
    else if (rx == '3') {
      rx = 3;
    }
    
    mydata_out.lights[rx].state = 1;
    mydata_out.lights[rx].op = 2;
    
    Serial.print("User input: ");
    Serial.println(rx, 0);

  }  
  else {
    mydata_out.lights[5].state = 1;
    mydata_out.lights[5].op = 2; 
  }
  
  //send the data
  ET.sendData(I2C_MEGA_ADDRESS);

  // reset lights
  mydata_out.lights[rx].state = 0;
  mydata_out.lights[rx].op = 0;
  
  //Just for fun, we will blink it out too
  /*
   for(int i = mydata_out.blinks; i>0; i--){
      digitalWrite(13, HIGH);
      delay(mydata_out.pause * 100);
      digitalWrite(13, LOW);
      delay(mydata_out.pause * 100);
    }
  */
  delay(500);
}
