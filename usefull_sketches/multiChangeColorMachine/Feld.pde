class Feld{
  float xPos;
  float h;
  
  Feld(float xPos_, float h_){
    xPos = xPos_;
    h = h_;
 // h=  (int)random(0,359);
      
   }
   
  void show(){
    fill(h,80,90);  
     rect(xPos,offset,w,height-2*offset);
   }
  
  void update(){
    if(isMoving){
      xPos += xSpeed;
    }
    if(xPos < 0 - w){
      xPos = width;
      h =  (h+hStep+stepChange)%359;
      println(h + " StepChange: " + stepChange);
}
  }
}
