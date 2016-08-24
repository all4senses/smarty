// Printout like Serial << "text" << data << endl;
#include <Streaming.h>

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
byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
IPAddress ip(192,168,1,15);
// Will bee seen at the router as follows:
// 192.168.1.15
// DE-AD-BE-EF-FE-ED

// Initialize the Ethernet server library
// with the IP address and port you want to use 
// (port 80 is default for HTTP):
EthernetServer server(88);

char const accessKeyPair[] = "access=xxx";

// Router should Forward outer from the World) requests to outer (provider's) IP wich we are connected to the World, to 192.168.1.15
// TTK (541119092/446325) ip outer: http://100.65.21.29:88/ (or just http://100.65.21.29/ in case of 80 port)
// request example: http://100.65.21.29:88/?access=xxx&led0=on OR http://192.168.1.15/?led0=on&access=xxx (or  http://100.65.21.29/?access=xxx&led0=on OR http://192.168.1.15/?led0=on&access=xxx in case of 80 port)
// This webServer will return in success json {"status":null, "params":"led0=on&access=xxx", "led1":14, "led1_on":15}
// OR {"access":"denied"} in case of no param "access={accessKey}"






/*
int outputPin = 6;
int inputPin = 3;
int led1, led1_on;
*/

String queryParamsPatterns[] = {
  "led1=1",  // 0
  "led1=0", // 1
  "\0",
};

String params_pairs[10];
String HTTP_params;
String nextParamArray[2]; // index 0 - key, 1 - value
boolean requestHasParams = false;


void webServer_setup() {
  // start the Ethernet connection and the server:
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.print("server is at ");
  Serial.println(Ethernet.localIP());
}



void webServer_process() {
  
    // listen for incoming clients
  EthernetClient client = server.available();

  if (client) {

    
    webServer_get_HttpGetParams(client);

    if (requestHasParams) {
      Serial << "new client" << endl;
      Serial << "Url query params: " << HTTP_params << endl;
    }
    
    webServer_printHtmlHeader(client);

    //if (!strstr(HTTP_params, "access=xxx")) {
    if (HTTP_params.indexOf(accessKeyPair) >= 0) {
      //Serial.println("Bad access token");

      //client.respond();
      webServer_processData(client, HTTP_params);
    }
    else {
      client.print("{\"access\":\"denied\"}");
    }

    webServer_printHtmlFooter(client);

    // give the web browser time to receive the data
    delay(1);
    // close the connection:
    client.stop();
    //Serial.println("client disonnected");
  }
  else {
   delay(200); 
  }
}




void setup() {

  // Open serial communications and wait for port to open:
  Serial.begin(9600);

  webServer_setup();
}


void loop() {
  webServer_process();
}






int webServer_getQueryParamIndex_fromParamsPatternsArray(String command) {

  int count = 0;
  do {
    if (queryParamsPatterns[count] == command) {
      return count;
    }
  }
  while (queryParamsPatterns[count++] != "\0");
  return -1;
}



void webServer_get_HttpGetParams(EthernetClient client) {

  
  boolean gotGet = false;
  boolean startedGet = false;
  
  requestHasParams = false;
  
  // an http request ends with a blank line
  boolean currentLineIsBlank = true;
  
  HTTP_params = ""; //String();
  
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
              requestHasParams = true;
              HTTP_params += c;
            }
      }

      //Serial.write(c);

      // if you've gotten to the end of the line (received a newline
      // character) and the line is blank, the http request has ended,
      // so you can send a reply
      if (c == '\n' && currentLineIsBlank) {
        return;
      }
      if (c == '\n') {
        // you're starting a new line
        currentLineIsBlank = true;
      } 
      else if (c != '\r') {
        // you've gotten a character on the current line
        currentLineIsBlank = false;
      }
      
    } // End of if (client.available()) {
      
  } // end of   while (client.connected()) {
    
}


void webServer_printHtmlHeader(EthernetClient client) {
  // send a standard http response header
  client.println("HTTP/1.1 200 OK");
  client.println("Content-Type: text/html");
  client.println("Connection: close");  // the connection will be closed after completion of the response
  //client.println("Refresh: 5");  // refresh the page automatically every 5 sec
  client.println();
  
  // We return back json, so no need <html>, etc
  //client.println("<!DOCTYPE HTML>");
  //client.println("<html>");
}



void webServer_printHtmlFooter(EthernetClient client) {
  // We return back json, so no need </html>, etc
  //client.println("</html>");
}






