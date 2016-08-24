//#include <Arduino.h>
//#include "Platform.h"

//#include <EEPROM.h>
#include <inttypes.h>
#include <Wire.h> //I2C library
#include <EEPROM_AT24C32.h>


  void setup() 
  {
    int addr=0,i;    
    Wire.begin(); // initialise the connection
    Serial.begin(9600);   
    Serial.println("Write:");
    for(i=0;i<26;i++)
    {
     i2c_eeprom_write_byte(0x57,addr,i+65);
     addr++;
     addr=addr%26;     
     Serial.print(char(i+65));
     delay(10); //add a small delay
    }
    Serial.print('\n');    
  }

  void loop() 
  {
    int i,b;
    int addr=0; //first address   
    Serial.println("Read:");
    for(i=0;i<26;i++)
    {     
      //b = i2c_eeprom_read_byte(0x57, i); //access an address from the memory
      Serial.print(char(b));  
  }
     Serial.print('\n');
    delay(2000);
  }
