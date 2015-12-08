Setup setup1;
Button buttons;
Background bg;
int state;

void setup() {
  setup1 = new Setup();
  buttons = new Button();
  bg = new Background();
  state = 0;
  size (1024, 768);
}

void draw() {
  bg.display();
  if (state == 0) {
    buttons.display(buttons.main);
  }
  if (state == 1) {
    buttons.display(buttons.recipe);
    setup1.display();
  }
  if (state == 2) {
    buttons.display(buttons.closeRecipe);
  }
}

void mousePressed() {
  println(state);
  if (buttons.insideRect(buttons.main)) {
    state = 1;
  }
  if (buttons.insideRect(buttons.recipe)) {
    state = 2;
  }
  if (buttons.insideRect(buttons.closeRecipe))
  {
    state = 0;
  }
}