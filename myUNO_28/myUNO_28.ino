// Printout like Serial << "text" << data << endl;
//#include <Streaming.h>




// -------------------------------------------------------------------------------------------
// -------------------- EasyTransfer initial data -------

#include <Wire.h>
extern "C" { 
#include "utility/twi.h"  // from Wire library, so we can do bus scanning
}

#include <EasyTransferI2C.h>

EasyTransferI2C ET; 

// Main a4s header file that is ued by all afs_arduino projects
#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_header.h>

extern byte const lights_number;

SEND_RECEIVE_DATA_STRUCTURE data_transfer;


// -------------------- End of EasyTransfer initial data -------
// -------------------------------------------------------------------------------------------





// -------------------------------------------------------------------------------------------
// -------------------- WebServer initial data -------

/*
 A simple web server... by Tom Igoe
 Circuit:
 * Ethernet shield attached to pins 10, 11, 12, 13
 */

#include <SPI.h>
#include <Ethernet.h>

//unsigned long millis_current = 0, wait_responce_start = 0;
//unsigned long millis_current = 0;
//int wait_responce_timeout = 30000; // 30sec 

// Enter a MAC address and IP address for your controller below.
// The IP address will be dependent on your local network:
byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
IPAddress ip(192,168,1,15);
// Will be seen at the router as follows:
// 192.168.1.15
// DE-AD-BE-EF-FE-ED
// !!! IP should be reserved at the router for this MAC
// !!! Forwarding should be set to this IP port 80, TCP

// Initialize the Ethernet server library
// with the IP address and port you want to use 
// (port 80 is default for HTTP):
//EthernetServer server(88);
EthernetServer server(80);  
EthernetClient client; //, second_client;


#include <D:/Alex_D/_Apps/_Arduino/_a4s_Projects/a4s_secure.h>
extern char const accessKeyPair[];
extern char *phones[];


// Router should Forward outer from the World) requests to outer (provider's) IP wich we are connected to the World, to 192.168.1.15
// TTK (541119092/446325) ip outer: http://100.65.21.29:88/ (or just http://100.65.21.29/ in case of 80 port)
// request example: http://100.65.21.29:88/?access=xxx&led0=on OR http://192.168.1.15/?led0=on&access=xxx (or  http://100.65.21.29/?access=xxx&led0=on OR http://192.168.1.15/?led0=on&access=xxx in case of 80 port)
// This webServer will return in success json {"status":null, "params":"led0=on&access=xxx", "led1":14, "led1_on":15}
// OR {"access":"denied"} in case of no param "access={accessKey}"

/*
String queryParamsPatterns[] = {
  "led1=1",  // 0
  "led1=0", // 1
  "\0",
};
*/

//String params_pairs[10];
//String HTTP_params;
//String nextParamArray[2]; // index 0 - key, 1 - value
//boolean requestHasParams = false;
//
//String taskRequestedStr = "";

String outJSON = "";



class webServer_class {
  
    public:
          
              String params_pairs[10];
              String HTTP_params;
              String nextParamArray[2]; // index 0 - key, 1 - value
              boolean requestHasParams;

              String taskRequestedStr;
              
              unsigned long millis_current;
              unsigned long wait_responce_start;
              int wait_responce_timeout; // 30sec 
              
              // Not sure if this works...
              String queryParamsPatterns[];
              
              
              
              void webServer_setup() {
                
                requestHasParams = false;
                taskRequestedStr = "";
                
                millis_current = 0;
                wait_responce_start = 0;
                wait_responce_timeout = 30000; // 30sec 
                
                // start the Ethernet connection and the server:
                Ethernet.begin(mac, ip);
                server.begin();
                Serial.print("WebServer is at ");
                Serial.println(Ethernet.localIP());
                
                // Not sure if this works...
                String queryParamsPatterns[] = {
                  "led1=1",  // 0
                  "led1=0", // 1
                  "\0",
                };
                
              }




