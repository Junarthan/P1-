class Img {
  int x1;
  int y1;

  Img() {
    x1 =100 ;
    y1 = 200;
  }
  void display() {
    imageMode(NORMAL);
    if (state == 1) {    
      image(pictures[3], buttons.tempButton[2], buttons.tempButton[3]);
      image(pictures[2], buttons.achievementButton[2], buttons.achievementButton[3]);
      image(pictures[2], buttons.recipe[2], buttons.recipe[3]);
    }
    if (state > 1) {      
      image(pictures[1], buttons.back[2], buttons.back[3]);
    }

    if (imgState == 1) {
      image(pictures[4], x1, y1);
      imageMode(CENTER);
      image(pictures[5], x1, y1);
      imageMode(NORMAL);
    }
  }
}