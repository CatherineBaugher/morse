template<class T> inline Print &operator <<(Print &obj, T arg){
  obj.print(arg); return obj;
}
int led12 = 12;
void setup() {
  Serial.begin(9600);
  pinMode(led12,OUTPUT);
  
  Serial << "~ Morse code generator ~\n";
  Serial << "Read from file \"input.txt\"\n";

  transMorse('a');
  transMorse('b');

}
void transMorse(char inp){
  switch(inp){
    case 'a':
      break;
    case 'b':
      break;
    case 'c':
      break;
    case 'd':
      break;
    case 'e':
      break;
    case 'f':
      break;
    case 'g':
      break;
    case 'h':
      break;
    case 'i':
      break;
    case 'j':
      break;
    case 'k':
      break;
    case 'l':
      break;
    case 'm':
      break;
    case 'n':
      break;
    case 'o':
      break;
    case 'p':
      break;
    case 'q':
      break;
    case 'r':
      break;
    case 's':
      break;
    case 't':
      break;
    case 'u':
      break;
    case 'v':
      break;
    case 'w':
      break;
    case 'x':
      break;
    case 'y':
      break;
    case 'z':
      break;
    case '1':
      break;
    case '2':
      break;
    case '3':
      break;
    case '4':
      break;
    case '5':
      break;
    case '6':
      break;
    case '7':
      break;
    case '8':
      break;
    case '9':
      break;
    case '0':
      break;
    default:
      break;
  }   
}
void dot(){
  delay(300);
  digitalWrite(led12, HIGH);
  delay(300);
  digitalWrite(led12, LOW);
}
void dash(){
  delay(300);
  digitalWrite(led12, HIGH);
  delay(900);
  digitalWrite(led12, LOW);
}
void loop() {
}
