Img images;
PImage[] pictures;
PImage[] achievementImage;
Button buttons;
Background backgrounds;
Achivements achievement;
int state;
int imgState;

void setup() {
  images = new Img();
  buttons = new Button();
  backgrounds = new Background();
  achievement = new Achivements();
  pictures = new PImage[10];
  pictures[0] = loadImage("BG1.png");
  pictures[1] = loadImage("ReturnB.png");
  pictures[2] = loadImage("FillerB.png");
  pictures[3] = loadImage("RecipeB.png");
  pictures[4] = loadImage("Pop1.png");
  pictures[5] = loadImage("round1.png");
  achievementImage = new PImage[achievement.xrow * achievement.yrow+1];
  achievementImage[0] = loadImage("achiv00.png");
  achievementImage[1] = loadImage("achiv01.png");
  for (int i = 2; i<achievement.xrow * achievement.yrow+1; i++)//TO BE DELETED
  {
    achievementImage[i] = loadImage("achiv01.png");
  }
  state = 0;
  imgState = -1;
  size (768, 1024);
}

void draw() {
  backgrounds.display();
  println(state);
  //ALT BUTTON DISPLAY FJERNES SENERE OG ERSTATTES MED BILLEDER FRA IMG CLASS
  if (state == 0) {
    buttons.display(buttons.main);
  }
  if (state == 1) {
    buttons.display(buttons.tempButton);
    buttons.display(buttons.achievementButton);
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
    achievement.display();
  }

  images.display();
}

void mouseReleased() {
  if (buttons.mouseWithin(buttons.main )&& state == 0) {
    state = 1;
  }

  if (state == 1) {
    if (buttons.mouseWithin(buttons.recipe)) {
      imgState *= -1;
    }
    if (buttons.mouseWithin(buttons.closeRec))
    { 
      imgState *= -1;
    }
    if (buttons.mouseWithin(buttons.tempButton)) {
      imgState = -1;
      state = 2;
    }
    if (buttons.mouseWithin(buttons.achievementButton)) {
      state = 3;
    }
    if (buttons.mouseWithin(buttons.startGameButton)) {
      state = 0;
    }
  }
  if (buttons.mouseWithin(buttons.back) && state > 1)
    state = 1;
}