              void webServer_process() {


                if (wait_responce_start) {

                  // If there is an open connection with awaiting of a remote board responce.
                  //Serial.println("wait_responce_start is set");
                  millis_current = millis();

                  // if timeout for waiting for other board to responce, close the current connection and send to it message obout timeout.
                  // http://www.leonardomiliani.com/en/2012/come-gestire-loverflow-di-millis/      But i'm not sure there is a correct solution...  
                  if (millis_current > (wait_responce_start + wait_responce_timeout) || millis_current < wait_responce_start) { 
                    wait_responce_start = 0;

                    client.print("myJsonMethod({\"access\":\"remote-timeout\"})");
                    webServer_printHtmlFooter(client);  
                    // give the web browser time to receive the data
                    delay(1);
                    // close the connection:
                    client.stop();
                    return;

                  } // End of if (millis_current > (wait_responce_start + wait_responce_timeout) || millis_current < wait_responce_start) 



                  // Refuce new connections if the previous connection still wait for responce from a remote board.

                  // listen for new (parallel) incoming clients
                  /*
                  EthernetClient second_client = server.available();

                  if (second_client) {
                    webServer_printHtmlHeader(second_client);
                    second_client.print("myJsonMethod({\"access\":\"server-busy\"})");
                    webServer_printHtmlFooter(second_client);  
                    // give the web browser time to receive the data
                    delay(1);
                    // close the connection:
                    second_client.stop();
                    return;
                  } // End of if (second_client) 
                  */  


                  return;

                } // End of if (wait_responce_start)



                // listen for incoming clients
              //  EthernetClient client = server.available();
                client = server.available();

                if (client) {

                  wait_responce_start = millis();

                  webServer_get_HttpGetParams();

                  if (requestHasParams) {
                    Serial.println("New client...");
                    Serial.print("Url params: "); Serial.println(HTTP_params);
                    //Serial << "new client" << endl << "Url query params: " << HTTP_params << endl;
                  }


                  webServer_printHtmlHeader(client);

                  //if (!strstr(HTTP_params, "access=xxx")) 
                  if (HTTP_params.indexOf(accessKeyPair) >= 0) {
                    //Serial.println("Bad access token");

                    //client.respond();
                    //wait_responce_start = 0;
                    webServer_processData();
                  }
                  else {
                    wait_responce_start = 0;
                    client.print("myJsonMethod({\"access\":\"denied\"})");
                    //Serial.println("Bad access token");
                  }

                  // If we don't wait for the remote board responce, we close the current connection.
                  if (!wait_responce_start) {
                      webServer_printHtmlFooter(client);
                      // give the web browser time to receive the data
                      delay(1);
                      // close the connection:
                      client.stop();
                      //Serial.println("client disonnected");
                  } // End of if (!wait_responce_start)

                } // End of   if (client)
                else {
                 delay(200); 
                }

              } // End of void webServer_process() {








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



              void webServer_get_HttpGetParams() {

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
                //client.println("Content-Type: text/html");
                client.println("Content-Type: application/json");
                client.println("Connection: close");  // the connection will be closed after completion of the response
                //client.println("Refresh: 5");  // refresh the page automatically every 5 sec
                //client.println('Access-Control-Allow-Origin: *');
                client.println();

                // We return back json, so no need <html>, etc
                //client.println("<!DOCTYPE HTML>");
                //client.println("<html>");
              }



              void webServer_printHtmlFooter(EthernetClient client) {
                // We return back json, so no need </html>, etc
                //client.println("</html>");
              }




              int webServer_getParamsPairs() {

                char buff[100];
                strcpy(buff,HTTP_params.c_str());  //присвоение string в char

                int params_num = -1;
                char* p = strtok(buff,"&");    //разбитие на лексемы
                while (p!=0){                    //проверка
                  ++params_num;
                  params_pairs[params_num] = p;     //присвоение в массив новой лексемы до '|'
                  p = strtok(NULL,"&");       //переход к следующей
                }

                return params_num;
              }



