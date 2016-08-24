/* YourDuino.com Example Software Sketch
 IR Remote Kit Test
 Uses YourDuino.com IR Infrared Remote Control Kit 2
 http://arduino-direct.com/sunshop/index.php?l=product_detail&p=153
 based on code by Ken Shirriff - http://arcfn.com
 Get Library at: https://github.com/shirriff/Arduino-IRremote
 Unzip folder into Libraries. RENAME folder IRremote
 terry@yourduino.com */

/*-----( Import needed libraries )-----*/

#include "IRremote.h"
#include <LiquidCrystal.h>

#define JVCPower 49384

IRsend irsend;

/*-----( Declare Constants )-----*/
int receiver = 3; // pin 1 of IR receiver to Arduino digital pin 11

/*-----( Declare objects )-----*/
IRrecv irrecv(receiver);           // create instance of 'irrecv'
decode_results results;            // create instance of 'decode_results'
/*-----( Declare Variables )-----*/


// initialize the library with the numbers of the interface pins
//LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
LiquidCrystal lcd(7, 8, 9, 10, 11, 12); 


void setup()   /*----( SETUP: RUNS ONCE )----*/
{
  Serial.begin(9600);
  Serial.println("IR Receiver Raw Data + Button Decode Test");
  irrecv.enableIRIn(); // Start the receiver


  // set up the LCD's number of columns and rows: 
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("Love my Olechka");
  lcd.cursor();
  lcd.setCursor(0, 1);
  //delay(1000);

}/*--(end setup )---*/


void loop()   /*----( LOOP: RUNS CONSTANTLY )----*/
{
  if (irrecv.decode(&results)) // have we received an IR signal?

  {
//    Serial.println(results.value, HEX);  UN Comment to see raw values
    translateIR(); 
    irrecv.resume(); // receive the next value
  }  
  
//    irsend.sendJVC(JVCPower, 16,0); // hex value, 16 bits, no repeat
//  delayMicroseconds(50); // see http://www.sbprojects.com/knowledge/ir/jvc.php for information
//  irsend.sendJVC(JVCPower, 16,1); // hex value, 16 bits, repeat
//  delayMicroseconds(50);
  
}/* --(end main loop )-- */

/*-----( Declare User-written Functions )-----*/
void translateIR() // takes action based on IR code received

// describing Car MP3 IR codes 

{

  lcd.setCursor(0, 1);
  
  switch(results.value)

  {

  case 49384:  
    Serial.println(" jvc power              "); 
    lcd.print(" jvc power              ");
    break;

  case 16580863:  
    Serial.println(" my r power              "); 
    lcd.print(" my r power              ");
//    irsend.sendJVC(JVCPower, 16,0); // hex value, 16 bits, no repeat
//    delayMicroseconds(50); // see http://www.sbprojects.com/knowledge/ir/jvc.php for information
//    irsend.sendJVC(JVCPower, 16,1); // hex value, 16 bits, repeat
//    delayMicroseconds(50);
  
  
    break;
    
  default: 
    Serial.println(" other button   ");
    Serial.println(results.value);
    lcd.print(results.value); 

  }
  
  delay(500);


} //END translateIR



/* ( THE END ) */
