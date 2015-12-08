class Img {
  int x1;
  int y1;

  Img() {
    x1 =100 ;
    y1 = 200;

  }
  void display() {   
    if (imgState == 1) {
      rect(x1, y1, 500, 500);
    }
  }
}