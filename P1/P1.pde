Setup setup1;
<<<<<<< HEAD
Pages page1;
Recipes recipes1;
=======
Button buttons;
Background bg;
>>>>>>> origin/master
int state;

void setup() {
  setup1 = new Setup();
<<<<<<< HEAD
  page1 = new Pages();
  recipes1 = new Recipes();
=======
  buttons = new Button();
  bg = new Background();
>>>>>>> origin/master
  state = 0;
  size (1024, 768);
}

void draw() {
  bg.display();
  if (state == 0) {
<<<<<<< HEAD
    page1.display();
    recipes1.displayButton();
=======
    buttons.display(buttons.main);
>>>>>>> origin/master
  }
  if (state == 1) {
    buttons.display(buttons.recipe);
    setup1.display();
  }
  if (state == 2) {
<<<<<<< HEAD
    recipes1.displayRecip();
=======
    buttons.display(buttons.closeRecipe);
>>>>>>> origin/master
  }
}

void mousePressed() {
  println(state);
  if (buttons.insideRect(buttons.main)) {
    state = 1;
  }
<<<<<<< HEAD
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
=======
  if (buttons.insideRect(buttons.recipe)) {
    state = 2;
  }
  if (buttons.insideRect(buttons.closeRecipe))
  {
    state = 0;
  }
}
>>>>>>> origin/master
