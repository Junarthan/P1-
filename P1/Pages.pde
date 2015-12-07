class Pages {
  int mainX;
  int mainY;
  int mainW;
  int mainH;

  Pages() {

    mainW = 300;
    mainH = 150;
    mainX = width/2-(mainW/2);
    mainY = height/2-(mainH/2);
  }

  void display() {
    int diameter = 30;
    background(#B20202);
    textSize(36);
    strokeWeight(4);
    stroke(255);
    fill(#B20202);
    ellipse(450, 50, diameter, diameter);
    rect(mainX, mainY, mainW, mainH);
    fill(255);
    text("Main Screen", mainX+50, mainY+50);
    textSize(16);
    fill(0);
    fill(127);
    ellipse(450, 50, diameter, diameter);
    textSize(16);
    fill(255);
    text("Setup", 430, 80);
  }

  boolean insideRect() {    
    return mainX <= mouseX && mouseX <= mainX+mainW && mainY <= mouseY && mouseY <= mainY+mainH ;
  }
}