              int webServer_getNextParamPair(String paramPairStr) {

                // http://cppstudio.com/post/747/

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



              void webServer_processData() {

                byte hasNextParam;

                int target_1 = -1;
                // if target_1 > 20 all lamps states will be read and returned.
                // else the state of the specific lamp will be read or changed.

                byte op = 0;
                // op for light section:
                // 1 = read, 2 = turn on, 3 - turn off, 4 - switch vise versa

                byte params_num = webServer_getParamsPairs();

              //  Serial.print("params_num: ");
              //  Serial.println(params_num);

                if (!params_num) {
                  return;
                }


              //  Serial.println("In processData");

                // Based on the url query, define main params variables.
                for (byte i = 0; i <= params_num; i++) {

                  hasNextParam = webServer_getNextParamPair(params_pairs[i]);

                  if (hasNextParam) {
                    //Serial << "[0] = " << nextParamArray[0] << ", nextParamArray[1] = " << nextParamArray[1] << endl;
              //        Serial.print("[0] = ");
              //        Serial.print(nextParamArray[0]);
              //        Serial.print(", nextParamArray[1] = ");
              //        Serial.println(nextParamArray[1]);

                    if (nextParamArray[0] == "op") {
                      op = nextParamArray[1].toInt();
                      //Serial << "op = " << op << endl;
                    }
                    else if (nextParamArray[0] == "target_1") {
                      target_1 = nextParamArray[1].toInt();
                      if (target_1 < 0 || target_1 > 17) {
                        target_1 = 99;
                      }
                      //target_1 = atoi( nextParamArray[1].c_str() );
                      //Serial << "nextParamArray[1] = " << nextParamArray[1] << endl;  
                      //Serial << "target_1 = " << target_1 << endl;  
                    }

                  } // End of if (hasNextParam) {

                } // End of   for (byte i = 0; i <= params_num; i++) {

              //  Serial.print("op = ");
              //  Serial.print(op);  
              //  Serial.print(", target_1 = ");
              //  Serial.println(target_1);  

                //Serial << "op = " << op << ", target_1 = " << target_1 << endl;  

              //  I2C_OP_LAMP_READ = 1,
              //  I2C_OP_LAMP_ON = 2,
              //  I2C_OP_LAMP_OFF = 3,
              //  I2C_OP_LAMP_SWITCH = 4,

                if ( (op == I2C_OP_LAMP_READ || op == I2C_OP_LAMP_ON || op == I2C_OP_LAMP_OFF || op == I2C_OP_LAMP_SWITCH) && target_1 >= 0) {
                  // Oparate lights on MEGA

                  taskRequestedStr = taskRequestedStr + op + " for lamp " + target_1;  

                  // Set sending data
                  data_transfer.from = I2C_UNO_ADDRESS;
                  data_transfer.to = I2C_MEGA_ADDRESS;
                  //strcpy(data_transfer.op, op.c_str());
                  data_transfer.op = op;
                  data_transfer.target_1 = target_1;
                  data_transfer.wait_responce = true;

                  //Serial << "Sending: data_transfer.to = " << data_transfer.to << ", data_transfer.target_1= " << target_1 << ", data_transfer.op = " << data_transfer.op << endl;
                  Serial.print("Sending: data_transfer.to = ");
                  Serial.print(data_transfer.to);  
                  Serial.print(", data_transfer.target_1= ");
                  Serial.print(target_1);  
                  Serial.print(", data_transfer.op = ");
                  Serial.println(data_transfer.op);  

                  //send the data
                  //if (et_ifRemoteDeviceReady(I2C_MEGA_ADDRESS)) 
                  {
                    ET.sendData(data_transfer.to);
                    //Serial << "Data to MEGA was sent..." << endl;
                  }
              //    else {
              //      Serial << "MEGA is not ready" << endl;
              //    }

                  // Reset sending data
                  //data_transfer.op = "";
                  //strcpy(data_transfer.op, "");
                  data_transfer.op = 0;
                  data_transfer.target_1= -1;
                }
                else if ( (op == I2C_OP_CALL_PHONE || op == I2C_OP_CALL_HANGUP) ) {
                  // Call to phone on GBOARD

                  taskRequestedStr = taskRequestedStr + op;  

                  // Set sending data
                  data_transfer.to = I2C_GBOARD_ADDRESS;
                  //strcpy(data_transfer.op, op.c_str());
                  data_transfer.op = op;
                  data_transfer.target_1 = target_1;
                  data_transfer.wait_responce = false;
                  
                  //Serial << "Sending: data_transfer.to = " << data_transfer.to << ", data_transfer.op = " << data_transfer.op << endl;
              //    Serial.print("Sending: data_transfer.to = ");
              //    Serial.print(data_transfer.to);  
              //    Serial.print(", data_transfer.op = ");
              //    Serial.println(data_transfer.op);  

                  //send the data
                  //if (et_ifRemoteDeviceReady(I2C_MEGA_ADDRESS)) 
                  {
                    ET.sendData(data_transfer.to);
                    //Serial << "Data to MEGA was sent..." << endl;
                  }
              //    else {
              //      Serial << "MEGA is not ready" << endl;
              //    }

                  // Reset sending data
                  //data_transfer.op = "";
                  //strcpy(data_transfer.op, "");
                  data_transfer.op = 0;
                  data_transfer.target_1= -1;

                  // We don't wait for the remote board responce.
                  wait_responce_start = 0;
                }
                else {
                  taskRequestedStr = "Unknown";
                  // We don't wait for the remote boad responce.
                  wait_responce_start = 0;    
                }

                delay(100);

                // If we don't wait for the remote board responce, print out the result data to the client
                if (!wait_responce_start) {

                      // We need something like this.
                      //client.print("{'status':ok,'cap':null}");    


                      //outJSON = outJSON + "myJsonMethod({\"status\":\"ok\"" /*+ ", \"params\":\"" + HTTP_params + "\"" */ + ", \"taskRequested\":\"" + taskRequestedStr + "\"})";
                      //outJSON = outJSON + String("{\"status\":ok, \"params\":\"") + String(HTTP_params) + String("\", \"taskRequested\":\"") + String(taskRequestedStr) + String("\"}");

                      //outJSON += "}";

                    //  strcat(outJSON, "{\"status\":ok, \"params\":\"");
                    //  strcat(outJSON, HTTP_params.c_str());
                    //  strcat(outJSON, "\", \"taskRequested\":\"");
                    //  strcat(outJSON, taskRequestedStr.c_str());  
                    //  strcat(outJSON, "\"}\0");  



                      // Works (wth short string)
              //        outJSON = outJSON + "myJsonMethod({\"status\":true" /*+ ", \"params\":\"" + HTTP_params + "\"" */ + ", \"taskRequested\":\"" + taskRequestedStr + "\"})";
              //        client.print(outJSON);


                      //outJSON = "myJsonMethod({\"status\":true";
                      //client.print(outJSON);
                      client.print("myJsonMethod({\"status\":true");

                      //outJSON = ", \"taskRequested\":\"";
                      //client.print(outJSON);
                      client.print(", \"taskRequested\":\"");

                      //outJSON = taskRequestedStr;
                      //client.print(outJSON);
                      client.print(taskRequestedStr);

                      //outJSON = "\"})";
                      //client.print(outJSON);
                      client.print("\"})");

                      //Serial << "outJSON = " << outJSON << endl;
                      //Serial.print("outJSON = ");
                      //Serial.println(outJSON);  

                }


               }

      
  
}webServer_obj;




class et_class {
  
