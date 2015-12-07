Setup setup1;

int state;

void setup() {
  size (800, 800);

  setup1 = new Setup();

  state = 0;
}


void draw() {
  int diameter = 30;

  background(#B20202);
  textSize(36);
  fill(255);
  text("Main Screen", 140, 250);

  strokeWeight(4);
  stroke(255);
  fill(#B20202);
  ellipse(450, 50, diameter, diameter);
  textSize(16);
  fill(255);
  text("Setup", 430, 85);

  if (state == 1) {
    setup1.display();
  }
}

void mouseClicked () {

  if (state == 0) {
    if (mouseX < 465 && mouseX > 435 && mouseY < 65 && mouseY > 35)state = 1;
  }
  if (state == 1) {
    if (mouseX < 110 && mouseX > 90 && mouseY < 110 && mouseY > 90 )state = 0;
  }
}