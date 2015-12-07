class Setup {
  PVector location;
  float dia = 300;
  float x = 100;
  float y = 100;

  Setup() {
    location = new PVector(x, y);
  }

  void display() {
    strokeWeight(4);
    stroke(255);
    fill(#B20202);
    rect(location.x, location.y, dia, dia, 10);
    fill(255);
    textSize(16);
    text("Setup Menu", location.x+10, location.y+30);

    fill(#B20202);
    ellipse(100, 100, 20, 20);
  }
}