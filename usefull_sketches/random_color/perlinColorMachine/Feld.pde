class Feld{
  float xPos;
  float h;
  float b;
  Feld(float xPos_, float h_){
    xPos = xPos_;
    h=  h_;
      
   }
   
  void show(){
    b = 80;
    fill(h,b,90);  
     rect(xPos,offset,w,height-2*offset);
   }
  
  void update(){
    if(isMoving){
      xPos += xSpeed;
    }
    if(xPos < 0 - w ){
      xPos = width; //+offset/2;
      h = (colorBuff + floor(map(noiseValue,0,1,0,359)))%359;
      b = (brightBuff +(map(brVal,0,1,0,99)));
      println(map(noiseValue,0,1,0,99));
     // h = (int)random(0,359);
    }
  }
}
