  #define SER_1_PIN 11
#define SCK_1_PIN 12
#define RCK_1_PIN 10

#define SER_2_PIN 6
#define SCK_2_PIN 7
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

void loop() {
  
}
