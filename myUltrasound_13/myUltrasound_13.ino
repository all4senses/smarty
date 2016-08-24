
 
// TRIG pin which triggers ultrasonic sound
const byte us_trigPin = 4;
// ECHO pin which delivers time to receive echo using pulseIn()
const byte us_echoInPin = 3;

//raw duration in milliseconds, us_cm is the
//converted amount into a distance
long duration, us_cm, us_prev_cm = 0;
 
//LED pin numbers
int greenLed = 2;
 
 
void ultraS_setup() {
  //initializing the Ultrasonic pin states
  pinMode(us_trigPin, OUTPUT);
  pinMode(us_echoInPin, INPUT);
  // Test led
  pinMode(greenLed, OUTPUT);
}
 


 
void ultraS_process() {
  //range in us_cm which is considered safe to enter, anything
  //coming within less than 5 us_cm triggers red LED
  byte us_safeZone = 25;
  
  //sending the signal, starting with LOW for a clean signal
  digitalWrite(us_trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(us_trigPin, HIGH);
  delayMicroseconds(5);
  digitalWrite(us_trigPin, LOW);
 
  // receiving the duration in microseconds for the sound to bounce off the object infront
  // and convert the time into a distance
  
  //duration = pulseIn(us_echoInPin, HIGH);
  
  // The speed of sound is 340 m/s or 29 microseconds per centimeter.
  // The ping travels out and back, so to find the distance of the
  // object we take half of the distance travelled.
  us_cm = pulseIn(us_echoInPin, HIGH) / 29 / 2;
   
  if (us_cm > us_prev_cm + 3 || us_cm < us_prev_cm - 3) {
    Serial.print(us_cm);
    Serial.println("cm");
  }
 
//    if (us_cm > us_safeZone && us_prev_cm < us_safeZone)
  if (us_cm > us_safeZone)    
  {
    digitalWrite(greenLed, HIGH);
  }
//    else if (us_cm < us_safeZone && us_prev_cm > us_safeZone)
  else if (us_cm < us_safeZone)    
  {
    digitalWrite(greenLed, LOW);
  }

  us_prev_cm = us_cm;
  delay(1000);
}



void setup() {
  // initialize serial communication
  Serial.begin(9600);
  ultraS_setup(); 
}

 
void loop()
{
  ultraS_process();
}
 

