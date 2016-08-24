/*
  Web Server
 
 A simple web server that shows the value of the analog input pins.
 using an Arduino Wiznet Ethernet shield. 
 
 Circuit:
 * Ethernet shield attached to pins 10, 11, 12, 13
 * Analog inputs attached to pins A0 through A5 (optional)
 
 created 18 Dec 2009
 by David A. Mellis
 modified 9 Apr 2012
 by Tom Igoe
 
 */

#include <SPI.h>
#include <Ethernet.h>


// Enter a MAC address and IP address for your controller below.
// The IP address will be dependent on your local network:
byte mac[] = { 
  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
IPAddress ip(192,168,1,15);

// Initialize the Ethernet server library
// with the IP address and port you want to use 
// (port 80 is default for HTTP):
EthernetServer server(80);


int outputPin = 6;
int inputPin = 3;
int led1, led1_on;


String commands[] = {
  "led1=1",  // 0
  "led1=0", // 1
  "\0",
};

String params_pairs[20];


void setup() {

  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }


  // start the Ethernet connection and the server:
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.print("server is at ");
  Serial.println(Ethernet.localIP());

  pinMode(outputPin, OUTPUT);
  pinMode(inputPin, INPUT_PULLUP);


  led1_on = analogRead(inputPin);
  Serial.println(led1_on);
  if (led1_on > 500) {    
    Serial.println("Led1 is ON");
  }
  else {
    Serial.println("Led1 is OFF");
  }

}


void loop() {

  String HTTP_params;          // stores the HTTP request
  // listen for incoming clients
  EthernetClient client = server.available();

  if (client) {

    //Serial.println("new client");
    HTTP_params = getHtmlHeader(client);



    printHtmlHeader(client);

    //if (!strstr(HTTP_params, "access=xxx")) {
    if (HTTP_params.indexOf("access=xxx") >= 0) {
      //Serial.println("Bad access token");

      //client.respond();
      processData(client, HTTP_params);
    }
    else {
      client.print("{\"access\":\"denied\"}");
    }

    printHtmlFooter(client);

    // give the web browser time to receive the data
    delay(1);
    // close the connection:
    client.stop();
    //Serial.println("client disonnected");
  }
}




//------------------------------------------------------------


int getIndex(String command) {

  int count = 0;
  do {
    if (commands[count] == command) {
      return count;
    }
  }
  while (commands[count++] != "\0");
  return -1;
}



String getHtmlHeader(EthernetClient client) {

  String HTTP_params;
  boolean gotGet = false;
  boolean startedGet = false;

  // an http request ends with a blank line
  boolean currentLineIsBlank = true;
  while (client.connected()) {
    if (client.available()) {

      char c = client.read();

      if (!gotGet) {
        if (!startedGet) {
          if (c == '?') {
            startedGet = true;
          }  
        }
        else if (c == ' ' || c == '\n') {
          startedGet = false;
          gotGet = true;
        }
        else {
          HTTP_params += c;
        }
      }

      //Serial.write(c);

      // if you've gotten to the end of the line (received a newline
      // character) and the line is blank, the http request has ended,
      // so you can send a reply
      if (c == '\n' && currentLineIsBlank) {

        return HTTP_params;
        /*
            // send a standard http response header
         client.println("HTTP/1.1 200 OK");
         client.println("Content-Type: text/html");
         client.println("Connection: close");  // the connection will be closed after completion of the response
         	  //client.println("Refresh: 5");  // refresh the page automatically every 5 sec
         client.println();
         client.println("<!DOCTYPE HTML>");
         client.println("<html>");
         // output the value of each analog input pin
         for (int analogChannel = 0; analogChannel < 6; analogChannel++) {
         int sensorReading = analogRead(analogChannel);
         client.print("analog input ");
         client.print(analogChannel);
         client.print(" is ");
         client.print(sensorReading);
         client.println("<br />");       
         }
         client.println("</html>");
         break;
         */
      }
      if (c == '\n') {
        // you're starting a new line
        currentLineIsBlank = true;
      } 
      else if (c != '\r') {
        // you've gotten a character on the current line
        currentLineIsBlank = false;
      }
    }
  }
  return HTTP_params;
}


void printHtmlHeader(EthernetClient client) {
  // send a standard http response header
  client.println("HTTP/1.1 200 OK");
  client.println("Content-Type: text/html");
  client.println("Connection: close");  // the connection will be closed after completion of the response
  //client.println("Refresh: 5");  // refresh the page automatically every 5 sec
  client.println();
  //client.println("<!DOCTYPE HTML>");
  //client.println("<html>");
}

void printHtmlFooter(EthernetClient client) {
  //client.println("</html>");
}


/*
vector <string> explode(string& str, string separator)
 {
 vector <string> results;
 int found;
 found = str.find_first_of(separator);
 while(found != string::npos){
 if(found > 0){
 results.push_back(str.substr(0,found));
 }
 str = str.substr(found+1);
 found = str.find_first_of(separator);
 }
 if(str.length() > 0){
 results.push_back(str);
 }
 
 return results;
 }
 */



int getParamsPairs(String HTTP_params) {
  
  
  char buff[200];
  //strcpy(buff,str.c_str());  //присвоение string в char
  strcpy(buff,HTTP_params.c_str());  //присвоение string в char
  
  int params_num = -1;
  //char * p = strtok(buff,"|");    //разбитие на лексемы
  char * p = strtok(buff,"&");    //разбитие на лексемы
  while (p!=0){                    //проверка
    ++params_num;
    params_pairs[params_num] = p;        //присвоение в массив новой лексемы до '|'
    //p = strtok(NULL,"|");       //переход к следующей
    p = strtok(NULL,"&");       //переход к следующей
  }
  
  return params_num;

}



void processData(EthernetClient client, String HTTP_params) {
  
//  if (HTTP_params != "") {
//    Serial.println("Params:");
//    Serial.println(HTTP_params);
//  }
//  else {
//    Serial.println("No params...");
//  }

  
  int params_num = getParamsPairs(HTTP_params);

  for (int i = 0; i <= params_num; i++) {
  
    switch (getIndex(params_pairs[i])) {
       case 0: // "led1=1"
         digitalWrite(outputPin, HIGH);
         break;
     
       case 1: // "led1=0"
         digitalWrite(outputPin, LOW);
         break;
    }

  }


  //    if (HTTP_params.indexOf("led1=on") >= 0) {
  //      digitalWrite(outputPin, HIGH);
  //    }
  //    else if (HTTP_params.indexOf("led1=off") >=0) {
  //      digitalWrite(outputPin, LOW);
  //    }

  delay(100);

  led1 = digitalRead(outputPin);
  led1_on = analogRead(inputPin);

  //    Serial.println(led1_on);
  //    if (led1_on  > 500) {    
  //      Serial.println("Led1 is ON");
  //    }
  //    else {
  //      Serial.println("Led1 is OFF");
  //    }


  //client.print("{'status':true,'cap':null}");    
  client.print("{");

  client.print("\"status\":");
  client.print("null");

  client.print(", ");       

  client.print("\"params\":\"");
  client.print(HTTP_params);
  client.print("\"");


  client.print(", ");  

  client.print("\"led1\":");
  client.print(led1);

  client.print(", ");  

  client.print("\"led1_on\":");
  client.print(led1_on);



  client.print("}");

}









