int offset;
float w;
float x = 0;
float xSpeed = -2.1;
int menge = 7;
Feld[] feld = new Feld[menge];

void setup(){
  //fullScreen();
 size(640,360);
  offset = round(width /24);
  w = (width-offset) / (feld.length-1) - offset;  
  for(int i = 0; i < feld.length; i++){
    feld[i] = new Feld(x+offset+(w+offset)*i); 
  }
}

void draw(){
  background(#000000);
  for(int i = 0; i < feld.length; i++){
    feld[i].show();
    feld[i].update();
  }
}
