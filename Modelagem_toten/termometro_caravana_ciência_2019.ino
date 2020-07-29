#include <LiquidCrystal.h>
#include <OneWire.h>
#include <DallasTemperature.h>


#define LED_VERMELHO 12
#define LED_VERDE 11
#define LED_AZUL 10

#define LIMIAR_Q 35.0
#define LIMIAR_F 18.0

#define ONE_WIRE_BUS A0


// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature sensors(&oneWire);

DeviceAddress sensorTemp;

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 7, en = 6, d4 =5, d5 = 4, d6 =3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

//Array simbolo grau
byte grau[8] = { B00100,
                B01010,
                B01010,
                B00100,
                B00000,
                B00000,
                B00000,
                B00000};

void informar_sensor_encontrado(){
  for(char a = 0; a < 3; a++){
    digitalWrite(LED_VERMELHO, HIGH);
    digitalWrite(LED_VERDE, HIGH);
    digitalWrite(LED_AZUL, HIGH);
    delay(500);
    
    digitalWrite(LED_VERMELHO, LOW);
    digitalWrite(LED_VERDE, LOW);
    digitalWrite(LED_AZUL, LOW);    
    delay(500);
  }
}

void informar_sensor_nao_encontrado(){
  for(char a = 0; a < 5; a++){
    digitalWrite(LED_VERMELHO, HIGH);
    delay(500);
    
    digitalWrite(LED_VERMELHO, LOW);
    delay(500);
  }
}

void piscar_led(int LED, int tempo){
   digitalWrite(LED, HIGH);
   delay(tempo);
   digitalWrite(LED, LOW);
   delay(tempo);
}

                
void setup() {
  //Pinos dos leds
  pinMode(LED_VERMELHO, OUTPUT);
  pinMode(LED_VERDE, OUTPUT);
  pinMode(LED_AZUL, OUTPUT);

  sensors.begin();
  lcd.begin(16, 2);

  
  if (sensors.getAddress(sensorTemp, 0)) {
    informar_sensor_encontrado();
  }else{
    informar_sensor_nao_encontrado();
  }
 
  
  // create a new character
  lcd.createChar(0, grau);

  
}

/**
**

 */
void loop() {

  sensors.requestTemperatures();
  float tempC = sensors.getTempC(sensorTemp);
  
  if(tempC < LIMIAR_Q && tempC > LIMIAR_F){
    digitalWrite(LED_AZUL, LOW);
    digitalWrite(LED_VERMELHO, LOW);
    digitalWrite(LED_VERDE, HIGH);

  }else{
    if(tempC >= LIMIAR_Q){
       digitalWrite(LED_AZUL, LOW);
       digitalWrite(LED_VERMELHO, HIGH);
     digitalWrite(LED_VERDE, LOW);
    }else{
         digitalWrite(LED_AZUL, HIGH);
         digitalWrite(LED_VERMELHO, LOW);
        digitalWrite(LED_VERDE, LOW);
    }
  }

  lcd.setCursor(4, 1);
  lcd.print("Temp:");
  
  if(tempC < 10 && tempC> -1){
    lcd.print("0");
  }
  
  lcd.print(tempC);
  lcd.write((byte)0);
  lcd.print("C");  

}
