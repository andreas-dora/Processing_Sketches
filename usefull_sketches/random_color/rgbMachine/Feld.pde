class Feld{
  float xPos;
  float h;
  color c;
  
  Feld(float xPos_){
  xPos = xPos_; 
    c = color((int)random(0,255),(int)random(0,255),(int)random(0,255));      
   }
   
  void show(){
     fill(c);        
     rect(xPos,offset,w,height-2*offset);
     }
     
  void update(){ 
    xPos = xPos +=xSpeed;
    if(xPos < 0 - w){
      xPos = width;
      c = color((int)random(0,255),(int)random(0,255),(int)random(0,255));
    }
  }
}
