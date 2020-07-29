#include "RTClib.h"    //Importar a biblioteca para a aplicação
RTC_DS3231 rtc;     //Objeto que contém as funções de manipulação das informações

void setup () {
  Serial.begin(9600); //Inicializar comunicação serial   
  delay(3000);     //Espere 3 segundos
  /**
   * Se o módulo não inicializou corretamente, uma mensagem é enviada
   * ao console e a o arduino fica preso em um loop infinito.
   **/
  if (! rtc.begin()) {  
    Serial.println("Módulo RTC DS3231 não pode ser encontrado!");
    while (1);
  }

  //Caso o módulo desligue, há o ajuste da data
  if (rtc.lostPower()) {
    //Ajuste de data
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }
}

void loop () {
    DateTime now = rtc.now();  //Uma instância do momento atual
       if(now.hour() < 10){
       Serial.print("0");
    }
    Serial.print(now.hour()); //Imprime a hora
    Serial.print(":");
    
    if(now.minute() < 10){
       Serial.print("0");
    }
    Serial.println(now.minute());  //Imprime o minuto 
    delay(1000); //Espere 1 segundo
}
