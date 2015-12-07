Setup setup1;
Pages page1;
int state;

void setup() {
  setup1 = new Setup();
  page1 = new Pages();
  state = 0;
  size (1024, 768);
}


void draw() {
  int diameter = 30;

  if (state == 0) {
    page1.display();
  }
  if (state == 1) {
    setup1.display();
  }
}

void mousePressed() {
  if (page1.insideRect() == true) {
    state = 1;
  }
}
/*
void mouseClicked () {
 
 if (state == 0) {
 if (mouseX < 465 && mouseX > 435 && mouseY < 65 && mouseY > 35)state = 1;
 }
 if (state == 1) {
 if (mouseX < 110 && mouseX > 90 && mouseY < 110 && mouseY > 90 )state = 0;
 }
 }
 */