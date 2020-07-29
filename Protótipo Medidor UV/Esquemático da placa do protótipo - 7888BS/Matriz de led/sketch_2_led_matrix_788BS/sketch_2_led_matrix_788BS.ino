#include "RTClib.h"
#include <DHT.h>

#define DHTPIN A1
#define DHTTYPE DHT11 // DHT 11

#define clockPin 12
#define dataPin 11
#define latchPin 10

#define clockPin2 9
#define dataPin2 8
#define latchPin2 7

#define clockLeds 6
#define dataLeds 5
#define latchLeds 4

#define MODO_TEMPERATURA 0
#define MODO_HORA 1

RTC_DS3231 rtc;
DHT dht(DHTPIN, DHTTYPE);

int a = 0;
int index_led = 0;
int modo = 0;
long t_c = 0;
bool ponto_hora = false;
int tempo = 10000;
byte vect_aux[8] = {254, 253, 251, 247, 239, 223, 191, 127};

byte vetor_leds [] = {
  B00000100,
  B00001000,
  B00010000,
  B00100000,
  B01000000,
  B10000000
};

//caracteres
byte mapa[12][5] = {
  {
    //0
    B11111111,
    B10000001,
    B10000001,
    B10000001,
    B11111111,
  },

  //1
  {
    B00000001,
    B00000001,
    B11111111,
    B01000001,
    B00100001,
  },
  //2
  {
    B11110001,
    B10010001,
    B10010001,
    B10010001,
    B10011111,
  },

  //3
  {
    B11111111,
    B10010001,
    B10010001,
    B10010001,
    B10010001,
  },
  //4
  {
    B11111111,
    B00010000,
    B00010000,
    B00010000,
    B11110000,
  },
  //5
  {
    B10011111,
    B10010001,
    B10010001,
    B10010001,
    B11110001,
  },
  //6
  {
    B10011111,
    B10010001,
    B10010001,
    B10010001,
    B11111111,
  },
  //7
  {
    B11111111,
    B10000000,
    B10000000,
    B10000000,
    B10000000,
  },
  //8
  {
    B11111111,
    B10010001,
    B10010001,
    B10010001,
    B11111111,
  },
  //9
  {
    B11111111,
    B10010000,
    B10010000,
    B10010000,
    B11110000,
  },

  //  º
  {
    B01100000,
    B10010000,
    B01100000,
    B00000000,
    B00000000,
  },

  //  c
  {
    B10000001,
    B10000001,
    B10000001,
    B10000001,
    B01111110,
  }

};

void setup() {
  Serial.begin(9600);
  
  pinMode(dataPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(latchPin, OUTPUT);

  pinMode(dataPin2, OUTPUT);
  pinMode(clockPin2, OUTPUT);
  pinMode(latchPin2, OUTPUT);

  pinMode(dataLeds, OUTPUT);
  pinMode(clockLeds, OUTPUT);
  pinMode(latchLeds, OUTPUT);

  //Do sensor de temperatura
  dht.begin();

  //Do módulo RTC
  if(!rtc.begin()){
    Serial.println("Módulo RTC DS3231 não pode ser inicializado!!");
    while(1);
  }

  if(rtc.lostPower()){
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }


   // Configuração do TIMER1
  TCCR1A = 0;                //confira timer para operação normal
  TCCR1B = 0;                //limpa registrador
  TCNT1  = 0;                //zera temporizado
 
  OCR1A = 0x3D09;            // carrega registrador de comparação: 16MHz/1024/1Hz = 15625 = 0X3D09
  TCCR1B |= (1 << WGM12)|(1<<CS10)|(1 << CS12);   // modo CTC, prescaler de 1024: CS12 = 1 e CS10 = 1  
  TIMSK1 |= (1 << OCIE1A);  // habilita interrupção por igualdade de comparação 
}

//Modo temperatura
void escrever_temperatura(int temperatura){
  
  int ord = LSBFIRST;
  int dec = temperatura / 10;
  int un = temperatura % 10;

  
  //Matriz 1
  byte matriz_1 [] = {
    mapa[dec][0],
    mapa[dec][1],
    mapa[dec][2],
    mapa[dec][3],
    mapa[dec][4],
    B00000000,
    B00000000,
    B00000000
  };


  //Matriz 2
  byte matriz_2[] = {
    mapa[un][0],
    mapa[un][1],
    mapa[un][2],
    mapa[un][3],
    mapa[un][4],
    B00000000,
    B00000000,
    B00000000
  };

  //Matriz 3
  byte matriz_3 [] = {
    mapa[10][0],
    mapa[10][1],
    mapa[10][2],
    mapa[10][3],
    mapa[10][4],
    B00000000,
    B00000000,
    B00000000,
  };



  //Matriz 4
  byte matriz_4 [] = {
    B00000000,
    B00000000,
    B00000000,
    mapa[11][0],
    mapa[11][1],
    mapa[11][2],
    mapa[11][3],
    mapa[11][4]
  };

  for (int i = 0; i < 8; i++) {

    //quarta matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord,  matriz_4[i]);  //unidade
    digitalWrite(latchPin, HIGH);


    //terceira matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord,   matriz_3[i]);  //unidade
    digitalWrite(latchPin, HIGH);

    //segunda matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord,   matriz_2[i]);  //unidade
    digitalWrite(latchPin, HIGH);

    //primeira matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord,   matriz_1[i]);  //unidade
    digitalWrite(latchPin, HIGH);



    digitalWrite(latchPin2, LOW);
    shiftOut(dataPin2, clockPin2, ord, vect_aux[i]);
    digitalWrite(latchPin2, HIGH);


    // take the latchPin low so the LEDs don't change while you're sending in bits:
    digitalWrite(latchPin2, LOW);
    //Send 1 1 1 1 1 1 1 1 (255) to Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0 of 2nd 74595
    shiftOut(dataPin2, clockPin2, ord, 255);
    // shift out the bits:
    digitalWrite(latchPin2, HIGH);

  }
}

//Modo hora
void escrever_hora(String hora) {
  int ord1 = LSBFIRST;

  int c1 = (int)hora[0] - 48;
  int c2 = (int)hora[1] - 48;
  int c3 = (int)hora[2] - 48;
  int c4 = (int)hora[3] - 48;

  //Matriz 1
  byte matriz_1 [] = {
    mapa[c1][0],
    mapa[c1][1],
    mapa[c1][2],
    mapa[c1][3],
    mapa[c1][4],
    B00000000,
    B00000000,
    B00000000
  };


  //Matriz 2
  byte matriz_2[] = {
    B00000000,
    B00000000,
    mapa[c2][0],
    mapa[c2][1],
    mapa[c2][2],
    mapa[c2][3],
    mapa[c2][4],
    B00000000
  };

  //Matriz 3
  byte matriz_3 [] = {
    B00000000,
    mapa[c3][0],
    mapa[c3][1],
    mapa[c3][2],
    mapa[c3][3],
    mapa[c3][4],
    B00000000,
    B00000000,
  };



  //Matriz 4
  byte matriz_4 [] = {
    B00000000,
    B00000000,
    B00000000,
    mapa[c4][0],
    mapa[c4][1],
    mapa[c4][2],
    mapa[c4][3],
    mapa[c4][4],

  };

  if (ponto_hora) {
    matriz_2[0] = B01100110;
    matriz_3[7] = B01100110;
  }

  for (int i = 0; i < 8; i++) {

    //quarta matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord1,  matriz_4[i]);
    digitalWrite(latchPin, HIGH);

    //terceira matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord1,   matriz_3[i]);
    digitalWrite(latchPin, HIGH);

    //Segunda matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord1,  matriz_2[i]);
    digitalWrite(latchPin, HIGH);

    //Primeira matriz matriz
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, ord1,   matriz_1[i]);
    digitalWrite(latchPin, HIGH);


    digitalWrite(latchPin2, LOW);
    shiftOut(dataPin2, clockPin2, ord1, vect_aux[i]);
    digitalWrite(latchPin2, HIGH);


    digitalWrite(latchPin2, LOW);
    shiftOut(dataPin2, clockPin2, ord1, 255);
    digitalWrite(latchPin2, HIGH);

  }
}


