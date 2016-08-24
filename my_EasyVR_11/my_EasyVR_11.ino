#if defined(ARDUINO) && ARDUINO >= 100
  #include "Arduino.h"
  #include "Platform.h"
  #include "SoftwareSerial.h"
#ifndef CDC_ENABLED
  // Shield Jumper on SW
  SoftwareSerial port(12,13);
#else
  // Shield Jumper on HW (for Leonardo)
  #define port Serial1
#endif
#else
  #error "Arduino version not supported. Please update your IDE."
#endif

#include "EasyVR.h"


EasyVR easyvr(port);
 
// Номер пина для светодиода, индицирующего ожидание команды
const int LED_WAIT = 13;
 
// Номер группы команд
enum
{
    GROUP_MAIN = 2,
};
 
// Коды команд из группы 1
enum
{
    G2_APPLE = 0,
    G2_ORANGE = 1,
    G2_NUTS = 2,
};
 

 

 
 
void setup(void)
{
    Serial.begin(9600);
 
    // Переводим на запись порт для индикации
    // активности микрофона
    //pinMode(LED_WAIT, OUTPUT);
    //digitalWrite(LED_WAIT, LOW);
 
    Serial.println("Start...");
    
    port.begin(9600);
    // Ожидание соединения с платой
    while(!easyvr.detect()) delay(1000);
    Serial.println("Start 2"); 
    // Установка таймаута на распознавание
    easyvr.setTimeout(5);
 
     Serial.println("Start 3");
    // Выбор языка (Английский)
    easyvr.setLanguage(EasyVR::ENGLISH);
 
     Serial.println("Start 4");
    delay(1000);
        Serial.println("Start 5");
}
 
 
// Данная функция вызывается в случае успешного
// распознавания фразы
void action(int8_t group, int8_t idx)
{
    // Активируем серву, соответствующую распознанному коду
    switch (group)
    {
    case GROUP_MAIN:
        switch (idx)
        {
        case G2_APPLE:
            Serial.println("Apple!");
            break;
        case G2_ORANGE:
            Serial.println("Orange");
            break;
        case G2_NUTS:
            Serial.println("Nuts");
            break;
        }
        break;
    }
}
 
 
void loop(void)
{
    int8_t idx;
 
    // Зажигаем светодиод для индикации режима ожидания команды
    //digitalWrite(LED_WAIT, HIGH);
    

   
   //return;
   
    // Запускаем процедуру распознавания
    easyvr.recognizeCommand(GROUP_MAIN);
 
   Serial.println("Wait...");
    // Ожидаем окончание процесса
    while(!easyvr.hasFinished());
   Serial.println("Got it!"); 
    // Тушим светодиод - либо таймаут, либо команда распознана
    //digitalWrite(LED_WAIT, LOW);
 
    // Если убрать эту задержку, то мы перестанем видеть, когда заканчивается
    // один период ожидания команды и начинается второй. Если произнесение команды
    // придётся на границу двух периодов, то распознавание закончится неудачей.
    delay(500);
 
    // Получаем код распознанной команды
    idx = easyvr.getCommand();
 

    if(idx >= 0)
    {
       Serial.println(idx); 
        // Выполним действие по команде
        action(GROUP_MAIN, idx);
    }
    else
    {
        // Ошибка распознавания или таймаут
    }
}