int webServer_getParamsPairs(String HTTP_params) {
  
  char buff[200];
  strcpy(buff,HTTP_params.c_str());  //присвоение string в char
  
  int params_num = -1;
  char* p = strtok(buff,"&");    //разбитие на лексемы
  while (p!=0){                    //проверка
    ++params_num;
    params_pairs[params_num] = p;        //присвоение в массив новой лексемы до '|'
    p = strtok(NULL,"&");       //переход к следующей
  }
  
  return params_num;
}



int webServer_getNextParamPair(String paramPairStr) {
  
  char buff[50];
  //strcpy(buff,str.c_str());  //присвоение string в char
  strcpy(buff, paramPairStr.c_str());  //присвоение string в char
  
  int params_num = -1;
  //char * p = strtok(buff,"|");    //разбитие на лексемы
  char* p = strtok(buff,"=");    //разбитие на лексемы
  while (p!=0){                    //проверка
    ++params_num;
    nextParamArray[params_num] = p;        //присвоение в массив новой лексемы до '|'
    //p = strtok(NULL,"|");       //переход к следующей
    p = strtok(NULL,"=");       //переход к следующей
  }
  
  return params_num;
}



void webServer_processData(EthernetClient client, String HTTP_params) {
  
  byte params_num = webServer_getParamsPairs(HTTP_params);
  byte hasNextParam;
  
  String section = "", taskRequestedStr = "";

  int lamp = -1;
  // if lamp > 20 all lamps states will be read and returned.
  // else the state of the specific lamp will be read or changed.
  
  int op = -1;
  // op for light section:
  // 1 = read, 2 = turn on, 3 - turn off, 4 - switch vise versa
  
  // Based on the url query, define main params variables.
  for (byte i = 0; i <= params_num; i++) {
  
    hasNextParam = webServer_getNextParamPair(params_pairs[i]);
    
    if (hasNextParam) {
      Serial << "nextParamArray[0] = " << nextParamArray[0] << ", nextParamArray[1] = " << nextParamArray[1] << endl;
      
      if (nextParamArray[0] == "section") {
        section = nextParamArray[1];  
      }
      else if (nextParamArray[0] == "op") {
        op = nextParamArray[1].toInt();  
      }
      else if (nextParamArray[0] == "lamp") {
        lamp = nextParamArray[1].toInt();  
      }
      
    } // End of if (hasNextParam) {
    
    /*
    switch (webServer_getQueryParamIndex_fromParamsPatternsArray(params_pairs[i])) {
       case 0: // "led1=1"
         //digitalWrite(outputPin, HIGH);
         Serial << "led1=1" << endl;
         break;
     
       case 1: // "led1=0"
         //digitalWrite(outputPin, LOW);
         Serial << "led1=0" << endl;
         break;
    }
    */

  } // End of   for (byte i = 0; i <= params_num; i++) {

  Serial << "section = " << section << ", op = " << op << ", lamp = " << lamp << endl;  
  
  if (section == "light" && lamp >= 0 && op >= 0) {
    switch (op) {
     case 1:
       taskRequestedStr = taskRequestedStr + "The lamp " + lamp + " will be read";
       break;
     
     case 2:
       taskRequestedStr = taskRequestedStr + "The lamp " + lamp + " will be turned on";
       break;
       
     case 3:
       taskRequestedStr = taskRequestedStr + "The lamp " + lamp + " will be turned off";
       break;
     
     case 4:
       taskRequestedStr = taskRequestedStr + "The lamp " + lamp + " will be turned switched vise versa";
       break;
    }
    Serial << "taskRequestedStr = " << taskRequestedStr << endl;
  }
    
    
  delay(100);

  // We need something like this.
  //client.print("{'status':ok,'cap':null}");    
  
  String outputJSON;
  
  outputJSON = outputJSON + "{" + "\"status\":" + "ok" + ", " + "\"params\":\"" + HTTP_params + "\"";
  
        if (taskRequestedStr != "") {
          outputJSON = outputJSON + ", " + "\"taskRequested\":\"" + taskRequestedStr + "\"";
        }
        else {
          outputJSON = outputJSON + ", " + "\"taskRequestedStr\":\"" + "Unknown" + "\"";
        }
  
  outputJSON = outputJSON + "}";
  
  client.print(outputJSON);
  
  
  Serial << "outputJSON = " << outputJSON << endl;
 }









