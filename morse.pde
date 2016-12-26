import processing.serial.*;
import cc.arduino.*;
Arduino arduino = new Arduino(this, Arduino.list()[0], 57600);
BufferedReader br;
String words;
int led12 = 12;
void setup(){
  br = createReader("input.txt");
}
void draw(){
  try{
    words = br.readLine();
  }catch(IOException e){
    e.printStackTrace();
    words = null;
  }
  if(words!=null){
    for(int i = 0; i < words.length(); i++){
      transMorse(words.charAt(i));
    }
    worbreak();
  }else{
    noLoop();
  }
}
void transMorse(char inp){
  switch(inp){
    case 'a':
      dot();
      dash();
      break;
    case 'b':
      dash();
      dot();
      dot();
      dot();
      break;
    case 'c':
      dash();
      dot();
      dash();
      dot();
      break;
    case 'd':
      dash();
      dot();
      dot();
      break;
    case 'e':
      dot();
      break;
    case 'f':
      dot();
      dot();
      dash();
      dot();
      break;
    case 'g':
      dash();
      dash();
      dot();
      break;
    case 'h':
      dot();
      dot();
      dot();
      dot();
      break;
    case 'i':
      dot();
      dot();
      break;
    case 'j':
      dot();
      dash();
      dash();
      dash();
      break;
    case 'k':
      dash();
      dot();
      dash();
      break;
    case 'l':
      dot();
      dash();
      dot();
      dot();
      break;
    case 'm':
      dash();
      dash();
      break;
    case 'n':
      dash();
      dot();
      break;
    case 'o':
      dash();
      dash();
      dash();
      break;
    case 'p':
      dot();
      dash();
      dash();
      dot();
      break;
    case 'q':
      dash();
      dash();
      dot();
      dash();
      break;
    case 'r':
      dot();
      dash();
      dot();
      break;
    case 's':
      dot();
      dot();
      dot();
      break;
    case 't':
      dash();
      break;
    case 'u':
      dot();
      dot();
      dash();
      break;
    case 'v':
      dot();
      dot();
      dot();
      dash();
      break;
    case 'w':
      dot();
      dash();
      dash();
      break;
    case 'x':
      dash();
      dot();
      dot();
      dash();
      break;
    case 'y':
      dash();
      dot();
      dash();
      dash();
      break;
    case 'z':
      dash();
      dash();
      dot();
      dot();
      break;
    case '1':
      dot();
      dash();
      dash();
      dash();
      dash();
      break;
    case '2':
      dot();
      dot();
      dash();
      dash();
      dash();
      break;
    case '3':
      dot();
      dot();
      dot();
      dash();
      dash();
      break;
    case '4':
      dot();
      dot();
      dot();
      dot();
      dash();
      break;
    case '5':
      dot();
      dot();
      dot();
      dot();
      dot();
      break;
    case '6':
      dash();
      dot();
      dot();
      dot();
      dot();
      break;
    case '7':
      dash();
      dash();
      dot();
      dot();
      dot();
      break;
    case '8':
      dash();
      dash();
      dash();
      dot();
      dot();
      break;
    case '9':
      dash();
      dash();
      dash();
      dash();
      dot();
      break;
    case '0':
      dash();
      dash();
      dash();
      dash();
      dash();
      break;
    default:
      break;
  }
  letbreak();
}
void dot(){
  delay(300); //one unit
  arduino.digitalWrite(led12, Arduino.HIGH);
  delay(300);
  arduino.digitalWrite(led12, Arduino.LOW);
}
void dash(){
  delay(300);
  arduino.digitalWrite(led12, Arduino.HIGH);
  delay(900); //three units
  arduino.digitalWrite(led12, Arduino.LOW);
}
void letbreak(){
  delay(600); //900-300=600
}
void worbreak(){
  delay(1200); //2100-300-600=1200
}
