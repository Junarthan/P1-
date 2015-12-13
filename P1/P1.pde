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
    buttons.display(buttons.initialStart);
  }
  if (state == 1) {
    buttons.display(buttons.recipeButton);
    buttons.display(buttons.achievementButton);
    buttons.display(buttons.popupButton);
    buttons.display(buttons.startGameButton);
  }
  if (state == 2) {
    buttons.display(buttons.yellowOverlay);
    buttons.display(buttons.recipeBox);
    buttons.display(buttons.back);
  }
  if (imgState == 1 && state == 1) {   
    buttons.display(buttons.closePopup);
  }
  if (state == 3) {
    buttons.display(buttons.back);
    achievement.display();
  }
  if (state == 4) {
    buttons.display(buttons.back2);
    buttons.display(buttons.recipeButton);
    buttons.display(buttons.cookingTechniques);
    buttons.display(buttons.ingredientsInfo);
  }

  images.display();
}

void mouseReleased() {
  if (buttons.mouseWithin(buttons.initialStart )&& state == 0) {
    state = 1;
  }

  if (state == 1) {
    if (buttons.mouseWithin(buttons.popupButton)) {
      imgState *= -1;
    }
    if (buttons.mouseWithin(buttons.closePopup))
    { 
      imgState *= -1;
    }
    if (buttons.mouseWithin(buttons.recipeButton)) {
      imgState = -1;
      state = 2;
    }
    if (buttons.mouseWithin(buttons.achievementButton)) {
      state = 3;
    }
    if (buttons.mouseWithin(buttons.startGameButton)) {
      state = 4;
    }
  }
  if (buttons.mouseWithin(buttons.back) && state == 1) {
    state = 1;
  }
  if (buttons.mouseWithin(buttons.back) && state == 2) {
    state = 1;
  }
  if (buttons.mouseWithin(buttons.back) && state == 3) {
    state = 1;
  }
  if (buttons.mouseWithin(buttons.back) && state == 4) {
    state = 1;
  }
  //GAME START. Cooking thing here
  if (state == 4) {
    if (buttons.mouseWithin(buttons.recipeButton)) {
      state = 5;
    }
    if (buttons.mouseWithin(buttons.cookingTechniques)) {
      state = 6;
    }
    if (buttons.mouseWithin(buttons.ingredientsInfo)) {
      state = 7;
    }
  }
  if (state == 5 || state == 6 || state == 7) {
    if (buttons.mouseWithin(buttons.back2)) {
      state = 4;
    }
  }
}