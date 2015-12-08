class Background {
  int BGnr;
  Background() {
    BGnr = 1;
  }

  void display() {
    if (state == 0) background(#B20202);
    if (state == 1) background(0, 0, 255);
    if (state == 2) background(0, 255, 0);
  }
}