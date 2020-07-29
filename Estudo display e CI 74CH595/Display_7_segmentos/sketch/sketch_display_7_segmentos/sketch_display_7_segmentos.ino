#define CLOCK 12
#define DADOS_1 11
#define LATCH 10
#define DADOS_2 9
#define TEMPO 1000
#define PIN_MODO_TEMPERATURA 8
#define PIN_MODO_HORA 9

#define MODO_TEMPERATURA 0
#define MODO_HORA 1

byte modo_operacao = MODO_HORA;

void setup() {
  Serial.begin(9600);
  pinMode(CLOCK, OUTPUT);
  pinMode(DADOS_1, OUTPUT);
  pinMode(DADOS_2, OUTPUT);
  pinMode(LATCH, OUTPUT);
  pinMode(PIN_MODO_TEMPERATURA, OUTPUT);
  pinMode(PIN_MODO_HORA, OUTPUT);
}

void escrever_caracter(byte caracter){
   digitalWrite(LATCH, LOW);
   shiftOut(DADOS_1, CLOCK, LSBFIRST,  caracter);
   digitalWrite(LATCH, HIGH);
}
void escrever_temperatura(byte *informacao){
  escrever_caracter(0b01100010); //C
  escrever_caracter(0b00111000);  //°
  escrever_caracter(informacao[2]);
  escrever_caracter(informacao[1]);
  escrever_caracter(informacao[0]);
}

void escrever_horario(byte *informacao){
  escrever_caracter(0b11111110); // "blanck"
  escrever_caracter(informacao[3]); 
  escrever_caracter(informacao[2]); 
  escrever_caracter(informacao[1]); 
  escrever_caracter(informacao[0]);
}


byte converter_para_binario(char c){
  if(c == '0'){
    return 0b00000010;
  }else{
    if(c == '1'){
      return 0b10011110;
    }else{
      if(c == '2'){
        return 0b00100100;
      }else{
        if(c == '3'){
          return 0b00001100;
        }else{
          if(c == '4'){
            return 0b10011000;
          }else{
            if(c == '5'){
              return 0b01001000;
            }else{
              if(c == '6'){
                return 0b01000000;
              }else{
                if(c == '7'){
                  return 0b00011110;
                }else{
                  if(c == '8'){
                    return 0b00000000;
                  }else{
                    if(c == 9){
                      return 0b01100010;
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

byte index_modo_operacao = 0;
void loop() {
    
   if(index_modo_operacao == 10){
    index_modo_operacao = 0;

    if(modo_operacao == MODO_HORA){
      modo_operacao = MODO_TEMPERATURA;
      
    }else{
      if(modo_operacao == MODO_TEMPERATURA){
        modo_operacao = MODO_HORA;
      }
    }
   }
  
  if(modo_operacao == MODO_TEMPERATURA){

    byte v[] = {converter_para_binario('2'), converter_para_binario('6'), converter_para_binario('9')};
    
    escrever_temperatura(v);
    digitalWrite(PIN_MODO_TEMPERATURA, HIGH);
  }else{
    if(modo_operacao == MODO_HORA){
      
      byte v[] = {converter_para_binario('1'), converter_para_binario('4'), converter_para_binario('2'), converter_para_binario('6')};
      escrever_horario(v);
       
      digitalWrite(PIN_MODO_TEMPERATURA, HIGH);
      digitalWrite(PIN_MODO_HORA, HIGH);
      delay(500);
      
      digitalWrite(PIN_MODO_TEMPERATURA, LOW);
      digitalWrite(PIN_MODO_HORA, LOW);
    }
  }
  
  index_modo_operacao += 1;
  delay(500);
}
