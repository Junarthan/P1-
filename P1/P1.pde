Setup setup1;
Pages page1;
Recipes recipes1;
int state;

void setup() {
  setup1 = new Setup();
  page1 = new Pages();
  recipes1 = new Recipes();
  state = 0;
  size (1024, 768);
}


void draw() {
  int diameter = 30;

  if (state == 0) {
    page1.display();
    recipes1.displayButton();
  }
  if (state == 1) {
    setup1.display();
  }
  if (state == 2) {
    recipes1.displayRecip();
  }
}

void mousePressed() {
  println(state);
  if (page1.insideRect(page1.main)) {
    state = 1;
  }
//<<<<<<< Updated upstream
  if (page1.insideRect(page1.recipe)) {
//=======
  if (recipes1.insideButton() == true){
//>>>>>>> Stashed changes
    state = 2;
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