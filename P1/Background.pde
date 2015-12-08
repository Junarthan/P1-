class Background {
  int BGnr;
  Background() {
    BGnr = 1;
  }

  void display() {
    textSize(36);
    if (state == 0) { 
      background(#B20202); 
      text("screen 1, startup", 50, 50);
    }
    if (state == 1) {
      background(0, 0, 255);
      text("screen 2, main screen", 50, 50);
    }
    if (state == 2) {
      background(0, 255, 0);
      text("screen 3, recipe screen?", 50, 50);
    }
  }
}