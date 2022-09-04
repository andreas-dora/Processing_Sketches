float hNoise = 0.0;
float brNoise = 0.0;
float brVal;
float noiseSpeed = 0.01;
float noiseValue = 0;
int colorBuff = 120;
int brightBuff = 80;
int menge = 10;
int offset;
float w;
float x = 0;
float xSpeed = -2.2; 
boolean isMoving = true;
Feld[] feld = new Feld[menge];

void setup(){
 fullScreen();
 size(640,360);
  offset = round(width /24);
  colorMode(HSB,359,99,99);
  int tempH;
  w = (width-(offset*(feld.length))) / (feld.length-1) ; 
  for(int i = 0; i < feld.length; i++){
    tempH = (int)random(0,359);
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
  noiseValue = noise(hNoise);
  hNoise += noiseSpeed;
  brVal = noise(brNoise);
  
  brNoise += noiseSpeed;
  println(noiseValue);
}

void mouseClicked(){
  isMoving = !isMoving;
}