        public:
            

                  void et_setup(){

                    data_transfer.from = I2C_UNO_ADDRESS;

                    //Wire.begin();
                    Wire.begin(I2C_UNO_ADDRESS);
                    //start the library, pass in the data details and the name of the serial port. Can be Serial, Serial1, Serial2, etc.
                    ET.begin(details(data_transfer), &Wire);
                    //define handler function on receiving data
                    Wire.onReceive(et_on_receive_event);

                    //lights_amount = sizeof(data_transfer.lights);

                    //Serial << "EaseTransfer --> Tranceiver started!..." << endl; // << "lights amount = " << lights_amount << endl;
                    Serial.println("EaseTransfer --> Tranceiver started!...");
                  }




                  void et_receiving_process() {

                    //check and see if a data packet has come in. 
                    if(ET.receiveData()){

                  //    Serial << "data_transfer.from = " << data_transfer.from << endl;
                  //    Serial << "data_transfer.to = " << data_transfer.to << endl;
                  //  
                  //    Serial << "data_transfer.op = " << data_transfer.op << endl;
                  //    Serial << "data_transfer size of = " << sizeof(data_transfer) << endl;

                      // If we are waiting for the remote board responce about lamps states/ops.
                      if (data_transfer.op == I2C_OP_LAMP_ANSWER && webServer_obj.wait_responce_start) {

                          //Serial << "Got Answer with op: " << data_transfer.op << " from the board #" << data_transfer.from << endl;
                          Serial.print("Got Answer with op: ");Serial.print(data_transfer.op);Serial.print(" from the board #");Serial.println(data_transfer.from);

                          //outJSON = "myJsonMethod({\"status\":true";
                          //client.print(outJSON);
                          client.print("myJsonMethod({\"status\":true");

                          //outJSON = ", \"state\":";
                          //client.print(outJSON);
                          client.print(", \"state\":");

                          if (data_transfer.target_1< lights_number) {
                            //outJSON = data_transfer.lights[data_transfer.target_1] ? "\"1\"" : "\"0\"";
                            //client.print(outJSON);
                            client.print(data_transfer.lights[data_transfer.target_1] ? "\"1\"" : "\"0\"");
                          }
                          else {
                            // pass a json object/array with all lamps states.
                            //outJSON = "{";
                            //client.print(outJSON);
                            client.print("{");

                            for (int i = 0; i < lights_number; i++){
                               if (i > 0) {
                                 //outJSON = ",";
                                 //client.print(outJSON);
                                 client.print(",");
                               }
                               //outJSON = "\"" + String(i) + "\":" + (data_transfer.lights[i] ? "\"1\"" : "\"0\"");
                               //client.print(outJSON);
                               client.print("\"" + String(i) + "\":" + (data_transfer.lights[i] ? "\"1\"" : "\"0\""));
                            } 
                            //outJSON = "}";
                            //client.print(outJSON);
                            client.print("}");
                          }

                          //outJSON = ", \"taskRequested\":\"";
                          //client.print(outJSON);
                          client.print(", \"taskRequested\":\"");

                          //outJSON = taskRequestedStr;
                          //client.print(outJSON);
                          client.print(webServer_obj.taskRequestedStr);

                          //outJSON = "\"})";
                          //client.print(outJSON);
                          client.print("\"})");

                          webServer_obj.webServer_printHtmlFooter(client);  
                          // give the web browser time to receive the data
                          delay(1);
                          // close the connection:
                          client.stop();

                          webServer_obj.wait_responce_start = 0;
                          webServer_obj.taskRequestedStr = ""; 
                          outJSON = "";

                          return;

                      } // End of if (data_transfer.op == I2C_OP_LAMP_ANSWER && wait_responce_start)

                    } // End of if(ET.receiveData())

                  } // End of void et_receiving_process()




