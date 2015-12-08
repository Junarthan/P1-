class Recipes {
  int recipX;
  int recipY;
  int recipW;
  int recipH;
  int buttonX;
  int buttonY;
  int buttonW;
  int buttonH;
  
  Recipes() {
    recipX = 100;
    recipY = 100;
    recipW = 824;
    recipH = 568;
    buttonX = 800;
    buttonY = 50;
    buttonW = 30;
    buttonH = 30;
  }
  void displayButton() {
    ellipse(buttonX, buttonY, buttonW, buttonH);
    
  }
  void displayRecip() {
    fill(0);
    rect(recipX, recipY, recipW, recipH);
  }
  
  boolean insideButton() {
    return buttonX <= mouseX && mouseX <= buttonX+buttonW 
    && buttonY <= mouseY && mouseY <= buttonY+buttonH;
  }
  
}