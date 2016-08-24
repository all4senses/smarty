#include <Arduino.h>

extern HardwareSerial Serial;

#define TEMP_SENSOR A3 

float temp;

void setup (){
  
  pinMode(TEMP_SENSOR, INPUT);
  
  Serial.begin(9600);
    
    
    
  // кнопкa  
  pinMode(4, INPUT);
  // включим подтягивающий резистор
  digitalWrite(4, HIGH);
//<editor-fold defaultstate="collapsed" desc="My custom code folding">
  // светодиод
  pinMode(9, OUTPUT);
  digitalWrite(9, HIGH);
  
  delay(5000);
  digitalWrite(9, LOW);  
  delay(5000);
  //</editor-fold>
  digitalWrite(9, HIGH);
  
}

void loop(){
  if(digitalRead(4) == LOW) {
    digitalWrite(9, HIGH);
  }
  else {
    digitalWrite(9, LOW);
  }
  delay(500);
  
  temp = analogRead(TEMP_SENSOR)*3.3/1024.0;
  temp = temp - 0.5;
  temp = temp / 0.01;
  Serial.println(temp);
  Serial.println("actionssss");
  
  
}