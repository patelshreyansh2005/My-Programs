// C++ code
//
void setup()
{
  pinMode(10, OUTPUT);
  pinMode(5,INPUT);
}

void loop()
{
  if(digitalRead(5) == HIGH){
  	digitalWrite(10, HIGH);
  }
  else{
  	digitalWrite(10, LOW);
  }
}