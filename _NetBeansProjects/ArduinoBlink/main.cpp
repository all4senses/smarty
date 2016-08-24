#include <Arduino.h>

#define PIN_LED 13

extern HardwareSerial Serial;

unsigned char state = HIGH;

void setup() {
    Serial.begin(9600);
    pinMode(PIN_LED, OUTPUT);
}

void loop() {
    Serial.print("LED ");
    Serial.println(state ? "ON" : "OFF");

    digitalWrite(PIN_LED, state);
    delay(1000);    
    state = !state;
}