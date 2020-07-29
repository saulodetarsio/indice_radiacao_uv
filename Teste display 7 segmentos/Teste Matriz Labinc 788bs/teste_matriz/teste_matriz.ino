
void setup() {
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
}

void loop() {
  digitalWrite(10, HIGH);
  digitalWrite(11, LOW);
  delay(1000);
  digitalWrite(11, HIGH);
  digitalWrite(10, LOW);
  delay(1000);
  
  
}
