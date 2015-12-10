class Background {
  int BGnr;
  Background() {
    BGnr = 1;
  }

  void display() {
    textSize(36);
    if (state == 0) { 
      background(pictures[0]); 
      text("screen 1, startup", 50, 50);
    }
    if (state == 1) {
      background(pictures[0]);
      text("screen 2, main screen", 50, 50);
    }
    if (state == 2) {
      background(pictures[0]);
      text("screen 3, recipe screen?", 50, 50);
    }
    if (state == 3) {
      background(pictures[0]);
      text("screen 4, achievements", 50, 50);
    }
    if (state == 4) {
      background(pictures[0]);
      text("screen 5, start cooking", 50, 50);
    }
    if (state == 5) {
      background(pictures[0]);
      text("screen 6, recipe under start cooking", 50, 50);
    }
    if (state == 6) {
      background(pictures[0]);
      text("screen 7, cooking techniques", 50, 50);
    }
    if (state == 7) {
      background(pictures[0]);
      text("screen 8, ingredients info", 50, 50);
    }
  }
}