                  // Dummy ET receive event function. Is not used actually.
                  static void et_on_receive_event(int numBytes) {}
                  
                  

                  /*
                  boolean et_ifRemoteDeviceReady(byte remoteAddress) {



                    byte data = 0; // not used, just an address to feed to twi_writeTo()

                    byte rc = twi_writeTo(remoteAddress, &data, 0, 1, 0);
                    if( rc == 0 ) {
                      Serial.print("device found at address "); 
                      Serial.println(remoteAddress, DEC);
                      return true;
                    }
                    else {
                      Serial.println("device NOT found at address "); 
                      return false;
                    }


                  //  byte error;
                  //  Wire.beginTransmission(remoteAddress);
                  //  error = Wire.endTransmission();
                  //  if (rc != 0) {
                  //    return false;
                  //  }
                  //  else {
                  //   return true; 
                  //  }
                  }

                  */


} et_obj;




















// Motion detect class, koridor
class md_class {
  
      public:
              
              int md_sensor_value;
              unsigned long currentMillis;
              byte motionSensorPin; // A0
              byte lampNum, lamp2Num, dependOnLampNum;
              unsigned long lastCheckTime;
              long timeout; // 10000,  // MILLIS_TIME_MD_1 timeout
              byte opIn; // I2C_OP_LAMP_ON, I2C_OP_LAMP_OFF, etc
              byte opOut; // I2C_OP_LAMP_OFF, I2C_OP_LAMP_OFF_IF_SECOND_OFF, etc
              boolean motion;
              
              // Motion Detect setup.
              void md_setup(byte pin, byte lamp, long tOut, byte opI, byte opO, byte dependOnLamp = 100, byte lamp2 = 100) {

                //Initializing the MD pin states.
                
                motionSensorPin = pin; // A0
                timeout = tOut; //10000,  // MILLIS_TIME_MD_1 timeout
                opIn = opI; // I2C_OP_LAMP_ON, I2C_OP_LAMP_OFF, etc
                opOut = opO; // I2C_OP_LAMP_ON, I2C_OP_LAMP_OFF, etc
                
                lampNum = lamp;
                lamp2Num = lamp2;
                dependOnLampNum = dependOnLamp;
                
                lastCheckTime = 0;
                motion = false;
                
                //pinMode(14, INPUT);

                Serial.println("Motion Detect started...");
              }


