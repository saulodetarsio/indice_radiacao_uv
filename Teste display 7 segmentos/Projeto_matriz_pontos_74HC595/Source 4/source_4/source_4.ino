byte character[8] = {0x24, 0x24, 0x24, 0xa5, 0x81, 0x81, 0x7e, 0x0};

#define SCK_1_PIN 12
#define SER_1_PIN 11
#define RCK_1_PIN 10

#define SCK_2_PIN 7
#define SER_2_PIN 6
#define RCK_2_PIN 5

void setup() {
  pinMode(SER_1_PIN, OUTPUT);
  pinMode(SCK_1_PIN, OUTPUT);
  pinMode(RCK_1_PIN, OUTPUT);

  pinMode(SER_2_PIN, OUTPUT);
  pinMode(SCK_2_PIN, OUTPUT);
  pinMode(RCK_2_PIN, OUTPUT);

  Serial.begin(9600);

}

byte aux[][5] = {
    {0b00000000}//Bits -> baixos da matriz
};

byte master[][5] = {
  {0b00000001, 0b0000010, 0b00001100}               //Bits altos da matriz
};



char c = 1;
int contador = 0;

void loop() {

    if(contador == 4){
      contador = 0;
    }

    write595_1(master[0][0]);
    write595_2(aux[0][0]);
    
    write595_1(master[0][1]);
    write595_2(aux[0][0]);

    write595_1(master[0][2]);
    write595_2(~master[0][2]);
    
    contador = contador+1;
}

void write595_1(byte data) {
  digitalWrite(RCK_1_PIN, LOW);
  //Serial.println(data, BIN);
  shiftOut(SER_1_PIN, SCK_1_PIN, LSBFIRST, data);
  digitalWrite(RCK_1_PIN, HIGH);
  
}

void write595_2(byte data) {
  //Serial.println(data, BIN);
  digitalWrite(RCK_2_PIN, LOW);
  shiftOut(SER_2_PIN, SCK_2_PIN, MSBFIRST, data);
  digitalWrite(RCK_2_PIN, HIGH);
}
