/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */
 
#include <Streaming.h>

// Pin 13 has an LED connected on most Arduino boards.
// give it a name:
int led = 13;


struct LIGHT{
 byte state : 1;
 byte op : 1; // 0- read. 1 - write
};

struct RECEIVE_DATA_STRUCTURE{
  //put your variable definitions here for the data you want to receive
  //THIS MUST BE EXACTLY THE SAME ON THE OTHER ARDUINO
  //byte blinks;
  //int pause;
  
  //int from;
  byte to;
  
  //int op;
  char *op;
  
  LIGHT lights[18];
  //byte sss;
};


RECEIVE_DATA_STRUCTURE mydata;

// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);   

  Serial.begin(9600);
  
  Serial.println(sizeof(mydata));
  
  int lettera = 'A';
  char* letters = "ABC";
  int month = 4, day = 17, year = 2009;
  //strcpy(mydata.op, "Read"); 
  
  Serial << "This is an example of the new streaming" << endl;
  Serial << "library.  This allows you to print variables" << endl;
  Serial << "and strings without having to type line after" << endl;
  Serial << "line of Serial.print() calls.  Examples: " << endl;
  
  Serial << "A is " << lettera << "." << endl;
  Serial << "The current date is " << day << "-" << month << "-" << year << "." << endl;
  
  Serial << "You can use modifiers too, for example:" << endl;
  Serial << _BYTE(lettera) << " is " << _HEX(lettera) << " in hex. " << endl;
  
  Serial << "xxx" << " is " << letters << " in hex. " << endl;
  
}

// the loop routine runs over and over again forever:
void loop() {
  
  
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);               // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);               // wait for a second
}
