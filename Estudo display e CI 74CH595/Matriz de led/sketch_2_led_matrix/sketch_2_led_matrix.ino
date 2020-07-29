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


int i, a, b, c, d = 0;
int index_led = 0;
int modo = 0;
long t_c = 0;
int tempo = 700;
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
const byte mapa[][8] = {
{
  //0
  B01111000,
  B10000100,
  B00000100,
  B10000100,
  B10000100,
  B10000100,
  B10000100,
  B01111000,
},
 //1
{
  B00010000,
  B00110000,
  B01010000,
  B10010000,
  B00010000,
  B00010000,
  B00010000,
  B11111100,
},

//2
{
  B11111000,
  B00000100,
  B00000100,
  B01111000,
  B10000000,
  B10000000,
  B10000000,
  B11111100,
},


//3
{
  B11111000,
  B00000100,
  B00000100,
  B11111000,
  B00000100,
  B00000100,
  B00000100,
  B11111000,
},

 //4 
{
  B00000000,
  B00000000,
  B11111111,
  B00010000,
  B00010000,
  B00010000,
  B11110000,
  B00000000,
},
//5
{
  B00000000,
  B00000000,
  B10011111,
  B10010001,
  B10010001,
  B10010001,
  B11110001,
  B00000000,
},
//6
{
  B00000000,
  B00000000,
  B10001111,
  B10001001,
  B10001001,
  B10001001,
  B11011111,
  B00000000,

},
//7
{
  B00000000,
  B11111111,
  B10000000,
  B10000000,
  B10000000,
  B10000000,
  B00000000,
  B00000000,
},

//8
{
  B00000000,
  B00000000,
  B11111111,
  B10010001,
  B10010001,
  B10010001,
  B11111111,
  B00000000,
},
//9
{
  B00000000,
  B00000000,
  B11111111,
  B10010000,
  B10010000,
  B10010000,
  B11110000,
  B00000000,
}, 
//C  -> 10
{
  B01111100,
  B10000000,
  B10000000,
  B10000000,
  B10000000,
  B10000000,
  B10000000,
  B01111100,
},

//°   -> 11

{
  B00000110,
  B00001001,
  B00000110,
  B00000000,
  B00000000,
  B00000000,
  B00000000,
  B00000000,
},

};
 
void setup() { 
  pinMode(dataPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(latchPin, OUTPUT);

  pinMode(dataPin2, OUTPUT);
  pinMode(clockPin2, OUTPUT);
  pinMode(latchPin2, OUTPUT);

  pinMode(dataLeds, OUTPUT);
  pinMode(clockLeds, OUTPUT);
  pinMode(latchLeds, OUTPUT); 
}


//Modo temperatura
void escrever_temperatura(int c1, int c2){
  int ord = LSBFIRST;
   for (int i = 0; i < 8; i++){
      //quarta matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord,   mapa[10][i]);  //unidade
        digitalWrite(latchPin, HIGH);


         //terceira matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord,   mapa[11][i]);  //unidade
        digitalWrite(latchPin, HIGH);

        //segunda matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord,   mapa[c2][i]);  //unidade
        digitalWrite(latchPin, HIGH);

         //primeira matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord,   mapa[c1][i]);  //unidade
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
void escrever_hora(int c1, int c2, int c3, int c4){
    int ord1 = LSBFIRST;
    
    for (int i = 0; i < 8; i++){

        //quarta matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord1,   mapa[c4][i]);  //unidade
        digitalWrite(latchPin, HIGH);

        //terceira matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord1,   mapa[c3][i]);  //unidade
        digitalWrite(latchPin, HIGH);
      
        //Segunda matriz
        digitalWrite(latchPin, LOW); 
        shiftOut(dataPin, clockPin, ord1,   mapa[c2][i]);  //unidade
        digitalWrite(latchPin, HIGH);

        //Primeira matriz matriz
        digitalWrite(latchPin, LOW); 
       // shiftOut(dataPin, clockPin, ord,   mapa[c2][i]); //Dezena
        shiftOut(dataPin, clockPin, ord1,   mapa[c1][i]); //°C
        digitalWrite(latchPin, HIGH);


       digitalWrite(latchPin2, LOW);
       shiftOut(dataPin2, clockPin2, ord1, vect_aux[i]);
       digitalWrite(latchPin2, HIGH); 


          // take the latchPin low so the LEDs don't change while you're sending in bits:    
        digitalWrite(latchPin2, LOW);
        //Send 1 1 1 1 1 1 1 1 (255) to Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0 of 2nd 74595
        shiftOut(dataPin2, clockPin2, ord1, 255);
       // shift out the bits:  
        digitalWrite(latchPin2, HIGH); 
    }
}


//Modo hora
void escrever_nivel(int c1){
    int ord1 = LSBFIRST;
    //quarta matriz
    digitalWrite(latchLeds, LOW); 
    shiftOut(dataLeds, clockLeds, ord1,   vetor_leds[c1]);  //unidade
    digitalWrite(latchLeds, HIGH);
}


void loop() { 

  long t = millis();

  if(t - t_c < 0){
    t_c = 0;
  }
  
  if(t - t_c >= tempo){
     t_c = t;
     if(modo == 1){
        modo = 0;
      }else{
        modo = 1;
      }
      
      escrever_nivel(index_led);
      
      index_led = index_led+1;
      
      if(index_led > 5){
        index_led = 0;
      }
  }
  
  if(modo == 0){
    escrever_temperatura(2, 3);
    Serial.println("Modo 0");
  }else{
    escrever_hora(2, 2, 4, 5);
    Serial.println("Modo 1");
  } 
  

}