              // Motion Detect process.
              void md_process() {
                
                currentMillis = millis();

                //md_sensor_value = analogRead(motionSensorPin);
                motion = analogRead(motionSensorPin) > 500 ? true : false;

                //Serial.print("md_sensor_1: ");  Serial.println(md_sensor_1);

                if (!lastCheckTime) {

                 if (motion) {
                   
                    Serial.println("Motion start detected! Do switch!");
                    
                    lastCheckTime = millis();

                    if (opIn == I2C_OP_LAMP_ON) {
                      // Not dependent switches on start motion
                      if (lamp2Num < lights_number) {
                        // If second lamp to switch is set, add it to the transfer object
                        data_transfer.target_2 = lamp2Num;
                      }
                      remoteLightSetAtMega(lampNum, opIn); // 5 - koridor tochki  
                      /*
                      if (lamp2Num < lights_number) {
                        // If second lamp to switch is set
                        remoteLightSetAtMega(lamp2Num, opIn); 
                      }
                      */
                      Serial.println("Request to switch light(s) on start Motion sent!");
                    }
                    else if (dependOnLampNum < lights_number && (opIn == I2C_OP_LAMP_ON_IF_SECOND_OFF || opIn == I2C_OP_LAMP_OFF_IF_SECOND_OFF || opIn == I2C_OP_LAMP_ON_IF_SECOND_ON || opIn == I2C_OP_LAMP_OFF_IF_SECOND_ON) ) {
                      // If the dependOnLampNum is set...
                      // Switch On/Off one lamp...
                      data_transfer.target_2 = dependOnLampNum; // it may be 6 - koridor podvesy that should be On or Off to switch 5 - koridor tochki  
                      remoteLightSetAtMega(lampNum, opIn); // it may be 5 - koridor tochki  
                      // Switch the second lamp also, if it's set.
                      if (lamp2Num < lights_number) {
                        // If second lamp to switch is set
                        remoteLightSetAtMega(lamp2Num, opIn); // it may be 6 - koridor podvesy
                      }
                      Serial.println("Request to dependent switch light(s) on start Motion sent!");
                    } // End of else if (dependOnLampNum < lights_number && (opIn == I2C_OP_LAMP_ON_IF_SECOND_OFF || opIn == I2C_OP_LAMP_OFF_IF_SECOND_OFF || opIn == I2C_OP_LAMP_ON_IF_SECOND_ON || opIn == I2C_OP_LAMP_OFF_IF_SECOND_ON) ) {
                    
                  } // End of if (motion) {
                 
                } // End of if (!lastCheckTime) {
                else {
                  // lastCheckTime != 0
                  if (motion) {
                    // Prolongate state ON on every movement
                    lastCheckTime = millis();
                  }
                  else if( currentMillis > (lastCheckTime + timeout)) {
                    
                     Serial.println("Motion stop detected! Do switch!");
                     
                     lastCheckTime = 0;
                     
                     
                     if (opOut == I2C_OP_LAMP_OFF) {
                       // Not dependent switches on stop motion
                        if (lamp2Num < lights_number) {
                          // If second lamp to switch is set, add it to the transfer object
                          data_transfer.target_2 = lamp2Num;
                        }
                        remoteLightSetAtMega(lampNum, opOut); // 5 - koridor tochki
                        Serial.println("Request to switch light(s) on stop Motion sent!");
                        /*
                        if (lamp2Num < lights_number) {
                          // If second lamp to control is set
                          remoteLightSetAtMega(lamp2Num, opOut); // 6 - koridor podvesy
                        }
                        */
                     }
                     //else if (dependOnLampNum < lights_number && opOut == I2C_OP_LAMP_OFF_IF_SECOND_OFF) {
                     else if (dependOnLampNum < lights_number && (opOut == I2C_OP_LAMP_ON_IF_SECOND_OFF || opOut == I2C_OP_LAMP_OFF_IF_SECOND_OFF || opOut == I2C_OP_LAMP_ON_IF_SECOND_ON || opOut == I2C_OP_LAMP_OFF_IF_SECOND_ON) ) {
                      // If the dependOnLampNum is set...
                      // Switch On/Off one lamp...
                      data_transfer.target_2 = dependOnLampNum; // for ex. turn Off 5 - koridor tochki if 6 - podvesy is Off
                      remoteLightSetAtMega(lampNum, opOut); // 5 - koridor tochki
                      if (lamp2Num < lights_number) {
                        // If second lamp to switch is set
                        remoteLightSetAtMega(lamp2Num, opOut); // for ex turn of also 6 - koridor podvesy
                      }
                      Serial.println("Request to dependent switch light(s) on stop Motion sent!");
                      
                     } // End of else if (dependOnLampNum < lights_number && (opOut == I2C_OP_LAMP_ON_IF_SECOND_OFF || opOut == I2C_OP_LAMP_OFF_IF_SECOND_OFF || opOut == I2C_OP_LAMP_ON_IF_SECOND_ON || opOut == I2C_OP_LAMP_OFF_IF_SECOND_ON) ) {
                     
                  } // End of else if( (lastCheckTime + timeout) < currentMillis) {
                  
                } // End of else of if (!lastCheckTime) {
                
              } // End of void md_process() {
              
              
              
              
              void remoteLightSetAtMega(byte lamp, byte op) {

                  // Oparate lights on MEGA
                  // Set sending data
                  data_transfer.from = I2C_UNO_ADDRESS;
                  data_transfer.to = I2C_MEGA_ADDRESS;
                  data_transfer.op = op;
                  data_transfer.target_1 = lamp;
                  data_transfer.wait_responce = false;


                  //send the data
                  //if (et_ifRemoteDeviceReady(I2C_MEGA_ADDRESS)) 
                  {
                    ET.sendData(data_transfer.to);
                    //Serial << "Data to MEGA was sent..." << endl;
                  }
              //    else {
              //      Serial << "MEGA is not ready" << endl;
              //    }

                  // Reset sending data
                  data_transfer.op = 0;
                  data_transfer.target_1 = -1;
                  data_transfer.target_2 = -1;
              }


}md_obj;



// testLed_class, moved to .h
/*
class testLed_class {

    public: 
      
              boolean testLedState;
              uint32_t current_millis;
              unsigned long lastCheckTime;
              long switchPeriod; // = 3500;  // period of the test led switching, ms.
              byte testLedPin; // = 12; // Uno pin num with the test led.
              
              // Test led blinking setup.
              void testLed_setup(byte pin, long sp) {
                
                testLedPin = pin;
                switchPeriod = sp;
                
                testLedState = false;
                lastCheckTime = 0;
                
                pinMode(testLedPin, OUTPUT);

                Serial.println("Test led blinking started...");
              }


              // Test led blinking process.
              void testLed_process() {

                current_millis = millis();

                if (current_millis - lastCheckTime > switchPeriod) {

                  lastCheckTime = current_millis;
                  if (testLedState) {
                    testLedState = false;
                    digitalWrite(testLedPin, LOW);
                    //Serial.println("testLed ------");
                  }
                  else {
                    testLedState = true;
                    digitalWrite(testLedPin, HIGH);
                    //Serial.println("testLed +++++++++++++");
                  }
                } // End of if (current_millis - millisTimes[MILLIS_TIME_TEST_LED] > millisTimeouts[MILLIS_TIME_TEST_LED]) {
              } // End of void testLed_process() {

}testLed_obj;

*/

testLed_class testLed_obj;

 

void setup() {

  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  

  webServer_obj.webServer_setup();
  
  et_obj.et_setup();
  
  // Motion Detect setup.
  md_obj.md_setup(A0, 5, 10000, I2C_OP_LAMP_ON, I2C_OP_LAMP_OFF_IF_SECOND_OFF, 6, 100); //5 - koridor tochki, 6 - koridor podvesy, 100 - none for second lamp to control
  
  testLed_obj.testLed_setup(12, 3500); // 12 pin for testLed, 3500 - period of testLed switch in ms
}


void loop() {
  
  testLed_obj.testLed_process();
  
  et_obj.et_receiving_process(); 
  
  webServer_obj.webServer_process();
  
  md_obj.md_process(); // Motion Detect process.
}


