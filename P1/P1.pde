Img images;
Button buttons;
Background bg;
int state;
int imgState;

void setup() {
  images = new Img();
  buttons = new Button();
  bg = new Background();
  state = 0;
  imgState = 0;
  size (1024, 768);
}

void draw() {
  bg.display();
  images.display();
  if (state == 0) {
    buttons.display(buttons.main);
  }
  if (state == 1) {
    buttons.display(buttons.tempButton);
    buttons.display(buttons.recipe);
    buttons.display(buttons.back);
  }
  if (state == 2) {
    buttons.display(buttons.back);
  }
  if (imgState == 1 && state == 1)
    buttons.display(buttons.closeRecipe);
}

void mousePressed() {
  println(state);
  if (buttons.mouseWithin(buttons.main )&& state == 0) {
    state = 1;
  }

  if (state == 1) {
    if (buttons.mouseWithin(buttons.recipe)) {
      imgState = 1;
    }
    if (buttons.mouseWithin(buttons.closeRecipe))
    { 
      imgState = 0;
    }
    if (buttons.mouseWithin(buttons.tempButton)) {
      state = 2;
    }
  }
  if (buttons.mouseWithin(buttons.back) && state > 0)
    state = 0;
}