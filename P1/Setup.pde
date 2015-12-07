class Setup{
  PVector location;
  float dia = 300;
  float x = 100;
  float y = 100;
  
  Setup(){
    location = new PVector(x,y);
  }
  
  void display(){
    fill(255);
    rect(location.x,location.y,dia,dia);
    fill(0);
    textSize(16);
    text("Setup Menu",location.x+150,location.y+150);
   }
  
}