//Modo hora
void escrever_nivel(int c1) {
  int ord1 = LSBFIRST;
  //quarta matriz
  digitalWrite(latchLeds, LOW);
  shiftOut(dataLeds, clockLeds, ord1,   vetor_leds[c1]);  //unidade
  digitalWrite(latchLeds, HIGH);
}

String obter_hora(){
  String hora = "";
  DateTime now = rtc.now();
  if(now.hour() < 10){
    hora = "0";
  }
  hora = hora+now.hour();
  
  if(now.minute() < 10){
    hora = hora+"0";  
  }
  hora = hora+now.minute();
  
  return hora;
  
}

int obter_indice_UV(){
  int sinal_indice_UV = analogRead(A0);

  if(sinal_indice_UV > 0 && sinal_indice_UV < 50){
    return 0; 
  }else{
    if(sinal_indice_UV >= 50 && sinal_indice_UV < 227){
        return 0;
    }else{
      if(sinal_indice_UV >= 227 && sinal_indice_UV < 318){
        return 0;
      }else{
        if(sinal_indice_UV >= 318 && sinal_indice_UV < 408){
          return 1;
        }else{
          if(sinal_indice_UV >= 408 && sinal_indice_UV < 503){
            return 1;
          }else{
            if(sinal_indice_UV >= 503 && sinal_indice_UV < 606){
              return 1;
            }else{
              if(sinal_indice_UV >= 606 && sinal_indice_UV < 696){
                return 2;
              }else{
                if(sinal_indice_UV >= 696 && sinal_indice_UV < 795){
                  return 2;
                }else{
                  if(sinal_indice_UV >= 795 && sinal_indice_UV < 881){
                    return 3;
                  }else{
                    if(sinal_indice_UV >= 881 && sinal_indice_UV < 976){
                      return 3;
                    }else{
                      if(sinal_indice_UV >= 976 && sinal_indice_UV < 1079){
                        return 3;
                      }else{
                        if(sinal_indice_UV >= 1079 && sinal_indice_UV < 5000){
                          return 4;
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

int obter_temperatura(){
   float t1 = dht.readTemperature();
   return (int) t1;
}

String hora;
int indice_UV;
int temperatura;

void loop() {
    
  if(a == 15){
    hora = obter_hora();
    indice_UV = obter_indice_UV();
    temperatura = obter_temperatura();
  }
  
  escrever_nivel(indice_UV);
  
  if (modo == MODO_TEMPERATURA) {
    escrever_temperatura(temperatura);
  } else {  
    escrever_hora(hora);
  }

}

ISR(TIMER1_COMPA_vect)          // interrupção por igualdade de comparação no TIMER1
{
  a = a+1;
  
  if(a > 15){
     if (modo == MODO_TEMPERATURA) {
        modo = MODO_HORA;
     } else {
      modo = MODO_TEMPERATURA;
    }

    a = 0;
  }
  
  if(ponto_hora){
    ponto_hora = false;
  }else{
    ponto_hora = true;
  }
}
