/*
Treehouse Projects - www.treehouseprojects.ca
Ping HC-SR04 Tutorial
This program is adapted from the example Ping code from Arduino.
It is extended to light a red LED when an object is a certain distance
from the sensor, and green otherwise.
Jun. 2012
*/

#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
//LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

//LiquidCrystal lcd(7, 8, 9, 10, 11, 12); 
LiquidCrystal lcd(7, 5, 9, 8, 6, 2); 




 
//pin which triggers ultrasonic sound
const int pingPin = 4;


 
//pin which delivers time to receive echo using pulseIn()
int inPin = 3;
 
//range in cm which is considered safe to enter, anything
//coming within less than 5 cm triggers red LED
int safeZone = 25;
 
//LED pin numbers
int greenLed = 2, redLed = 5;
 
long old_cm = 0; 
 
void setup() {
  // initialize serial communication
  Serial.begin(9600);
  
  
  //initializing the pin states
  pinMode(pingPin, OUTPUT);
  pinMode(greenLed, OUTPUT);
  pinMode(redLed, OUTPUT);  
  
  
    // set up the LCD's number of columns and rows: 
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("Love my Olechka");
  lcd.cursor();
  lcd.setCursor(0, 1);

}
 
void loop()
{
  //raw duration in milliseconds, cm is the
  //converted amount into a distance
  long duration, cm;
 
 
  //sending the signal, starting with LOW for a clean signal
  digitalWrite(pingPin, LOW);
  delayMicroseconds(2);
  digitalWrite(pingPin, HIGH);
  delayMicroseconds(5);
  digitalWrite(pingPin, LOW);
 
  //setting up the input pin, and receiving the duration in
  //microseconds for the sound to bounce off the object infront
  pinMode(inPin, INPUT);
  duration = pulseIn(inPin, HIGH);
 
  // convert the time into a distance
  cm = microsecondsToCentimeters(duration);
 
  if (cm > old_cm + 3 || cm < old_cm - 3) {
  //printing the current readings to ther serial display
  Serial.print(cm);
  Serial.print("cm");
  Serial.println();
  
  }
 

  //checking if anything is within the safezone, if not, keep
  //green LED on if safezone violated, activate red LED instead

//    if (cm > safeZone && old_cm < safeZone)
    if (cm > safeZone)    
    {
      digitalWrite(greenLed, HIGH);
      
      lcd.setCursor(0, 0);
      lcd.print(cm);
      lcd.print("cm                ");
      
      
      lcd.setCursor(0, 1);
      lcd.print("Safe distance     ");
      //digitalWrite(redLed, LOW);
    }
//    else if (cm < safeZone && old_cm > safeZone)
    else if (cm < safeZone)    
    {
      //digitalWrite(redLed, HIGH);
      digitalWrite(greenLed, LOW);
      
      lcd.setCursor(0, 0);
      lcd.print(cm);
      lcd.print("cm                ");
      
      lcd.setCursor(0, 1);
      lcd.print("Not Safe distance     ");      
      
    }

 old_cm = cm;
  delay(1000);
}
 
long microsecondsToCentimeters(long microseconds)
{
  // The speed of sound is 340 m/s or 29 microseconds per centimeter.
  // The ping travels out and back, so to find the distance of the
  // object we take half of the distance travelled.
  return microseconds / 29 / 2;
}
