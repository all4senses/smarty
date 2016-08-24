// A simple web server that always just says "Hello World"

#include "etherShield.h"
#include "ETHER_28J60.h"

static uint8_t mac[6] = {0x54, 0x55, 0x58, 0x10, 0x00, 0x24};   // this just needs to be unique for your network, 
static uint8_t ip[4] = {192, 168, 1, 15};                       // the IP address for your board. Check your home hub
static uint16_t port = 80;                                      // Use port 80 - the standard for HTTP

ETHER_28J60 e;


int outputPin = 6;
int inputPin = 3;

int led1, led1_on;

char* params;
  
int val = 0;

void setup()
{ 
  e.setup(mac, ip, port);
  pinMode(outputPin, OUTPUT);
  pinMode(inputPin, INPUT_PULLUP);
  //pinMode(inputPin, INPUT);
  Serial.begin(9600);
    
  led1_on = analogRead(inputPin);
  Serial.println(led1_on);
  if (led1_on > 500) {    
    Serial.println("Led1 is ON");
  }
  else {
    Serial.println("Led1 is OFF");
  }
  


}


void loop()
{
    //val = analogRead(inputPin);    // read the input pin

  //Serial.println(val); 

//delay(1000);


  if (params = e.serviceRequest())
  {
      Serial.println(params);
      
      if (!strstr(params, "access=xxx")) {
        Serial.println("Bad access token");
        e.print("{'access':'denied'}");
        e.respond();
        return;
      }
//    e.print("<H1>Web Remote</H1>");
//    if (strcmp(params, "?led1=on") == 0)
    if (strstr(params, "led1=on"))
    {
      digitalWrite(outputPin, HIGH);
      //e.print("<A HREF='?cmd=off'>Turn off</A>");
    }
    //else if (strcmp(params, "?led1=off") == 0)
    else if (strstr(params, "led1=off"))
    {
      digitalWrite(outputPin, LOW);
      //e.print("<A HREF='?cmd=on'>Turn on</A>");
    }
    
    delay(100);

    led1 = digitalRead(outputPin);
    led1_on = analogRead(inputPin);
    
    Serial.println(led1_on);
    if (led1_on  > 500) {    
      Serial.println("Led1 is ON");
    }
    else {
      Serial.println("Led1 is OFF");
    }
    
    
    //e.print("{'status':true,'cap':null}");    
    e.print("{");
    

        
        e.print("'status':");
          e.print("null");
          
        e.print(", ");       
        
        e.print("'params':'");
          e.print(params);
          e.print("'");
        
        
        e.print(", ");  
        
        e.print("'led1':");
          e.print(led1);

        e.print(", ");  
        
        e.print("'led1_on':");
          e.print(led1_on);

         
    
    e.print("}");
    
    e.respond();
  }
}

