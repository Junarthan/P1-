Img images;
PImage[] pictures;
Button buttons;
Background backgrounds;
int state;
int imgState;

void setup() {
  images = new Img();
  buttons = new Button();
  backgrounds = new Background();
  pictures = new PImage[10];
  pictures[0] = loadImage("BG1.png");
  pictures[1] = loadImage("ReturnB.png");
  pictures[2] = loadImage("FillerB.png");
  pictures[3] = loadImage("RecipeB.png");
  pictures[4] = loadImage("Pop1.png");
  pictures[5] = loadImage("round1.png");
  state = 0;
  imgState = 0;
  size (768, 1024);
}

void draw() {
  println(buttons.mouseWithin(buttons.closeRec));
  backgrounds.display();
  //ALT BUTTON DISPLAY FJERNES SENERE OG ERSTATTES MED BILLEDER FRA IMG CLASS
  if (state == 0) {
    buttons.display(buttons.main);
  }
  if (state == 1) {
    buttons.display(buttons.tempButton);
    buttons.display(buttons.recipe);
    buttons.display(buttons.startGameButton);
  }
  if (state == 2) {
    buttons.display(buttons.recipButton);
    buttons.display(buttons.recip);
    buttons.display(buttons.back);
  }
  if (imgState == 1 && state == 1) {   
    buttons.display(buttons.closeRec);
  }
  if (state == 3) {
    buttons.display(buttons.back);
  }

  images.display();
}

void mouseReleased() {
  println(state);
  if (buttons.mouseWithin(buttons.main )&& state == 0) {
    state = 1;
  }

  if (state == 1) {
    if (buttons.mouseWithin(buttons.recipe)) {
      imgState = 1;
    }
    if (buttons.mouseWithin(buttons.closeRec))
    { 
      imgState = 0;
    }
    if (buttons.mouseWithin(buttons.tempButton)) {
      state = 2;
    }
    if (buttons.mouseWithin(buttons.startGameButton)) {
      state = 3;
    }
  }

  if (buttons.mouseWithin(buttons.back) && state > 1)
    state = 1;
}