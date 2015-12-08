class Background {
  int BGnr;
  Background() {
    BGnr = 1;
  }

  void display() {
    if (state == 0) { 
      background(#B20202); 
      text("screen 1", 50, 50);
    }
      if (state == 1) {
      background(0, 0, 255);
      text("screen 2", 50, 50);
    }
      if (state == 2) {
      background(0, 255, 0);
      text("screen 3", 50, 50);
    }
  }
}