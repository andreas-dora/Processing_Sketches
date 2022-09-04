int menge = 7;
int hStep = 77; 
float stepChange = 0;// Ausprobieren mit 31, 77 ,111, 129, 187 oder round(360/(menge)+17)
int offset;
float w;
float x = 0;
float xSpeed = -1.8; 
boolean isMoving = false;
Feld[] feld = new Feld[menge];

void setup(){
// fullScreen();
 size(640,360);
  offset = round(width /30);
  colorMode(HSB,359,99,99);
  w = (width-offset) / (feld.length-1) - offset; 
  for(int i = 0; i < feld.length; i++){
    int tempH = (0+hStep*i)%359;
    feld[i] = new Feld(x+offset+(w+offset)*i,tempH); 
  }
  smooth();
}

void draw(){

  background(#000000);
  for(int i = 0; i < feld.length; i++){
    feld[i].show();
    feld[i].update();
  }
//  stepChange+=0.4;
  if(stepChange >= 130){
    stepChange = 1;
  }
}

void mouseClicked(){
  isMoving = !isMoving;
}
