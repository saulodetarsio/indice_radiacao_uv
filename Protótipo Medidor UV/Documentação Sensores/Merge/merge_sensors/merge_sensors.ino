#include <DHT.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include "RTClib.h"
#include <LiquidCrystal.h>

#define DHTPIN A0 // pino que estamos conectado
#define DHTTYPE DHT11 // DHT 11
 
// Conecte pino 1 do sensor (esquerda) ao +5V
// Conecte pino 2 do sensor ao pino de dados definido em seu Arduino
// Conecte pino 4 do sensor ao GND
// Conecte o resistor de 10K entre pin 2 (dados) 
// e ao pino 1 (VCC) do sensor
DHT dht(DHTPIN, DHTTYPE);

RTC_DS3231 rtc;


byte celsius[8] = {
  0b01100,
  0b10010,
  0b10010,
  0b01100,
  0b00000,
  0b00000,
  0b00000,
  0b00000
};

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 12, en = 11, d4 = 7, d5 = 6, d6 = 5, d7 = 4;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup(void)
{
  Serial.begin(9600);

  lcd.begin(16, 2);

  // create a new character
  lcd.createChar(0, celsius);

  Serial.println("DHTxx test!");
  dht.begin();
  
  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    while (1);
  }
  
  if (rtc.lostPower()) {
    Serial.println("RTC lost power, lets set the time!");
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  }
}
 
void retornar_temperatura_dht(){
   float t1 = dht.readTemperature();
   
   lcd.clear();
   lcd.setCursor(2,0);
   lcd.print("Temperatura");
   lcd.setCursor(5, 1);
   lcd.print((int)t1);
   lcd.write(byte(0));
   lcd.print("C");
}

void retornar_data(){
   DateTime now = rtc.now();

   String s = "";
   String separador = "/";

   int dia = now.day();
   int mes = now.month();
   int ano = now.year();

   if(dia < 10){
      s = s+"0";
   }
   s = s+dia;
   s = s+separador;

   if(mes < 10){
    s = s+"0";
   }
   s = s+mes;
   s = s+separador;

   s = s+ano;

   Serial.print("Data: ");
   Serial.println(s);

   lcd.clear();
   lcd.setCursor(6,0);
   lcd.print("Data");
   lcd.setCursor(3, 1);
   lcd.print(s);
}

void retornar_hora(){
   DateTime now = rtc.now();

   String s = "";
   String separador = ":";

   int hora = now.hour();
   int minuto = now.minute();
   int segundo = now.second();

   if(hora < 10){
      s = s+"0";
   }
   s = s+hora;
   s = s+separador;

   if(minuto < 10){
    s = s+"0";
   }
   s = s+minuto;
  // s = s+separador;

    //if(segundo < 10){
     // s = s+"0";
   // }
   //s = s+segundo;
   lcd.clear();
   lcd.setCursor(6, 0);
   lcd.print("Hora");
   lcd.setCursor(5, 1);
   lcd.print(s);
}

int determinar_indice_uv(int saida_sensor){
  if(saida_sensor > 0 && saida_sensor < 50){  //Indice 0
    return 0;
  }else{
    if(saida_sensor >= 50 && saida_sensor < 227){ //Indice 1
      return 1;
    }else{
      if(saida_sensor >= 227 && saida_sensor < 318){  //Indice 2
        return 2;
      }else{
        if(saida_sensor >= 318 && saida_sensor < 408){  //Indice 3
          return 3;
        }else{
          if(saida_sensor >= 408 && saida_sensor < 503){  //Indice 4
            return 4;
          }else{
            if(saida_sensor >= 503 && saida_sensor > 606){   //Indice 5
              return 5;
            }else{
              if(saida_sensor >= 606 && saida_sensor > 696){  //Indice 6
                return 6;
              }else{
                if(saida_sensor >= 696 && saida_sensor > 795){  //Indice 7
                  return 7;
                }else{
                  if(saida_sensor >= 795 && saida_sensor < 881){  //Indice 8
                    return 8;
                  }else{
                    if(saida_sensor >= 881 && saida_sensor < 976){  //Indice 9
                      return 9;
                    }else{
                      if(saida_sensor >= 976 && saida_sensor < 1079){  //Indice 10
                        return 10;
                      }else{
                        if(saida_sensor >= 1079 && saida_sensor < 5000){ //Indice 11
                          return 11;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void retornar_indice_uv(){
  String s = "";
  int valor = analogRead(A1);
  Serial.println(valor);
  int v = determinar_indice_uv(valor);
  Serial.print("Índice de radiação UV:");
  Serial.println(v);
  
   lcd.clear();
   lcd.setCursor(3, 0);
   lcd.print("Indice UV");
   lcd.setCursor(6, 1);
   lcd.print(valor);
}

//saida analogica do sensor uv: quarto escuro -> 1011 a 1012
void loop() {
  retornar_data();
  delay(2500);
  retornar_hora();
  delay(2500);

   retornar_indice_uv();
  delay(2500);

  retornar_temperatura_dht();
  delay(2500);
}
