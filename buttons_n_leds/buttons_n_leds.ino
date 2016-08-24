/*
Adafruit Arduino - Lesson 6. Inputs
*/
 
int ledPin = 5;
int buttonApin = 9;
int buttonBpin = 8;
int current = 0;

byte leds = 0;
 
void setup() 
{
  pinMode(ledPin, OUTPUT);
  pinMode(buttonApin, INPUT_PULLUP);  
  pinMode(buttonBpin, INPUT_PULLUP);  
  
  while (!Serial);
  Serial.begin(9600);
}
 
void loop() 
{
  if (digitalRead(buttonApin) == LOW)
  {
    digitalWrite(ledPin, HIGH);
    
    Serial.println("Button A Pressed");
    delay(300);
  }

  if (digitalRead(buttonBpin) == LOW)
  {
      current = digitalRead(ledPin);
      if (current == HIGH) {
        digitalWrite(ledPin, LOW);
      }
      else {
        digitalWrite(ledPin, HIGH);
     }
    
    Serial.println("Button B Pressed");
    delay(300);

  }
}
