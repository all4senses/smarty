/*
Adafruit Arduino - Lesson 8. Analog Inputs......000000000000000000000000
*/
 
int potPin = 0;
int greenPin = 11;
int yellowPin = 10;

int musicPin = 12;
 
int prev = 0; 
 
void setup() 
{
  pinMode(greenPin, OUTPUT);
  pinMode(yellowPin, OUTPUT);
  Serial.begin(9600);
}
 
void loop() 
{
  int reading  = analogRead(potPin);
  
  //int pitch = reading * 10;
//  tone(musicPin, pitch);
    //tone(musicPin, 800);

  
      
  if (reading != prev) {
    Serial.println(reading);
    
      //Serial.println(pitch);
    
    prev = reading;
    


    
    if (reading > 255) {
     reading = reading - 255; 
     if (reading > 255) {
       reading = 255;
     }
     analogWrite(yellowPin, reading);
    }
    else {
     analogWrite(greenPin, reading);
    }
    
    
  }
  
  delay(500);
}
